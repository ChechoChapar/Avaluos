/**
 *
 */
package com.segurosbolivar.avaluos.archivo;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.eclipse.persistence.config.QueryHints;
import org.eclipse.persistence.queries.ScrollableCursor;

import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
import com.segurosbolivar.avaluos.daos.AvaluosDao;
import com.segurosbolivar.avaluos.daos.JpaDao;
import com.segurosbolivar.avaluos.entities.Avaluo;
import com.segurosbolivar.avaluos.entities.Ciudad;
import com.segurosbolivar.avaluos.entities.ComportamientoOfertaDemanda;
import com.segurosbolivar.avaluos.entities.CondicionesSalubridad;
import com.segurosbolivar.avaluos.entities.InformacionBarrio;
import com.segurosbolivar.avaluos.entities.InformacionConstruccion;
import com.segurosbolivar.avaluos.entities.InformacionInmueble;
import com.segurosbolivar.avaluos.entities.LiquidacionAvaluo;
import com.segurosbolivar.avaluos.entities.LiquidacionAvaluoTotal;
import com.segurosbolivar.avaluos.entities.LogsGeneraArchivo;
import com.segurosbolivar.avaluos.entities.Observaciones;
import com.segurosbolivar.avaluos.entities.PgbBloqLogsGeneraArchivo;
import com.segurosbolivar.avaluos.entities.PgbCargueTmp;
import com.segurosbolivar.avaluos.servlet.TimerServlet;
import com.segurosbolivar.avaluos.util.CompressService;
import com.segurosbolivar.avaluos.util.EncriptaPGP;
import com.segurosbolivar.avaluos.util.EnviaMensajeCargue;
import com.segurosbolivar.avaluos.util.EstructuraPlanoAsobancaria;
import com.segurosbolivar.avaluos.util.ExcelExportUtil;
import com.segurosbolivar.avaluos.util.TextExportUtil;
import com.segurosbolivar.avaluos.util.Util;

import flex.messaging.FlexContext;
import flex.messaging.MessageBroker;
import flex.messaging.MessageDestination;
import flex.messaging.client.FlexClient;
import flex.messaging.config.NetworkSettings;
import flex.messaging.services.MessageService;

/**
 * Clase para generación del achivo que se debe enviar a Asobancaria CIFIN
 *
 * @author Seguros Bolivar
 * @version 1.0
 */
public class ArchivoService extends JpaDao<ArchivoService> 
{
	/** Mensaje de estado de la transacción (éxito o fracaso) **/
	private String mensajeTransaccion = null;

	/** Usuario Transaccion **/
	private String usuarioTransaccion = null;
	/**
	 * Constructor por defecto de la clase
	 */
	public ArchivoService() {
		super();
	}
	
	/**
	 * Genera el archivo para Asobancaria. Es un archivo comprimido en formato
	 * zip que contiene un archivo plano txt con los datos y un pdf por cada
	 * registro del archivo plano.
	 *
	 * @param fecha
	 *            Es un parmetro opcional con la fecha a partir de la cual se
	 *            quiere generar el archivo, si el parametro es núlo el archivo
	 *            será generado para todos las fechas.
	 * @return Si la generación del archivo es exitosa retorna una lista de
	 *         avaluos vacia.
	 */
	public List<Avaluo> getAvaluos(Date fecha) {

		System.out.println("Usuario Archivoservice "+System.getProperty("user.name"));
		
		List<Avaluo> res = null;
		List<Avaluo> avaluosList = null;
		StringBuffer sql = new StringBuffer();
		StringBuffer nombreZip = new StringBuffer();
		boolean isValidado = false;
		boolean isGenerar = true;
		boolean isAvanceValido = true;
		int avanceValidoTotalRegistros = 0;
		Date fechaInicioCreacion = Calendar.getInstance().getTime();
		PgbBloqLogsGeneraArchivo bloqLogs = null;
		
	    //emf = Persistence.createEntityManagerFactory("avaluosJpa");
	    //EntityManager entityManager=emf.createEntityManager();
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//entityManager = emf.createEntityManager();
		try {
			Query queryTmp;

			queryTmp = entityManager.createNativeQuery(
					" select count(*) "+
					" from pgb_bloq_logs_genera_archivos logs " +
					" where logs.fecha_fin_creacion IS NULL " +
					" and logs.estado_registro = 'A' "+
					" and trunc(logs.fecha_inicio_creacion) > trunc(SYSDATE)-1 "
			);

			StringBuffer errorValidacion = new StringBuffer();
			int numGeneraSimulta=0;
			try{
				numGeneraSimulta=((BigDecimal)queryTmp.getSingleResult()).intValue();
	    	}
	    	catch(Exception ex)
	    	{
	    		ex.printStackTrace();
	    		isGenerar=false;
				errorValidacion.append("[FALLO CONSULTANDO LA TABLA PGB_BLOQ_LOGS_GENERA_ARCHVO... "+ex.getMessage());
				errorValidacion.append("]\n");
				errorValidacion
						.append(" *** ");
				errorValidacion.append("\n\n");
	    		setMensajeTransaccion("FALLO CONSULTANDO LA TABLA PGB_BLOQ_LOGS_GENERA_ARCHVO... "+ex.getMessage());
	    		List<Avaluo> listaError = new ArrayList();
	    		
	    		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	    		//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
	    		
	    		return listaError;
	    	}finally
	    	{
	    		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
	    	}
	    	if(numGeneraSimulta>0)
	    	{
	    		isGenerar=false;
				errorValidacion.append("[ACTUALMENTE HAY UN ARCHIVO EN PROCESO... INTENTE MAS TARDE");
				errorValidacion.append("]\n");
				errorValidacion
						.append(" *** ");
				errorValidacion.append("\n\n");
	    		setMensajeTransaccion("Actualmente hay un archivo en proceso... intente mas tarde.");

	    		//Lista para evitar el mensaje "el archivo fue generado con errores"
	    		List<Avaluo> listaError = new ArrayList();
	    		
	    		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	    		//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
	    		
	    		return listaError;

	    	}

	    	// Se mueve la validación de bloqueo de archivos de la línea 103 después del try para no eliminar 
	    	// si se lanza nuevamente la generación de archivo manual o automática 
	    	// Creación de la carpeta temporal donde almacenará el comprimido
			File dirZipTmp = new File(Util.getProperty("domain")
					+ Util.getProperty("ziptmp"));
			if (!dirZipTmp.exists()) {
				if (dirZipTmp.mkdir()) {
					// Log "El directorio ziptmp ha sido creado exitosamente"
				} else {
					// Log "El directorio ziptmp no pudo ser creado"
				}
			} else {
				// Log
				// "El directorio ziptmp ya existe, su contenido será borrado"
				Util.deleteDirectory(dirZipTmp);
			}
	    	

			EnviaMensajeCargue ms=new EnviaMensajeCargue();

			ms.enviar("__Inicia generacion de registros..__");

			entityManager.getTransaction().begin();
			/*PgbBloqLogsGeneraArchivo */bloqLogs = new PgbBloqLogsGeneraArchivo();
			bloqLogs.setEstadoRegistro("A");
			bloqLogs.setFechaHasta(fecha);
			bloqLogs.setFechaInicioCreacion(fechaInicioCreacion);
			bloqLogs.setFechaTransaccion(fechaInicioCreacion);

			if(usuarioTransaccion!=null)
			{
				bloqLogs.setUsuarioCreacion(usuarioTransaccion);
				bloqLogs.setUsuarioTransaccion(usuarioTransaccion);
			}


			entityManager.persist(bloqLogs);
			entityManager.getTransaction().commit();
			long idBloq=bloqLogs.getIdGeneracionPlano();

			queryTmp = entityManager.createNativeQuery(
					" SELECT cg_ref_codes.rv_meaning "+
					" FROM cg_ref_codes " +
					" where cg_ref_codes.rv_domain='LOTE_ENVIO_ASOBANCARIA' " +
					"  AND cg_ref_codes.rv_low_value='1' "
			);

			int maxRegistros=0;
			//Maximo de registros (320)
			try{
				maxRegistros=Integer.parseInt((String)queryTmp.getSingleResult());
	    	}
	    	catch(Exception ex)
	    	{
	    		ex.printStackTrace();
				isGenerar=false;
				errorValidacion.append("[FALLO CONSULTANDO EL DOMINIO: LOTE_ENVIO_ASOBANCARIA");
				errorValidacion.append("]\n");
				errorValidacion
						.append(ex.getMessage());
				errorValidacion.append("\n\n");
	    	}finally
	    	{
	    		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
	    	}
	    	
	    	System.out.println("Maximo número de registros "+ maxRegistros);

			// Recupera todos los avaluos en estado aprobado y que aún no tengan
			// archivo asociado que no se encuentran en obra
			sql.append("SELECT avaluos FROM Avaluo avaluos  INNER JOIN avaluos.informacionConstruccion as infoConstruccion");
			sql.append(" WHERE avaluos.estadoAvaluo = :estadoAvaluo");
			sql.append(" AND avaluos.logsGeneraArchivo is null");
			sql.append(" AND avaluos.anexosFotograficos is not empty");
			sql.append(" AND infoConstruccion.enObra <> :enObra");
			
			if (fecha != null) {
				sql.append(" AND avaluos.fechaAvaluo <= :fechaAvaluo");
			}
			Query query = entityManager
					.createQuery(sql.toString())
					.setHint("eclipselink.refresh", "true")
					//Maximo 320 Registros
					.setMaxResults(maxRegistros)
					.setParameter(
							"estadoAvaluo",
							new BigDecimal(
									ConstantesAvaluos.ESTADO_AVALUOS_ENIVAR))
					.setParameter(
							"enObra",
							new BigDecimal(
									1))
									;
			if (fecha != null) {
				query.setParameter("fechaAvaluo", fecha);
			}
			
			avaluosList = query.getResultList();
			
			System.out.println("Avalúos Terminados "+ avaluosList.size());
			
		    //Se adiciona para que se ejecute la consulta sólo si vienen menos de 320 registros
			if(avaluosList.size()< maxRegistros)
			{	
			// Recupera todos los avaluos en estado aprobado y que aún no tengan
			// archivo asociado, que se encuentran en obra con avance > 69
			
			int difRegistros = maxRegistros - avaluosList.size(); 
			sql = new StringBuffer();
			
			sql.append("SELECT avaluos FROM Avaluo avaluos  INNER JOIN avaluos.informacionConstruccion as infoConstruccion");
			sql.append(" WHERE avaluos.estadoAvaluo = :estadoAvaluo");
			sql.append(" AND avaluos.logsGeneraArchivo is null");
			sql.append(" AND avaluos.anexosFotograficos is not empty");
			sql.append(" AND infoConstruccion.enObra = :enObra");
			sql.append(" AND infoConstruccion.avanceObra > :avanceObra");
			
			if (fecha != null) {
				sql.append(" AND avaluos.fechaAvaluo <= :fechaAvaluo");
			}
			query = entityManager
					.createQuery(sql.toString())
					.setHint("eclipselink.refresh", "true")
					//Maximo 320 Registros
					.setMaxResults(difRegistros)
					.setParameter(
							"estadoAvaluo",
							new BigDecimal(
									ConstantesAvaluos.ESTADO_AVALUOS_ENIVAR))
					.setParameter(
							"enObra",
							new BigDecimal(
									1))
					.setParameter(
							"avanceObra",
							new BigDecimal(
									//69))
									ConstantesAvaluos.PORCENTAJE_ASOBANCARIA))
									;
			if (fecha != null) {
				query.setParameter("fechaAvaluo", fecha);
			}

			System.out.println("Avaluos en obra "+ avaluosList.size());
			
			avaluosList.addAll(query.getResultList());
            
		   }
			
			System.out.println("Total sin remover "+ avaluosList.size());
			
			//Si sobrepasa los 320 Registros.
			if(avaluosList.size()>maxRegistros)
			{   System.out.println("Entra a remover");
				for(int i=maxRegistros-1; i < avaluosList.size(); i++)
				{   System.out.println("Remueve avalúos "+i);
					avaluosList.remove(i);
				}
			}
            
			System.out.println("Total avalúos "+ avaluosList.size());
			
			FlexClient flexClient = FlexContext.getFlexClient();
			String totalAvaluos = String.valueOf(avaluosList.size());

			// Consulta el consecutivo en la tabla de logsgeneraarchivo
			StringBuffer sqlConsecutivo = new StringBuffer();
			BigDecimal consecutivo = new BigDecimal(0);
			sqlConsecutivo
					.append("SELECT MAX(g.idLogArchivos) FROM LogsGeneraArchivo g");
			List<LogsGeneraArchivo> listaLogsTmp = entityManager.createQuery(
					sqlConsecutivo.toString()).getResultList();
			if ((listaLogsTmp != null) && (!listaLogsTmp.isEmpty())
					&& (listaLogsTmp.get(0) != null)) {
				consecutivo = new BigDecimal(entityManager
						.createQuery(sqlConsecutivo.toString()).getResultList()
						.get(0).toString());
			}

			// Arma el nombre del txt
			StringBuffer nombreArchivoTxt = new StringBuffer();
			nombreArchivoTxt
					.append(ConstantesAvaluos.CATEGORIA_AVALUO_INMUEBLE);
			nombreArchivoTxt.append("_")
					.append(Util.getDateAsString("yyyyMMdd")).append("_")
					.append(consecutivo.add(new BigDecimal(1)).toString());

			// Recupera el valor de referencia que tendrá el presente cargue (es
			// como un secuencial por cargue)
			Query queryRefCargue = entityManager
					.createNativeQuery("SELECT SEQ_PGB_REFERENCIA_CARGUE.NEXTVAL FROM DUAL");
			BigDecimal numeroRefcargue = (BigDecimal) queryRefCargue
					.getSingleResult();

			// Crea el archivo txt en DD
			File file = new File(Util.getProperty("domain")
					+ Util.getProperty("ziptmp")
					+ System.getProperty("file.separator")
					+ nombreArchivoTxt.toString() + "."
					+ ConstantesAvaluos.FORMATO_TXT);
			// Se agrega para asegurar compatibilidad con caracteres especiales
			// (Tildes Ñ) con los clientes (maquinas Windows)
			Writer output = new BufferedWriter(new OutputStreamWriter(
					new FileOutputStream(file), "ISO-8859-1"));

			// Se arma el archivo txt con base en el resultado de la consulta
			// anterior
			/*StringBuffer */errorValidacion = new StringBuffer();
			int refCargue = 0;
			long consecutivoCargue = 0;
			int lineaPlano = 0;
			if (!avaluosList.isEmpty()) {

				for (Avaluo avaluo : avaluosList) {
					isAvanceValido = true;
					StringBuffer line = new StringBuffer();
					// Se recupera cada una de las tablas de las cuales se va a
					// sacar la info para armar el plano
					LiquidacionAvaluoTotal liquidacionAvaluoTotal = null;
					List<LiquidacionAvaluo> liquidacionAvaluo = null;
					InformacionInmueble inmueble = null;
					InformacionBarrio barrio = null;
					CondicionesSalubridad condicionesSalubridad = null;
					ComportamientoOfertaDemanda comportamientoOfertaDemanda = null;
					InformacionConstruccion construccion = null;
					Observaciones observaciones = new Observaciones();

					if ((avaluo.getCompOfertaDemanda() != null)
							&& (!avaluo.getCompOfertaDemanda().isEmpty())
							&& (avaluo.getCompOfertaDemanda().get(0) != null)) {
						comportamientoOfertaDemanda = avaluo
								.getCompOfertaDemanda().get(0);
					}
					if ((avaluo.getCondicionSalubridad() != null)
							&& (!avaluo.getCondicionSalubridad().isEmpty())
							&& (avaluo.getCondicionSalubridad().get(0) != null)) {
						condicionesSalubridad = avaluo.getCondicionSalubridad()
								.get(0);
					}
					if ((avaluo.getInformacionBarrio() != null)
							&& (!avaluo.getInformacionBarrio().isEmpty())
							&& (avaluo.getInformacionBarrio().get(0) != null)) {
						barrio = avaluo.getInformacionBarrio().get(0);
					}
					if ((avaluo.getInformacionConstruccion() != null)
							&& (!avaluo.getInformacionConstruccion().isEmpty())
							&& (avaluo.getInformacionConstruccion().get(0) != null)) {
						construccion = avaluo.getInformacionConstruccion().get(
								0);
						if (construccion.getEnObra().compareTo(
								new BigDecimal(1)) == 0) {
							isAvanceValido = construccion.getAvanceObra()
									//.compareTo(new BigDecimal(69)) > 0 ? true
									.compareTo(new BigDecimal(ConstantesAvaluos.PORCENTAJE_ASOBANCARIA)) > 0 ? true		
									: false;
						}
					}
					if ((avaluo.getInformacionInmueble() != null)
							&& (!avaluo.getInformacionInmueble().isEmpty())
							&& (avaluo.getInformacionInmueble().get(0) != null)) {
						inmueble = avaluo.getInformacionInmueble().get(0);
					}
					if (avaluo.getLiquidacionAvaluos() != null) {
						//liquidacionAvaluo = avaluo.getLiquidacionAvaluos();
						//Lazy
						//liquidacionAvaluo = avaluo.getLiquidacionAvaluos().subList(0, avaluo.getLiquidacionAvaluos().size());
						liquidacionAvaluo = new ArrayList<LiquidacionAvaluo>();
						for(LiquidacionAvaluo liq : avaluo.getLiquidacionAvaluos())							
						{
							liquidacionAvaluo.add(liq);
						}	
					}
					if ((avaluo.getLiquidacionTotal() != null)
							&& (!avaluo.getLiquidacionTotal().isEmpty())
							&& (avaluo.getLiquidacionTotal().get(0) != null)) {
						liquidacionAvaluoTotal = avaluo.getLiquidacionTotal()
								.get(0);
					}
					if ((avaluo.getObservacion() != null)
							&& (!avaluo.getObservacion().isEmpty())
							&& (avaluo.getObservacion().get(0) != null)) {
						observaciones = avaluo.getObservacion().get(0);
					}

					if (isAvanceValido) {
						avanceValidoTotalRegistros++;
						// Arma el archvio plano con cada uno de los campos
						// necesarios
						AvaluosDao dao=new AvaluosDao();
						line=dao.getLineaAvaluo(avaluo,false);

						/*
						if (barrio != null && barrio.getAndenes() != null) {
							line.append(barrio.getAndenes().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getCalidadBanio() != null) {
			    line.append(construccion.getCalidadBanio().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getCalidadMadera() != null) {
			    line.append(construccion.getCalidadMadera().toEngineeringString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getCalidMetal() != null) {
							line.append(construccion.getCalidMetal().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getCalidadCocina() != null) {
			    line.append(construccion.getCalidadCocina().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getCalidadMuro() != null) {
			    line.append(construccion.getCalidadMuro().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getCalidadPiso() != null) {
			    line.append(construccion.getCalidadPiso().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getCalidadTecho() != null) {
			    line.append(construccion.getCalidadTecho().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (inmueble != null && inmueble.getCiudadEscritura() != null) {
			    line.append(inmueble.getCiudadEscritura().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (inmueble != null && inmueble.getClaseInmueble() != null) {
							line.append(inmueble.getClaseInmueble().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getConjuntoAgrupacionCerrada() != null) {
			    line.append(construccion.getConjuntoAgrupacionCerrada().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getCubierta() != null) {
							line.append(construccion.getCubierta().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (inmueble != null && inmueble.getDepartamentoEscritura() != null) {
			    line.append(inmueble.getDepartamentoEscritura().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (liquidacionAvaluo.size() < 10) {
							for (int i = liquidacionAvaluo.size(); i < 10; i++) {
								liquidacionAvaluo.add(new LiquidacionAvaluo());
							}
						}
						liquidacionAvaluo.add(1, liquidacionAvaluo.remove(9));
						for (LiquidacionAvaluo registro : liquidacionAvaluo) {
							if (registro.getDescripcionLiquidacion() != null) {
				line.append(registro.getDescripcionLiquidacion().toString());
							}
							line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						}
			if (construccion != null && construccion.getEstadoBanios() != null) {
			    line.append(construccion.getEstadoBanios().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getEstadoCocina() != null) {
			    line.append(construccion.getEstadoCocina().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getEstadoConservacion() != null) {
			    line.append(construccion.getEstadoConservacion().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getEstadoMadera() != null) {
			    line.append(construccion.getEstadoMadera().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getEstadoMetal() != null) {
			    line.append(construccion.getEstadoMetal().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getEstadoMuros() != null) {
			    line.append(construccion.getEstadoMuros().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getEstadoPisos() != null) {
			    line.append(construccion.getEstadoPisos().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (barrio != null && barrio.getEstrato() != null) {
							line.append(barrio.getEstrato().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getEstructura() != null) {
							line.append(construccion.getEstructura().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getEstructuraTechos() != null) {
			    line.append(construccion.getEstructuraTechos().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (barrio != null && barrio.getEstadosViaAcceso() != null) {
							line.append(barrio.getEstadosViaAcceso().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getFachada() != null) {
							line.append(construccion.getFachada().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (avaluo != null && avaluo.getIdCiudad() != null) {
							line.append(avaluo.getIdCiudad().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (avaluo != null && avaluo.getIdDepartamento() != null) {
							line.append(avaluo.getIdDepartamento().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (avaluo != null && avaluo.getIdMetodologia() != null) {
							line.append(avaluo.getIdMetodologia().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (avaluo != null && avaluo.getIdObjetoAvaluo() != null) {
							line.append(avaluo.getIdObjetoAvaluo().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (avaluo != null && avaluo.getIdTipoIdentificacion() != null) {
			    line.append(avaluo.getIdTipoIdentificacion().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getIluminacion() != null) {
			    line.append(construccion.getIluminacion().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (barrio != null && barrio.getLegalidad() != null) {
							line.append(barrio.getLegalidad().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (barrio != null && barrio.getPavimentada() != null) {
							line.append(barrio.getPavimentada().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getPisosBodega() != null) {
			    line.append(construccion.getPisosBodega().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getPropiedadHorizontal() != null) {
			    line.append(construccion.getPropiedadHorizontal().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (condicionesSalubridad != null && condicionesSalubridad.getCondicionesSalubridad() != null) {
			    line.append(condicionesSalubridad.getCondicionesSalubridad().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (barrio != null && barrio.getSardeneles() != null) {
							line.append(barrio.getSardeneles().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getTipoFachada() != null) {
			    line.append(construccion.getTipoFachada().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (inmueble != null && inmueble.getTipoVivienda() != null) {
							line.append(inmueble.getTipoVivienda().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (barrio != null && barrio.getTopografia() != null) {
							line.append(barrio.getTopografia().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (barrio != null && barrio.getTransporte() != null) {
							line.append(barrio.getTransporte().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getUbicacionInmueble() != null) {
			    line.append(construccion.getUbicacionInmueble().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (inmueble != null && inmueble.getUbicacion2() != null) {
							line.append(inmueble.getUbicacion2().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (inmueble != null && inmueble.getUsoInmueble() != null) {
							line.append(inmueble.getUsoInmueble().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getVentilacion() != null) {
			    line.append(construccion.getVentilacion().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (avaluo != null && avaluo.getFechaAvaluo() != null) {
			    line.append(Util.getAnyDateAsString(avaluo.getFechaAvaluo(), "dd-MM-yyyy ") + "00:00:00");
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (inmueble != null && inmueble.getFechaEscritura() != null) {
			    line.append(Util.getAnyDateAsString(inmueble.getFechaEscritura(), "dd-MM-yyyy ") + "00:00:00");
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getAireAcondicionado() != null) {
			    line.append(construccion.getAireAcondicionado().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (barrio != null && barrio.getAcueductoPredio() != null) {
							line.append(barrio.getAcueductoPredio().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (barrio != null && barrio.getAcueductoSector() != null) {
							line.append(barrio.getAcueductoSector().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (condicionesSalubridad != null && condicionesSalubridad.getAguasServidas() != null) {
			    line.append(condicionesSalubridad.getAguasServidas().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (barrio != null && barrio.getAlamedas() != null) {
							line.append(barrio.getAlamedas().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (barrio != null && barrio.getAlcantarilladoPredio() != null) {
			    line.append(barrio.getAlcantarilladoPredio().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (barrio != null && barrio.getAlcantarilladoSector() != null) {
			    line.append(barrio.getAlcantarilladoSector().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (barrio != null && barrio.getAlumbrado() != null) {
							line.append(barrio.getAlumbrado().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (condicionesSalubridad != null && condicionesSalubridad.getAmbientalArborizacion() != null) {
			    line.append(condicionesSalubridad.getAmbientalArborizacion().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (condicionesSalubridad != null && condicionesSalubridad.getAmbientalParques() != null) {
			    line.append(condicionesSalubridad.getAmbientalParques().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (condicionesSalubridad != null && condicionesSalubridad.getAmbientalZonaVerde() != null) {
			    line.append(condicionesSalubridad.getAmbientalZonaVerde().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (barrio != null && barrio.getArborizacion() != null) {
							line.append(barrio.getArborizacion().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getAscensor() != null) {
							line.append(construccion.getAscensor().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (condicionesSalubridad != null && condicionesSalubridad.getImpactoNegativoBasura() != null) {
			    line.append(condicionesSalubridad.getImpactoNegativoBasura().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getBicicletero() != null) {
			    line.append(construccion.getBicicletero().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getBombaEyectora() != null) {
			    line.append(construccion.getBombaEyectora().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getCanchaMultiple() != null) {
			    line.append(construccion.getCanchaMultiple().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (barrio != null && barrio.getCicloRutas() != null) {
							line.append(barrio.getCicloRutas().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getCitofono() != null) {
							line.append(construccion.getCitofono().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getClubHouse() != null) {
							line.append(construccion.getClubHouse().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (barrio != null && barrio.getComercio() != null) {
							line.append(barrio.getComercio().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (barrio != null && barrio.getElectricidadPredio() != null) {
			    line.append(barrio.getElectricidadPredio().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (barrio != null && barrio.getElectricidadSector() != null) {
			    line.append(barrio.getElectricidadSector().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getEnObra() != null) {
							line.append(construccion.getEnObra().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getEstadoRemodelacion() != null) {
			    line.append(construccion.getEstadoRemodelacion().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getEstadoTerminadaNueva() != null) {
			    line.append(construccion.getEstadoTerminadaNueva().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getEstadoTerminadoUsado() != null) {
			    line.append(construccion.getEstadoTerminadoUsado().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (barrio != null && barrio.getGasPredio() != null) {
							line.append(barrio.getGasPredio().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (barrio != null && barrio.getGasSector() != null) {
							line.append(barrio.getGasSector().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getGimnasio() != null) {
							line.append(construccion.getGimnasio().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getGarajeVisitante() != null) {
			    line.append(construccion.getGarajeVisitante().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getGolfito() != null) {
							line.append(construccion.getGolfito().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (barrio != null && barrio.getIndustria() != null) {
							line.append(barrio.getIndustria().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (condicionesSalubridad != null && condicionesSalubridad.getImpactoNegativoInseguridad() != null) {
			    line.append(condicionesSalubridad.getImpactoNegativoInseguridad().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getJuegoNinos() != null) {
							line.append(construccion.getJuegoNinos().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (barrio != null && barrio.getOtrosUsos() != null) {
							line.append(barrio.getOtrosUsos().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (barrio != null && barrio.getParadero() != null) {
							line.append(barrio.getParadero().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (barrio != null && barrio.getParques() != null) {
							line.append(barrio.getParques().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getPiscina() != null) {
							line.append(construccion.getPiscina().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getPlanta() != null) {
							line.append(construccion.getPlanta().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (condicionesSalubridad != null && condicionesSalubridad.getImpactoNegativoPorAire() != null) {
			    line.append(condicionesSalubridad.getImpactoNegativoPorAire().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getPorteria() != null) {
							line.append(construccion.getPorteria().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getPresion() != null) {
							line.append(construccion.getPresion().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (condicionesSalubridad != null && condicionesSalubridad.getImpactoNegativoRuido() != null) {
			    line.append(condicionesSalubridad.getImpactoNegativoRuido().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getSalonComunal() != null) {
			    line.append(construccion.getSalonComunal().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getShutBasuras() != null) {
			    line.append(construccion.getShutBasuras().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getSinTerminar() != null) {
			    line.append(construccion.getSinTerminar().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getSquash() != null) {
							line.append(construccion.getSquash().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getTanqueAgua() != null) {
							line.append(construccion.getTanqueAgua().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (barrio != null && barrio.getTelefonoPredio() != null) {
							line.append(barrio.getTelefonoPredio().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (barrio != null && barrio.getTelefonoSector() != null) {
							line.append(barrio.getTelefonoSector().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (barrio != null && barrio.getVivienda() != null) {
							line.append(barrio.getVivienda().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (barrio != null && barrio.getZonasVerdes() != null) {
							line.append(barrio.getZonasVerdes().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getZonasVerdes() != null) {
			    line.append(construccion.getZonasVerdes().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						for (LiquidacionAvaluo registro : liquidacionAvaluo) {
							if (registro.getAreaLiquidacion() != null) {
				line.append(round(registro.getAreaLiquidacion()).toString());
							}
							line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						}
			if (liquidacionAvaluoTotal != null && liquidacionAvaluoTotal.getAvaluoUvr() != null) {
			    line.append(round(liquidacionAvaluoTotal.getAvaluoUvr()).toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getBahiaComunal() != null) {
			    line.append(construccion.getBahiaComunal().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getBalcon() != null) {
							line.append(construccion.getBalcon().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getBanioPrivado() != null) {
			    line.append(construccion.getBanioPrivado().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getBanioServicio() != null) {
			    line.append(construccion.getBanioServicio().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getBanioSocial() != null) {
			    line.append(construccion.getBanioSocial().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getBodega() != null) {
							line.append(construccion.getBodega().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getCocina() != null) {
							line.append(construccion.getCocina().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getComedor() != null) {
							line.append(construccion.getComedor().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (avaluo.getConsecutivoBanco() != null && avaluo.getConsecutivoBanco() != null) {
							line.append(avaluo.getConsecutivoBanco().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getCuartoServicio() != null) {
			    line.append(construccion.getCuartoServicio().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getCubierto() != null) {
							line.append(construccion.getCubierto().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getDeposito() != null) {
							line.append(construccion.getDeposito().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getDescubierto() != null) {
			    line.append(construccion.getDescubierto().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getDoble() != null) {
							line.append(construccion.getDoble().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getEstarHabitacion() != null) {
			    line.append(construccion.getEstarHabitacion().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getEstudio() != null) {
							line.append(construccion.getEstudio().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getNumeroHabitaciones() != null) {
			    line.append(construccion.getNumeroHabitaciones().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (avaluo != null && avaluo.getNumeroIdentificacion() != null) {
			    line.append(avaluo.getNumeroIdentificacion().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getJardin() != null) {
							line.append(construccion.getJardin().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getLocal() != null) {
							line.append(construccion.getLocal().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getNumeroAscensores() != null) {
			    line.append(construccion.getNumeroAscensores().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getNumeroEdificios() != null) {
			    line.append(construccion.getNumeroEdificios().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getOficina() != null) {
							line.append(construccion.getOficina().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getPatioInterior() != null) {
			    line.append(construccion.getPatioInterior().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getPisos() != null) {
							line.append(construccion.getPisos().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getPrivado() != null) {
							line.append(construccion.getPrivado().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getSala() != null) {
							line.append(construccion.getSala().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getSencillo() != null) {
							line.append(construccion.getSencillo().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getServidumbre() != null) {
			    line.append(construccion.getServidumbre().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getSotanos() != null) {
							line.append(construccion.getSotanos().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getTerraza() != null) {
							line.append(construccion.getTerraza().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (comportamientoOfertaDemanda != null && comportamientoOfertaDemanda.getTipoComercializacion() != null) {
			    line.append(comportamientoOfertaDemanda.getTipoComercializacion().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (liquidacionAvaluoTotal != null && liquidacionAvaluoTotal.getTotalAvaluo() != null) {
			    line.append(round(liquidacionAvaluoTotal.getTotalAvaluo()).toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getTotalGarajes() != null) {
			    line.append(construccion.getTotalGarajes().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getTotalUnidades() != null) {
			    line.append(construccion.getTotalUnidades().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getUnidadPorPiso() != null) {
			    line.append(construccion.getUnidadPorPiso().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getUsoExclusivo() != null) {
			    line.append(construccion.getUsoExclusivo().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (liquidacionAvaluoTotal != null && liquidacionAvaluoTotal.getValorAsegurable() != null) {
			    line.append(round(liquidacionAvaluoTotal.getValorAsegurable()).toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						for (LiquidacionAvaluo registro : liquidacionAvaluo) {
							if (registro.getValorTotal() != null) {
				line.append(round(registro.getValorTotal()).toString());
							}
							line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						}
			if (liquidacionAvaluoTotal != null && liquidacionAvaluoTotal.getValorUvrDia() != null) {
			    line.append(round(liquidacionAvaluoTotal.getValorUvrDia()).toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						for (LiquidacionAvaluo registro : liquidacionAvaluo) {
							if (registro.getValor() != null) {
				line.append(round(registro.getValor()).toString());
							}
							line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						}
			if (construccion != null && construccion.getVetustez() != null) {
			    line.append(round(construccion.getVetustez()).toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getZonaVerdePrivada() != null) {
			    line.append(construccion.getZonaVerdePrivada().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (liquidacionAvaluoTotal != null && liquidacionAvaluoTotal.getCalificacion() != null) {
			    line.append(liquidacionAvaluoTotal.getCalificacion().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getEstadoConstruccion() != null) {
			    line.append(construccion.getEstadoConstruccion().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (comportamientoOfertaDemanda != null && comportamientoOfertaDemanda.getActualidadEdificadora() != null) {
			    line.append(comportamientoOfertaDemanda.getActualidadEdificadora().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (condicionesSalubridad != null && condicionesSalubridad.getImpactoNegativoOtros() != null) {
			    line.append(condicionesSalubridad.getImpactoNegativoOtros().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (condicionesSalubridad != null && condicionesSalubridad.getAmbientalOtros() != null) {
			    line.append(condicionesSalubridad.getAmbientalOtros().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getAvanceObra() != null) {
							line.append(construccion.getAvanceObra().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (avaluo != null && avaluo.getBarrio() != null) {
							line.append(avaluo.getBarrio().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (inmueble != null && inmueble.getChip() != null) {
							line.append(inmueble.getChip().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (comportamientoOfertaDemanda != null && comportamientoOfertaDemanda.getComportamientoOfertaDemanda() != null) {
			    line.append(comportamientoOfertaDemanda.getComportamientoOfertaDemanda().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getTextoCubierta() != null) {
			    line.append(construccion.getTextoCubierta().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (observaciones != null && observaciones.getDireccionAnexos() != null) {
			    line.append(observaciones.getDireccionAnexos().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (avaluo != null && avaluo.getDireccionInmueble() != null) {
			    line.append(avaluo.getDireccionInmueble().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getTextoEstructura() != null) {
			    line.append(construccion.getTextoEstructura().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getTextoFachada() != null) {
			    line.append(construccion.getTextoFachada().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (avaluo != null && avaluo.getJustificacion() != null) {
							line.append(avaluo.getJustificacion().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (inmueble != null && inmueble.getMatriculaInmobiliariaPpal1() != null) {
			    line.append(inmueble.getMatriculaInmobiliariaPpal1().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (inmueble != null && inmueble.getMatriculaInmobiliariaPpal2() != null) {
			    line.append(inmueble.getMatriculaInmobiliariaPpal2().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (inmueble != null && inmueble.getMatriculaInmobiliariaDeposito1() != null) {
			    line.append(inmueble.getMatriculaInmobiliariaDeposito1().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (inmueble != null && inmueble.getMatriculaInmobiliariaDeposito2() != null) {
			    line.append(inmueble.getMatriculaInmobiliariaDeposito2().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (inmueble != null && inmueble.getMatriculaInmobiliariaGaraje1() != null) {
			    line.append(inmueble.getMatriculaInmobiliariaGaraje1().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (inmueble != null && inmueble.getMatriculaInmobiliariaGaraje2() != null) {
			    line.append(inmueble.getMatriculaInmobiliariaGaraje2().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (inmueble != null && inmueble.getMatriculaInmobiliariaGaraje3() != null) {
			    line.append(inmueble.getMatriculaInmobiliariaGaraje3().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (inmueble != null && inmueble.getMatriculaInmobiliariaGaraje4() != null) {
			    line.append(inmueble.getMatriculaInmobiliariaGaraje4().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (inmueble != null && inmueble.getMatriculaInmobiliariaGaraje5() != null) {
			    line.append(inmueble.getMatriculaInmobiliariaGaraje5().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (avaluo != null && avaluo.getNombreConjuntoEdificio() != null) {
			    line.append(avaluo.getNombreConjuntoEdificio().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (avaluo != null && avaluo.getNombreSolicitante() != null) {
			    line.append(avaluo.getNombreSolicitante().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (inmueble != null && inmueble.getNotaria() != null) {
							line.append(inmueble.getNotaria().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (inmueble != null && inmueble.getNumeroEscritura() != null) {
			    line.append(inmueble.getNumeroEscritura().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (observaciones != null && observaciones.getObservacionAvaluo() != null) {
			    line.append(observaciones.getObservacionAvaluo().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (observaciones != null && observaciones.getOtrasDirecciones() != null) {
			    line.append(observaciones.getOtrasDirecciones().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (inmueble != null && inmueble.getOtroClase() != null) {
							line.append(inmueble.getOtroClase().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getOtrosDotacion() != null) {
			    line.append(construccion.getOtrosDotacion().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null && construccion.getOtrosDotacion2() != null) {
			    line.append(construccion.getOtrosDotacion2().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (barrio != null && barrio.getTextoOtrosUsos() != null) {
							line.append(barrio.getTextoOtrosUsos().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (inmueble != null && inmueble.getOtroUsoInmueble() != null) {
			    line.append(inmueble.getOtroUsoInmueble().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (barrio != null && barrio.getPerspectivas() != null) {
			    line.append(barrio.getPerspectivas().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (inmueble != null && inmueble.getUbicacion3() != null) {
							line.append(inmueble.getUbicacion3().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (inmueble != null && inmueble.getIdCategoria() != null) {
							line.append(inmueble.getIdCategoria().toString());
						}
						line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
						if (avaluo != null && avaluo.getTUsuario() != null) {
							line.append(avaluo.getTUsuario().toString());
						}
						 */
						liquidacionAvaluo.clear();

						// Se hace el insert en la tabla temporal para luego
						// ejecutar el procedimiento validador
						PgbCargueTmp pgbCargueTmp = new PgbCargueTmp();
						pgbCargueTmp.setNumeroRefCargue(numeroRefcargue);
						pgbCargueTmp.setLineaPlano(new BigDecimal(lineaPlano));
						pgbCargueTmp.setContenidoLineaPlano(line.toString());
						pgbCargueTmp
								.setTipoCargue(ConstantesAvaluos.TIPO_CARGUE_DESCARGA);
						pgbCargueTmp.setEstadoCargue("CARGADO");
						pgbCargueTmp.setNombreArchivo(nombreArchivoTxt
								.toString()
								+ "."
								+ ConstantesAvaluos.FORMATO_TXT);
						
						
						pgbCargueTmp.setTipoProyecto(new BigDecimal(1));
						
						
						entityManager.getTransaction().begin();
						entityManager.persist(pgbCargueTmp);
						entityManager.getTransaction().commit();
											
						ms.enviar("__"+(lineaPlano+1)+" de "+totalAvaluos+" Ejecutando la malla validadora__");

						// Se ejecuta el pl que valida
						entityManager.getTransaction().begin();
						Query plCall = entityManager
								//.createNativeQuery("BEGIN PRC_CARGA_AVALUO(pREFERENCIA_CARGUE=>?,pTIPO_CARGUE=>?); END;");
								.createNativeQuery("BEGIN PRC_CARGA_AVALUO_CONSTRUCTOR(pREFERENCIA_CARGUE=>?,pTIPO_CARGUE=>?,pProyecto_constructor=>?); END;");
						plCall.setParameter(1, pgbCargueTmp
								.getNumeroRefCargue().toString());
						plCall.setParameter(2, "DESCARGA");
						plCall.setParameter(3, "false");
						plCall.executeUpdate();
						entityManager.flush();
						entityManager.getTransaction().commit();

						// Consulta el campo estado en la tabla temporal
						StringBuffer sqlEstadoCargue = new StringBuffer();
						sqlEstadoCargue
								.append("SELECT cargue.ESTADO_CARGUE FROM PGB_CARGUE_TMP cargue WHERE cargue.NUMERO_REF_CARGUE = ?");
						sqlEstadoCargue
								.append(" AND cargue.CONSECUTIVO_TMP = ?");
						refCargue = pgbCargueTmp.getNumeroRefCargue()
								.intValue();
						consecutivoCargue = pgbCargueTmp.getConsecutivoTmp();
						String estado = (String) entityManager
								.createNativeQuery(sqlEstadoCargue.toString())
								.setParameter(1,
										pgbCargueTmp.getNumeroRefCargue())
								.setParameter(2,
										pgbCargueTmp.getConsecutivoTmp())
								.getSingleResult();

						// Si pasó la validación asigna true a isValid de lo
						// contrario false
						isValidado = estado
								.equalsIgnoreCase(ConstantesAvaluos.ESTADO_CARGUE_APLICADO_DESCARGA);

						// Escribe la línea en el archivo plano y hace un salto
						// de línea
						output.write(line.toString());
						output.write("\n");

						// Trae el anexo fotografico y genera el archivo en el DD
						//ms.enviar("__"+(lineaPlano+1)+" de "+avaluosList.size()+" Consultando Anexos Fotograficos__");
						ms.enviar("__"+(lineaPlano+1)+" de "+totalAvaluos+" Ejecutando la malla validadora__");

						if ((avaluo.getAnexosFotograficos() != null)
								&& (!avaluo.getAnexosFotograficos().isEmpty())
								&& (avaluo.getAnexosFotograficos().get(0) != null)) {
							com.segurosbolivar.avaluos.entities.Archivo archivo = avaluo
									.getAnexosFotograficos().get(0)
									.getArchivoPdf();

							StringBuffer rutaZip = new StringBuffer();
							rutaZip.append(Util.getProperty("domain"));
							rutaZip.append(Util.getProperty("ziptmp"));
							rutaZip.append(System.getProperty("file.separator"));
							rutaZip.append(avaluo.getConsecutivoBanco()
									.toString());
							rutaZip.append("_");
							rutaZip.append(ConstantesAvaluos.NOMBRE_ANEXO);
							rutaZip.append(".");
							rutaZip.append(ConstantesAvaluos.FORMATO_PDF);
							FileOutputStream archivoNuevo = new FileOutputStream(
									rutaZip.toString());

							// Escribe el contenido del anexo en el archivo y lo
							// cierra
							archivoNuevo.write(archivo.getContenidoArchivo());
							archivoNuevo.close();
						}

						if (!isValidado) {
							StringBuffer sqlError = new StringBuffer();
							sqlError.append("SELECT cargue.MENSAJE_ERROR FROM PGB_CARGUE_TMP cargue WHERE cargue.NUMERO_REF_CARGUE = ?");
							sqlError.append(" AND cargue.CONSECUTIVO_TMP = ?");
							List errValidaAvaluoList = entityManager
									.createNativeQuery(sqlError.toString())
									.setParameter(1, refCargue)
									.setParameter(2, consecutivoCargue)
									.getResultList();
							if ((errValidaAvaluoList != null)
									&& (!errValidaAvaluoList.isEmpty())) {
								errorValidacion.append("[LINEA PLANO: ");
								errorValidacion.append(lineaPlano + 1);
								errorValidacion.append("]\n");
								errorValidacion
										.append((String) errValidaAvaluoList
												.get(0));
								errorValidacion.append("\n\n");
							}
							isGenerar = false;
						}
						lineaPlano++;
					}
				}
				output.close();
				
				// Si no se generó ningun registro debido a un error
				if (lineaPlano == 0) {
					isGenerar = false;
				}

				
				System.out.println("El archivo txt existe? "+file.exists());
				
				// Genera el archivo comprimido
				nombreZip.append(ConstantesAvaluos.PREFIJO_UNO_NOMBRE_ZIP)
						.append(ConstantesAvaluos.PREFIJO_DOS_NOMBRE_ZIP);
				nombreZip.append(ConstantesAvaluos.TIPO_ENTIDAD_DAVIVIENDA)
						.append(ConstantesAvaluos.CODIGO_ENTIDAD_DAVIVIENDA);
				nombreZip.append(Util.getDateAsString("ddMMyyyy"));

				// Crea una carpeta donde se va almacenar el zip (una carpeta
				// por zip)
				File dirFileZip = new File(Util.getProperty("domain")
						+ Util.getProperty("procedatos")
						+ System.getProperty("file.separator") + nombreZip
						+ "_" + consecutivo.add(new BigDecimal(1))
						+ System.getProperty("file.separator"));
				
				if (!dirFileZip.exists()) {
					if (dirFileZip.mkdir()) {
						System.out.println("El directorio dirFileZip ha sido creado exitosamente");
					} else {
						String er="El directorio dirFileZip no pudo ser creado";
						System.out.println(er);
						isGenerar=false;
						errorValidacion.append("[FALLO LA GENERACION DEL .ZIP");
						errorValidacion.append("]\n");
						errorValidacion
								.append(er);
						errorValidacion.append("\n\n");
					}
				} else {
					String e = "El directorio dirFileZip ya existe";
					System.out.println(e);
					//throw new IOException(e);
					dirFileZip.delete();
					
					if (dirFileZip.mkdir()) {
						System.out.println("El directorio dirFileZip ha sido creado exitosamente");
					} else {
						String er="El directorio dirFileZip no pudo ser re-creado";
						System.out.println(er);
						isGenerar=false;
						errorValidacion.append("[FALLO LA GENERACION DEL .ZIP");
						errorValidacion.append("]\n");
						errorValidacion
								.append(er);
						errorValidacion.append("\n\n");
					}
					
				}

				ms.enviar("__Generando el archivo .Zip__");
				// Para el dsepliegue en produccion se debe colocar despues de
				// mover el .txt y asi no incluirlo en el .zip
				try {
					CompressService.zipDirectory(
							Util.getProperty("domain") + Util.getProperty("ziptmp")
									+ System.getProperty("file.separator"),
							Util.getProperty("domain")
									+ Util.getProperty("procedatos")
									+ System.getProperty("file.separator")
									+ nombreZip + "_"
									+ consecutivo.add(new BigDecimal(1))
									+ System.getProperty("file.separator")
									+ nombreZip.toString() + "_"
									+ consecutivo.add(new BigDecimal(1)) + "."
									+ ConstantesAvaluos.FORMATO_ZIP);
				} catch (IOException e) {
					e.printStackTrace();
					isGenerar=false;
					errorValidacion.append("[FALLO LA GENERACION DEL .ZIP");
					errorValidacion.append("]\n");
					errorValidacion
							.append(e.getMessage());
					errorValidacion.append("\n\n");

				}
                
				System.out.println("Comprimió el archivo? "+isGenerar);
				
				// cifrar con PGP el .zip (cambio solicitado por asobancaria).
				EncriptaPGP pgp = new EncriptaPGP();
				int exitoEncripcion = pgp.encriptar(Util.getProperty("domain")
						+ Util.getProperty("procedatos")
						+ System.getProperty("file.separator") + nombreZip
						+ "_" + consecutivo.add(new BigDecimal(1))
						+ System.getProperty("file.separator")
						+ nombreZip.toString() + "_"
						+ consecutivo.add(new BigDecimal(1)) + "."
						+ ConstantesAvaluos.FORMATO_ZIP);

				if (exitoEncripcion != 0) {
					isGenerar = false;
					errorValidacion
							.append("Fallo la encripcion del archivo.Favor contactar al administrador del sistema Code: "+exitoEncripcion+"\n");
				}

				// Mover el archivo .txt a procedatos
				File archTxt = new File(Util.getProperty("domain")
						+ Util.getProperty("ziptmp")
						+ System.getProperty("file.separator")
						+ nombreArchivoTxt.toString() + "."
						+ ConstantesAvaluos.FORMATO_TXT);

				File archDestTxt = new File(Util.getProperty("domain")
						+ Util.getProperty("procedatos")
						+ System.getProperty("file.separator")
						+ nombreZip.toString() + "_"
						+ consecutivo.add(new BigDecimal(1)) + "_"
						+ nombreArchivoTxt.toString() + "."
						+ ConstantesAvaluos.FORMATO_TXT);
				
				boolean success = archTxt.renameTo(archDestTxt);
				if (!success) {
					errorValidacion
							.append("Fallo al mover el txt a procedatos. Favor contactar al administrador del sistema \n");
				}


				Date fechaFinCreacion = Calendar.getInstance().getTime();

				// Hace el insert en la tabla logsGeneraArchivo
				LogsGeneraArchivo logsGeneraArchivo = new LogsGeneraArchivo();
				logsGeneraArchivo.setNombreArchivo(nombreZip.toString() + "_"
						+ consecutivo.add(new BigDecimal(1)) + "."
						+ ConstantesAvaluos.FORMATO_ZIP + "."
						+ ConstantesAvaluos.FORMATO_ENCRIPCION);
				logsGeneraArchivo.setNombrePlano(nombreArchivoTxt.toString());
				logsGeneraArchivo.setFechaHasta(fecha);
				
				if(usuarioTransaccion!=null)
				{
					logsGeneraArchivo.setUsuarioCreacion(usuarioTransaccion);
					logsGeneraArchivo.setUsuarioTransaccion(usuarioTransaccion);
					logsGeneraArchivo.setFechaTransaccion(Calendar.getInstance().getTime());
				}

				if (isGenerar) {
					logsGeneraArchivo
							.setEstado(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_GENERADO);
					logsGeneraArchivo
							.setDescripcionError(ConstantesAvaluos.EXITO+" "+avaluosList.size()+" registros generados");
				} else {
					if(avanceValidoTotalRegistros > 0)
					{
						logsGeneraArchivo
								.setEstado(ConstantesAvaluos.ESTADO_CARGUE_RECHAZADO);
						logsGeneraArchivo.setDescripcionError(errorValidacion
								.toString());
						setMensajeTransaccion("No superó la malla validadora: "
								+ errorValidacion);
						res = null;
					}
					else {
						res = new ArrayList<Avaluo>();
						Avaluo avaluoTmp = new Avaluo();
						res.add(avaluoTmp);
						setMensajeTransaccion(ConstantesAvaluos.GENERAR_AVALUOS_VACIO);
					}
				}

				logsGeneraArchivo.setLinkDescarga("/"
						+ Util.getProperty("procedatos") + "/" + nombreZip
						+ "_" + consecutivo.add(new BigDecimal(1)) + "/");
				logsGeneraArchivo.setFechaInicioCreacion(fechaInicioCreacion);
				logsGeneraArchivo.setFechaFinCreacion(fechaFinCreacion);
				entityManager.getTransaction().begin();
				entityManager.persist(logsGeneraArchivo);
				entityManager.getTransaction().commit();

				// Si la generación fue exitosa, actualiza en cada avaluo el
				// archivo en el cual se encuentra
				if (isGenerar) {
					int numLinea = 1;
					for (Avaluo avaluo : avaluosList) {
						// Valida si el avance es mayor o igual al 70%
						isAvanceValido = true;
						InformacionConstruccion construccion = null;
						if ((avaluo.getInformacionConstruccion() != null)
								&& (!avaluo.getInformacionConstruccion()
										.isEmpty())
								&& (avaluo.getInformacionConstruccion().get(0) != null)) {
							construccion = avaluo.getInformacionConstruccion()
									.get(0);
							if (construccion.getEnObra().compareTo(
									new BigDecimal(1)) == 0) {
								isAvanceValido = construccion.getAvanceObra()
								//.compareTo(new BigDecimal(69)) > 0 ? true
								.compareTo(new BigDecimal(ConstantesAvaluos.PORCENTAJE_ASOBANCARIA)) > 0 ? true
										: false;
							}
						}
						if (isAvanceValido) {
							avaluo.setLogsGeneraArchivo(logsGeneraArchivo);
							avaluo.setNumLinea(new BigDecimal(numLinea));
							numLinea++;
							entityManager.getTransaction().begin();
							entityManager.merge(avaluo);
							entityManager.getTransaction().commit();
						}
					}
					res = new ArrayList<Avaluo>();
					setMensajeTransaccion(ConstantesAvaluos.EXITO);
				}

				// Refresca la lista de avaluos
				for (Avaluo avaluo : avaluosList) {
					entityManager.refresh(entityManager.find(Avaluo.class,
							avaluo.getIdAvaluo()));
					entityManager.refresh(entityManager.find(
							LogsGeneraArchivo.class,
							logsGeneraArchivo.getIdLogArchivos()));
				}

			} else {
				res = new ArrayList<Avaluo>();
				Avaluo avaluoTmp = new Avaluo();
				res.add(avaluoTmp);
				setMensajeTransaccion(ConstantesAvaluos.GENERAR_AVALUOS_VACIO);
			}
			ms.enviar("__Ha finalizado el proceso del archivo...__");
			
			//Se reinicia el job antes de llamar el siguiente proceso para que no falle la encripción automática
		    TimerServlet timer = new TimerServlet();
		    timer.iniciaHorasCorte();
		    
		} catch (IOException e) {
			// Log "[ERROR]"
			setMensajeTransaccion(ConstantesAvaluos.ERROR);
			e.printStackTrace();
		} catch (Exception e) {
			// Log "[ERROR]"
			setMensajeTransaccion(ConstantesAvaluos.ERROR);
			e.printStackTrace();
		}
		finally
		{
			if(bloqLogs!= null)
			{
				entityManager.getTransaction().begin();
				//bloqLogs
				bloqLogs.setEstadoRegistro("I");
				bloqLogs.setFechaHasta(fecha);
				bloqLogs.setFechaInicioCreacion(fechaInicioCreacion);
				bloqLogs.setFechaFinCreacion(Calendar.getInstance().getTime());
				bloqLogs.setFechaTransaccion(Calendar.getInstance().getTime());

				if(usuarioTransaccion!=null)
				{
					bloqLogs.setUsuarioCreacion(usuarioTransaccion);
					bloqLogs.setUsuarioTransaccion(usuarioTransaccion);
				}

				//bloqLogs.setUsuarioCreacion(usuarioCreacion);
				//bloqLogs.setUsuarioTransaccion(usuarioTransaccion)
				entityManager.persist(bloqLogs);
				entityManager.getTransaction().commit();
				
				//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
				//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
				
			}
		}
		return res;
	}

	/**
	 * Trunca a un máximo de 4 posiciones decimales un número decimal.
	 *
	 * @param bigDecimal
	 *            Número que se desea truncar
	 * @return Número BigDecimal truncado
	 */
	private BigDecimal round(BigDecimal bigDecimal) {
		BigDecimal res = null;
		String[] partesNumero = bigDecimal.toString().replace(".", "#")
				.split("#");

		if ((partesNumero.length > 1) && (partesNumero[1].length() > 4)) {
			StringBuffer numero = new StringBuffer();
			numero.append(partesNumero[0]);
			numero.append(".");
			for (int i = 0; i < 4; i++) {
				numero.append(partesNumero[1].toCharArray()[i]);
			}
			res = new BigDecimal(numero.toString());
		} else {
			res = bigDecimal;
		}
		return res;
	}

	public String getMensajeTransaccion() {
		return mensajeTransaccion;
	}

	public void setMensajeTransaccion(String mensajeTransaccion) {
		this.mensajeTransaccion = mensajeTransaccion;
	}

	public String getUsuarioTransaccion() {
		return usuarioTransaccion;
	}

	public void setUsuarioTransaccion(String usuarioTransaccion) {
		this.usuarioTransaccion = usuarioTransaccion;
	}
}