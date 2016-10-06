package com.segurosbolivar.avaluos.daos;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import org.eclipse.persistence.config.PersistenceUnitProperties;
import org.eclipse.persistence.jpa.PersistenceProvider;

import com.segurosbolivar.avaluos.archivo.JobTimer;
import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
import com.segurosbolivar.avaluos.entities.HorasCorteArchivo;
import com.segurosbolivar.avaluos.servlet.TimerServlet;

/**
 * Objeto de acceso a datos de la clase HorasCorteArchivo
 * @author Seguros Bolivar
 * @version 1.0
 */
public class HorasCorteDao extends JpaDao<HorasCorteArchivo> {

    /** Mensaje de estado de la transacción (éxito o fracaso) **/
    private String mensajeTransaccion = null;

    /**
     * Crea un registro en la tabla PGB_HORAS_CORTE
     * @param horasCorteArchivo objeto que se va a persistir
     */
    public void createHorasCorteArchivo(HorasCorteArchivo horasCorteArchivo) {
	try {
	    HashMap properties = new HashMap();
	    properties.put(PersistenceUnitProperties.CLASSLOADER, this.getClass().getClassLoader());
	    EntityManagerFactory emf = new PersistenceProvider().createEntityManagerFactory("avaluosJpa", properties);
	    EntityManager em = emf.createEntityManager();    
	    horasCorteArchivo.setFechaCreacion(Calendar.getInstance().getTime());
	    horasCorteArchivo.setFechaTransaccion(Calendar.getInstance().getTime());
	    entityManager.getTransaction().begin();
	    entityManager.persist(horasCorteArchivo);
	    entityManager.getTransaction().commit();
        //Se adicionan estas líneas para reiniciar el servlet y que se sincronice con las horas de corte
	    TimerServlet servlet = new TimerServlet();
	    servlet.iniciaHorasCorte();
	    setMensajeTransaccion(ConstantesAvaluos.EXITO);
	}
	catch (Exception e) {
	    log.log(Level.SEVERE, "[ERROR]", e);
	    setMensajeTransaccion(ConstantesAvaluos.ERROR);
	}
	finally
	{
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
	}
    }

    /**
     * Actualiza valores de un registro en la tabla PGB_HORAS_CORTE
     * 
     * @param horasCorteArchivo
     *            objeto con los valores que se quiere actualizar
     */
    public void updateHorasCorteArchivo(HorasCorteArchivo horasCorteArchivo) {
	try {
	    EntityManager entityManager = emf.createEntityManager();
	    entityManager.getTransaction().begin();
	    entityManager.merge(horasCorteArchivo);

	    entityManager.getTransaction().commit();

	    TimerServlet servlet = new TimerServlet();
	    servlet.iniciaHorasCorte();
	    setMensajeTransaccion(ConstantesAvaluos.EXITO);

	}
	catch (Exception e) {
	    log.log(Level.SEVERE, "[ERROR]", e);
	    setMensajeTransaccion(ConstantesAvaluos.ERROR);
	}
	finally
	{
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
	}
    }

    /**
     * Recupera todas las horas de corte 
     * @return Lista con todos los objetos HorasCorteArchivo
     */
    public List<HorasCorteArchivo> findAllHorasCorte() {
	List<HorasCorteArchivo> res = null;
	StringBuffer sql = new StringBuffer();
	sql.append("SELECT horas FROM HorasCorteArchivo horas");
	EntityManager em = null;
	try {
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		/*EntityManager*/ em = emf.createEntityManager();
	    res = em.createQuery(sql.toString()).getResultList();
	}
	catch (Exception e) {
	    log.log(Level.SEVERE, "[ERROR]", e);
	    setMensajeTransaccion(ConstantesAvaluos.ERROR);
	}
	finally
	{
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
	}
	return res;
    }

    public BigDecimal obtieneIdHorasCorte()
    { 
    	BigDecimal res = null;
    	StringBuffer sql = new StringBuffer();
    	sql.append("SELECT SEQ_PGB_HORAS_CORTE_ARCHIVO.nextval FROM dual");
    	EntityManager em = null;
    	try {
    		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
    	    /*EntityManager*/ em = emf.createEntityManager();
    	    res = (BigDecimal)em.createNativeQuery(sql.toString()).getSingleResult();
    	}
    	catch (Exception e) {
    	    log.log(Level.SEVERE, "[ERROR]", e);
    	    setMensajeTransaccion(ConstantesAvaluos.ERROR);
    	}
    	finally
    	{
    		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
    		//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
    		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
    	}
    	return res;
    	
    }
    
    public String getMensajeTransaccion() {
	return mensajeTransaccion;
    }

    public void setMensajeTransaccion(String mensajeTransaccion) {
	this.mensajeTransaccion = mensajeTransaccion;
    }

}
