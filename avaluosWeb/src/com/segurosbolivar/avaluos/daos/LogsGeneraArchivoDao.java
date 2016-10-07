/**
 * 
 */
package com.segurosbolivar.avaluos.daos;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.logging.FileHandler;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
import com.segurosbolivar.avaluos.entities.Avaluo;
import com.segurosbolivar.avaluos.entities.Dominios;
import com.segurosbolivar.avaluos.entities.LogsGeneraArchivo;
import com.segurosbolivar.avaluos.entities.HistoricoLogsGeneraArch;
import com.segurosbolivar.avaluos.util.Util;

/**
 * Objeto de acceso a datos de la entidad LogsGeneraArchivo
 * 
 * @author Seguros Bolivar
 * @version 1.0
 */
public class LogsGeneraArchivoDao extends JpaDao<LogsGeneraArchivo> {


	/** Usuario Transaccion **/
	private String usuarioTransaccion=null;
	/** Usuario Transaccion **/
	private String usuarioTransaccion1=null;
	
    public List<HistoricoLogsGeneraArch> findHistoricoLogsGeneraArchivo(HistoricoLogsGeneraArch historicoLogsGeneraArchivo) {
    		
    	//emf = Persistence.createEntityManagerFactory("avaluosJpa");
        ///EntityManager entityManager=emf.createEntityManager(); 	
            		
    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
    //	if(!entityManager.isOpen())
    	//	entityManager = emf.createEntityManager();    	
    	
    	List<HistoricoLogsGeneraArch> resultList = new ArrayList<HistoricoLogsGeneraArch>();
    	if(historicoLogsGeneraArchivo!=null)
	    {
    		if(historicoLogsGeneraArchivo.getIdLogArchivos()!=null)
    		{	
		    	StringBuffer sql = new StringBuffer();
		
		    	try {
		    	    sql.append("SELECT histLogsArchivo FROM HistoricoLogsGeneraArch histLogsArchivo");
		    		sql.append(" WHERE histLogsArchivo.idLogArchivos = '");
		    		sql.append(historicoLogsGeneraArchivo.getIdLogArchivos());
		    		sql.append("'");
		
		    	    resultList = entityManager.createQuery(sql.toString()).getResultList();
		    	    
		    	    
		    	    for (HistoricoLogsGeneraArch logsGeneraArchivo2 : resultList) {

		    			//logsGeneraArchivo2.setAvaluos(null);
		    			if (logsGeneraArchivo2.getEstado().equalsIgnoreCase(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_ENVIADO)) {
		    			    logsGeneraArchivo2.setEstado(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_ENVIADO_CADENA);
		    			}
		    			else if (logsGeneraArchivo2.getEstado().equalsIgnoreCase(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_REVERSADO)) {
		    			    logsGeneraArchivo2.setEstado(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_REVERSADO_CADENA);
		    			}
		    			else if (logsGeneraArchivo2.getEstado().equalsIgnoreCase(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_ERROR)) {
		    			    logsGeneraArchivo2.setEstado(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_ERROR_CADENA);
		    			}
		    			else if (logsGeneraArchivo2.getEstado().equalsIgnoreCase(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_GENERADO)) {
		    			    logsGeneraArchivo2.setEstado(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_GENERADO_CADENA);
		    			}
		    		    }
		    	    
		    	    
		    	    
		    	}
		    	catch (Exception e) {
		    	    log.log(Level.SEVERE, "[ERROR]", e);
		    	}
		    	finally {
		    	    //entityManager.close();
		    	}
    		}
    	}
    	return resultList;
        }
	
	/**
     * Recupera la lista de logsGeneraArchivo filtrado por estado, si el estado es una cadena vacia, consulta todos
     * 
     * @param logsGeneraArchivo
     *            objeto que debe contener el estado por el cual se quiere filtrar, por defecto se toma el estado generado.
     * @return Lista con los objetos logsGeneraArchivo que cumplen la condición del filtro
     */
    public List<LogsGeneraArchivo> findLogsGeneraArchivo(LogsGeneraArchivo logsGeneraArchivo) {
    	
	//emf = Persistence.createEntityManagerFactory("avaluosJpa");
  //  EntityManager entityManager=emf.createEntityManager(); 	
            		
	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
//	if(!entityManager.isOpen())
	//	entityManager = emf.createEntityManager();
    	
	List<LogsGeneraArchivo> resultList = new ArrayList<LogsGeneraArchivo>();
	StringBuffer sql = new StringBuffer();

	try {
	    sql.append("SELECT logsArchivo FROM LogsGeneraArchivo logsArchivo");
	    if ((logsGeneraArchivo != null) && (logsGeneraArchivo.getEstado() == null)) {
		sql.append(" WHERE logsArchivo.estado = '");
		sql.append(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_GENERADO);
		sql.append("'");
	    }
	    else if ((logsGeneraArchivo != null) && (logsGeneraArchivo.getEstado() != null) && (!logsGeneraArchivo.getEstado().isEmpty())
		    && (!logsGeneraArchivo.getEstado().equalsIgnoreCase(ConstantesAvaluos.TODOS_LOW_VALUE))) {
		sql.append(" WHERE logsArchivo.estado = '");
		sql.append(logsGeneraArchivo.getEstado());
		sql.append("'");
	    }
	    if (logsGeneraArchivo != null)
			if ((logsGeneraArchivo.getFechaDesde() != null) || (logsGeneraArchivo.getFechaHasta() != null)) {
				if ((logsGeneraArchivo.getFechaDesde() != null) && (logsGeneraArchivo.getFechaHasta() == null)){
					//sql.append(" AND logsArchivo.fechaFinCreacion >= "+logsGeneraArchivo.getFechaDesde()+")");
					sql.append(" AND logsArchivo.fechaFinCreacion >= :fechaAvaluoDesde ");					
				}
				else if ((logsGeneraArchivo.getFechaDesde() == null) && (logsGeneraArchivo.getFechaHasta() != null)){
					//sql.append(" AND logsArchivo.fechaFinCreacion <= "+logsGeneraArchivo.getFechaHasta()+")");
					sql.append(" AND logsArchivo.fechaFinCreacion <= :fechaAvaluoHasta ");
				}
				else {
					//sql.append(" AND logsArchivo.fechaFinCreacion BETWEEN "+logsGeneraArchivo.getFechaDesde()+" AND "+logsGeneraArchivo.getFechaHasta()+"");
					sql.append(" AND logsArchivo.fechaFinCreacion BETWEEN :fechaAvaluoDesde AND :fechaAvaluoHasta ");
				}
			}
	    
		sql.append(" ORDER BY logsArchivo.idLogArchivos DESC");
	    //}
		
		Query query = entityManager.createQuery(sql.toString());
		query.setMaxResults(ConstantesAvaluos.CONST_LIMITE_CONSULTA);
		
		if (logsGeneraArchivo.getFechaDesde() != null) {
			query.setParameter("fechaAvaluoDesde", logsGeneraArchivo.getFechaDesde());			
		}
		
		if (logsGeneraArchivo.getFechaHasta() != null) {
			query.setParameter("fechaAvaluoHasta", logsGeneraArchivo.getFechaHasta());			
		}
		
		//query.setParameter("fechaAvaluoDesde", logsGeneraArchivo.getFechaDesde());
		//query.setParameter("fechaAvaluoHasta", logsGeneraArchivo.getFechaHasta());
		
	    //resultList = entityManager.createQuery(sql.toString()).setMaxResults(ConstantesAvaluos.CONST_LIMITE_CONSULTA).getResultList();
		resultList = query.getResultList();
		
	    for (LogsGeneraArchivo logsGeneraArchivo2 : resultList) {
	    	
		logsGeneraArchivo2.setAvaluos(null);
		
	    //Cuenta de Avaluos
    	sql = new StringBuffer();
    	sql.append("select count(id_avaluo) from pgb_avaluos");
    	sql.append(" where a_idarchivo= ");
    	sql.append(logsGeneraArchivo2.getIdLogArchivos());
    	int cuenta = ((BigDecimal)entityManager.createNativeQuery(sql.toString()).getSingleResult()).intValue();
    	
    	logsGeneraArchivo2.setCantReg(String.valueOf(cuenta));
		
		if (logsGeneraArchivo2.getEstado().equalsIgnoreCase(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_ENVIADO)) {
		    logsGeneraArchivo2.setEstado(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_ENVIADO_CADENA);
		}
		else if (logsGeneraArchivo2.getEstado().equalsIgnoreCase(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_REVERSADO)) {
		    logsGeneraArchivo2.setEstado(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_REVERSADO_CADENA);
		}
		else if (logsGeneraArchivo2.getEstado().equalsIgnoreCase(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_ERROR)) {
		    logsGeneraArchivo2.setEstado(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_ERROR_CADENA);
		}
		else if (logsGeneraArchivo2.getEstado().equalsIgnoreCase(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_GENERADO)) {
		    logsGeneraArchivo2.setEstado(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_GENERADO_CADENA);
		}
	    }
	}
	catch (Exception e) {
	    log.log(Level.SEVERE, "[ERROR]", e);
	}
	finally {
	    //entityManager.close();
	}
	return resultList;
    }

    /**
     * Cambia el estado de logs genera archivo a reversado V, a cada uno de los avaluos aosicoados a cada log les deja el archivo en nulo
     * 
     * @param logsGeneraArchivoList
     *            Listado con los logs que se quiere reversar
     */
    public void reversarArchivoGenerado(List<String> logsGeneraArchivoList) {

    //emf = Persistence.createEntityManagerFactory("avaluosJpa");
    //EntityManager entityManager=emf.createEntityManager();
    
	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	//if(!entityManager.isOpen())
	//	entityManager = emf.createEntityManager();    	
    	
	try {

	    entityManager.getTransaction().begin();
	    for (String idLogsGeneraArchivo : logsGeneraArchivoList) {

		LogsGeneraArchivo log = entityManager.find(LogsGeneraArchivo.class, new BigDecimal(idLogsGeneraArchivo));
		log.setEstado(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_REVERSADO);

		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT AVA.ID_AVALUO FROM PGB_AVALUOS AVA, PGB_LOGS_GENERA_ARCHIVOS LOG");
		sql.append(" WHERE AVA.A_IDARCHIVO = LOG.ID_LOG_ARCHIVOS AND AVA.A_IDARCHIVO = ");
		sql.append(log.getIdLogArchivos());
		
		if(usuarioTransaccion1!=null)
		{	
			log.setUsuarioTransaccion(usuarioTransaccion1);
			log.setFechaTransaccion(Calendar.getInstance().getTime());
		}
		
		List<Object> resultado = entityManager.createNativeQuery(sql.toString()).getResultList();
		for (Object object : resultado) {
		    Avaluo unAvaluo = entityManager.find(Avaluo.class, object);
		    unAvaluo.setLogsGeneraArchivo(null);
		    unAvaluo.setNumLinea(null);
		    entityManager.merge(unAvaluo);
		}
		entityManager.merge(log);
	    }
	    entityManager.flush();
	    entityManager.getTransaction().commit();
	}
	catch (Exception e) {
	    log.log(Level.SEVERE, "[ERROR]", e);
	}
	finally {
	    entityManager.close();
	}
    }

    /**
     * Cambia el estado de una lista de registros en log genera archivo a enviado (E)
     * 
     * @param logsGeneraArchivoList
     *            lista de logsGeneraArchivo a los cuales se les va a actualizar elestado.
     */
    public void setEstado(List<LogsGeneraArchivo> logsGeneraArchivoList) {

    //emf = Persistence.createEntityManagerFactory("avaluosJpa");
    //EntityManager entityManager=emf.createEntityManager();
        
	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	//if(!entityManager.isOpen())
	//	entityManager = emf.createEntityManager();    	
    	
	try {

	    entityManager.getTransaction().begin();
	    for (LogsGeneraArchivo logsGeneraArchivo : logsGeneraArchivoList) {
		logsGeneraArchivo.setEstado(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_ENVIADO);
		
		if(usuarioTransaccion1!=null)
		{	
			logsGeneraArchivo.setUsuarioTransaccion(usuarioTransaccion1);
			logsGeneraArchivo.setFechaTransaccion(Calendar.getInstance().getTime());
		}
		
		entityManager.merge(logsGeneraArchivo);
	    }
	    entityManager.flush();
	    entityManager.getTransaction().commit();
	}
	catch (Exception e) {
	    log.log(Level.SEVERE, "[ERROR]", e);
	}
	finally {
	    entityManager.close();
	}
    }

    /**
     * Cambia el estado de logs genera archivo a reversado V, a cada uno de los avaluos aosicoados a cada log les deja el archivo en nulo
     * 
     * @param logsGeneraArchivoList
     *            Listado con los logs que se quiere reversar
     */
    public void reversarArchivoGeneradoUsr(List<String> logsGeneraArchivoList,String usuarioTransaccion) {

	//emf = Persistence.createEntityManagerFactory("avaluosJpa");
	//EntityManager entityManager=emf.createEntityManager();
	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	//if(!entityManager.isOpen())
	//	entityManager = emf.createEntityManager();    	
    	
	try {

	    entityManager.getTransaction().begin();
	    for (String idLogsGeneraArchivo : logsGeneraArchivoList) {

		LogsGeneraArchivo log = entityManager.find(LogsGeneraArchivo.class, new BigDecimal(idLogsGeneraArchivo));
		log.setEstado(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_REVERSADO);

		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT AVA.ID_AVALUO FROM PGB_AVALUOS AVA, PGB_LOGS_GENERA_ARCHIVOS LOG");
		sql.append(" WHERE AVA.A_IDARCHIVO = LOG.ID_LOG_ARCHIVOS AND AVA.A_IDARCHIVO = ");
		sql.append(log.getIdLogArchivos());
		
		if(usuarioTransaccion!=null)
		{	
			log.setUsuarioTransaccion(usuarioTransaccion);
			log.setFechaTransaccion(Calendar.getInstance().getTime());
		}
		
		List<Object> resultado = entityManager.createNativeQuery(sql.toString()).getResultList();
		for (Object object : resultado) {
		    Avaluo unAvaluo = entityManager.find(Avaluo.class, object);
		    unAvaluo.setLogsGeneraArchivo(null);
		    unAvaluo.setNumLinea(null);
		    entityManager.merge(unAvaluo);
		}
		entityManager.merge(log);
	    }
	    entityManager.flush();
	    entityManager.getTransaction().commit();
	}
	catch (Exception e) {
	    log.log(Level.SEVERE, "[ERROR]", e);
	}
	finally {
	    entityManager.close();
	}
    }

    /**
     * Cambia el estado de una lista de registros en log genera archivo a enviado (E)
     * 
     * @param logsGeneraArchivoList
     *            lista de logsGeneraArchivo a los cuales se les va a actualizar elestado.
     */
    public void setEstadoUsr(List<LogsGeneraArchivo> logsGeneraArchivoList,String usuarioTransaccion) {

    //emf = Persistence.createEntityManagerFactory("avaluosJpa");
    //EntityManager entityManager=emf.createEntityManager();
    
	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	//if(!entityManager.isOpen())
	//	entityManager = emf.createEntityManager();    	
    	
	try {

	    entityManager.getTransaction().begin();
	    for (LogsGeneraArchivo logsGeneraArchivo : logsGeneraArchivoList) {
		logsGeneraArchivo.setEstado(ConstantesAvaluos.ESTADO_LOGS_ARCHIVO_ENVIADO);
		
		if(usuarioTransaccion!=null)
		{	
			logsGeneraArchivo.setUsuarioTransaccion(usuarioTransaccion);
			logsGeneraArchivo.setFechaTransaccion(Calendar.getInstance().getTime());
		}
		
		entityManager.merge(logsGeneraArchivo);
	    }
	    entityManager.flush();
	    entityManager.getTransaction().commit();
	}
	catch (Exception e) {
	    log.log(Level.SEVERE, "[ERROR]", e);
	}
	finally {
	    entityManager.close();
	}
    }
    
    
	public String getUsuarioTransaccion() {
		return usuarioTransaccion;
	}

	public void setUsuarioTransaccion(String usuarioTransaccion) {
		this.usuarioTransaccion = usuarioTransaccion;
	}

	public String getUsuarioTransaccion1() {
		return usuarioTransaccion1;
	}

	public void setUsuarioTransaccion1(String usuarioTransaccion1) {
		this.usuarioTransaccion1 = usuarioTransaccion1;
	}
    
	
}
