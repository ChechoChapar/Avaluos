package com.segurosbolivar.avaluos.daos;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.zip.ZipEntry;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import oracle.jdbc.OracleCallableStatement;

import com.segurosbolivar.avaluos.exceptions.AvaluosBussinesException;
import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
import com.segurosbolivar.avaluos.entities.Archivo;
import com.segurosbolivar.avaluos.entities.Avaluo;
import com.segurosbolivar.avaluos.entities.Ciudad;
import com.segurosbolivar.avaluos.entities.ComportamientoOfertaDemanda;
import com.segurosbolivar.avaluos.entities.CondicionesSalubridad;
import com.segurosbolivar.avaluos.entities.Departamento;
import com.segurosbolivar.avaluos.entities.Dominios;
import com.segurosbolivar.avaluos.entities.EmpresasAvaluos;
import com.segurosbolivar.avaluos.entities.HistoricoAvaluo;
import com.segurosbolivar.avaluos.entities.InformacionBarrio;
import com.segurosbolivar.avaluos.entities.InformacionConstruccion;
import com.segurosbolivar.avaluos.entities.InformacionInmueble;
import com.segurosbolivar.avaluos.entities.LiquidacionAvaluo;
import com.segurosbolivar.avaluos.entities.LiquidacionAvaluoTotal;
import com.segurosbolivar.avaluos.entities.LogsGeneraArchivo;
import com.segurosbolivar.avaluos.entities.Observaciones;
import com.segurosbolivar.avaluos.entities.PeritosEmpresa;
import com.segurosbolivar.avaluos.entities.PgbCargueTmp;
import com.segurosbolivar.avaluos.util.Util;
import com.segurosbolivar.avaluos.util.Utilidades;

import com.segurosbolivar.avaluos.util.campoRequeridoDTO;
/**
 * Objeto de acceso a datos para la entidad Avaluo
 *
 * @author Seguros Bolivar
 * @version 1.0
 */
public class AvaluosDao extends JpaDao<Avaluo> {

	/**
	 * Mensaje de error que se produce al ejecutar la malla validadora
	 */
	private String msjErrorMalla;

	//EntityManager entityManager=emf.createEntityManager();
	
	private String mensajeTransaccion;

	public String getMensajeTransaccion() {
		return mensajeTransaccion;
	}

	public void setMensajeTransaccion(String mensajeTransaccion) {
		this.mensajeTransaccion = mensajeTransaccion;
	}

	/**
	 * Constructor por defecto de la clase
	 */
	public AvaluosDao() {
		super();
		//emf = Persistence.createEntityManagerFactory("avaluosJpa");
	}

	/**
	 * Recupera todos los avaluos
	 *
	 * @return Lista con todos los avaluos almacenados en la BD
	 */
	public List<Avaluo> buscaAvaluos() {
		EntityManager em = emf.createEntityManager();
		Query query = em.createQuery("select a from Avaluo a");
		List<Avaluo> list = query.getResultList();
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
		return list;
	}

	/**
	 * Recupera un avaluo con base en su identificador único
	 *
	 * @param id
	 *            identificador único del avaluo consultado
	 * @return el avaluo consultado
	 */
	public Avaluo buscaPorId(BigDecimal id) {
		EntityManagerFactory emf = Persistence
				.createEntityManagerFactory("AvaluosJPA");
		EntityManager em = emf.createEntityManager();
		Query query = em.createNamedQuery("buscaId");
		query.setParameter("id", id);
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		Avaluo av=(Avaluo)query.getSingleResult();
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
		//return (Avaluo) query.getSingleResult();
		return av;
	}

	/**
	 * Recupera los avaluos que satisfacen los criterios de búsqueda
	 * especificados en el parametro
	 *
	 * @param inmueble
	 *            contiene el filtro matrícula inmobiliaria principal y el
	 *            objeto avaluo dentro del cual se encuentran los filtos: Tipo
	 *            de identificación, Número de identificación, Departamento,
	 *            Ciudad, Dirección, Estado del avaluo, Fecha del avaluo, nombre
	 *            del txt, Número de línea en el txt, Identificación del perito.
	 * @param empresasAvaluos
	 *            contiene el número del documento del usuario que esta
	 *            intentando ejecutar la consulta.
	 * @return Lista con los avaluos que cumplen los filtros de búsqueda
	 * @throws Exception
	 */
	public List<Avaluo> getAvaluosPorCriterio(InformacionInmueble inmueble,
			EmpresasAvaluos empresasAvaluos) throws Exception {
			
		List<Avaluo> resultList = null;
		List<Avaluo> avaluostList = null;
		StringBuffer sql = null;

		//Man 14240 Se cambia la lógica de la condición para que sólo valide perfiles de peritos en la asociación de empresas
		if ((empresasAvaluos.getUsuarioTransaccion().equalsIgnoreCase(ConstantesAvaluos.PERFIL_PERITO_CARGUE)) || 
			(empresasAvaluos.getUsuarioTransaccion().equalsIgnoreCase(ConstantesAvaluos.PERFIL_PERITO_FORMULARIO))) {
			sql = getQueryPerito(inmueble, empresasAvaluos);
		} else if (empresasAvaluos.getUsuarioTransaccion().equalsIgnoreCase(ConstantesAvaluos.PERFIL_PERITO_HIJO)) 
		{
			sql = getQueryPeritoHijo(inmueble, empresasAvaluos);
		}else
		{
			sql = getQueryAdmin(inmueble, empresasAvaluos);
		}

		try {
	    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
			if(!entityManager.isOpen())
				entityManager = emf.createEntityManager();
			Query query = entityManager.createQuery(sql.toString());

			if (inmueble.getAvaluo().getFechaAvaluo() != null) {
				//query.setParameter("fechaAvaluo", inmueble.getAvaluo()
				query.setParameter("fechaAvaluoDesde", inmueble.getAvaluo()						
						.getFechaAvaluo());
			}
			
			//NullPointer
			Date fechaAvHasta = null;
			if(inmueble.getAvaluo().getFechaAvaluoTetxo()!=null)
			{
				if(!inmueble.getAvaluo().getFechaAvaluoTetxo().equals(""))
				{
					/**/
					SimpleDateFormat formatoDelTexto = new SimpleDateFormat("dd/MM/yyyy");
					//String strFecha = "2007-12-25";
					//Date fechaAvHasta = null;
					fechaAvHasta = null;
					try {
						//fecha = formatoDelTexto.parse(strFecha);
						fechaAvHasta = formatoDelTexto.parse(inmueble.getAvaluo().getFechaAvaluoTetxo());
					} catch (/*Parse*/Exception ex) {
						ex.printStackTrace();						
					}/* catch (Exception ex1) {
						ex1.printStackTrace();
					}*/
					
					
					if (fechaAvHasta != null) {
						query.setParameter("fechaAvaluoHasta", fechaAvHasta);
					}
					
				}	
			}
							
			/**/			
			
			if (inmueble.getAvaluo().getFechaCreacion() != null) {
				query.setParameter("fechaDesde", inmueble.getAvaluo().getFechaCreacion());
			}
			if (inmueble.getAvaluo().getFechaTransaccion() != null) {
				query.setParameter("fechaHasta", inmueble.getAvaluo().getFechaTransaccion());
			}
			
			query.setMaxResults(ConstantesAvaluos.CONST_LIMITE_CONSULTA);
			
			resultList = query.getResultList();
			if (!resultList.isEmpty()) {
				avaluostList = new ArrayList<Avaluo>();
				for (Avaluo avaluo : resultList) {
					LogsGeneraArchivo logsGenera = new LogsGeneraArchivo();
					Avaluo avaluoTmp = new Avaluo();
					if ((avaluo.getLogsGeneraArchivo() != null)
							&& (avaluo.getLogsGeneraArchivo().getEstado() != null)) {
						logsGenera.setEstado(avaluo.getLogsGeneraArchivo()
								.getEstado());
					}
					if ((avaluo.getLogsGeneraArchivo() != null)
							&& (avaluo.getLogsGeneraArchivo().getNombrePlano() != null)) {
						logsGenera.setNombrePlano(avaluo.getLogsGeneraArchivo()
								.getNombrePlano());
					}
					if ((avaluo.getLogsGeneraArchivo() != null)
							&& (avaluo.getLogsGeneraArchivo()
									.getNombreArchivo() != null)) {
						logsGenera.setNombreArchivo(avaluo
								.getLogsGeneraArchivo().getNombreArchivo());
					}

					StringBuffer sqlDocumento = new StringBuffer(
							"SELECT d FROM Dominios d WHERE d.rvDomain = 'TIPOIDENTIFICACION' AND d.rvLowValue = '");
					sqlDocumento.append(avaluo.getIdTipoIdentificacion());
					sqlDocumento.append("'");
					List<Dominios> tipoDoc = entityManager.createQuery(
							sqlDocumento.toString()).getResultList();
					if (!tipoDoc.isEmpty()) {
						avaluoTmp.setDominioTipoIdentificacion(tipoDoc.get(0));
					}
					
					StringBuffer sqlCiudad = new StringBuffer(
							"SELECT c FROM Ciudad c WHERE c.codAsobancaria = '");
					sqlCiudad.append(avaluo.getIdCiudad());
					//sqlCiudad.append(avaluo.get);
					sqlCiudad.append("'");
					List<Ciudad> ciu = entityManager.createQuery(
							sqlCiudad.toString()).getResultList();
					if (!ciu.isEmpty()) {
						avaluoTmp.setObjCiudad(ciu.get(0));
					}
					
					if ((avaluo.getInformacionInmueble() != null)
							&& (!avaluo.getInformacionInmueble().isEmpty())) {
						
						avaluoTmp.setMatriculaInmobiliariaPpal1(avaluo
								.getInformacionInmueble().get(0)
								.getMatriculaInmobiliariaPpal1());
						
						InformacionInmueble inmTmp= new InformacionInmueble();
						inmTmp.setMatriculaInmobiliariaPpal1(avaluoTmp.getMatriculaInmobiliariaPpal1());
						inmTmp.setMatriculaInmobiliariaPpal2(avaluo.getInformacionInmueble().get(0)
								.getMatriculaInmobiliariaPpal2());
						
						List<InformacionInmueble> infInmTmp = new ArrayList<InformacionInmueble>();
						infInmTmp.add(inmTmp);
						
						avaluoTmp.setInformacionInmueble(infInmTmp);
						
						avaluoTmp.setMatriculaInmobiliariaPpal1(avaluo
								.getInformacionInmueble().get(0)
								.getMatriculaInmobiliariaPpal1());
						
					}

					avaluoTmp.setTipoInforme(avaluo.getTipoInforme());
					
					if ((avaluo.getInformacionConstruccion() != null)
							&& (!avaluo.getInformacionConstruccion().isEmpty())) {
						/*avaluoTmp.setMatriculaInmobiliariaPpal1(avaluo
								.getInformacionInmueble().get(0)
								.getMatriculaInmobiliariaPpal1());*/				
						
						InformacionConstruccion info = new InformacionConstruccion();
						info.setAvanceObra(avaluo.getInformacionConstruccion().get(0).getAvanceObra());
						//info.setEstadoTerminadaNueva(estadoTerminadaNueva)
						
						info.setEstadoTerminadaNueva(avaluo.getInformacionConstruccion().get(0).getEstadoTerminadaNueva());
																		
						List<InformacionConstruccion> infoLst=new ArrayList<InformacionConstruccion>();
						infoLst.add(info);
						
						avaluoTmp.setInformacionConstruccion(infoLst);
						//NUEVO
						//avaluoTmp.setInformacionConstruccion(avaluo.getInformacionConstruccion());
					}
					
					/*Departamento objDepto = new Departamento();
					objDepto.setCodDane(avaluo.getCodigoDaneDepartamento());
					objDepto.setCodAsobancaria(avaluo.);
					
					Ciudad objCiudad = new Ciudad();
					objCiudad.setCodDane(avaluo.getCodigoDaneCiudad());
					objCiudad.setDepartamento(objDepto);
					
					avaluoTmp.setObjCiudad(objCiudad);*/
					
					avaluoTmp.setIdCiudad(avaluo.getIdCiudad());
					avaluoTmp.setIdDepartamento(avaluo.getIdDepartamento());
					avaluoTmp.setCodigoDaneCiudad(avaluo.getCodigoDaneCiudad());
					avaluoTmp.setCodigoDaneDepartamento(avaluo.getCodigoDaneDepartamento());
					avaluoTmp.setBarrio(avaluo.getBarrio());
					avaluoTmp.setFechaAvaluo(avaluo.getFechaAvaluo());
					
					
					avaluoTmp.setIdAvaluo(avaluo.getIdAvaluo());
					avaluoTmp.setConsecutivoBanco(avaluo.getConsecutivoBanco());
					avaluoTmp.setNumeroIdentificacion(avaluo
							.getNumeroIdentificacion());
					avaluoTmp.setFechaAvaluo(avaluo.getFechaAvaluo());
					avaluoTmp.setNombreSolicitante(avaluo
							.getNombreSolicitante());
					avaluoTmp.setDireccionInmueble(avaluo
							.getDireccionInmueble());
					avaluoTmp.setEstadoAvaluo(avaluo.getEstadoAvaluo());
					avaluoTmp.setNumLinea(avaluo.getNumLinea());
					avaluoTmp.setLogsGeneraArchivo(logsGenera);
					avaluoTmp.setFechaCreacion(avaluo.getFechaCreacion());

					avaluoTmp.setUsuarioCreacion(avaluo.getUsuarioCreacion());
					avaluoTmp.setUsuarioTransaccion(avaluo.getUsuarioTransaccion());

					avaluoTmp.setFechaTransaccion(avaluo.getFechaTransaccion());

					avaluostList.add(avaluoTmp);
				}
			}
		} catch (Exception e) {
			log.log(Level.SEVERE, "[ERROR]", e);
			//throw new Exception(ConstantesAvaluos.ERROR);
			Util.ManejaExcepciones(e);
		}
		finally
		{
	    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	    	//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
		}
		return avaluostList;
	}

	/**
	 * Crea un avaluo en estado nuevo y como usuario (tusuario) registra: la
	 * empresa si el perito pertenece a una, sino registra al perito. Además
	 * crea el inmueble al que corresponde el avaluo con la matricula
	 * inmobiliaria principal, la liquidación total del avaluo con el valor de
	 * la UVR en la fecha del avaluo, y el histórico del avaluo con todos sus
	 * datos.
	 *
	 * @param objeto
	 *            Avaluo que se va a persistir debe contener el inmueble con el
	 *            valor de la matricula inmobiliaria principal.
	 * @return Cadena de texto que indica si el perito aún no existe como
	 *         empresa.
	 * @throws Exception
	 */
	public String create(Avaluo objeto) throws Exception {
		String res = "";
		try {
			EntityManager entityManager = emf.createEntityManager();
			objeto.setFechaCreacion(Calendar.getInstance().getTime());
			objeto.setFechaTransaccion(Calendar.getInstance().getTime());
			objeto.setNombreBanco(ConstantesAvaluos.NOMBRE_ENTIDAD_DAVIVIENDA);
			objeto.setCodigoBanco(new BigDecimal(
					ConstantesAvaluos.CODIGO_ENTIDAD_DAVIVIENDA));
			objeto.setConsecutivoBanco(new BigDecimal(Util.getAnyDateAsString(
					objeto.getFechaAvaluo(), "ddMMyyyy")
					+ objeto.getNumeroIdentificacion()));
			
			//mantis 39594 cambia criterio para definir avaluos constructor
			//objeto.setTipoInforme(new BigDecimal(ConstantesAvaluos.TIPO_INFORME));
			objeto.setEstadoAvaluo(new BigDecimal(
					ConstantesAvaluos.ESTADO_AVALUO_NUEVO));
			objeto.setIdDepartamento(objeto.getObjCiudad().getDepartamento()
					.getCodAsobancaria());
			// Se busca el num de dcto del tusuario en la tabla de empresas y
			// este es el que se persiste
			StringBuffer sqlTUsuario = new StringBuffer();
			sqlTUsuario
					.append("SELECT e FROM EmpresasAvaluos e, PeritosEmpresa p WHERE p.EmpresasAvaluo.idEmpresaAvaluo = e.idEmpresaAvaluo");
			sqlTUsuario
					.append(" AND p.estadoAsociacion = 'A' AND p.numeroDocumento = '");
			sqlTUsuario.append(objeto.getTUsuario());
			sqlTUsuario.append("'");
			List<EmpresasAvaluos> empresas = entityManager.createQuery(
					sqlTUsuario.toString()).getResultList();
			if ((empresas != null) && (!empresas.isEmpty())) {
				objeto.setTUsuario(empresas.get(0).getNumeroDocumento()
						.toString());

				// Crea el inmuble en el cual se encuentra la matricula
				// inmobiliaria principal 1
				InformacionInmueble informacionInmueble = new InformacionInmueble();
				informacionInmueble.setMatriculaInmobiliariaPpal1(objeto
						.getMatriculaInmobiliariaPpal1());
				informacionInmueble.setUsuarioCreacion(objeto
						.getUsuarioCreacion());
				informacionInmueble.setFechaCreacion(Calendar.getInstance()
						.getTime());
				informacionInmueble.setUsuarioTransaccion(objeto
						.getUsuarioTransaccion());
				informacionInmueble.setFechaTransaccion(Calendar.getInstance()
						.getTime());

				entityManager.getTransaction().begin();
				//Man 14977 try catch para evitar null pointer exception
				//entityManager.persist(objeto);
				try {
					entityManager.persist(objeto); 
				} catch (EntityExistsException exc) 
				{
					/*
					try 
					{
						objeto = entityManager.merge(objeto); 
					} catch (Exception e) 
					{ throw e; 
					}
					*/
					//setMensajeTransaccion("ya existe en el sistema un avaluo con este id");
					//throw exc;
					res="Error: ya existe en el sistema este avaluo";
					return res;
				}
				
				informacionInmueble.setAvaluo(objeto);
				//Man 14977 try catch para evitar null pointer exception
				//entityManager.persist(informacionInmueble);
				try {
					entityManager.persist(informacionInmueble); 
				} catch (EntityExistsException exc) 
				{ 
					try 
					{ 
						informacionInmueble = entityManager.merge(informacionInmueble); 
					} catch (Exception e) 
					{ 
						//throw e;
						Util.ManejaExcepciones(e);
					}
				}
				
				java.util.Date fechaProceso = Calendar.getInstance().getTime(); 
				InformacionBarrio informacionBarrio = new InformacionBarrio();
				informacionBarrio.setAvaluo(objeto); 
				informacionBarrio.setFechaCreacion(fechaProceso);
				informacionBarrio.setFechaTransaccion(fechaProceso);
				informacionBarrio.setUsuarioCreacion(objeto.getUsuarioCreacion()); 
				informacionBarrio.setUsuarioTransaccion(objeto.getUsuarioCreacion()); 
				entityManager.persist(informacionBarrio); 				
				
				InformacionConstruccion informacionConstruccion = new InformacionConstruccion();
				informacionConstruccion.setAvaluo(objeto); 
				informacionConstruccion.setSala(BigDecimal.ZERO);
				informacionConstruccion.setBanioSocial(BigDecimal.ZERO);
				informacionConstruccion.setBanioPrivado(BigDecimal.ZERO);
				informacionConstruccion.setBanioServicio(BigDecimal.ZERO);
				informacionConstruccion.setJardin(BigDecimal.ZERO);
				informacionConstruccion.setComedor(BigDecimal.ZERO);
				informacionConstruccion.setEstarHabitacion(BigDecimal.ZERO);
				informacionConstruccion.setCocina(BigDecimal.ZERO);
				informacionConstruccion.setPatioInterior(BigDecimal.ZERO);
				informacionConstruccion.setBalcon(BigDecimal.ZERO);
				informacionConstruccion.setEstudio(BigDecimal.ZERO);
				informacionConstruccion.setNumeroHabitaciones(BigDecimal.ZERO);
				informacionConstruccion.setCuartoServicio(BigDecimal.ZERO);
				informacionConstruccion.setTerraza(BigDecimal.ZERO);
				informacionConstruccion.setZonaVerdePrivada(BigDecimal.ZERO);
				informacionConstruccion.setTotalGarajes(BigDecimal.ZERO);
				informacionConstruccion.setUsoExclusivo(BigDecimal.ZERO);
				informacionConstruccion.setSencillo(BigDecimal.ZERO);
				informacionConstruccion.setDeposito(BigDecimal.ZERO);
				informacionConstruccion.setLocal(BigDecimal.ZERO);
				informacionConstruccion.setCubierto(BigDecimal.ZERO);
				informacionConstruccion.setPrivado(BigDecimal.ZERO);
				informacionConstruccion.setDoble(BigDecimal.ZERO);
				informacionConstruccion.setBodega(BigDecimal.ZERO);
				informacionConstruccion.setDescubierto(BigDecimal.ZERO);
				informacionConstruccion.setBahiaComunal(BigDecimal.ZERO);
				informacionConstruccion.setServidumbre(BigDecimal.ZERO);
				informacionConstruccion.setOficina(BigDecimal.ZERO);
				informacionConstruccion.setFechaCreacion(fechaProceso);
				informacionConstruccion.setFechaTransaccion(fechaProceso);
				informacionConstruccion.setUsuarioCreacion(objeto.getUsuarioCreacion()); 
				informacionConstruccion.setUsuarioTransaccion(objeto.getUsuarioCreacion()); 
				entityManager.persist(informacionConstruccion);
				
				CondicionesSalubridad condicionesSalubridad = new CondicionesSalubridad(); 
				condicionesSalubridad.setAvaluo(objeto); 
				condicionesSalubridad.setFechaCreacion(fechaProceso);
				condicionesSalubridad.setFechaTransaccion(fechaProceso);
				condicionesSalubridad.setUsuarioCreacion(objeto.getUsuarioCreacion()); 
				condicionesSalubridad.setUsuarioTransaccion(objeto.getUsuarioCreacion()); 
				entityManager.persist(condicionesSalubridad);
				
				ComportamientoOfertaDemanda comportamientoOfertaDemanda = new ComportamientoOfertaDemanda(); 
				comportamientoOfertaDemanda.setAvaluo(objeto); 
				comportamientoOfertaDemanda.setFechaCreacion(fechaProceso);
				comportamientoOfertaDemanda.setFechaTransaccion(fechaProceso);
				comportamientoOfertaDemanda.setUsuarioCreacion(objeto.getUsuarioCreacion()); 
				comportamientoOfertaDemanda.setUsuarioTransaccion(objeto.getUsuarioCreacion()); 
				entityManager.persist(comportamientoOfertaDemanda);
				
				Observaciones observaciones = new Observaciones(); 
				observaciones.setAvaluo(objeto); 
				observaciones.setFechaCreacion(fechaProceso);
				observaciones.setFechaTransaccion(fechaProceso);
				observaciones.setUsuarioCreacion(objeto.getUsuarioCreacion()); 
				observaciones.setUsuarioTransaccion(objeto.getUsuarioCreacion()); 
				entityManager.persist(observaciones);
				
				LiquidacionAvaluo liquidacionAvaluo = new LiquidacionAvaluo(); 
				liquidacionAvaluo.setAvaluo(objeto); 
				liquidacionAvaluo.setFechaCreacion(fechaProceso);
				liquidacionAvaluo.setFechaTransaccion(fechaProceso);
				liquidacionAvaluo.setUsuarioCreacion(objeto.getUsuarioCreacion()); 
				liquidacionAvaluo.setUsuarioTransaccion(objeto.getUsuarioCreacion());
				liquidacionAvaluo.setConsecutivo(BigDecimal.ZERO); 
				entityManager.persist(liquidacionAvaluo);

				// Crea la liquidación para almacenar el valor de la uvr
			/**	LiquidacionAvaluoTotal liquidacionAvaluoTotal = new LiquidacionAvaluoTotal();
				// liquidacionAvaluoTotal.setAvaluo(objeto);
				liquidacionAvaluoTotal.setValorUvrDia(getUvrDia(Util
						.getAnyDateAsString(objeto.getFechaAvaluo(),
								"dd/MM/yyyy")));
				liquidacionAvaluoTotal.setFechaCreacion(Calendar.getInstance()
						.getTime());
				liquidacionAvaluoTotal.setFechaTransaccion(Calendar
						.getInstance().getTime());
				liquidacionAvaluoTotal.setUsuarioCreacion(objeto
						.getUsuarioCreacion());
				liquidacionAvaluoTotal.setUsuarioTransaccion(objeto
						.getUsuarioTransaccion());  
				entityManager.persist(liquidacionAvaluoTotal);**/ 

				HistoricoAvaluo historicoAvaluos = new HistoricoAvaluo();
				historicoAvaluos.setAvaluo(objeto);
				historicoAvaluos.setConsecutivoBanco(objeto
						.getConsecutivoBanco());
				historicoAvaluos.setIdTipoIdentificacion(objeto
						.getIdTipoIdentificacion());
				historicoAvaluos.setNumeroIdentificacion(objeto
						.getNumeroIdentificacion());
				historicoAvaluos.setTipoDocumento(objeto.getTipoDocumento());
				historicoAvaluos.setNombreSolicitante(objeto
						.getNombreSolicitante());
				historicoAvaluos.setFechaAvaluo(objeto.getFechaAvaluo());
				historicoAvaluos.setIdCiudad(objeto.getIdCiudad());
				historicoAvaluos.setIdDepartamento(objeto.getIdDepartamento());
				historicoAvaluos.setDireccionInmueble(objeto
						.getDireccionInmueble());
				historicoAvaluos.setBarrio(objeto.getBarrio());
				historicoAvaluos.setNombreBanco(objeto.getNombreBanco());
				historicoAvaluos.setCodigoBanco(objeto.getCodigoBanco());
				historicoAvaluos.setEstadoAvaluo(objeto.getEstadoAvaluo());
				historicoAvaluos.setUsuario(objeto.getTUsuario());
				historicoAvaluos.setFechaCreacion(objeto.getFechaCreacion());
				historicoAvaluos.setUsuarioTransaccion(objeto
						.getUsuarioTransaccion());
				historicoAvaluos.setFechaTransaccion(objeto
						.getFechaTransaccion());
				//Man 14977 try catch para evitar null pointer exception
				//entityManager.persist(historicoAvaluos);
				//try { entityManager.persist(historicoAvaluos); } catch (EntityExistsException exc) { try { /*historicoAvaluos = entityManager.merge(historicoAvaluos);*/res = "No es posible crear el avaluo\n\nEl registro ya existe"; } catch (Exception e) { throw e; } }
				
				
				
				entityManager.getTransaction().commit();
				
			} else {
				//res = "No es posible crear el avaluo\n\nEl perito aún no esta asociado a una empresa";
				throw new AvaluosBussinesException("No es posible crear el avaluo\n\nEl perito aún no esta asociado a una empresa");
			}	
		} catch (org.eclipse.persistence.exceptions.DatabaseException e) {
//			String errMsg = e.getMessage();
//			if(errMsg.contains("ORA-00001") && errMsg.contains("viol")) //Unique constraint  
//			{  
//				throw new Exception(ConstantesAvaluos.ORA_00001_UK ,e);
//			}else if(errMsg.contains("ORA-01400"))                      ///Cannot insert null
//			{  
//					throw new Exception(ConstantesAvaluos.ORA_01400_INS_NULL ,e);
//			}else if(errMsg.contains("ORA-03113")||errMsg.contains("ORA-00028")||errMsg.contains("ORA-00031")||errMsg.contains("ORA-01034")||errMsg.contains("12528")||errMsg.contains("ORA-12514")||errMsg.contains("ORA-12537"))                      
//			{  
//					throw new Exception(ConstantesAvaluos.ORA_CONN+""+e.getMessage().toString() ,e);
//			}
//			//ORA-03113: end-of-file on communication channel
//			//ORA-00028: your session has been killed
//			//ORA-00031: session marked for kill
//			//ORA-01034: ORACLE not available
//			//ORA-12514, TNS:listener does not currently know of service requested in connect descriptor
//			//ORA-12528, TNS:listener: all appropriate instances are blocking new connections
//			else if(errMsg.contains("ORA-20599"))                      ///Cannot insert null
//			{  
//				  //then display required user friendly msg
//					throw new Exception(ConstantesAvaluos.ORA_20599_PLSQL+" "+e.getMessage().toString() ,e);
//			}			
//			//ORA-20599: A user specified error message
//			else
//			{
//				throw new Exception(ConstantesAvaluos.ERROR+" "+e.getMessage().toString() ,e);
//			}
			
			Util.ManejaExcepciones(e);
			
		} catch (javax.persistence.RollbackException e) {
//			String errMsg = e.getMessage();
//			if(errMsg.contains("ORA-00001") && errMsg.contains("viol")) //Unique constraint  
//			{  
//				throw new Exception(ConstantesAvaluos.ORA_00001_UK ,e);
//			}else if(errMsg.contains("ORA-01400"))                      ///Cannot insert null
//			{  
//					throw new Exception(ConstantesAvaluos.ORA_01400_INS_NULL ,e);
//			}else if(errMsg.contains("ORA-03113")||errMsg.contains("ORA-00028")||errMsg.contains("ORA-00031")||errMsg.contains("ORA-01034")||errMsg.contains("12528")||errMsg.contains("ORA-12514")||errMsg.contains("ORA-12537"))                      
//			{  
//					throw new Exception(ConstantesAvaluos.ORA_CONN+""+e.getMessage().toString() ,e);
//			}
//			//ORA-03113: end-of-file on communication channel
//			//ORA-00028: your session has been killed
//			//ORA-00031: session marked for kill
//			//ORA-01034: ORACLE not available
//			//ORA-12514, TNS:listener does not currently know of service requested in connect descriptor
//			//ORA-12528, TNS:listener: all appropriate instances are blocking new connections
//			else if(errMsg.contains("ORA-20599"))                      ///Cannot insert null
//			{  
//				  //then display required user friendly msg
//					throw new Exception(ConstantesAvaluos.ORA_20599_PLSQL+" "+e.getMessage().toString() ,e);
//			}			
//			//ORA-20599: A user specified error message
//			else
//			{
//				throw new Exception(ConstantesAvaluos.ERROR+" "+e.getMessage().toString() ,e);
//			}	
			Util.ManejaExcepciones(e);
		} catch (Exception e) {
			
//			if(e.getCause()!=null)
//				if(e.getCause().getCause()!=null)
//					if(e.getCause().getCause().toString().contains("ORA-02291"))
//					{	
//						res="Error; no se puedo guardar el registro: Un Avaluo con este mismo numero de documento y fecha de avaluo ya fue registrado el dia de hoy. Si desea puede buscarlo y editarlo";
//						return res;
//					}				
			log.log(Level.SEVERE, "[ERROR]", e);
//			throw new Exception(ConstantesAvaluos.ERROR ,e);
			
			Util.ManejaExcepciones(e);
		}
		finally
		{
	    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	    	//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
		}
		//entityManager.flush();
		//System.out.println(objeto.getIdAvaluo());
		res="OK"+objeto.getIdAvaluo();
		return res;
	}
	
	/**
	 * Crea un avaluo en estado nuevo y como usuario (tusuario) registra: la
	 * empresa si el perito pertenece a una, sino registra al perito. Además
	 * crea el inmueble al que corresponde el avaluo con la matricula
	 * inmobiliaria principal, la liquidación total del avaluo con el valor de
	 * la UVR en la fecha del avaluo, y el histórico del avaluo con todos sus
	 * datos.
	 *
	 * @param objeto
	 *            Avaluo que se va a persistir debe contener el inmueble con el
	 *            valor de la matricula inmobiliaria principal.
	 * @return Cadena de texto que indica si el perito aún no existe como
	 *         empresa.
	 * @throws Exception
	 */
	public Avaluo crearAvaluo(Avaluo objeto) throws Exception {
		try {
			entityManager = emf.createEntityManager();
			objeto.setFechaCreacion(Calendar.getInstance().getTime());
			objeto.setFechaTransaccion(Calendar.getInstance().getTime());
			objeto.setNombreBanco(ConstantesAvaluos.NOMBRE_ENTIDAD_DAVIVIENDA);
			objeto.setCodigoBanco(new BigDecimal(ConstantesAvaluos.CODIGO_ENTIDAD_DAVIVIENDA));
			objeto.setConsecutivoBanco(new BigDecimal(Util.getAnyDateAsString(objeto.getFechaAvaluo(), "ddMMyyyy") + objeto.getNumeroIdentificacion()));
			
			//mantis 39594 cambia criterio para definir avaluos constructor
			//objeto.setTipoInforme(new BigDecimal(ConstantesAvaluos.TIPO_INFORME));
			objeto.setEstadoAvaluo(new BigDecimal(ConstantesAvaluos.ESTADO_AVALUO_NUEVO));
			objeto.setIdDepartamento(objeto.getObjCiudad().getDepartamento().getCodAsobancaria());
			// Se busca el num de dcto del tusuario en la tabla de empresas y
			// este es el que se persiste
			StringBuffer sqlTUsuario = new StringBuffer();
			sqlTUsuario.append("SELECT e FROM EmpresasAvaluos e, PeritosEmpresa p WHERE p.EmpresasAvaluo.idEmpresaAvaluo = e.idEmpresaAvaluo");
			sqlTUsuario.append(" AND p.estadoAsociacion = 'A' AND p.numeroDocumento = '");
			sqlTUsuario.append(objeto.getTUsuario());
			sqlTUsuario.append("'");
			List<EmpresasAvaluos> empresas = entityManager.createQuery(sqlTUsuario.toString()).getResultList();
			if ((empresas != null) && (!empresas.isEmpty())) {
				objeto.setTUsuario(empresas.get(0).getNumeroDocumento().toString());

				entityManager.getTransaction().begin();
				
				java.util.Date fechaProceso = Calendar.getInstance().getTime();
				
				if(objeto.getInformacionBarrio() != null && objeto.getInformacionBarrio().size() > 0){
					objeto.getInformacionBarrio().get(0).setFechaCreacion(fechaProceso);
					objeto.getInformacionBarrio().get(0).setFechaTransaccion(fechaProceso);
					if(objeto.getInformacionBarrio().get(0).getUsuarioCreacion() == null){
						objeto.getInformacionBarrio().get(0).setUsuarioCreacion(objeto.getUsuarioCreacion()); 						
					}
					if(objeto.getInformacionBarrio().get(0).getUsuarioTransaccion() == null){
						objeto.getInformacionBarrio().get(0).setUsuarioTransaccion(objeto.getUsuarioCreacion());
					}					
				}else{					
					List<InformacionBarrio> barrioList = new ArrayList<InformacionBarrio>(); 
					InformacionBarrio informacionBarrio = new InformacionBarrio();
					informacionBarrio.setAvaluo(objeto); 
					informacionBarrio.setFechaCreacion(fechaProceso);
					informacionBarrio.setFechaTransaccion(fechaProceso);
					informacionBarrio.setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					informacionBarrio.setUsuarioTransaccion(objeto.getUsuarioCreacion());
					barrioList.add(informacionBarrio); 		
					objeto.setInformacionBarrio(barrioList); 
				}
				
				if(objeto.getInformacionInmueble() != null && objeto.getInformacionInmueble().size() > 0){
					if(objeto.getInformacionInmueble().get(0).getUsuarioCreacion() == null){
						objeto.getInformacionInmueble().get(0).setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					}
					if(objeto.getInformacionInmueble().get(0).getUsuarioTransaccion() == null){
						objeto.getInformacionInmueble().get(0).setUsuarioTransaccion(objeto.getUsuarioCreacion());
					}
					objeto.getInformacionInmueble().get(0).setFechaCreacion(fechaProceso);
					objeto.getInformacionInmueble().get(0).setFechaTransaccion(fechaProceso);
				}else{
					List<InformacionInmueble> inmuebleList = new ArrayList<InformacionInmueble>(); 
					
					InformacionInmueble informacionInmueble = new InformacionInmueble();
					informacionInmueble.setMatriculaInmobiliariaPpal1(objeto.getMatriculaInmobiliariaPpal1());
					informacionInmueble.setUsuarioCreacion(objeto.getUsuarioCreacion());
					informacionInmueble.setFechaCreacion(fechaProceso);
					informacionInmueble.setUsuarioTransaccion(objeto.getUsuarioTransaccion());
					informacionInmueble.setFechaTransaccion(fechaProceso);
					informacionInmueble.setAvaluo(objeto); 
					inmuebleList.add(informacionInmueble); 
					objeto.setInformacionInmueble(inmuebleList); 
				}
				
				if(objeto.getInformacionConstruccion() != null && objeto.getInformacionConstruccion().size() > 0){
					objeto.getInformacionConstruccion().get(0).setFechaCreacion(fechaProceso); 
					objeto.getInformacionConstruccion().get(0).setFechaTransaccion(fechaProceso); 
					
					if(objeto.getInformacionConstruccion().get(0).getUsuarioCreacion() == null){
						objeto.getInformacionConstruccion().get(0).setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					}
					if(objeto.getInformacionConstruccion().get(0).getUsuarioTransaccion() == null){
						objeto.getInformacionConstruccion().get(0).setUsuarioTransaccion(objeto.getUsuarioCreacion());
					}
					
				}else{
					List<InformacionConstruccion> construccionList = new ArrayList<InformacionConstruccion>(); 
					InformacionConstruccion informacionConstruccion = new InformacionConstruccion();
					informacionConstruccion.setAvaluo(objeto); 
					informacionConstruccion.setSala(BigDecimal.ZERO);
					informacionConstruccion.setBanioSocial(BigDecimal.ZERO);
					informacionConstruccion.setBanioPrivado(BigDecimal.ZERO);
					informacionConstruccion.setBanioServicio(BigDecimal.ZERO);
					informacionConstruccion.setJardin(BigDecimal.ZERO);
					informacionConstruccion.setComedor(BigDecimal.ZERO);
					informacionConstruccion.setEstarHabitacion(BigDecimal.ZERO);
					informacionConstruccion.setCocina(BigDecimal.ZERO);
					informacionConstruccion.setPatioInterior(BigDecimal.ZERO);
					informacionConstruccion.setBalcon(BigDecimal.ZERO);
					informacionConstruccion.setEstudio(BigDecimal.ZERO);
					informacionConstruccion.setNumeroHabitaciones(BigDecimal.ZERO);
					informacionConstruccion.setCuartoServicio(BigDecimal.ZERO);
					informacionConstruccion.setTerraza(BigDecimal.ZERO);
					informacionConstruccion.setZonaVerdePrivada(BigDecimal.ZERO);
					informacionConstruccion.setTotalGarajes(BigDecimal.ZERO);
					informacionConstruccion.setUsoExclusivo(BigDecimal.ZERO);
					informacionConstruccion.setSencillo(BigDecimal.ZERO);
					informacionConstruccion.setDeposito(BigDecimal.ZERO);
					informacionConstruccion.setLocal(BigDecimal.ZERO);
					informacionConstruccion.setCubierto(BigDecimal.ZERO);
					informacionConstruccion.setPrivado(BigDecimal.ZERO);
					informacionConstruccion.setDoble(BigDecimal.ZERO);
					informacionConstruccion.setBodega(BigDecimal.ZERO);
					informacionConstruccion.setDescubierto(BigDecimal.ZERO);
					informacionConstruccion.setBahiaComunal(BigDecimal.ZERO);
					informacionConstruccion.setServidumbre(BigDecimal.ZERO);
					informacionConstruccion.setOficina(BigDecimal.ZERO);
					informacionConstruccion.setFechaCreacion(fechaProceso);
					informacionConstruccion.setFechaTransaccion(fechaProceso);
					informacionConstruccion.setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					informacionConstruccion.setUsuarioTransaccion(objeto.getUsuarioCreacion()); 
					informacionConstruccion.setAvaluo(objeto);
					construccionList.add(informacionConstruccion); 
					objeto.setInformacionConstruccion(construccionList); 
				}
				
				if(objeto.getCondicionSalubridad() != null && objeto.getCondicionSalubridad().size() > 0){
					objeto.getCondicionSalubridad().get(0).setFechaCreacion(fechaProceso); 
					objeto.getCondicionSalubridad().get(0).setFechaTransaccion(fechaProceso); 
					if(objeto.getCondicionSalubridad().get(0).getUsuarioCreacion() == null){
						objeto.getCondicionSalubridad().get(0).setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					}
					if(objeto.getCondicionSalubridad().get(0).getUsuarioTransaccion() == null){
						objeto.getCondicionSalubridad().get(0).setUsuarioTransaccion(objeto.getUsuarioCreacion());
					}
					
				}else{
					List<CondicionesSalubridad> condicionList = new ArrayList<CondicionesSalubridad>(); 
					CondicionesSalubridad condicionesSalubridad = new CondicionesSalubridad(); 
					condicionesSalubridad.setAvaluo(objeto); 
					condicionesSalubridad.setFechaCreacion(fechaProceso);
					condicionesSalubridad.setFechaTransaccion(fechaProceso);
					condicionesSalubridad.setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					condicionesSalubridad.setUsuarioTransaccion(objeto.getUsuarioCreacion());
					condicionesSalubridad.setAvaluo(objeto);
					condicionList.add(condicionesSalubridad); 
					objeto.setCondicionSalubridad(condicionList); 
				}
				
				if(objeto.getCompOfertaDemanda() != null && objeto.getCompOfertaDemanda().size()>0){
					objeto.getCompOfertaDemanda().get(0).setFechaCreacion(fechaProceso);
					objeto.getCompOfertaDemanda().get(0).setFechaTransaccion(fechaProceso);	
					
					if(objeto.getCompOfertaDemanda().get(0).getUsuarioCreacion() == null){
						objeto.getCompOfertaDemanda().get(0).setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					}
					if(objeto.getCompOfertaDemanda().get(0).getUsuarioTransaccion() == null){
						objeto.getCompOfertaDemanda().get(0).setUsuarioTransaccion(objeto.getUsuarioCreacion());
					}
				}else{
					List<ComportamientoOfertaDemanda> comportamientoList = new ArrayList<ComportamientoOfertaDemanda>(); 
					ComportamientoOfertaDemanda comportamientoOfertaDemanda = new ComportamientoOfertaDemanda(); 
					comportamientoOfertaDemanda.setAvaluo(objeto); 
					comportamientoOfertaDemanda.setFechaCreacion(fechaProceso);
					comportamientoOfertaDemanda.setFechaTransaccion(fechaProceso);
					comportamientoOfertaDemanda.setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					comportamientoOfertaDemanda.setUsuarioTransaccion(objeto.getUsuarioCreacion());
					comportamientoOfertaDemanda.setAvaluo(objeto);
					comportamientoList.add(comportamientoOfertaDemanda); 
					objeto.setCompOfertaDemanda(comportamientoList); 					 
				}
				
				if(objeto.getObservacion() != null && objeto.getObservacion().size()>0){
					objeto.getObservacion().get(0).setFechaCreacion(objeto.getFechaCreacion()); 
					objeto.getObservacion().get(0).setFechaTransaccion(objeto.getFechaTransaccion()); 
					if(objeto.getObservacion().get(0).getUsuarioCreacion() == null){
						objeto.getObservacion().get(0).setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					}
					if(objeto.getObservacion().get(0).getUsuarioTransaccion() == null){
						objeto.getObservacion().get(0).setUsuarioTransaccion(objeto.getUsuarioCreacion());
					}
					
				}else{
					List<Observaciones> observacionList = new ArrayList<Observaciones>(); 
					Observaciones observaciones = new Observaciones(); 
					observaciones.setAvaluo(objeto); 
					observaciones.setFechaCreacion(fechaProceso);
					observaciones.setFechaTransaccion(fechaProceso);
					observaciones.setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					observaciones.setUsuarioTransaccion(objeto.getUsuarioCreacion());
					observaciones.setAvaluo(objeto);
					observacionList.add(observaciones);  
					objeto.setObservacion(observacionList); 
				}
				
				if(objeto.getLiquidacionAvaluos() != null){
					for(int i=0; i<objeto.getLiquidacionAvaluos().size(); i++){
						objeto.getLiquidacionAvaluos().get(i).setFechaCreacion(fechaProceso); 
						objeto.getLiquidacionAvaluos().get(i).setFechaTransaccion(fechaProceso);
						if(objeto.getLiquidacionAvaluos().get(0).getUsuarioCreacion() == null){
							objeto.getLiquidacionAvaluos().get(0).setUsuarioCreacion(objeto.getUsuarioCreacion()); 
						}
						if(objeto.getLiquidacionAvaluos().get(0).getUsuarioTransaccion() == null){
							objeto.getLiquidacionAvaluos().get(0).setUsuarioTransaccion(objeto.getUsuarioCreacion());
						}
					}
				}else{
					List<LiquidacionAvaluo> liquidacionList = new ArrayList<LiquidacionAvaluo>(); 
					for(int i=1; i<=10; i++){
						LiquidacionAvaluo liquidacionAvaluo = new LiquidacionAvaluo(); 
						liquidacionAvaluo.setAvaluo(objeto); 
						liquidacionAvaluo.setFechaCreacion(fechaProceso);
						liquidacionAvaluo.setFechaTransaccion(fechaProceso);
						liquidacionAvaluo.setUsuarioCreacion(objeto.getUsuarioCreacion()); 
						liquidacionAvaluo.setUsuarioTransaccion(objeto.getUsuarioCreacion());
						liquidacionAvaluo.setConsecutivo(new BigDecimal(i)); 
						liquidacionAvaluo.setAreaLiquidacion(BigDecimal.ZERO);
						liquidacionAvaluo.setValor(BigDecimal.ZERO);
						liquidacionAvaluo.setValorTotal(BigDecimal.ZERO); 
						liquidacionAvaluo.setAvaluo(objeto);						
						liquidacionList.add(liquidacionAvaluo); 
					}		
					objeto.setLiquidacionAvaluos(liquidacionList); 
				}
				
				if(objeto.getLiquidacionTotal() != null && objeto.getLiquidacionTotal().size()>0){
					objeto.getLiquidacionTotal().get(0).setFechaCreacion(fechaProceso); 
					objeto.getLiquidacionTotal().get(0).setFechaTransaccion(fechaProceso); 
					if(objeto.getLiquidacionTotal().get(0).getUsuarioCreacion() == null){
						objeto.getLiquidacionTotal().get(0).setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					}
					if(objeto.getLiquidacionTotal().get(0).getUsuarioTransaccion() == null){
						objeto.getLiquidacionTotal().get(0).setUsuarioTransaccion(objeto.getUsuarioCreacion());
					}
				}else {
					List<LiquidacionAvaluoTotal> liquidacionList = new ArrayList<LiquidacionAvaluoTotal>(); 
					LiquidacionAvaluoTotal liquidacionAvaluoTotal = new LiquidacionAvaluoTotal();
					liquidacionAvaluoTotal.setValorUvrDia(getUvrDia(Util.getAnyDateAsString(objeto.getFechaAvaluo(),
									"dd/MM/yyyy")));
					liquidacionAvaluoTotal.setFechaCreacion(fechaProceso);
					liquidacionAvaluoTotal.setFechaTransaccion(fechaProceso);
					liquidacionAvaluoTotal.setUsuarioCreacion(objeto.getUsuarioCreacion());
					liquidacionAvaluoTotal.setUsuarioTransaccion(objeto.getUsuarioTransaccion());
					liquidacionAvaluoTotal.setAvaluo(objeto);
					liquidacionAvaluoTotal.setValorAsegurable(BigDecimal.ZERO);
					liquidacionAvaluoTotal.setValorUvrDia(BigDecimal.ZERO);
					liquidacionAvaluoTotal.setAvaluoUvr(BigDecimal.ZERO);
					
					liquidacionList.add(liquidacionAvaluoTotal); 
					objeto.setLiquidacionTotal(liquidacionList); 
				}
				
				entityManager.persist(objeto);
				
				entityManager.getTransaction().commit();
				entityManager.clear(); 
				
			} else {
				throw new AvaluosBussinesException("No es posible crear el avaluo\n\nEl perito aún no esta asociado a una empresa");
			}	
		} catch (org.eclipse.persistence.exceptions.DatabaseException e) {
			entityManager.getTransaction().rollback(); 
			Util.ManejaExcepciones(e);
		} catch (javax.persistence.RollbackException e) {
			entityManager.getTransaction().rollback();
			Util.ManejaExcepciones(e);
		} catch (Exception e) {
			entityManager.getTransaction().rollback();
			log.log(Level.SEVERE, "[ERROR]", e);
			Util.ManejaExcepciones(e);
		}
		finally
		{
	    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	    	//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
		}		
		return objeto;
	}

	public Avaluo update(Avaluo objeto) throws Exception {
		
		if(objeto == null){
			return null; 
		}
		
		if(objeto.getIdAvaluo() == null){
			objeto = crearAvaluo(objeto);			
		}else{
			objeto = actualizarAvaluo(objeto); 
		}
		return objeto; 
	}
	
	/**
	 * Actualiza valores de un avaluo.
	 *
	 * @param objeto
	 *            Avaluo con los valores que se quiere actualizar
	 * @throws Exception
	 */
	public Avaluo actualizarAvaluo(Avaluo objeto) throws Exception {
		
		try{
			entityManager = emf.createEntityManager();
			objeto.setEstadoAvaluo(new BigDecimal(ConstantesAvaluos.ESTADO_AVALUO_NUEVO));
			objeto.setNombreBanco(ConstantesAvaluos.NOMBRE_ENTIDAD_DAVIVIENDA);
			if(objeto.getFechaCreacion()==null)
				objeto.setFechaCreacion(Calendar.getInstance().getTime());
			
			objeto.setCodigoBanco(new BigDecimal(ConstantesAvaluos.CODIGO_ENTIDAD_DAVIVIENDA));
			
			objeto.setFechaTransaccion(Calendar.getInstance().getTime());
			objeto.setConsecutivoBanco(new BigDecimal(Util.getAnyDateAsString(objeto.getFechaAvaluo(), "ddMMyyyy") + objeto.getNumeroIdentificacion()));

			//mantis 39594 cambia criterio para definir avaluos constructor
			//objeto.setTipoInforme(new BigDecimal(ConstantesAvaluos.TIPO_INFORME));
			objeto.setIdDepartamento(objeto.getObjCiudad().getDepartamento().getCodAsobancaria());
			// Se busca el num de dcto del tusuario en la tabla de empresas y
			// este es el que se persiste
			StringBuffer sqlTUsuario = new StringBuffer();
			sqlTUsuario.append("SELECT e FROM EmpresasAvaluos e, PeritosEmpresa p WHERE p.EmpresasAvaluo.idEmpresaAvaluo = e.idEmpresaAvaluo");
			sqlTUsuario.append(" AND p.estadoAsociacion = 'A' AND p.numeroDocumento = '");
			sqlTUsuario.append(objeto.getTUsuario());
			sqlTUsuario.append("'");
			List<EmpresasAvaluos> empresas = entityManager.createQuery(sqlTUsuario.toString()).getResultList();
			if ((empresas != null) && (!empresas.isEmpty())) {
				objeto.setTUsuario(empresas.get(0).getNumeroDocumento().toString());

				entityManager.getTransaction().begin();

				java.util.Date fechaProceso = Calendar.getInstance().getTime();

				if(objeto.getInformacionBarrio() != null && objeto.getInformacionBarrio().size() > 0){
					if(objeto.getInformacionBarrio().get(0).getFechaCreacion() == null){
						objeto.getInformacionBarrio().get(0).setFechaCreacion(fechaProceso);
					}
					objeto.getInformacionBarrio().get(0).setFechaTransaccion(fechaProceso);
					
					if(objeto.getInformacionBarrio().get(0).getUsuarioCreacion() == null){
						objeto.getInformacionBarrio().get(0).setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					}
					objeto.getInformacionBarrio().get(0).setUsuarioTransaccion(objeto.getUsuarioTransaccion());										
				}else{					
					List<InformacionBarrio> barrioList = new ArrayList<InformacionBarrio>(); 
					InformacionBarrio informacionBarrio = new InformacionBarrio();
					informacionBarrio.setAvaluo(objeto); 
					informacionBarrio.setFechaCreacion(fechaProceso);
					informacionBarrio.setFechaTransaccion(fechaProceso);
					informacionBarrio.setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					informacionBarrio.setUsuarioTransaccion(objeto.getUsuarioCreacion());
					barrioList.add(informacionBarrio); 		
					objeto.setInformacionBarrio(barrioList); 
				}

				if(objeto.getInformacionInmueble() != null && objeto.getInformacionInmueble().size() > 0){
					if(objeto.getInformacionInmueble().get(0).getFechaCreacion() == null){
						objeto.getInformacionInmueble().get(0).setFechaCreacion(fechaProceso);
					}
					objeto.getInformacionInmueble().get(0).setFechaTransaccion(fechaProceso);
					
					if(objeto.getInformacionInmueble().get(0).getUsuarioCreacion() == null){
						objeto.getInformacionBarrio().get(0).setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					}
					objeto.getInformacionBarrio().get(0).setUsuarioTransaccion(objeto.getUsuarioTransaccion()); 					
				}else{
					List<InformacionInmueble> inmuebleList = new ArrayList<InformacionInmueble>(); 

					InformacionInmueble informacionInmueble = new InformacionInmueble();
					informacionInmueble.setMatriculaInmobiliariaPpal1(objeto.getMatriculaInmobiliariaPpal1());
					informacionInmueble.setUsuarioCreacion(objeto.getUsuarioCreacion());
					informacionInmueble.setFechaCreacion(fechaProceso);
					informacionInmueble.setUsuarioTransaccion(objeto.getUsuarioTransaccion());
					informacionInmueble.setFechaTransaccion(fechaProceso);
					informacionInmueble.setAvaluo(objeto); 
					inmuebleList.add(informacionInmueble); 
					objeto.setInformacionInmueble(inmuebleList); 
				}

				if(objeto.getInformacionConstruccion() != null && objeto.getInformacionConstruccion().size() > 0){
					if(objeto.getInformacionConstruccion().get(0).getFechaCreacion() == null){
						objeto.getInformacionConstruccion().get(0).setFechaCreacion(fechaProceso);
					}
					objeto.getInformacionConstruccion().get(0).setFechaTransaccion(fechaProceso);
					
					if(objeto.getInformacionConstruccion().get(0).getUsuarioCreacion() == null){
						objeto.getInformacionConstruccion().get(0).setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					}
					objeto.getInformacionConstruccion().get(0).setUsuarioTransaccion(objeto.getUsuarioTransaccion());					
				}else{
					List<InformacionConstruccion> construccionList = new ArrayList<InformacionConstruccion>(); 
					InformacionConstruccion informacionConstruccion = new InformacionConstruccion();
					informacionConstruccion.setAvaluo(objeto); 
					informacionConstruccion.setSala(BigDecimal.ZERO);
					informacionConstruccion.setBanioSocial(BigDecimal.ZERO);
					informacionConstruccion.setBanioPrivado(BigDecimal.ZERO);
					informacionConstruccion.setBanioServicio(BigDecimal.ZERO);
					informacionConstruccion.setJardin(BigDecimal.ZERO);
					informacionConstruccion.setComedor(BigDecimal.ZERO);
					informacionConstruccion.setEstarHabitacion(BigDecimal.ZERO);
					informacionConstruccion.setCocina(BigDecimal.ZERO);
					informacionConstruccion.setPatioInterior(BigDecimal.ZERO);
					informacionConstruccion.setBalcon(BigDecimal.ZERO);
					informacionConstruccion.setEstudio(BigDecimal.ZERO);
					informacionConstruccion.setNumeroHabitaciones(BigDecimal.ZERO);
					informacionConstruccion.setCuartoServicio(BigDecimal.ZERO);
					informacionConstruccion.setTerraza(BigDecimal.ZERO);
					informacionConstruccion.setZonaVerdePrivada(BigDecimal.ZERO);
					informacionConstruccion.setTotalGarajes(BigDecimal.ZERO);
					informacionConstruccion.setUsoExclusivo(BigDecimal.ZERO);
					informacionConstruccion.setSencillo(BigDecimal.ZERO);
					informacionConstruccion.setDeposito(BigDecimal.ZERO);
					informacionConstruccion.setLocal(BigDecimal.ZERO);
					informacionConstruccion.setCubierto(BigDecimal.ZERO);
					informacionConstruccion.setPrivado(BigDecimal.ZERO);
					informacionConstruccion.setDoble(BigDecimal.ZERO);
					informacionConstruccion.setBodega(BigDecimal.ZERO);
					informacionConstruccion.setDescubierto(BigDecimal.ZERO);
					informacionConstruccion.setBahiaComunal(BigDecimal.ZERO);
					informacionConstruccion.setServidumbre(BigDecimal.ZERO);
					informacionConstruccion.setOficina(BigDecimal.ZERO);
					informacionConstruccion.setFechaCreacion(fechaProceso);
					informacionConstruccion.setFechaTransaccion(fechaProceso);
					informacionConstruccion.setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					informacionConstruccion.setUsuarioTransaccion(objeto.getUsuarioCreacion()); 
					informacionConstruccion.setAvaluo(objeto);
					construccionList.add(informacionConstruccion); 
					objeto.setInformacionConstruccion(construccionList); 
				}

				if(objeto.getCondicionSalubridad() != null && objeto.getCondicionSalubridad().size() > 0){
					if(objeto.getCondicionSalubridad().get(0).getFechaCreacion() == null){
						objeto.getCondicionSalubridad().get(0).setFechaCreacion(fechaProceso);
					}
					objeto.getCondicionSalubridad().get(0).setFechaTransaccion(fechaProceso);
					
					if(objeto.getCondicionSalubridad().get(0).getUsuarioCreacion() == null){
						objeto.getCondicionSalubridad().get(0).setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					}
					objeto.getCondicionSalubridad().get(0).setUsuarioTransaccion(objeto.getUsuarioTransaccion());	
				}else{
					List<CondicionesSalubridad> condicionList = new ArrayList<CondicionesSalubridad>(); 
					CondicionesSalubridad condicionesSalubridad = new CondicionesSalubridad(); 
					condicionesSalubridad.setAvaluo(objeto); 
					condicionesSalubridad.setFechaCreacion(fechaProceso);
					condicionesSalubridad.setFechaTransaccion(fechaProceso);
					condicionesSalubridad.setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					condicionesSalubridad.setUsuarioTransaccion(objeto.getUsuarioCreacion());
					condicionesSalubridad.setAvaluo(objeto);
					condicionList.add(condicionesSalubridad); 
					objeto.setCondicionSalubridad(condicionList); 
				}

				if(objeto.getCompOfertaDemanda() != null && objeto.getCompOfertaDemanda().size()>0){
					if(objeto.getCompOfertaDemanda().get(0).getFechaCreacion() == null){
						objeto.getCompOfertaDemanda().get(0).setFechaCreacion(fechaProceso);
					}
					objeto.getCompOfertaDemanda().get(0).setFechaTransaccion(fechaProceso);
					
					if(objeto.getCompOfertaDemanda().get(0).getUsuarioCreacion() == null){
						objeto.getCompOfertaDemanda().get(0).setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					}
					objeto.getCompOfertaDemanda().get(0).setUsuarioTransaccion(objeto.getUsuarioTransaccion());						
				}else{
					List<ComportamientoOfertaDemanda> comportamientoList = new ArrayList<ComportamientoOfertaDemanda>(); 
					ComportamientoOfertaDemanda comportamientoOfertaDemanda = new ComportamientoOfertaDemanda(); 
					comportamientoOfertaDemanda.setAvaluo(objeto); 
					comportamientoOfertaDemanda.setFechaCreacion(fechaProceso);
					comportamientoOfertaDemanda.setFechaTransaccion(fechaProceso);
					comportamientoOfertaDemanda.setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					comportamientoOfertaDemanda.setUsuarioTransaccion(objeto.getUsuarioCreacion());
					comportamientoOfertaDemanda.setAvaluo(objeto);
					comportamientoList.add(comportamientoOfertaDemanda); 
					objeto.setCompOfertaDemanda(comportamientoList); 					 
				}

				if(objeto.getObservacion() != null && objeto.getObservacion().size()>0){
					if(objeto.getObservacion().get(0).getFechaCreacion() == null){
						objeto.getObservacion().get(0).setFechaCreacion(fechaProceso);
					}
					objeto.getObservacion().get(0).setFechaTransaccion(fechaProceso);
					
					if(objeto.getObservacion().get(0).getUsuarioCreacion() == null){
						objeto.getObservacion().get(0).setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					}
					objeto.getObservacion().get(0).setUsuarioTransaccion(objeto.getUsuarioTransaccion());	
					
				}else{
					List<Observaciones> observacionList = new ArrayList<Observaciones>(); 
					Observaciones observaciones = new Observaciones(); 
					observaciones.setAvaluo(objeto); 
					observaciones.setFechaCreacion(fechaProceso);
					observaciones.setFechaTransaccion(fechaProceso);
					observaciones.setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					observaciones.setUsuarioTransaccion(objeto.getUsuarioCreacion());
					observaciones.setAvaluo(objeto);
					observacionList.add(observaciones);  
					objeto.setObservacion(observacionList); 
				}

				if(objeto.getLiquidacionAvaluos() != null){
					for(int i=0; i<objeto.getLiquidacionAvaluos().size(); i++){
						if(objeto.getLiquidacionAvaluos().get(i).getFechaCreacion() == null)
							objeto.getLiquidacionAvaluos().get(i).setFechaCreacion(fechaProceso); 
						objeto.getLiquidacionAvaluos().get(i).setFechaTransaccion(fechaProceso);
						
						if(objeto.getLiquidacionAvaluos().get(i).getUsuarioCreacion() == null){
							objeto.getLiquidacionAvaluos().get(i).setUsuarioCreacion(objeto.getUsuarioCreacion());
						}
						objeto.getLiquidacionAvaluos().get(i).setUsuarioTransaccion(objeto.getUsuarioCreacion());
						
						if(objeto.getLiquidacionAvaluos().get(i).getAreaLiquidacion() == null)
							objeto.getLiquidacionAvaluos().get(i).setAreaLiquidacion(BigDecimal.ZERO);
						if(objeto.getLiquidacionAvaluos().get(i).getValor() == null)
							objeto.getLiquidacionAvaluos().get(i).setValor(BigDecimal.ZERO);
						if(objeto.getLiquidacionAvaluos().get(i).getValorTotal() == null)
							objeto.getLiquidacionAvaluos().get(i).setValorTotal(BigDecimal.ZERO);
						
					}
				}else{
					List<LiquidacionAvaluo> liquidacionList = new ArrayList<LiquidacionAvaluo>(); 
					for(int i=1; i<=10; i++){
						LiquidacionAvaluo liquidacionAvaluo = new LiquidacionAvaluo(); 
						liquidacionAvaluo.setAvaluo(objeto); 
						liquidacionAvaluo.setFechaCreacion(fechaProceso);
						liquidacionAvaluo.setFechaTransaccion(fechaProceso);
						liquidacionAvaluo.setUsuarioCreacion(objeto.getUsuarioCreacion()); 
						liquidacionAvaluo.setUsuarioTransaccion(objeto.getUsuarioCreacion());
						liquidacionAvaluo.setConsecutivo(new BigDecimal(i)); 
						liquidacionAvaluo.setAreaLiquidacion(BigDecimal.ZERO);
						liquidacionAvaluo.setValor(BigDecimal.ZERO);
						liquidacionAvaluo.setValorTotal(BigDecimal.ZERO); 
						liquidacionAvaluo.setAvaluo(objeto);						
						liquidacionList.add(liquidacionAvaluo); 
					}		
					objeto.setLiquidacionAvaluos(liquidacionList); 
				}

				if(objeto.getLiquidacionTotal() != null && objeto.getLiquidacionTotal().size()>0){
					if(objeto.getLiquidacionTotal().get(0).getFechaCreacion() == null){
						objeto.getLiquidacionTotal().get(0).setFechaCreacion(fechaProceso);
					}
					objeto.getLiquidacionTotal().get(0).setFechaTransaccion(fechaProceso);
					
					if(objeto.getLiquidacionTotal().get(0).getUsuarioCreacion() == null){
						objeto.getLiquidacionTotal().get(0).setUsuarioCreacion(objeto.getUsuarioCreacion()); 
					}
					objeto.getLiquidacionTotal().get(0).setUsuarioTransaccion(objeto.getUsuarioTransaccion());	
					
				}else {
					List<LiquidacionAvaluoTotal> liquidacionList = new ArrayList<LiquidacionAvaluoTotal>(); 
					LiquidacionAvaluoTotal liquidacionAvaluoTotal = new LiquidacionAvaluoTotal();
					liquidacionAvaluoTotal.setValorUvrDia(getUvrDia(Util.getAnyDateAsString(objeto.getFechaAvaluo(),
					"dd/MM/yyyy")));
					liquidacionAvaluoTotal.setFechaCreacion(fechaProceso);
					liquidacionAvaluoTotal.setFechaTransaccion(fechaProceso);
					liquidacionAvaluoTotal.setUsuarioCreacion(objeto.getUsuarioCreacion());
					liquidacionAvaluoTotal.setUsuarioTransaccion(objeto.getUsuarioTransaccion());
					liquidacionAvaluoTotal.setAvaluo(objeto);
					liquidacionAvaluoTotal.setValorAsegurable(BigDecimal.ZERO);
					liquidacionAvaluoTotal.setValorUvrDia(BigDecimal.ZERO);
					liquidacionAvaluoTotal.setAvaluoUvr(BigDecimal.ZERO);

					liquidacionList.add(liquidacionAvaluoTotal); 
					objeto.setLiquidacionTotal(liquidacionList); 
				} 

				entityManager.merge(objeto);

				entityManager.getTransaction().commit();
				entityManager.clear();

			} else {
				throw new AvaluosBussinesException("No es posible crear el avaluo\n\nEl perito aún no esta asociado a una empresa");
			}	
		} catch (org.eclipse.persistence.exceptions.DatabaseException e) {
			entityManager.getTransaction().rollback(); 
			Util.ManejaExcepciones(e);
		} catch (javax.persistence.RollbackException e) {
			entityManager.getTransaction().rollback();
			Util.ManejaExcepciones(e);
		} catch (Exception e) {
			entityManager.getTransaction().rollback();
			log.log(Level.SEVERE, "[ERROR]", e);
			Util.ManejaExcepciones(e);
		}
		finally
		{
			//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
			//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
		}		
		return objeto;
	}

	/**
	 * Cambia a nuevo el estado de un avaluo.
	 *
	 * @param objeto
	 *            contiene el identificador del avaluo al cual se le quiere
	 *            cambiar el estado
	 * @return la cadena de texto "true" si la transación finalizó de forma
	 *         correcta sino el mensaje de error.
	 * @throws Exception
	 */
	public String aprobar(Avaluo avaluo) throws Exception {
		String res = "";
    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//if(!entityManager.isOpen())
		//	entityManager = emf.createEntityManager();
		
		try {
			if (isAvaluoValido(avaluo.getIdAvaluo())) {
				Avaluo avaluoTmp = entityManager.find(Avaluo.class,
						avaluo.getIdAvaluo());
				if ((avaluoTmp.getAnexosFotograficos() != null)
						&& (!avaluoTmp.getAnexosFotograficos().isEmpty())
						&& (avaluoTmp.getAnexosFotograficos().get(0)
								.getArchivoFoto() != null)
						&& (avaluoTmp.getAnexosFotograficos().get(0)
								.getArchivoPdf()) != null) {
					entityManager.getTransaction().begin();
					avaluoTmp.setFechaTransaccion(Calendar.getInstance()
							.getTime());
					avaluoTmp.setEstadoAvaluo(new BigDecimal(
							ConstantesAvaluos.ESTADO_AVALUOS_APROBADO));
					entityManager.merge(avaluoTmp);
					entityManager.getTransaction().commit();
					res = "true";
				} else {
					setMsjErrorMalla(ConstantesAvaluos.ERROR
							+ ": El avaluo no contiene anexos fotográficos");
					res = getMsjErrorMalla();
				}
			} else {
				res = getMsjErrorMalla();
			}
		} catch (Exception e) {
			log.log(Level.SEVERE, "[ERROR]", e);
			//throw new Exception(ConstantesAvaluos.ERROR);
			Util.ManejaExcepciones(e);
		}
		finally
		{
	    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	    	//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
		}
		return res;
	}

	/**
	 * Cambia el estado de un avaluo a nuevo si este no tiene un
	 * logsGeneraArchivo asociado y se encuentra en estado aprobado
	 *
	 * @param avaluo
	 *            objeto con el identificador úncio del avaluo
	 * @return el avaluo actualizado
	 * @throws Exception
	 */
	public Avaluo pasarANuevo(Avaluo avaluo) throws Exception {
		Avaluo res = new Avaluo();
    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//if(!entityManager.isOpen())
		//	entityManager = emf.createEntityManager();
		try {

			if (avaluo != null) {
				entityManager.getTransaction().begin();
				Avaluo avaluoTmp = entityManager.find(Avaluo.class,
						avaluo.getIdAvaluo());
				avaluoTmp.setFechaTransaccion(Calendar.getInstance().getTime());
				avaluoTmp.setEstadoAvaluo(new BigDecimal(
						ConstantesAvaluos.ESTADO_AVALUO_NUEVO));
				entityManager.merge(avaluoTmp);
				entityManager.getTransaction().commit();
				res = avaluoTmp;
			}
		} catch (Exception e) {
			log.log(Level.SEVERE, "[ERROR]", e);
			//throw new Exception(ConstantesAvaluos.ERROR);
			Util.ManejaExcepciones(e);
		}
		finally
		{
	    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	    	//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
		}
		return res;
	}


	public boolean existeConsecutivo(String consecutivo)
	{
		boolean existeConsec=false;
		try {
			    
				entityManager.getTransaction().begin();
				
				Query /*plCall = entityManager
				.createNativeQuery("BEGIN PKG_GENERAL_AVALUOS.prc_copiar_avaluo(par_id_avaluo=>?,par_usuario=>?); END;");						
				plCall.setParameter(1, avaluo.getIdAvaluo().toString());
				plCall.setParameter(2, avaluo.getUsuarioTransaccion());				
				plCall.executeUpdate();
				entityManager.flush();
				entityManager.getTransaction().commit();*/
				
				plCall = entityManager
				.createNativeQuery("SELECT PKG_GENERAL_AVALUOS.sf_existe_consecutivo('"+consecutivo+"') FROM dual")
				/*.setHint("eclipselink.refresh", "true")
				.setMaxResults(1)*/;
				//plCall.getResultList();
				BigDecimal salida = (BigDecimal) plCall.getSingleResult();
				
				if(salida.intValue()==0)
				{
					return false;
				}
				else if(salida.intValue()==1)
				{
					return true;
				}
			
		 } catch (Exception e) {
			e.printStackTrace();
			log.log(Level.SEVERE, "[ERROR]", e);
					//setMensajeTransaccion(ConstantesAvaluos.ERROR );
			    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
			    	//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}				
			return false;										
		}		
		finally
		{
	    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	    	//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
		}		
		//setMensajeTransaccion(ConstantesAvaluos.EXITO);
		return false;
	}
	/**
	 * Copiar toda la información de un avalúo ya aprobado, en un nuevo registro
	 * donde el sistema cambia la fecha del avalúo, En el caso que se realice la
	 * modificación en el mismo día que se aprobó el avaluó
	 *  no se creará un nuevo registro, sino que se modificará la
	 *  información del avalúo existente.
	 *
	 * @param avaluo
	 *            objeto con el identificador úncio del avaluo
	 * @return Mensaje de Exito o Error
	 * @throws Exception
	 */
	public String copiarAvaluo(Avaluo avaluo) throws Exception {
		Avaluo res = new Avaluo();
    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//if(!entityManager.isOpen())
		//	entityManager = emf.createEntityManager();
		try {

			if (avaluo != null) {
				entityManager.getTransaction().begin();
				Avaluo avaluoTmp = entityManager.find(Avaluo.class,
						avaluo.getIdAvaluo());
				avaluoTmp.setFechaTransaccion(Calendar.getInstance().getTime());

				Query plCall = entityManager
				.createNativeQuery("BEGIN PKG_GENERAL_AVALUOS.prc_copiar_avaluo(par_id_avaluo=>?,par_usuario=>?); END;");
						
				plCall.setParameter(1, avaluo.getIdAvaluo().toString());
				plCall.setParameter(2, avaluo.getUsuarioTransaccion());
				
				plCall.executeUpdate();

				entityManager.flush();
				entityManager.getTransaction().commit();
				plCall = entityManager
				.createQuery("SELECT avaluos FROM Avaluo avaluos")
				.setHint("eclipselink.refresh", "true")
				.setMaxResults(1);
				plCall.getResultList();
			}
		} catch (Exception e) {
			e.printStackTrace();
			log.log(Level.SEVERE, "[ERROR]", e);

				if(e.getMessage().contains("ya existe"))
				{
					setMensajeTransaccion(ConstantesAvaluos.ERROR+" Este avaluo con el nuevo consecutivo ya existe ");
				}
				else if(e.getMessage().contains("UVR"))
				{
					setMensajeTransaccion(ConstantesAvaluos.ERROR+" Error consultando el valor del UVR para la fecha ");
				}	
				else
				{
					setMensajeTransaccion(ConstantesAvaluos.ERROR );
				}
	    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	    	//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}				
			return getMensajeTransaccion();
		}
		finally
		{
	    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	    	//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
		}		
		setMensajeTransaccion(ConstantesAvaluos.EXITO+" :El avaluo ha sido copiado.");
		return getMensajeTransaccion();
	}
	
	/*
	public String multiCopiaAvaluoConstructor(List<Avaluo> avaluos)
	{
		
	}
	*/	
	public String copiarAvaluosConstructor(List<Avaluo> avaluos)
	{
		String mensajesTransaccion = "";
		String avaluoActual = "";
		Boolean fallo = false;
		Connection conn = null;		
		
		try {

			//entityManager.getTransaction().begin();
			conn = Util.getJDBConnFromEM(entityManager);

			BigDecimal [] tipos_identificaciones   = new BigDecimal[avaluos.size()];
			String     [] numeros_identificaciones = new String[avaluos.size()];
			String     [] nombres_solicitantes     = new String[avaluos.size()];
			String     [] direcciones_inmuebles    = new String[avaluos.size()];
			String     [] inmob_ppals1             = new String[avaluos.size()];
			String     [] mats_inmob_ppals2        = new String[avaluos.size()];
			String     [] mats_inmob_gj1        = new String[avaluos.size()];
			String     [] mats_inmob_gj2        = new String[avaluos.size()];
			String     [] mats_inmob_dp1        = new String[avaluos.size()];
			
			int cont=0;
			
			for (Avaluo avaluo : avaluos) {
				avaluoActual = " TipoDoc: " + avaluo.getTipoDocumento()
						+ " NumDoc: " + avaluo.getNumeroIdentificacion();
				//copiarAvaluoConstructorBoolean(avaluo, false);
				tipos_identificaciones[cont]   = avaluo.getIdTipoIdentificacion();
				numeros_identificaciones[cont] = avaluo.getNumeroIdentificacion();
				nombres_solicitantes[cont]     = avaluo.getNombreSolicitante();
				direcciones_inmuebles[cont]    = avaluo.getDireccionInmueble();
				if(avaluo.getInformacionInmueble()!=null)
					if(avaluo.getInformacionInmueble().size()>0)
					{	
						try
						{
						InformacionInmueble in = avaluo.getInformacionInmueble().get(0);
						/*
						mats_inmob_ppals2[cont]        = ((InformacionInmueble)avaluo.getInformacionInmueble().get(0)).getMatriculaInmobiliariaPpal2();
						mats_inmob_gj1[cont]        = ((InformacionInmueble)avaluo.getInformacionInmueble().get(0)).getMatriculaInmobiliariaGaraje1();
						mats_inmob_gj2[cont]        = ((InformacionInmueble)avaluo.getInformacionInmueble().get(0)).getMatriculaInmobiliariaGaraje2();
						mats_inmob_dp1[cont]        = ((InformacionInmueble)avaluo.getInformacionInmueble().get(0)).getMatriculaInmobiliariaDeposito1();
						*/
						inmob_ppals1[cont]        = in.getMatriculaInmobiliariaPpal1();
						mats_inmob_ppals2[cont]        = in.getMatriculaInmobiliariaPpal2();
						mats_inmob_gj1[cont]        = in.getMatriculaInmobiliariaGaraje1();
						mats_inmob_gj2[cont]        = in.getMatriculaInmobiliariaGaraje2();
						mats_inmob_dp1[cont]        = in.getMatriculaInmobiliariaDeposito1();
						}
						catch(Exception ex)
						{
							ex.printStackTrace();
						}
						
					}
				
				cont++;
			}
			
			oracle.jdbc.OracleConnection oraConn = conn.unwrap(oracle.jdbc.OracleConnection.class);
			/*
			java.sql.Array tipos_identificacionesOrcl   = oraConn.createArrayOf("array_number", tipos_identificaciones);
			java.sql.Array numeros_identificacionesOrcl = oraConn.createArrayOf("array_number", numeros_identificaciones);
			java.sql.Array nombres_solicitantesOrcl     = oraConn.createArrayOf("array_varchar", nombres_solicitantes);
			java.sql.Array direcciones_inmueblesOrcl    = oraConn.createArrayOf("array_varchar", direcciones_inmuebles);
			java.sql.Array inmob_ppals1Orcl             = oraConn.createArrayOf("array_varchar", inmob_ppals1);
			java.sql.Array mats_inmob_ppals2Orcl        = oraConn.createArrayOf("array_varchar", mats_inmob_ppals2);
			*/
			
			oracle.sql.ArrayDescriptor descriptorNum     = oracle.sql.ArrayDescriptor.createDescriptor( "ARRAY_NUMBER", oraConn );
			oracle.sql.ArrayDescriptor descriptorVarchar = oracle.sql.ArrayDescriptor.createDescriptor( "ARRAY_VARCHAR", oraConn );
			
			oracle.sql.ARRAY tipos_identificacionesOrcl   =new oracle.sql.ARRAY( descriptorNum, oraConn,tipos_identificaciones);
			//oracle.sql.ARRAY numeros_identificacionesOrcl =new oracle.sql.ARRAY( descriptorVarchar, oraConn,numeros_identificaciones);
			oracle.sql.ARRAY numeros_identificacionesOrcl =new oracle.sql.ARRAY( descriptorNum, oraConn,numeros_identificaciones);
			oracle.sql.ARRAY nombres_solicitantesOrcl     =new oracle.sql.ARRAY( descriptorVarchar, oraConn,nombres_solicitantes);
			oracle.sql.ARRAY direcciones_inmueblesOrcl    =new oracle.sql.ARRAY( descriptorVarchar, oraConn,direcciones_inmuebles);			
			oracle.sql.ARRAY inmob_ppals1Orcl             =new oracle.sql.ARRAY( descriptorVarchar, oraConn,inmob_ppals1);
			oracle.sql.ARRAY mats_inmob_ppals2Orcl        =new oracle.sql.ARRAY( descriptorVarchar, oraConn,mats_inmob_ppals2);			
			oracle.sql.ARRAY mats_inmob_gj1Orcl        =new oracle.sql.ARRAY( descriptorVarchar, oraConn,mats_inmob_gj1);
			oracle.sql.ARRAY mats_inmob_gj2Orcl        =new oracle.sql.ARRAY( descriptorVarchar, oraConn,mats_inmob_gj2);
			oracle.sql.ARRAY mats_inmob_dp1Orcl        =new oracle.sql.ARRAY( descriptorVarchar, oraConn,mats_inmob_dp1);
			
			/*
	        java.sql.CallableStatement cstm =
	              conn.prepareCall("PKG_GENERAL_AVALUOS.prc_copiar_avaluos_constructor(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			*/
	        oracle.jdbc.OracleCallableStatement cstm =
	        //(OracleCallableStatement) oraConn.prepareCall("{call PKG_GENERAL_AVALUOS.prc_copiar_avaluos_constructor(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
	        (OracleCallableStatement)   oraConn.prepareCall("{call   PKG_GENERAL_AVALUOS.prc_copiar_avaluos_constructor(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");        
	        	//(OracleCallableStatement) oraConn.prepareCall("{call PKG_GENERAL_AVALUOS.prc_test(?,?,?,?,?,?,?)}");
	        
	        
//	        //cstm.setString(1,arquivo.getGeoType());
//	        //cstm.setString(2,arquivo.getTable());
//	        cstm.setArray(3,tArray);
//	        //cstm.setString(4,arquivo.getSrid());

	        Avaluo avaTmp = avaluos.get(0);
	        cstm.setInt(1, avaTmp.getIdAvaluo().intValue());
	        cstm.setString(2, avaTmp.getUsuarioTransaccion());			
	        cstm.setString(3, avaTmp.getUsuarioTransaccion());
	        cstm.setARRAY(4, tipos_identificacionesOrcl);
	        cstm.setARRAY(5, numeros_identificacionesOrcl);
	        cstm.setARRAY(6, nombres_solicitantesOrcl);	        
	        //cstm.setDATE(7, new oracle.sql.DATE(avaTmp.getFechaAvaluo().getTime()));
	        //cstm.setDATE(7, new oracle.sql.DATE());
	        cstm.setDate(7, new java.sql.Date(avaTmp.getFechaAvaluo().getTime()));
           cstm.setInt(8, avaTmp.getIdDepartamento().intValue());
	        cstm.setInt(9, avaTmp.getIdCiudad().intValue());
	        cstm.setInt(10, avaTmp.getCodigoDaneDepartamento().intValue());
	        cstm.setInt(11, avaTmp.getCodigoDaneCiudad().intValue());
	        cstm.setARRAY(12, direcciones_inmueblesOrcl);
	        cstm.setString(13, avaTmp.getBarrio());
	        cstm.setARRAY(14, inmob_ppals1Orcl);
	        cstm.setARRAY(15, mats_inmob_ppals2Orcl);	        
	        cstm.setARRAY(16, mats_inmob_gj1Orcl);
	        cstm.setARRAY(17, mats_inmob_gj2Orcl);
	        cstm.setARRAY(18, mats_inmob_dp1Orcl);
	        
//	        
          cstm.executeUpdate();
//	        cstm.execute();
//			
			

		} catch (Exception e) {

			fallo = true;

			//entityManager.getTransaction().rollback();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			

			e.printStackTrace();
			log.log(Level.SEVERE, "[ERROR]", e);

			if (e.getMessage().contains("ya existe")) {
				mensajesTransaccion = mensajesTransaccion + /*
															 * setMensajeTransaccion
															 * (
															 */"\n"
						+ ConstantesAvaluos.ERROR + avaluoActual
						+ " Este avaluo con el nuevo consecutivo ya existe "/* ) */;
			} else if (e.getMessage().contains("ya existe")) {	
				mensajesTransaccion = mensajesTransaccion + /*
				 * setMensajeTransaccion
				 * (
				 */"\n"
				  + ConstantesAvaluos.ERROR + avaluoActual
				  + " Error consultando el valor del UVR "/* ) */;				
			} else {
				mensajesTransaccion = mensajesTransaccion + /*
															 * setMensajeTransaccion
															 * (
															 */"\n"
						+ ConstantesAvaluos.ERROR + avaluoActual/* ) */;
			}
			// return getMensajeTransaccion();
		} finally {

		}
		if (!fallo) {
			
			//entityManager.getTransaction().commit();
			try {
				conn.commit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			mensajesTransaccion = mensajesTransaccion
					+ /* setMensajeTransaccion( */ConstantesAvaluos.EXITO
					+ " :Los avaluos constructor han sido copiados."/* ) */;
		}
		setMensajeTransaccion(mensajesTransaccion);
		return getMensajeTransaccion();
	}
	public String copiarAvaluoConstructorBoolean(Avaluo avaluo,Boolean commit) throws Exception {
		Avaluo res = new Avaluo();
    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//if(!entityManager.isOpen())
		//	entityManager = emf.createEntityManager();
		try {

			if (avaluo != null) {
				if(commit)
				{	
					entityManager.getTransaction().begin();
				}
				Avaluo avaluoTmp = entityManager.find(Avaluo.class,
						avaluo.getIdAvaluo());
				avaluoTmp.setFechaTransaccion(Calendar.getInstance().getTime());

				Query plCall = entityManager
				//.createNativeQuery("BEGIN PKG_GENERAL_AVALUOS.prc_copiar_avaluo_constructor("+				
				.createNativeQuery("BEGIN PKG_GENERAL_AVALUOS.prc_cp_avaluo_constr_new_estd("+				
				   "par_id_avaluo=>?,"+
				   "par_usuario=>?,"+
				   "par_usuario_creacion_avaluo=>?,"+
			 	   "par_tipo_identificacion=>?,"+
				   "par_numero_identificacion=>?,"+
				   "par_nombre_solicitante=>?,"+
				   "par_fecha_avaluo=>?,"+
				   "par_iddepartamento=>?,"+ 
				   "par_idciudad=>?,"+
				   "par_coddane_depto=>?,"+
				   "par_coddane_ciudad=>?,"+
				   "par_direccion_inmueble=>?,"+
				   "par_barrio=>?,"+
				   "par_mat_inmob_ppal1=>?,"+
				   "par_mat_inmob_ppal2=>?,"+
				   "par_mats_inmob_gj1=>?,"+
				   "par_mats_inmob_gj2=>?,"+
				   "par_mats_inmob_dep1=>?,"+
				   "par_estado=>?"+
				"); END;");
						
				plCall.setParameter(1, avaluo.getIdAvaluo().toString());
				plCall.setParameter(2, avaluo.getUsuarioTransaccion());
				
				plCall.setParameter(3, avaluo.getUsuarioTransaccion());
				plCall.setParameter(4, avaluo.getIdTipoIdentificacion());
				plCall.setParameter(5, avaluo.getNumeroIdentificacion());
				plCall.setParameter(6, avaluo.getNombreSolicitante());
				plCall.setParameter(7, avaluo.getFechaAvaluo());
				plCall.setParameter(8, avaluo.getIdDepartamento());
				plCall.setParameter(9, avaluo.getIdCiudad());
				plCall.setParameter(10, avaluo.getCodigoDaneDepartamento());
				plCall.setParameter(11, avaluo.getCodigoDaneCiudad());
				plCall.setParameter(12, avaluo.getDireccionInmueble());
				plCall.setParameter(13, avaluo.getBarrio());
				plCall.setParameter(14, avaluo.getMatriculaInmobiliariaPpal1());
				plCall.setParameter(15, avaluo.getInformacionInmueble().get(0).getMatriculaInmobiliariaPpal2());				
				plCall.setParameter(16, null);
				plCall.setParameter(17, null);
				plCall.setParameter(18, null);
				plCall.setParameter(19, new BigDecimal("2"));
				plCall.executeUpdate();
				
				if(commit)
				{	
					entityManager.flush();
					entityManager.getTransaction().commit();
					plCall = entityManager
					.createQuery("SELECT avaluos FROM Avaluo avaluos")
					.setHint("eclipselink.refresh", "true")
					.setMaxResults(1);
					plCall.getResultList();
					
					
				}
				

			}
		} catch (Exception e) {
			
			if(commit)
			{	
				entityManager.getTransaction().rollback();
			}
			
			e.printStackTrace();
			log.log(Level.SEVERE, "[ERROR]", e);
				
				if(e.getMessage().contains("ya existe"))
				{
					setMensajeTransaccion(ConstantesAvaluos.ERROR+" Este avaluo con el nuevo consecutivo ya existe ");
				}
				else
				{
					setMensajeTransaccion(ConstantesAvaluos.ERROR );
				}
			//setMensajeTransaccion(ConstantesAvaluos.ERROR+" "+e.getMessage());
	    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	    	//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}	
	    	
			//return getMensajeTransaccion();
			throw new Exception(getMensajeTransaccion(),e);	
				
		}
		finally
		{
	    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	    	//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
		}
		setMensajeTransaccion(ConstantesAvaluos.EXITO+" :El avaluo constructor ha sido copiado.");
		return getMensajeTransaccion();
	}
	
	public String copiarAvaluoConstructor(Avaluo avaluo) throws Exception {
		return copiarAvaluoConstructorBoolean(avaluo,true);
//		Avaluo res = new Avaluo();
//    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
//		//if(!entityManager.isOpen())
//		//	entityManager = emf.createEntityManager();
//		try {
//
//			if (avaluo != null) {
//				entityManager.getTransaction().begin();
//				Avaluo avaluoTmp = entityManager.find(Avaluo.class,
//						avaluo.getIdAvaluo());
//				avaluoTmp.setFechaTransaccion(Calendar.getInstance().getTime());
//
//				Query plCall = entityManager
//				.createNativeQuery("BEGIN PKG_GENERAL_AVALUOS.prc_copiar_avaluo_constructor("+				
//				   "par_id_avaluo=>?,"+
//				   "par_usuario=>?,"+
//				   "par_usuario_creacion_avaluo=>?,"+
//				   "par_tipo_identificacion=>?,"+
//				   "par_numero_identificacion=>?,"+
//				   "par_nombre_solicitante=>?,"+
//				   "par_fecha_avaluo=>?,"+
//				   "par_iddepartamento=>?,"+ 
//				   "par_idciudad=>?,"+
//				   "par_coddane_depto=>?,"+
//				   "par_coddane_ciudad=>?,"+
//				   "par_direccion_inmueble=>?,"+
//				   "par_barrio=>?,"+
//				   "par_mat_inmob_ppal1=>?,"+
//				   "par_mat_inmob_ppal2=>?"+
//				"); END;");
//						
//				plCall.setParameter(1, avaluo.getIdAvaluo().toString());
//				plCall.setParameter(2, avaluo.getUsuarioTransaccion());
//				
//				plCall.setParameter(3, avaluo.getUsuarioTransaccion());
//				plCall.setParameter(4, avaluo.getIdTipoIdentificacion());
//				plCall.setParameter(5, avaluo.getNumeroIdentificacion());
//				plCall.setParameter(6, avaluo.getNombreSolicitante());
//				plCall.setParameter(7, avaluo.getFechaAvaluo());
//				plCall.setParameter(8, avaluo.getIdDepartamento());
//				plCall.setParameter(9, avaluo.getIdCiudad());
//				plCall.setParameter(10, avaluo.getCodigoDaneDepartamento());
//				plCall.setParameter(11, avaluo.getCodigoDaneCiudad());
//				plCall.setParameter(12, avaluo.getDireccionInmueble());
//				plCall.setParameter(13, avaluo.getBarrio());
//				plCall.setParameter(14, avaluo.getMatriculaInmobiliariaPpal1());
//				plCall.setParameter(15, avaluo.getInformacionInmueble().get(0).getMatriculaInmobiliariaPpal2());
//				
//				
//				plCall.executeUpdate();
//
//				entityManager.flush();
//				entityManager.getTransaction().commit();
//				plCall = entityManager
//				.createQuery("SELECT avaluos FROM Avaluo avaluos")
//				.setHint("eclipselink.refresh", "true")
//				.setMaxResults(1);
//				plCall.getResultList();
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//			log.log(Level.SEVERE, "[ERROR]", e);
//
//				if(e.getMessage().contains("ya existe"))
//				{
//					setMensajeTransaccion(ConstantesAvaluos.ERROR+" Este avaluo con el nuevo consecutivo ya existe ");
//				}
//				else
//				{
//					setMensajeTransaccion(ConstantesAvaluos.ERROR );
//				}
//			//setMensajeTransaccion(ConstantesAvaluos.ERROR+" "+e.getMessage());
//	    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
//	    	//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}	
//	    	
//			return getMensajeTransaccion();
//		}
//		finally
//		{
//	    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
//	    	//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
//		}
//		setMensajeTransaccion(ConstantesAvaluos.EXITO+" :El avaluo constructor ha sido copiado.");
//		return getMensajeTransaccion();
	}
	
	/**
	 * Verifica si un avaluo es válido sin realizar cambios al mismo.
	 *
	 * @param idAvaluo
	 *            identificador único del avaluo que se quiere validar
	 * @return La cadena de texto "true" en caso que el avaluo sea válido de lo
	 *         contrario una cadena de texto con el mensaje de error que se
	 *         produjo al intentar validar.
	 */
	public String prevalidar(BigDecimal idAvaluo) {
		String res = "";
		boolean isValid = isAvaluoValido(idAvaluo);
		if (isValid) {
			res = "true";
		} else {
			res = getMsjErrorMalla();
		}
		return res;
	}

	/**
	 * Verifica si un avaluo es válido
	 *
	 * @param idAvaluo
	 *            identificador único del avaluo que se quiere validar
	 * @return true si el avaluo es válido de lo contrario false.
	 */
	public boolean isAvaluoValido(BigDecimal idAvaluo) {
		boolean res = false;
    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//if(!entityManager.isOpen())
		//	entityManager = emf.createEntityManager();
		Avaluo avaluo = entityManager.find(Avaluo.class, idAvaluo);
		entityManager.refresh(avaluo);
		int refCargue = 0;

		// Recupera el valor de referencia que tendra el presente cargue (es
		// como un secuencial por cargue)
		Query queryRefCargue = entityManager
				.createNativeQuery("SELECT SEQ_PGB_REFERENCIA_CARGUE.NEXTVAL FROM DUAL");
		BigDecimal numeroRefcargue = (BigDecimal) queryRefCargue
				.getSingleResult();

		long consecutivoCargue = 0;
		if (avaluo != null) {
			StringBuffer line = new StringBuffer();

			// Se recupera cada una de las tablas de las cuales se va a sacar la
			// info para armar el plano
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
				comportamientoOfertaDemanda = avaluo.getCompOfertaDemanda()
						.get(0);
			}
			if ((avaluo.getCondicionSalubridad() != null)
					&& (!avaluo.getCondicionSalubridad().isEmpty())
					&& (avaluo.getCondicionSalubridad().get(0) != null)) {
				condicionesSalubridad = avaluo.getCondicionSalubridad().get(0);
			}
			if ((avaluo.getInformacionBarrio() != null)
					&& (!avaluo.getInformacionBarrio().isEmpty())
					&& (avaluo.getInformacionBarrio().get(0) != null)) {
				barrio = avaluo.getInformacionBarrio().get(0);
			}
			if ((avaluo.getInformacionConstruccion() != null)
					&& (!avaluo.getInformacionConstruccion().isEmpty())
					&& (avaluo.getInformacionConstruccion().get(0) != null)) {
				construccion = avaluo.getInformacionConstruccion().get(0);
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
				liquidacionAvaluoTotal = avaluo.getLiquidacionTotal().get(0);
			}
			if ((avaluo.getObservacion() != null)
					&& (!avaluo.getObservacion().isEmpty())
					&& (avaluo.getObservacion().get(0) != null)) {
				observaciones = avaluo.getObservacion().get(0);
			}
			
			
			// Arma el registro
			line=getLineaAvaluo(avaluo,true);
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
				line.append(construccion.getCalidadMadera()
						.toEngineeringString());
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

			if (construccion != null
					&& construccion.getConjuntoAgrupacionCerrada() != null) {
				line.append(construccion.getConjuntoAgrupacionCerrada()
						.toString());
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

			if (construccion != null
					&& construccion.getEstadoConservacion() != null) {
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

			if (construccion != null
					&& construccion.getEstructuraTechos() != null) {
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

			if (construccion != null
					&& construccion.getPropiedadHorizontal() != null) {
				line.append(construccion.getPropiedadHorizontal().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getCondicionesSalubridad() != null) {
				line.append(condicionesSalubridad.getCondicionesSalubridad()
						.toString());
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

			if (construccion != null
					&& construccion.getUbicacionInmueble() != null) {
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
				line.append(Util.getAnyDateAsString(avaluo.getFechaAvaluo(),
						"dd-MM-yyyy ") + "00:00:00");
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (inmueble != null && inmueble.getFechaEscritura() != null) {
				line.append(Util.getAnyDateAsString(
						inmueble.getFechaEscritura(), "dd-MM-yyyy ")
						+ "00:00:00");
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null
					&& construccion.getAireAcondicionado() != null) {
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

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getAguasServidas() != null) {
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

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getAmbientalArborizacion() != null) {
				line.append(condicionesSalubridad.getAmbientalArborizacion()
						.toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getAmbientalParques() != null) {
				line.append(condicionesSalubridad.getAmbientalParques()
						.toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getAmbientalZonaVerde() != null) {
				line.append(condicionesSalubridad.getAmbientalZonaVerde()
						.toString());
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

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getImpactoNegativoBasura() != null) {
				line.append(condicionesSalubridad.getImpactoNegativoBasura()
						.toString());
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

			if (construccion != null
					&& construccion.getCanchaMultiple() != null) {
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

			if (construccion != null
					&& construccion.getEstadoRemodelacion() != null) {
				line.append(construccion.getEstadoRemodelacion().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null
					&& construccion.getEstadoTerminadaNueva() != null) {
				line.append(construccion.getEstadoTerminadaNueva().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null
					&& construccion.getEstadoTerminadoUsado() != null) {
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

			if (construccion != null
					&& construccion.getGarajeVisitante() != null) {
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

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getImpactoNegativoInseguridad() != null) {
				line.append(condicionesSalubridad
						.getImpactoNegativoInseguridad().toString());
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

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getImpactoNegativoPorAire() != null) {
				line.append(condicionesSalubridad.getImpactoNegativoPorAire()
						.toString());
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

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getImpactoNegativoRuido() != null) {
				line.append(condicionesSalubridad.getImpactoNegativoRuido()
						.toString());
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
					line.append(registro.getAreaLiquidacion().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			}

			if (liquidacionAvaluoTotal != null
					&& liquidacionAvaluoTotal.getAvaluoUvr() != null) {
				line.append(liquidacionAvaluoTotal.getAvaluoUvr().toString());
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

			if (avaluo.getConsecutivoBanco() != null
					&& avaluo.getConsecutivoBanco() != null) {
				line.append(avaluo.getConsecutivoBanco().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null
					&& construccion.getCuartoServicio() != null) {
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

			if (construccion != null
					&& construccion.getEstarHabitacion() != null) {
				line.append(construccion.getEstarHabitacion().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null && construccion.getEstudio() != null) {
				line.append(construccion.getEstudio().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null
					&& construccion.getNumeroHabitaciones() != null) {
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

			if (construccion != null
					&& construccion.getNumeroAscensores() != null) {
				line.append(construccion.getNumeroAscensores().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null
					&& construccion.getNumeroEdificios() != null) {
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

			if (comportamientoOfertaDemanda != null
					&& comportamientoOfertaDemanda.getTipoComercializacion() != null) {
				line.append(comportamientoOfertaDemanda
						.getTipoComercializacion().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (liquidacionAvaluoTotal != null
					&& liquidacionAvaluoTotal.getTotalAvaluo() != null) {
				line.append(liquidacionAvaluoTotal.getTotalAvaluo());
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

			if (liquidacionAvaluoTotal != null
					&& liquidacionAvaluoTotal.getValorAsegurable() != null) {
				line.append(liquidacionAvaluoTotal.getValorAsegurable()
						.toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			for (LiquidacionAvaluo registro : liquidacionAvaluo) {
				if (registro.getValorTotal() != null) {
					line.append(registro.getValorTotal().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			}

			if (liquidacionAvaluoTotal != null
					&& liquidacionAvaluoTotal.getValorUvrDia() != null) {
				line.append(liquidacionAvaluoTotal.getValorUvrDia().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			for (LiquidacionAvaluo registro : liquidacionAvaluo) {
				if (registro.getValor() != null) {
					line.append(registro.getValor().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			}

			if (construccion != null && construccion.getVetustez() != null) {
				line.append(construccion.getVetustez().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null
					&& construccion.getZonaVerdePrivada() != null) {
				line.append(construccion.getZonaVerdePrivada().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (liquidacionAvaluoTotal != null
					&& liquidacionAvaluoTotal.getCalificacion() != null) {
				line.append(liquidacionAvaluoTotal.getCalificacion().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null
					&& construccion.getEstadoConstruccion() != null) {
				line.append(construccion.getEstadoConstruccion().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (comportamientoOfertaDemanda != null
					&& comportamientoOfertaDemanda.getActualidadEdificadora() != null) {
				line.append(comportamientoOfertaDemanda
						.getActualidadEdificadora().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getImpactoNegativoOtros() != null) {
				line.append(condicionesSalubridad.getImpactoNegativoOtros()
						.toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getAmbientalOtros() != null) {
				line.append(condicionesSalubridad.getAmbientalOtros()
						.toString());
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

			if (comportamientoOfertaDemanda != null
					&& comportamientoOfertaDemanda
							.getComportamientoOfertaDemanda() != null) {
				line.append(comportamientoOfertaDemanda
						.getComportamientoOfertaDemanda().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null && construccion.getTextoCubierta() != null) {
				line.append(construccion.getTextoCubierta().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (observaciones != null
					&& observaciones.getDireccionAnexos() != null) {
				line.append(observaciones.getDireccionAnexos().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (avaluo != null && avaluo.getDireccionInmueble() != null) {
				line.append(avaluo.getDireccionInmueble().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null
					&& construccion.getTextoEstructura() != null) {
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

			if (inmueble != null
					&& inmueble.getMatriculaInmobiliariaPpal1() != null) {
				line.append(inmueble.getMatriculaInmobiliariaPpal1().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (inmueble != null
					&& inmueble.getMatriculaInmobiliariaPpal2() != null) {
				line.append(inmueble.getMatriculaInmobiliariaPpal2().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (inmueble != null
					&& inmueble.getMatriculaInmobiliariaDeposito1() != null) {
				line.append(inmueble.getMatriculaInmobiliariaDeposito1()
						.toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (inmueble != null
					&& inmueble.getMatriculaInmobiliariaDeposito2() != null) {
				line.append(inmueble.getMatriculaInmobiliariaDeposito2()
						.toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (inmueble != null
					&& inmueble.getMatriculaInmobiliariaGaraje1() != null) {
				line.append(inmueble.getMatriculaInmobiliariaGaraje1()
						.toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (inmueble != null
					&& inmueble.getMatriculaInmobiliariaGaraje2() != null) {
				line.append(inmueble.getMatriculaInmobiliariaGaraje2()
						.toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (inmueble != null
					&& inmueble.getMatriculaInmobiliariaGaraje3() != null) {
				line.append(inmueble.getMatriculaInmobiliariaGaraje3()
						.toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (inmueble != null
					&& inmueble.getMatriculaInmobiliariaGaraje4() != null) {
				line.append(inmueble.getMatriculaInmobiliariaGaraje4()
						.toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (inmueble != null
					&& inmueble.getMatriculaInmobiliariaGaraje5() != null) {
				line.append(inmueble.getMatriculaInmobiliariaGaraje5()
						.toString());
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

			if (observaciones != null
					&& observaciones.getObservacionAvaluo() != null) {
				line.append(observaciones.getObservacionAvaluo().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (observaciones != null
					&& observaciones.getOtrasDirecciones() != null) {
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

			if (construccion != null
					&& construccion.getOtrosDotacion2() != null) {
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
			//Ojo falta altura 	
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

			//14 nov 2012 Lineas campos no asobancaria quitar

			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (avaluo != null && avaluo.getSector() != null) {
			line.append(avaluo.getSector());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (avaluo != null && avaluo.getTelefonoSolicitante() != null) {
			line.append(avaluo.getTelefonoSolicitante());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (avaluo != null && avaluo.getCelularSolicitante() != null) {
			line.append(avaluo.getCelularSolicitante());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (avaluo != null && avaluo.getCorreoSolicitante() != null) {
			line.append(avaluo.getCorreoSolicitante().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (avaluo != null && avaluo.getUbicacionGps() != null) {
			line.append(avaluo.getUbicacionGps().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null
			 && construccion.getUbicacionFuentesHidricas() != null) {
			line.append(construccion.getUbicacionFuentesHidricas());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null
			 && construccion.getUbicacionNivelVia() != null) {
			line.append(construccion.getUbicacionNivelVia());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (barrio != null && barrio.getEdificacionesIguales() != null) {
			line.append(barrio.getEdificacionesIguales());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null
			 && construccion.getLuces() != null) {
			line.append(construccion.getLuces());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (inmueble != null
			 && inmueble.getEdiContUso() != null) {
			line.append(inmueble.getEdiContUso());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null
			 && construccion.getPisos() != null) {
			line.append(construccion.getPisos());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null
			 && construccion.getSimetriaAltura() != null) {
			line.append(construccion.getSimetriaAltura());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null
			 && construccion.getSimetriaPlanta() != null) {
			line.append(construccion.getSimetriaPlanta());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null
			 && construccion.getMaterialEstructura() != null) {
			line.append(construccion.getMaterialEstructura());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null
			 && construccion.getOtroMaterial() != null) {
			line.append(construccion.getOtroMaterial().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null
			 && construccion.getParapetosCubierta() != null) {
			line.append(construccion.getParapetosCubierta());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null
			 && construccion.getUbicacionTanque() != null) {
			line.append(construccion.getUbicacionTanque());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null
			 && construccion.getOtraUbicacionTanque() != null) {
			line.append(construccion.getOtraUbicacionTanque().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null
			 && construccion.getSobrePeso() != null) {
			line.append(construccion.getSobrePeso());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null
			 && construccion.getGolpeteo() != null) {
			line.append(construccion.getGolpeteo());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null
			 && construccion.getAsentamientos() != null) {
			line.append(construccion.getAsentamientos());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (construccion != null
			 && construccion.getDanoPrevio() != null) {
			line.append(construccion.getDanoPrevio());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			
			
			for (LiquidacionAvaluo registro : liquidacionAvaluo) {
				if (registro.getDescripcionDependencia() != null) {
					line.append(registro.getDescripcionDependencia().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			}

			//line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			if (condicionesSalubridad != null
				&& condicionesSalubridad
				.getRequiereCondicionesSalubridad() != null) {
				line.append(condicionesSalubridad.getRequiereCondicionesSalubridad());
			}
			*/
			
			
			//14 nov 2012 Lineas campos no asobancaria quitar

			liquidacionAvaluo.clear();

			// Se hace el insert en la tabla temporal para luego correr el
			// procesdimiento validador
			PgbCargueTmp pgbCargueTmp = new PgbCargueTmp();
			pgbCargueTmp.setNumeroRefCargue(numeroRefcargue);
			pgbCargueTmp.setLineaPlano(new BigDecimal(1));
			pgbCargueTmp.setContenidoLineaPlano(line.toString());
			//pgbCargueTmp.setTipoCargue(ConstantesAvaluos.TIPO_CARGUE_DESCARGA);
			pgbCargueTmp.setTipoCargue(ConstantesAvaluos.TIPO_CARGUE_VALIDAWEB);
			pgbCargueTmp.setEstadoCargue("CARGADO");
			pgbCargueTmp.setNombreArchivo("Temporal");

			pgbCargueTmp.setTipoProyecto(new BigDecimal(1));

			entityManager.getTransaction().begin();
			entityManager.persist(pgbCargueTmp);
			entityManager.flush();
			entityManager.getTransaction().commit();

			// Se ejecuta el pl que valida

			entityManager.getTransaction().begin();
			Query plCall = entityManager
					//.createNativeQuery("BEGIN PRC_CARGA_AVALUO(pREFERENCIA_CARGUE=>?,pTIPO_CARGUE=>?); END;");
					.createNativeQuery("BEGIN PRC_CARGA_AVALUO_CONSTRUCTOR(pREFERENCIA_CARGUE=>?,pTIPO_CARGUE=>?,pProyecto_constructor=>?); END;");
			plCall.setParameter(1, pgbCargueTmp.getNumeroRefCargue().toString());
			//plCall.setParameter(2, "DESCARGA");
			plCall.setParameter(2, ConstantesAvaluos.TIPO_CARGUE_VALIDAWEB);
			plCall.setParameter(3, "false");
			plCall.executeUpdate();
			entityManager.flush();
			entityManager.getTransaction().commit();

			// Consulta el campo estado en la tabla temporal
			StringBuffer sqlEstadoCargue = new StringBuffer();
			sqlEstadoCargue
					.append("SELECT cargue.ESTADO_CARGUE FROM PGB_CARGUE_TMP cargue WHERE cargue.NUMERO_REF_CARGUE = ?");
			sqlEstadoCargue.append(" AND cargue.CONSECUTIVO_TMP = ?");
			refCargue = pgbCargueTmp.getNumeroRefCargue().intValue();
			consecutivoCargue = pgbCargueTmp.getConsecutivoTmp();
			String estado = (String) entityManager
					.createNativeQuery(sqlEstadoCargue.toString())
					.setParameter(1, pgbCargueTmp.getNumeroRefCargue())
					.setParameter(2, pgbCargueTmp.getConsecutivoTmp())
					.getSingleResult();

			// Decide si es valido o no
			res = estado
					.equalsIgnoreCase(ConstantesAvaluos.ESTADO_CARGUE_APLICADO_DESCARGA);

		}

		if (!res) {
			StringBuffer sqlError = new StringBuffer();
			sqlError.append("SELECT cargue.MENSAJE_ERROR FROM PGB_CARGUE_TMP cargue WHERE cargue.NUMERO_REF_CARGUE = ?");
			sqlError.append(" AND cargue.CONSECUTIVO_TMP = ?");
			String errorValidacion = (String) entityManager
					.createNativeQuery(sqlError.toString())
					.setParameter(1, refCargue)
					.setParameter(2, consecutivoCargue).getSingleResult();
			setMsjErrorMalla(errorValidacion);
			log.log(Level.INFO, "[INFO]", "No superó la malla validadora");
		}
		
			//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
			//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
		
		return res;
	}

	public String getMsjErrorMalla() {
		return msjErrorMalla;
	}
	
	public StringBuffer getLineasAvaluo(List<String> idAvaluos,boolean asobancaria)
	{
    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//if(!entityManager.isOpen())
		//	entityManager = emf.createEntityManager();
		//
		StringBuffer lineas=null;//new StringBuffer();
		
		StringBuffer sql = new StringBuffer();

		try {
			sql = new StringBuffer(
					//"SELECT avaluo.* FROM pgb_Avaluos avaluo " /*+*/
					"SELECT avaluo FROM Avaluo avaluo " /*+
					"WHERE avaluo.idAvaluo in(:ids)"*/);
			//sqlEmpresa.append(empresasAvaluos.getNumeroDocumento());								
			StringBuffer ids = new StringBuffer("");
			
			sql.append(" WHERE  "); //WHERE avaluo.idAvaluo in(:ids)
			sql.append(" avaluo.idAvaluo IN(  "); //WHERE avaluo.idAvaluo in(:ids)
			//sql.append(" avaluo.id_Avaluo IN(  "); //WHERE avaluo.idAvaluo in(:ids)
			
			for (int i = 0; i < idAvaluos.size(); i++) {
				//System.out.println(ids.get(i));
				StringBuffer id = new StringBuffer((String)idAvaluos.get(i));
				ids.append(id);
				
				if(i>0){
					//sql.append(" OR  ");
					sql.append(" ,  ");
				}
				
				//sql.append(" avaluo.idAvaluo =  "+id);
				sql.append(id);
				
				
			}
			sql.append(") ");
			
			//query.setParameter("ids", ids.toString()/*idAvaluos*/ );
			
			sql.append(" ORDER BY avaluo.fechaAvaluo DESC");
			
			Query query = entityManager.createQuery(sql.toString());
			
			List<Avaluo> avLst = query.getResultList();
			
			lineas=new StringBuffer();
			Iterator it=avLst.iterator();
			while(it.hasNext())
			{
				Avaluo av = (Avaluo)it.next();
				StringBuffer strBuffTmp=getLineaAvaluo(av,true);
				if(strBuffTmp!=null)
				{	
					lineas.append(getLineaAvaluo(av,true));
					lineas.append("\n");
				}	
			}
			
		} catch (Exception e) {
			log.log(Level.SEVERE, "[ERROR]", e);
			//throw new Exception(ConstantesAvaluos.ERROR);
		}
		
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
		
		return lineas;		
	}

	public StringBuffer getLineaAvaluo(Avaluo avaluo,boolean asobancaria)
	{
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//if(!entityManager.isOpen())
		//	entityManager = emf.createEntityManager();
		
		boolean res = false;
			//entityManager.refresh(avaluo);
		int refCargue = 0;
		
		StringBuffer line = null;

		// Recupera el valor de referencia que tendra el presente cargue (es
		// como un secuencial por cargue)
		long consecutivoCargue = 0;
		if (avaluo != null) {
			//StringBuffer line = new StringBuffer();
			line = new StringBuffer();

			// Se recupera cada una de las tablas de las cuales se va a sacar la
			// info para armar el plano
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
				comportamientoOfertaDemanda = avaluo.getCompOfertaDemanda()
						.get(0);
			}
			if ((avaluo.getCondicionSalubridad() != null)
					&& (!avaluo.getCondicionSalubridad().isEmpty())
					&& (avaluo.getCondicionSalubridad().get(0) != null)) {
				condicionesSalubridad = avaluo.getCondicionSalubridad().get(0);
			}
			if ((avaluo.getInformacionBarrio() != null)
					&& (!avaluo.getInformacionBarrio().isEmpty())
					&& (avaluo.getInformacionBarrio().get(0) != null)) {
				barrio = avaluo.getInformacionBarrio().get(0);
			}
			if ((avaluo.getInformacionConstruccion() != null)
					&& (!avaluo.getInformacionConstruccion().isEmpty())
					&& (avaluo.getInformacionConstruccion().get(0) != null)) {
				construccion = avaluo.getInformacionConstruccion().get(0);
			}
			if ((avaluo.getInformacionInmueble() != null)
					&& (!avaluo.getInformacionInmueble().isEmpty())
					&& (avaluo.getInformacionInmueble().get(0) != null)) {
				inmueble = avaluo.getInformacionInmueble().get(0);
			}
			
			//Forzar llamado para obtener liquidaciones y evitar lazy loading de JPA
			//avaluo.getLiquidacionAvaluos().get(0);
			//avaluo.getLiquidacionAvaluos().size();
			
			
			if (avaluo.getLiquidacionAvaluos() != null) {
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
				liquidacionAvaluoTotal = avaluo.getLiquidacionTotal().get(0);
			}
			if ((avaluo.getObservacion() != null)
					&& (!avaluo.getObservacion().isEmpty())
					&& (avaluo.getObservacion().get(0) != null)) {
				observaciones = avaluo.getObservacion().get(0);
			}

			// Arma el registro
			if (barrio != null && barrio.getAndenes() != null) {
				line.append(barrio.getAndenes().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null && construccion.getCalidadBanio() != null) {
				line.append(construccion.getCalidadBanio().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null && construccion.getCalidadMadera() != null) {
				line.append(construccion.getCalidadMadera()
						.toEngineeringString());
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

			if (construccion != null
					&& construccion.getConjuntoAgrupacionCerrada() != null) {
				line.append(construccion.getConjuntoAgrupacionCerrada()
						.toString());
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

			if (construccion != null
					&& construccion.getEstadoConservacion() != null) {
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

			if (construccion != null
					&& construccion.getEstructuraTechos() != null) {
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

			if (construccion != null
					&& construccion.getPropiedadHorizontal() != null) {
				line.append(construccion.getPropiedadHorizontal().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getCondicionesSalubridad() != null) {
				line.append(condicionesSalubridad.getCondicionesSalubridad()
						.toString());
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

			if (construccion != null
					&& construccion.getUbicacionInmueble() != null) {
				line.append(construccion.getUbicacionInmueble().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (inmueble != null && inmueble.getUbicacion2() != null) {
				line.append(inmueble.getUbicacion2().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			//if (inmueble != null && inmueble.getUsoInmuebleBUA() != null) {
			if (inmueble != null && inmueble.getUsoInmueble() != null) {
				line.append(inmueble.getUsoInmueble().toString());
				//line.append(inmueble.getUsoInmuebleBUA().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null && construccion.getVentilacion() != null) {
				line.append(construccion.getVentilacion().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (avaluo != null && avaluo.getFechaAvaluo() != null) {
				line.append(Util.getAnyDateAsString(avaluo.getFechaAvaluo(),
						"dd-MM-yyyy ") + "00:00:00");
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (inmueble != null && inmueble.getFechaEscritura() != null) {
				line.append(Util.getAnyDateAsString(
						inmueble.getFechaEscritura(), "dd-MM-yyyy ")
						+ "00:00:00");
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null
					&& construccion.getAireAcondicionado() != null) {
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

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getAguasServidas() != null) {
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

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getAmbientalArborizacion() != null) {
				line.append(condicionesSalubridad.getAmbientalArborizacion()
						.toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getAmbientalParques() != null) {
				line.append(condicionesSalubridad.getAmbientalParques()
						.toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getAmbientalZonaVerde() != null) {
				line.append(condicionesSalubridad.getAmbientalZonaVerde()
						.toString());
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

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getImpactoNegativoBasura() != null) {
				line.append(condicionesSalubridad.getImpactoNegativoBasura()
						.toString());
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

			if (construccion != null
					&& construccion.getCanchaMultiple() != null) {
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

			if (construccion != null
					&& construccion.getEstadoRemodelacion() != null) {
				line.append(construccion.getEstadoRemodelacion().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null
					&& construccion.getEstadoTerminadaNueva() != null) {
				line.append(construccion.getEstadoTerminadaNueva().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null
					&& construccion.getEstadoTerminadoUsado() != null) {
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

			if (construccion != null
					&& construccion.getGarajeVisitante() != null) {
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

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getImpactoNegativoInseguridad() != null) {
				line.append(condicionesSalubridad
						.getImpactoNegativoInseguridad().toString());
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

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getImpactoNegativoPorAire() != null) {
				line.append(condicionesSalubridad.getImpactoNegativoPorAire()
						.toString());
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

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getImpactoNegativoRuido() != null) {
				line.append(condicionesSalubridad.getImpactoNegativoRuido()
						.toString());
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
					//Ojo archivosservice line.append(round
					//line.append(registro.getAreaLiquidacion().toString());
					//line.append(round(registro.getAreaLiquidacion()).toString());
					if(asobancaria){
						line.append(registro.getAreaLiquidacion().toString());
					}else{
						line.append(round(registro.getAreaLiquidacion()).toString());
					}	
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			}

			if (liquidacionAvaluoTotal != null
					&& liquidacionAvaluoTotal.getAvaluoUvr() != null) {
				//Ojo archivosservice line.append(round
				//line.append(liquidacionAvaluoTotal.getAvaluoUvr().toString());
				//line.append(round(liquidacionAvaluoTotal.getAvaluoUvr()).toString());
				if(asobancaria){
					line.append(liquidacionAvaluoTotal.getAvaluoUvr().toString());
				}else{
					line.append(round(liquidacionAvaluoTotal.getAvaluoUvr()).toString());
				}
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

			if (avaluo.getConsecutivoBanco() != null
					&& avaluo.getConsecutivoBanco() != null) {
				line.append(avaluo.getConsecutivoBanco().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null
					&& construccion.getCuartoServicio() != null) {
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

			if (construccion != null
					&& construccion.getEstarHabitacion() != null) {
				line.append(construccion.getEstarHabitacion().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null && construccion.getEstudio() != null) {
				line.append(construccion.getEstudio().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null
					&& construccion.getNumeroHabitaciones() != null) {
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

			if (construccion != null
					&& construccion.getNumeroAscensores() != null) {
				line.append(construccion.getNumeroAscensores().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null
					&& construccion.getNumeroEdificios() != null) {
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

			if (comportamientoOfertaDemanda != null
					&& comportamientoOfertaDemanda.getTipoComercializacion() != null) {
				line.append(comportamientoOfertaDemanda
						.getTipoComercializacion().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (liquidacionAvaluoTotal != null
					&& liquidacionAvaluoTotal.getTotalAvaluo() != null) {
				//line.append(liquidacionAvaluoTotal.getTotalAvaluo());
				//line.append(round(liquidacionAvaluoTotal.getTotalAvaluo()).toString());
				if(asobancaria){
					line.append(liquidacionAvaluoTotal.getTotalAvaluo());
				}else{
					line.append(round(liquidacionAvaluoTotal.getTotalAvaluo()).toString());
				}
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

			if (liquidacionAvaluoTotal != null
					&& liquidacionAvaluoTotal.getValorAsegurable() != null) {
				//Ojo archivosservice line.append(round(liquidacionAvaluoTotal.getValorAsegurable()).toString());
				//line.append(liquidacionAvaluoTotal.getValorAsegurable()
				//		.toString());
				//line.append(round(liquidacionAvaluoTotal.getValorAsegurable()).toString());
				if(asobancaria){
					line.append(liquidacionAvaluoTotal.getValorAsegurable()
							.toString());
				}else{
					line.append(round(liquidacionAvaluoTotal.getValorAsegurable()).toString());
				}
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			for (LiquidacionAvaluo registro : liquidacionAvaluo) {
				if (registro.getValorTotal() != null) {
					//Ojo archivosservice line.append(round
					//line.append(registro.getValorTotal().toString());
					//line.append(round(registro.getValorTotal()).toString());
					if(asobancaria){
						line.append(registro.getValorTotal().toString());
					}else{
						line.append(round(registro.getValorTotal()).toString());
					}
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			}

			if (liquidacionAvaluoTotal != null
					&& liquidacionAvaluoTotal.getValorUvrDia() != null) {
				//Ojo archivosservice line.append(round
				//line.append(liquidacionAvaluoTotal.getValorUvrDia().toString());
				//line.append(round(liquidacionAvaluoTotal.getValorUvrDia()).toString());
				if(asobancaria){
					line.append(liquidacionAvaluoTotal.getValorUvrDia().toString());
				}else{
					line.append(round(liquidacionAvaluoTotal.getValorUvrDia()).toString());
				}
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			for (LiquidacionAvaluo registro : liquidacionAvaluo) {
				if (registro.getValor() != null) {
					//Ojo archivosservice line.append(round
					//line.append(registro.getValor().toString());
					//line.append(round(registro.getValor()).toString());
					if(asobancaria){
						line.append(registro.getValor().toString());
					}else{
						line.append(round(registro.getValor()).toString());
					}
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			}

			if (construccion != null && construccion.getVetustez() != null) {
				//Ojo archivosservice line.append(round
				//line.append(construccion.getVetustez().toString());
				//line.append(round(construccion.getVetustez()).toString());
				if(asobancaria){
					line.append(construccion.getVetustez().toString());
				}else{
					line.append(round(construccion.getVetustez()).toString());
				}
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null
					&& construccion.getZonaVerdePrivada() != null) {
				line.append(construccion.getZonaVerdePrivada().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (liquidacionAvaluoTotal != null
					&& liquidacionAvaluoTotal.getCalificacion() != null) {
				line.append(liquidacionAvaluoTotal.getCalificacion().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null
					&& construccion.getEstadoConstruccion() != null) {
				line.append(construccion.getEstadoConstruccion().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (comportamientoOfertaDemanda != null
					&& comportamientoOfertaDemanda.getActualidadEdificadora() != null) {
				line.append(Utilidades.getStringWithOutEof(comportamientoOfertaDemanda.getActualidadEdificadora().toString()));
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getImpactoNegativoOtros() != null) {
				line.append(condicionesSalubridad.getImpactoNegativoOtros()
						.toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (condicionesSalubridad != null
					&& condicionesSalubridad.getAmbientalOtros() != null) {
				line.append(condicionesSalubridad.getAmbientalOtros()
						.toString());
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

			if (comportamientoOfertaDemanda != null
					&& comportamientoOfertaDemanda
							.getComportamientoOfertaDemanda() != null) {
				line.append(Utilidades.getStringWithOutEof(comportamientoOfertaDemanda.getComportamientoOfertaDemanda().toString()));
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null && construccion.getTextoCubierta() != null) {
				line.append(construccion.getTextoCubierta().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (observaciones != null
					&& observaciones.getDireccionAnexos() != null) {
				line.append(observaciones.getDireccionAnexos().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (avaluo != null && avaluo.getDireccionInmueble() != null) {
				line.append(avaluo.getDireccionInmueble().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (construccion != null
					&& construccion.getTextoEstructura() != null) {
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

			if (inmueble != null
					&& inmueble.getMatriculaInmobiliariaPpal1() != null) {
				line.append(inmueble.getMatriculaInmobiliariaPpal1().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (inmueble != null
					&& inmueble.getMatriculaInmobiliariaPpal2() != null) {
				line.append(inmueble.getMatriculaInmobiliariaPpal2().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (inmueble != null
					&& inmueble.getMatriculaInmobiliariaDeposito1() != null) {
				line.append(inmueble.getMatriculaInmobiliariaDeposito1()
						.toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (inmueble != null
					&& inmueble.getMatriculaInmobiliariaDeposito2() != null) {
				line.append(inmueble.getMatriculaInmobiliariaDeposito2()
						.toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (inmueble != null
					&& inmueble.getMatriculaInmobiliariaGaraje1() != null) {
				line.append(inmueble.getMatriculaInmobiliariaGaraje1()
						.toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (inmueble != null
					&& inmueble.getMatriculaInmobiliariaGaraje2() != null) {
				line.append(inmueble.getMatriculaInmobiliariaGaraje2()
						.toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (inmueble != null
					&& inmueble.getMatriculaInmobiliariaGaraje3() != null) {
				line.append(inmueble.getMatriculaInmobiliariaGaraje3()
						.toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (inmueble != null
					&& inmueble.getMatriculaInmobiliariaGaraje4() != null) {
				line.append(inmueble.getMatriculaInmobiliariaGaraje4()
						.toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (inmueble != null
					&& inmueble.getMatriculaInmobiliariaGaraje5() != null) {
				line.append(inmueble.getMatriculaInmobiliariaGaraje5()
						.toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (avaluo != null && avaluo.getNombreConjuntoEdificio() != null) {
				line.append(avaluo.getNombreConjuntoEdificio().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (avaluo != null && avaluo.getNombreSolicitante() != null) {
				if(avaluo.getNombreSolicitante().toString().length()>30){
					line.append(avaluo.getNombreSolicitante().toString().substring(0, 30));
				}else{
					line.append(avaluo.getNombreSolicitante().toString());
				}				
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

			if (observaciones != null
					&& observaciones.getObservacionAvaluo() != null) {
				line.append(Utilidades.getStringWithOutEof(observaciones.getObservacionAvaluo().toString()));
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (observaciones != null
					&& observaciones.getOtrasDirecciones() != null) {
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

			if (construccion != null
					&& construccion.getOtrosDotacion2() != null) {
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
				line.append(Utilidades.getStringWithOutEof(barrio.getPerspectivas().toString()));
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (inmueble != null && inmueble.getUbicacion3() != null) {
				line.append(inmueble.getUbicacion3().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			
			//boolean generaCargue=false;
			boolean generaCargue=asobancaria;
			
			/*
			if(generaCargue&&asobancaria)
			{
			*/
				/*test circ11*/
				if (avaluo != null && avaluo.getSistemaCoordenadasTxtBUA() != null) {
					line.append(avaluo.getSistemaCoordenadasTxtBUA().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

				if (construccion != null && construccion.getReparadosBUA() != null) {
					line.append(construccion.getReparadosBUA().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

				if (construccion != null && construccion.getIrregularidadAlturaBUA() != null) {
					line.append(construccion.getIrregularidadAlturaBUA().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

				if (construccion != null && construccion.getIrregularidadPlantaBUA() != null) {
					line.append(construccion.getIrregularidadPlantaBUA().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

				if (construccion != null && construccion.getEstructuraReforzadaBUA() != null) {
					line.append(construccion.getEstructuraReforzadaBUA().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

				if (avaluo != null && avaluo.getSistemaCoordenadasBUA() != null) {
					line.append(avaluo.getSistemaCoordenadasBUA().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

				if (construccion != null && construccion.getDanoPrevioBUA() != null) {
					line.append(construccion.getDanoPrevioBUA().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

				if (avaluo != null && avaluo.getLatitudSFBUA() != null) {
					//line.append(avaluo.getLatitudSFBUA().toString());
					if(asobancaria){
						line.append(avaluo.getLatitudSFBUA().toString());
					}else{
						Object val=new BigDecimal ((Math.round(Double.parseDouble(avaluo.getLatitudSFBUA()) * 10000000000l) / 10000000000l));
						//line.append((new BigDecimal(avaluo.getLatitudSFBUA()).setScale(10, java.math.RoundingMode.HALF_UP)).toString());
						line.append(val.toString());
					}
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

				if (construccion != null && construccion.getAnoConstruccionBUA() != null) {
					line.append(construccion.getAnoConstruccionBUA().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

				if (construccion != null && construccion.getMaterialConstruccionBUA() != null) {
					line.append(construccion.getMaterialConstruccionBUA().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

				if (avaluo != null && avaluo.getLongitudSFBUA() != null) {
					//line.append(avaluo.getLongitudSFBUA().toString());
					if(asobancaria){
						line.append(avaluo.getLongitudSFBUA().toString());
					}else{
						Object val=new BigDecimal ((Math.round(Double.parseDouble(avaluo.getLongitudSFBUA()) * 10000000000l) / 10000000000l));
						//line.append((new BigDecimal(avaluo.getLongitudSFBUA()).setScale(10, java.math.RoundingMode.HALF_UP)).toString());
						line.append(val.toString());
					}	
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

				if (construccion != null && construccion.getDetalleMaterialSFBUA() != null) {
					if(asobancaria && construccion.getDetalleMaterialSFBUA().toString()=="20"){
						line.append("21");
					}if(!asobancaria && construccion.getDetalleMaterialSFBUA().toString()=="21"){
						line.append("20");
					}else{						
						line.append(construccion.getDetalleMaterialSFBUA().toString());						
					}
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);			
				/*test circ11*/
			/*	
			}
			*/	
			
			if (inmueble != null && inmueble.getIdCategoria() != null) {
				line.append(inmueble.getIdCategoria().toString());
			}
			line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

			if (avaluo != null && avaluo.getTUsuario() != null) {
				line.append(avaluo.getTUsuario().toString());
			}

			if(asobancaria)
			{	
				//Ojo parece sobrar
				//line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				/*
				if (avaluo != null && avaluo.getSector() != null) {
				line.append(avaluo.getSector());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (avaluo != null && avaluo.getTelefonoSolicitante() != null) {
				line.append(avaluo.getTelefonoSolicitante());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (avaluo != null && avaluo.getCelularSolicitante() != null) {
				line.append(avaluo.getCelularSolicitante());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (avaluo != null && avaluo.getCorreoSolicitante() != null) {
				line.append(avaluo.getCorreoSolicitante().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (avaluo != null && avaluo.getUbicacionGps() != null) {
				line.append(avaluo.getUbicacionGps().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (construccion != null
				 && construccion.getUbicacionFuentesHidricas() != null) {
				line.append(construccion.getUbicacionFuentesHidricas());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (construccion != null
				 && construccion.getUbicacionNivelVia() != null) {
				line.append(construccion.getUbicacionNivelVia());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (barrio != null && barrio.getEdificacionesIguales() != null) {
				line.append(barrio.getEdificacionesIguales());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (construccion != null
				 && construccion.getLuces() != null) {
				line.append(construccion.getLuces());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (inmueble != null
				 && inmueble.getEdiContUso() != null) {
				line.append(inmueble.getEdiContUso());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (construccion != null
				 && construccion.getPisos() != null) {
				line.append(construccion.getPisos());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (construccion != null
				 && construccion.getSimetriaAltura() != null) {
				line.append(construccion.getSimetriaAltura());
				}
				*/
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (construccion != null
				 && construccion.getSimetriaPlanta() != null) {
					//OJO
				line.append(construccion.getSimetriaPlanta());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (construccion != null
				 && construccion.getMaterialEstructura() != null) {
				line.append(construccion.getMaterialEstructura());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (construccion != null
				 && construccion.getOtroMaterial() != null) {
				line.append(construccion.getOtroMaterial().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (construccion != null
				 && construccion.getParapetosCubierta() != null) {
				line.append(construccion.getParapetosCubierta());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (construccion != null
				 && construccion.getUbicacionTanque() != null) {
				line.append(construccion.getUbicacionTanque());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (construccion != null
				 && construccion.getOtraUbicacionTanque() != null) {
				line.append(construccion.getOtraUbicacionTanque().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (construccion != null
				 && construccion.getSobrePeso() != null) {
				line.append(construccion.getSobrePeso());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (construccion != null
				 && construccion.getGolpeteo() != null) {
				line.append(construccion.getGolpeteo());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (construccion != null
				 && construccion.getAsentamientos() != null) {
				line.append(construccion.getAsentamientos());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (construccion != null
				 && construccion.getDanoPrevio() != null) {
					//OJO
				line.append(construccion.getDanoPrevio());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
	
				//ojo falta agregar 10 campos
				for (LiquidacionAvaluo registro : liquidacionAvaluo) {
					if (registro.getDescripcionDependencia() != null) {
						line.append(registro.getDescripcionDependencia().toString());
					}
					line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				}
	
				//line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (condicionesSalubridad != null
					&& condicionesSalubridad
					.getRequiereCondicionesSalubridad() != null) {
					line.append(condicionesSalubridad.getRequiereCondicionesSalubridad());
				}
				//ojo faltaba
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			}	
			//14 nov 2012 Lineas campos no asobancaria quitar

			liquidacionAvaluo.clear();
			
			if(asobancaria)
			{
				//ojo falta A_EDIPISO
				//ojo falta A_EDISIMALT
				//subir
				if (construccion != null
				 && construccion.getPisos() != null) {
				line.append(construccion.getPisos());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				if (construccion != null
				 && construccion.getSimetriaAltura() != null) {
					//OJO
				line.append(construccion.getSimetriaAltura());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				
				if (avaluo != null && avaluo.getSector() != null) {
					line.append(avaluo.getSector());
					}
					line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
					if (avaluo != null && avaluo.getTelefonoSolicitante() != null) {
					line.append(avaluo.getTelefonoSolicitante());
					}
					line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
					if (avaluo != null && avaluo.getCelularSolicitante() != null) {
					line.append(avaluo.getCelularSolicitante());
					}
					line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
					if (avaluo != null && avaluo.getCorreoSolicitante() != null) {
					line.append(avaluo.getCorreoSolicitante().toString());
					}
					line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
					if (avaluo != null && avaluo.getUbicacionGps() != null) {
					line.append(avaluo.getUbicacionGps().toString());
					}
					line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
					if (construccion != null
					 && construccion.getUbicacionFuentesHidricas() != null) {
					line.append(construccion.getUbicacionFuentesHidricas());
					}
					line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
					if (construccion != null
					 && construccion.getUbicacionNivelVia() != null) {
					line.append(construccion.getUbicacionNivelVia());
					}
					line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
					if (barrio != null && barrio.getEdificacionesIguales() != null) {
					line.append(barrio.getEdificacionesIguales());
					}
					line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
					if (construccion != null
					 && construccion.getLuces() != null) {
					line.append(construccion.getLuces());
					}
					line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
					if (inmueble != null
					 && inmueble.getEdiContUso() != null) {
					line.append(inmueble.getEdiContUso());
					}
					line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
					//ojo faltaba
					//line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
			}
			if(generaCargue&&asobancaria)
			{
				
				/*test 1 circ11*/
				if (construccion != null && construccion.getRangoConstruccionSF() != null) {
					line.append(construccion.getRangoConstruccionSF().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

				if (inmueble != null && inmueble.getCatastralSF() != null) {
					line.append(inmueble.getCatastralSF().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

				if (construccion != null && construccion.getDanoReparadoSF() != null) {
					line.append(construccion.getDanoReparadoSF().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

				if (construccion != null && construccion.getSimetriaAlturaSF() != null) {
					line.append(construccion.getSimetriaAlturaSF().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

				if (construccion != null && construccion.getSimetriaPlantaSF() != null) {
					line.append(construccion.getSimetriaPlantaSF().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

				if (construccion != null && construccion.getDanoPrevioSF() != null) {
					line.append(construccion.getDanoPrevioSF().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

				if (construccion != null && construccion.getEstructuraReforzadaSF() != null) {
					line.append(construccion.getEstructuraReforzadaSF().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

				if (construccion != null && construccion.getMaterialConstruccionSF() != null) {
					line.append(construccion.getMaterialConstruccionSF().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

				//if (inmueble != null && inmueble.getUsoInmueble() != null) {
				if (inmueble != null && inmueble.getUsoInmuebleBUA() != null) {				
					line.append(inmueble.getUsoInmuebleBUA().toString());
					//line.append(inmueble.getUsoInmueble().toString());
				}
				line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);

				if (inmueble != null && inmueble.getUsoInmuebleSF() != null) {
					line.append(inmueble.getUsoInmuebleSF().toString());
				}
				//ojo sobrara?
				//line.append(ConstantesAvaluos.SEPARADOR_CAMPOS);
				/*test 1 circ11*/
			}
			
		}	

		
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
		
		return line;		
	
	}
	                                                               
	
	public void setMsjErrorMalla(String msjErrorMalla) {
		this.msjErrorMalla = msjErrorMalla;
	}

	private StringBuffer getQueryPeritoHijo(InformacionInmueble inmueble,
			EmpresasAvaluos empresasAvaluos) throws Exception {
		StringBuffer sql = new StringBuffer();

		try {
			/*
			StringBuffer sqlEmpresa = new StringBuffer(
					"SELECT p FROM PeritosEmpresa p WHERE p.estadoAsociacion ='A' AND p.numeroDocumento = ");
			sqlEmpresa.append(empresasAvaluos.getNumeroDocumento());
			List<PeritosEmpresa> listPerito = entityManager.createQuery(
					sqlEmpresa.toString()).getResultList();

			if ((listPerito == null) || (listPerito.isEmpty())) {
				inmueble.getAvaluo().setTUsuario("''");
			} else if ((listPerito.get(0).getEmpresasAvaluo() != null)
					&& (listPerito.get(0).getEmpresasAvaluo()
							.getNumeroDocumento() != null)) {
				inmueble.getAvaluo().setTUsuario(
						listPerito.get(0).getEmpresasAvaluo()
								.getNumeroDocumento().toString());
			}
			*/
			
			
			sql.append(" SELECT DISTINCT avaluo FROM Avaluo avaluo, InformacionInmueble inmueble");
			sql.append(" WHERE inmueble.avaluo.idAvaluo = avaluo.idAvaluo");
			/*if ((inmueble.getAvaluo().getTUsuario() != null)
					&& (inmueble.getAvaluo().getTUsuario().length() > 0)) {
				sql.append(" AND avaluo.tUsuario = ");
				sql.append(inmueble.getAvaluo().getTUsuario());
			}*/
			/*
			if ((inmueble.getAvaluo().getUsuarioCreacion() != null)
					&& (inmueble.getAvaluo().getTUsuario().length() > 0)) {*/
				sql.append(" AND avaluo.usuarioCreacion = '");
				sql.append(inmueble.getAvaluo().getUsuarioCreacion());
				sql.append("'");
			/*
			}
			*/
			
			//mantis 39594 cambia criterio para definir avaluos constructor	
			/*
			if(inmueble.getAvaluo().getTipoInforme()!=null)
			{	
				if(inmueble.getAvaluo().getTipoInforme().equals(new BigDecimal(2)))
				{
					sql.append(" AND construccion.estadoTerminadaNueva = 1");
				}
			}
			*/
				
			if ((inmueble.getMatriculaInmobiliariaPpal1() != null)
					&& (inmueble.getMatriculaInmobiliariaPpal1().length() > 0)) {
				sql.append(" AND upper(inmueble.matriculaInmobiliariaPpal1) = '");
				sql.append(inmueble.getMatriculaInmobiliariaPpal1()
						.toUpperCase());
				sql.append("'");
			}
			if (inmueble.getAvaluo().getIdTipoIdentificacion() != null) {
				sql.append(" AND avaluo.idTipoIdentificacion = ");
				sql.append(inmueble.getAvaluo().getIdTipoIdentificacion());
			}
			if ((inmueble.getAvaluo().getNumeroIdentificacion() != null)
					&& (inmueble.getAvaluo().getNumeroIdentificacion().length() > 0)) {
				sql.append(" AND avaluo.numeroIdentificacion = '");
				sql.append(inmueble.getAvaluo().getNumeroIdentificacion());
				sql.append("'");
			}
			if (inmueble.getAvaluo().getIdDepartamento() != null) {
				sql.append(" AND avaluo.idDepartamento = ");
				sql.append(inmueble.getAvaluo().getIdDepartamento());
			}
			if (inmueble.getAvaluo().getObjCiudad() != null) {
				sql.append(" AND avaluo.idCiudad =");
				sql.append(inmueble.getAvaluo().getObjCiudad()
						.getCodAsobancaria());
			}
			if ((inmueble.getAvaluo().getDireccionInmueble() != null)
					&& (inmueble.getAvaluo().getDireccionInmueble().length() > 0)) {
				sql.append(" AND upper(avaluo.direccionInmueble) LIKE '%");
				sql.append(inmueble.getAvaluo().getDireccionInmueble()
						.toUpperCase());
				sql.append("%'");
			}
			if (inmueble.getAvaluo().getEstadoAvaluo() != null) {
				sql.append(" AND avaluo.estadoAvaluo = ");
				sql.append(inmueble.getAvaluo().getEstadoAvaluo());
			}
			if ((inmueble.getAvaluo().getLogsGeneraArchivo().getNombrePlano() != null)
					&& (inmueble.getAvaluo().getLogsGeneraArchivo()
							.getNombrePlano().length() > 0)) {
				sql.append(" AND avaluo.logsGeneraArchivo.nombrePlano = '");
				sql.append(inmueble.getAvaluo().getLogsGeneraArchivo()
						.getNombrePlano());
				sql.append("'");
			}
			if (inmueble.getAvaluo().getNumLinea() != null) {
				sql.append(" AND avaluo.numLinea = ");
				sql.append(inmueble.getAvaluo().getNumLinea());
			}
			
			if (inmueble.getAvaluo().getTipoInforme() != null) {
				sql.append(" AND avaluo.tipoInforme = ");
				sql.append(inmueble.getAvaluo().getTipoInforme());
			}
			
			if ((inmueble.getAvaluo().getFechaAvaluo() != null) || (inmueble.getAvaluo().getFechaAvaluoTetxo() != null)) {
				if ((inmueble.getAvaluo().getFechaAvaluo() != null) && (inmueble.getAvaluo().getFechaAvaluoTetxo() == null)){
					sql.append(" AND avaluo.fechaAvaluo >= :fechaAvaluoDesde");
				}
				else if ((inmueble.getAvaluo().getFechaAvaluo() == null) && (inmueble.getAvaluo().getFechaAvaluoTetxo() != null)){
					sql.append(" AND avaluo.fechaAvaluo <= :fechaAvaluoHasta");
				}
				else {
					sql.append(" AND avaluo.fechaAvaluo BETWEEN :fechaAvaluoDesde AND :fechaAvaluoHasta");
				}
			}		
			
			if ((inmueble.getAvaluo().getFechaCreacion() != null) || (inmueble.getAvaluo().getFechaTransaccion() != null)) {
				if ((inmueble.getAvaluo().getFechaCreacion() != null) && (inmueble.getAvaluo().getFechaTransaccion() == null)){
					sql.append(" AND avaluo.fechaCreacion >= :fechaDesde");
				}
				else if ((inmueble.getAvaluo().getFechaCreacion() == null) && (inmueble.getAvaluo().getFechaTransaccion() != null)){
					sql.append(" AND avaluo.fechaCreacion <= :fechaHasta");
				}
				else {
					sql.append(" AND avaluo.fechaCreacion BETWEEN :fechaDesde AND :fechaHasta");
				}
			}
			sql.append(" ORDER BY avaluo.fechaAvaluo DESC");
		} catch (Exception e) {
			log.log(Level.SEVERE, "[ERROR]", e);
			//throw new Exception(ConstantesAvaluos.ERROR);
			Util.ManejaExcepciones(e);
		}
		return sql;
	}
	
	/**
	 * Construye la cadena de texto con la consulta de avaluos para el
	 * administrador del sistema
	 *
	 * @param inmueble
	 *            contiene el filtro matrícula inmobiliaria principal y el
	 *            objeto avaluo dentro del cual se encuentran los filtos: Tipo
	 *            de identificación, Número de identificación, Departamento,
	 *            Ciudad, Dirección, Estado del avaluo, Fecha del avaluo, nombre
	 *            del txt, Número de línea en el txt, Identificación del perito.
	 * @param empresasAvaluos
	 *            contiene el número del documento del usuario que esta
	 *            intentando ejecutar la consulta.
	 * @return Cadena de texto con la consulta de avaluos para el administrador
	 *         del sistema.
	 * @throws Exception
	 */
	private StringBuffer getQueryAdmin(InformacionInmueble inmueble,
			EmpresasAvaluos empresasAvaluos) throws Exception {

		StringBuffer sql = new StringBuffer();
		try {
			sql.append(" SELECT DISTINCT avaluo FROM Avaluo avaluo, InformacionInmueble inmueble");
			sql.append(" WHERE inmueble.avaluo.idAvaluo = avaluo.idAvaluo");
			sql.append(" AND inmueble.avaluo.estadoAvaluo = ");
			sql.append(ConstantesAvaluos.ESTADO_AVALUOS_APROBADO);

			//mantis 39594 cambia criterio para definir avaluos constructor	
			/*
			if(inmueble.getAvaluo().getTipoInforme()!=null)
			{	
				if(inmueble.getAvaluo().getTipoInforme().equals(new BigDecimal(2)))
				{
					sql.append(" AND construccion.estadoTerminadaNueva = 1");
				}
			}
			*/
			
			if ((inmueble.getMatriculaInmobiliariaPpal1() != null)
					&& (inmueble.getMatriculaInmobiliariaPpal1().length() > 0)) {
				// El método upper es una extensión propia del servidor weblogic
				sql.append(" AND upper(inmueble.matriculaInmobiliariaPpal1) = '");
				sql.append(inmueble.getMatriculaInmobiliariaPpal1()
						.toUpperCase());
				sql.append("'");
			}
			if (inmueble.getAvaluo().getIdTipoIdentificacion() != null) {
				sql.append(" AND avaluo.idTipoIdentificacion = ");
				sql.append(inmueble.getAvaluo().getIdTipoIdentificacion());
			}
			if ((inmueble.getAvaluo().getNumeroIdentificacion() != null)
					&& (inmueble.getAvaluo().getNumeroIdentificacion().length() > 0)) {
				sql.append(" AND avaluo.numeroIdentificacion = '");
				sql.append(inmueble.getAvaluo().getNumeroIdentificacion());
				sql.append("'");
			}
			if (inmueble.getAvaluo().getIdDepartamento() != null) {
				sql.append(" AND avaluo.idDepartamento = ");
				sql.append(inmueble.getAvaluo().getIdDepartamento());
			}
			if (inmueble.getAvaluo().getObjCiudad() != null) {
				sql.append(" AND avaluo.idCiudad =");
				sql.append(inmueble.getAvaluo().getObjCiudad()
						.getCodAsobancaria());
			}
			if ((inmueble.getAvaluo().getDireccionInmueble() != null)
					&& (inmueble.getAvaluo().getDireccionInmueble().length() > 0)) {
				sql.append(" AND upper(avaluo.direccionInmueble) LIKE '%");
				sql.append(inmueble.getAvaluo().getDireccionInmueble()
						.toUpperCase());
				sql.append("%'");
			}
			if ((inmueble.getAvaluo().getLogsGeneraArchivo().getNombrePlano() != null)
					&& (inmueble.getAvaluo().getLogsGeneraArchivo()
							.getNombrePlano().length() > 0)) {
				sql.append(" AND avaluo.logsGeneraArchivo.nombrePlano = '");
				sql.append(inmueble.getAvaluo().getLogsGeneraArchivo()
						.getNombrePlano());
				sql.append("'");
			}
			if (inmueble.getAvaluo().getNumLinea() != null) {
				sql.append(" AND avaluo.numLinea = ");
				sql.append(inmueble.getAvaluo().getNumLinea());
			}
			
			if (inmueble.getAvaluo().getTipoInforme() != null) {
				sql.append(" AND avaluo.tipoInforme = ");
				sql.append(inmueble.getAvaluo().getTipoInforme());
			}
			
			/*if (inmueble.getAvaluo().getFechaAvaluo() != null) {
				sql.append(" AND avaluo.fechaAvaluo = :fechaAvaluo");
			}*/
			
			if ((inmueble.getAvaluo().getFechaAvaluo() != null) || (inmueble.getAvaluo().getFechaAvaluoTetxo() != null)) {
				if ((inmueble.getAvaluo().getFechaAvaluo() != null) && (inmueble.getAvaluo().getFechaAvaluoTetxo() == null)){
					sql.append(" AND avaluo.fechaAvaluo >= :fechaAvaluoDesde");
				}
				else if ((inmueble.getAvaluo().getFechaAvaluo() == null) && (inmueble.getAvaluo().getFechaAvaluoTetxo() != null)){
					sql.append(" AND avaluo.fechaAvaluo <= :fechaAvaluoHasta");
				}
				else {
					sql.append(" AND avaluo.fechaAvaluo BETWEEN :fechaAvaluoDesde AND :fechaAvaluoHasta");
				}
			}
			
			/*
			SimpleDateFormat formatoDelTexto = new SimpleDateFormat("DD/MM/YYYY");
			Date fechaAvHasta = null;
			try {
				fechaAvHasta = formatoDelTexto.parse(inmueble.getAvaluo().getFechaAvaluoTetxo());
			} catch (ParseException ex) {
				ex.printStackTrace();
			}
			
			if (fechaAvHasta != null) {
				query.setParameter("fechaAvaluoHasta", fechaAvHasta);
			}*/
			
			if ((inmueble.getAvaluo().getFechaCreacion() != null) || (inmueble.getAvaluo().getFechaTransaccion() != null)) {
				if ((inmueble.getAvaluo().getFechaCreacion() != null) && (inmueble.getAvaluo().getFechaTransaccion() == null)){
					sql.append(" AND avaluo.fechaCreacion >= :fechaDesde");
				}
				else if ((inmueble.getAvaluo().getFechaCreacion() == null) && (inmueble.getAvaluo().getFechaTransaccion() != null)){
					sql.append(" AND avaluo.fechaCreacion <= :fechaHasta");
				}
				else {
					sql.append(" AND avaluo.fechaCreacion BETWEEN :fechaDesde AND :fechaHasta");
				}
			}

			if ((inmueble.getAvaluo().getTUsuario() != null)
					&& (inmueble.getAvaluo().getTUsuario().length() > 0)) {
				sql.append(" AND avaluo.tUsuario = '");
				sql.append(inmueble.getAvaluo().getTUsuario());
				sql.append("'");
			}
			sql.append(" ORDER BY avaluo.fechaAvaluo DESC");
		} catch (Exception e) {
			log.log(Level.SEVERE, "[ERROR]", e);
			//throw new Exception(ConstantesAvaluos.ERROR);
			Util.ManejaExcepciones(e);
		}
		return sql;
	}

	/**
	 * Construye la cadena de texto con la consulta de avaluos para el perfil
	 * perito
	 *
	 * @param inmueble
	 *            contiene el filtro matrícula inmobiliaria principal y el
	 *            objeto avaluo dentro del cual se encuentran los filtos: Tipo
	 *            de identificación, Número de identificación, Departamento,
	 *            Ciudad, Dirección, Estado del avaluo, Fecha del avaluo, nombre
	 *            del txt, Número de línea en el txt, Identificación del perito.
	 * @param empresasAvaluos
	 *            contiene el número del documento del usuario que esta
	 *            intentando ejecutar la consulta.
	 * @return Cadena de texto con la consulta de avaluos para un perito
	 * @throws Exception
	 */
	private StringBuffer getQueryPerito(InformacionInmueble inmueble,
			EmpresasAvaluos empresasAvaluos) throws Exception {
		StringBuffer sql = new StringBuffer();

		try {
			StringBuffer sqlEmpresa = new StringBuffer(
					"SELECT p FROM PeritosEmpresa p WHERE p.estadoAsociacion ='A' AND p.numeroDocumento = ");
			sqlEmpresa.append(empresasAvaluos.getNumeroDocumento());
			List<PeritosEmpresa> listPerito = entityManager.createQuery(
					sqlEmpresa.toString()).getResultList();

			if ((listPerito == null) || (listPerito.isEmpty())) {
				inmueble.getAvaluo().setTUsuario("''");
			} else if ((listPerito.get(0).getEmpresasAvaluo() != null)
					&& (listPerito.get(0).getEmpresasAvaluo()
							.getNumeroDocumento() != null)) {
				inmueble.getAvaluo().setTUsuario(
						listPerito.get(0).getEmpresasAvaluo()
								.getNumeroDocumento().toString());
			}

			sql.append(" SELECT DISTINCT avaluo FROM Avaluo avaluo, InformacionInmueble inmueble");
			sql.append(" WHERE inmueble.avaluo.idAvaluo = avaluo.idAvaluo");
			if ((inmueble.getAvaluo().getTUsuario() != null)
					&& (inmueble.getAvaluo().getTUsuario().length() > 0)) {
				sql.append(" AND avaluo.tUsuario = ");
				sql.append(inmueble.getAvaluo().getTUsuario());
			}
			
			
			//mantis 39594 cambia criterio para definir avaluos constructor	
			/*
			if(inmueble.getAvaluo().getTipoInforme()!=null)
			{	
				if(inmueble.getAvaluo().getTipoInforme().equals(new BigDecimal(2)))
				{
					sql.append(" AND construccion.estadoTerminadaNueva = 1");
				}
			}
			*/
			
			if ((inmueble.getMatriculaInmobiliariaPpal1() != null)
					&& (inmueble.getMatriculaInmobiliariaPpal1().length() > 0)) {
				sql.append(" AND upper(inmueble.matriculaInmobiliariaPpal1) = '");
				sql.append(inmueble.getMatriculaInmobiliariaPpal1()
						.toUpperCase());
				sql.append("'");
			}
			if (inmueble.getAvaluo().getIdTipoIdentificacion() != null) {
				sql.append(" AND avaluo.idTipoIdentificacion = ");
				sql.append(inmueble.getAvaluo().getIdTipoIdentificacion());
			}
			if ((inmueble.getAvaluo().getNumeroIdentificacion() != null)
					&& (inmueble.getAvaluo().getNumeroIdentificacion().length() > 0)) {
				sql.append(" AND avaluo.numeroIdentificacion = '");
				sql.append(inmueble.getAvaluo().getNumeroIdentificacion());
				sql.append("'");
			}
			if (inmueble.getAvaluo().getIdDepartamento() != null) {
				sql.append(" AND avaluo.idDepartamento = ");
				sql.append(inmueble.getAvaluo().getIdDepartamento());
			}
			if (inmueble.getAvaluo().getObjCiudad() != null) {
				sql.append(" AND avaluo.idCiudad =");
				sql.append(inmueble.getAvaluo().getObjCiudad()
						.getCodAsobancaria());
			}
			if ((inmueble.getAvaluo().getDireccionInmueble() != null)
					&& (inmueble.getAvaluo().getDireccionInmueble().length() > 0)) {
				sql.append(" AND upper(avaluo.direccionInmueble) LIKE '%");
				sql.append(inmueble.getAvaluo().getDireccionInmueble()
						.toUpperCase());
				sql.append("%'");
			}
			if (inmueble.getAvaluo().getEstadoAvaluo() != null) {
				sql.append(" AND avaluo.estadoAvaluo = ");
				sql.append(inmueble.getAvaluo().getEstadoAvaluo());
			}
			if ((inmueble.getAvaluo().getLogsGeneraArchivo().getNombrePlano() != null)
					&& (inmueble.getAvaluo().getLogsGeneraArchivo()
							.getNombrePlano().length() > 0)) {
				sql.append(" AND avaluo.logsGeneraArchivo.nombrePlano = '");
				sql.append(inmueble.getAvaluo().getLogsGeneraArchivo()
						.getNombrePlano());
				sql.append("'");
			}
			if (inmueble.getAvaluo().getNumLinea() != null) {
				sql.append(" AND avaluo.numLinea = ");
				sql.append(inmueble.getAvaluo().getNumLinea());
			}
			
			if (inmueble.getAvaluo().getTipoInforme() != null) {
				sql.append(" AND avaluo.tipoInforme = ");
				sql.append(inmueble.getAvaluo().getTipoInforme());
			}
			
			
			/*if (inmueble.getAvaluo().getFechaAvaluo() != null) {
				sql.append(" AND avaluo.fechaAvaluo = :fechaAvaluo");
			}*/
			
			if ((inmueble.getAvaluo().getFechaAvaluo() != null) || (inmueble.getAvaluo().getFechaAvaluoTetxo() != null)) {
				if ((inmueble.getAvaluo().getFechaAvaluo() != null) && (inmueble.getAvaluo().getFechaAvaluoTetxo() == null)){
					sql.append(" AND avaluo.fechaAvaluo >= :fechaAvaluoDesde");
				}
				else if ((inmueble.getAvaluo().getFechaAvaluo() == null) && (inmueble.getAvaluo().getFechaAvaluoTetxo() != null)){
					sql.append(" AND avaluo.fechaAvaluo <= :fechaAvaluoHasta");
				}
				else {
					sql.append(" AND avaluo.fechaAvaluo BETWEEN :fechaAvaluoDesde AND :fechaAvaluoHasta");
				}
			}
			
			/*
			SimpleDateFormat formatoDelTexto = new SimpleDateFormat("DD/MM/YYYY");
			Date fechaAvHasta = null;
			try {
				fechaAvHasta = formatoDelTexto.parse(inmueble.getAvaluo().getFechaAvaluoTetxo());
			} catch (ParseException ex) {
				ex.printStackTrace();
			}
			
			if (fechaAvHasta != null) {
				query.setParameter("fechaAvaluoHasta", fechaAvHasta);
			}*/
			
			if ((inmueble.getAvaluo().getFechaCreacion() != null) || (inmueble.getAvaluo().getFechaTransaccion() != null)) {
				if ((inmueble.getAvaluo().getFechaCreacion() != null) && (inmueble.getAvaluo().getFechaTransaccion() == null)){
					sql.append(" AND avaluo.fechaCreacion >= :fechaDesde");
				}
				else if ((inmueble.getAvaluo().getFechaCreacion() == null) && (inmueble.getAvaluo().getFechaTransaccion() != null)){
					sql.append(" AND avaluo.fechaCreacion <= :fechaHasta");
				}
				else {
					sql.append(" AND avaluo.fechaCreacion BETWEEN :fechaDesde AND :fechaHasta");
				}
			}
			sql.append(" ORDER BY avaluo.fechaAvaluo DESC");
		} catch (Exception e) {
			log.log(Level.SEVERE, "[ERROR]", e);
			//throw new Exception(ConstantesAvaluos.ERROR);
			Util.ManejaExcepciones(e);
		}
		return sql;
	}

	/**
	 * Consulta el valor de la uvr para una fecha determinada.
	 *
	 * @param fecha
	 *            para la cual se quiere consultar el valor de la uvr
	 * @return valor de la uvr o un valor nulo se no encuentra el valor para la
	 *         fecha especificada
	 */
	//Nullpointer
	public BigDecimal getUvrDia(String fecha) {
		BigDecimal res = null;
		StringBuffer sql = new StringBuffer(
				"SELECT tc1 valor_uvr FROM a1000500");
		sql.append(" WHERE cod_mon = 7 AND fecha_tipo_cambio = to_date('");
		sql.append(fecha);
		sql.append("','dd/mm/rrrr')");
		
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		/*if(!entityManager.isOpen())
			entityManager = emf.createEntityManager();*/
		
		List resList = entityManager.createNativeQuery(sql.toString())
				.getResultList();
		if ((resList != null) && (!resList.isEmpty())) {
			BigDecimal resTmp = (BigDecimal) resList.get(0);
			if ((resTmp != null) && (resTmp.compareTo(new BigDecimal(0)) > 0)) {
				res = resTmp;
			} else {
				res = new BigDecimal(0);
			}
		} else {
			res = new BigDecimal(0);
		}
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
		
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

	/**
	 * Recupera un avaluo con base en su identificador único
	 *
	 * @param idAvaluo
	 *            identificador único del avaluo que se quiere recuperar
	 * @return Avaluo que corresponde al identificador único del parametro
	 * @throws Exception
	 */
	public Avaluo getAvaluosPorId(BigDecimal idAvaluo) throws Exception {
		Avaluo avaluo = null;
		//EntityManager em =null;
		try {
			emf = Persistence.createEntityManagerFactory("avaluosJpa");
			//EntityManager entityManager=emf.createEntityManager();
			//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
			//if(!entityManager.isOpen())
			 	//emf = Persistence.createEntityManagerFactory("avaluosJpa");
				//entityManager = emf.createEntityManager();
				/*EntityManager*/ //em = emf.createEntityManager();
			
			avaluo = entityManager.find(Avaluo.class, idAvaluo);
			if (avaluo != null) {
			 if(avaluo.getLiquidacionTotal()!=null && avaluo.getLiquidacionTotal().size()>0)
				if ((avaluo.getLiquidacionTotal().get(0).getValorUvrDia() == null)
						|| (avaluo.getLiquidacionTotal().get(0)
								.getValorUvrDia().compareTo(new BigDecimal(0)) < 1)) {
					avaluo.getLiquidacionTotal()
							.get(0)
							.setValorUvrDia(
									getUvrDia(Util.getAnyDateAsString(
											avaluo.getFechaAvaluo(),
											"dd/MM/yyyy")));
					entityManager.getTransaction().begin();
					entityManager.merge(avaluo);
					entityManager.getTransaction().commit();
				}

				StringBuffer sqlDocumento = new StringBuffer(
						"SELECT d FROM Dominios d WHERE d.rvDomain = 'TIPOIDENTIFICACION' AND d.rvLowValue = '");
				sqlDocumento.append(avaluo.getIdTipoIdentificacion());
				sqlDocumento.append("'");
				List<Dominios> tipoDoc = entityManager.createQuery(
						sqlDocumento.toString()).getResultList();
				if (!tipoDoc.isEmpty()) {
					avaluo.setDominioTipoIdentificacion(tipoDoc.get(0));
				}
				StringBuffer sqlCiudad = new StringBuffer(
						"SELECT c FROM Ciudad c WHERE c.codAsobancaria = '");
				sqlCiudad.append(avaluo.getIdCiudad());
				sqlCiudad.append("'");
				List<Ciudad> ciu = entityManager.createQuery(
						sqlCiudad.toString()).getResultList();
				if (!ciu.isEmpty()) {
					avaluo.setObjCiudad(ciu.get(0));
				}
				if ((avaluo.getInformacionInmueble() != null)
						&& (!avaluo.getInformacionInmueble().isEmpty())) {
					avaluo.setMatriculaInmobiliariaPpal1(avaluo
							.getInformacionInmueble().get(0)
							.getMatriculaInmobiliariaPpal1());
				}
				
				LogsGeneraArchivo log = null;
				
				
				if(avaluo.getLogsGeneraArchivo()!=null)
				{					
					/*LogsGeneraArchivo*/ log = new LogsGeneraArchivo();
					String[] excepciones = {"Avaluos"};					
					Util.<LogsGeneraArchivo>SeteaObjetoDestino(LogsGeneraArchivo.class,avaluo.getLogsGeneraArchivo(),log,excepciones);
					if(log.getFechaInicioCreacion()==null)
					{
						log=null;
					}
				}
				
				
				/*log.setCantReg(avaluo.getLogsGeneraArchivo().getCantReg());
				log.setCodigoError(avaluo.getLogsGeneraArchivo().getCodigoError());
				log.setDescripcionError(avaluo.getLogsGeneraArchivo().getDescripcionError());
				log.setEnviado(avaluo.getLogsGeneraArchivo().getEnviado());
				log.setFechaDesde(avaluo.getLogsGeneraArchivo().getFechaDesde());
				log.setFechaHasta(avaluo.getLogsGeneraArchivo().getFechaHasta());
				log.setFechaFinCreacion(avaluo.getLogsGeneraArchivo().getFechaFinCreacion());
				log.setFechaInicioCreacion(avaluo.getLogsGeneraArchivo().getFechaInicioCreacion());
				log.setFechaTransaccion(avaluo.getLogsGeneraArchivo().getFechaTransaccion());
				log.setIdLogArchivos(avaluo.getLogsGeneraArchivo().getIdLogArchivos());
				log.setLinkDescarga(avaluo.getLogsGeneraArchivo().getLinkDescarga());
				log.setNombreArchivo(avaluo.getLogsGeneraArchivo().getNombreArchivo());
				log.setUsuarioCreacion(avaluo.getLogsGeneraArchivo().getUsuarioCreacion());
				log.setUsuarioTransaccion(avaluo.getLogsGeneraArchivo().getUsuarioTransaccion());				
				
				log.setNombrePlano(avaluo.getLogsGeneraArchivo().getNombrePlano());
				log.setEstado(avaluo.getLogsGeneraArchivo().getEstado());*/
				
				avaluo.setHistoricosAvaluo(null);
				avaluo.setLogsGeneraArchivo(null);
				avaluo.setLogsGeneraArchivo(log);
			}
		} catch (Exception e) {
			log.log(Level.SEVERE, "[ERROR]", e);
			//throw new Exception(ConstantesAvaluos.ERROR);
			Util.ManejaExcepciones(e);
		}
		finally{

			//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
			//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
		}

		return avaluo;
	}

	public boolean campoRequeridoBD(String nombretablaBD,String nombrecampoBD)
	{		
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		if(!entityManager.isOpen())
			entityManager = emf.createEntityManager();
		
		String campoEng="";
		try {
			
		 StringBuffer sqlOblig = new StringBuffer(
									"SELECT c.nullable FROM USER_TAB_COLUMNS c WHERE TRIM(c.table_name) = TRIM('");
		 					sqlOblig.append(nombretablaBD);
		 					sqlOblig.append("') and TRIM(c.column_name) = TRIM('");
		 					sqlOblig.append(nombrecampoBD);
		 					sqlOblig.append("') and nullable = 'N' ");

		 					campoEng = (String)entityManager.createNativeQuery(
									sqlOblig.toString()).getSingleResult();
		 } catch (Exception e) {
			 			//NullPointer
			 			//log.log(Level.SEVERE, "[ERROR]", e);
						//throw new Exception(ConstantesAvaluos.ERROR);
		 }
		 

		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
		 
		 if(campoEng.equals("N"))
		 {
			 return true;
		 }	 
		return false;	
	}
	
	public List<campoRequeridoDTO>campoRequeridoDTOList(List<campoRequeridoDTO> dtos)
	{
		
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		if(!entityManager.isOpen())
			entityManager = emf.createEntityManager();
		
		boolean requerido=false;
		
		List<campoRequeridoDTO> dtoLst=new ArrayList<campoRequeridoDTO>();
		
		 for (campoRequeridoDTO dto : dtos)
		 {	 
				requerido=campoRequerido(dto.getNombretablaBD(),dto.getNombrecampoBD(),dto.getCategoriaInmueble());
				if(requerido)
				{	
					dto.setRequerido(requerido);
					dtoLst.add(dto);
				}	
		 }  
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
		
		return dtoLst;
	}
	
	public boolean campoRequerido(String nombretablaBD,String nombrecampoBD,String categoriaInmueble)
	{
		
		 if(campoRequeridoBD(nombretablaBD,nombrecampoBD)==true)
		 {
			 return true;
		 }	 
		 
		String campoSelect="";
		switch(Integer.valueOf(categoriaInmueble))
		{
			case ConstantesAvaluos.CATEGORIA_LOCAL	     :
															campoSelect="obligatoriedad_local";
															break;
			case ConstantesAvaluos.CATEGORIA_BODEGA	     :
															campoSelect="obligatoriedad_bodega";
															break;
			case ConstantesAvaluos.CATEGORIA_OFICINA	 :
															campoSelect="obligatoriedad_oficina";
															break;															
			case ConstantesAvaluos.CATEGORIA_LOTE	     :
															campoSelect="obligatoriedad_lote";
															break;															
			case ConstantesAvaluos.CATEGORIA_CASA	     :
															campoSelect="obligatoriedad_casa";
															break;															
			case ConstantesAvaluos.CATEGORIA_CASA_RURAL  :
															campoSelect="obligatoriedad_casarural";
															break;
			case ConstantesAvaluos.CATEGORIA_APARTAMENTO :
															campoSelect="obligatoriedad_apartamento";
															break;															
			case ConstantesAvaluos.CATEGORIA_LOTE_URBANO :
															campoSelect="obligatoriedad_loteurbano";
															break;
		}
		
		String campo ="";
		
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//if(!entityManager.isOpen())
		//	entityManager = emf.createEntityManager();
		
		try {
			
		 StringBuffer sqlOblig = new StringBuffer(
									"SELECT p."+campoSelect+" FROM pgb_archivo_plano p WHERE TRIM(p.tabla_bd)=TRIM('");
		 					sqlOblig.append(nombretablaBD);
		 					sqlOblig.append("') and TRIM(p.columna_bd) = TRIM('");
		 					sqlOblig.append(nombrecampoBD);
		 					sqlOblig.append("') ");

							campo = (String)entityManager.createNativeQuery(
									sqlOblig.toString()).getSingleResult();
		 } catch (Exception e) {
						//NullPointer
			 			//log.log(Level.SEVERE, "[ERROR]", e);
						//throw new Exception(ConstantesAvaluos.ERROR);
		 }
		 //if(campo.equals("S"))
		 
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
		 
		 if(!campo.equals("N")&&!campo.equals(""))
		 {
			 return true;
		 }	 
		return false;
	}
	
}
