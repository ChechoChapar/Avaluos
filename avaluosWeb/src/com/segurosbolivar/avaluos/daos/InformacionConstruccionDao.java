/**
 * 
 */
package com.segurosbolivar.avaluos.daos;

import java.util.Calendar;
import java.util.logging.Level;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
import com.segurosbolivar.avaluos.entities.InformacionConstruccion;
import com.segurosbolivar.avaluos.util.Util;

/**
 * Objeto de acceso a datos de la clase InformacionConstruccion
 * @author Seguros Bolivar
 * @version 1.0
 */
public class InformacionConstruccionDao extends JpaDao<InformacionConstruccion>{
    
    /**
    * @see JpaDao#persist(Object)
    */
    public InformacionConstruccion create(InformacionConstruccion objeto) throws Exception{
    //	emf = Persistence.createEntityManagerFactory("avaluosJpa");
    	//EntityManager entityManager=emf.createEntityManager();
	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	//if(!entityManager.isOpen())
	//	entityManager = emf.createEntityManager();
    	
	try {
	    objeto.setFechaCreacion(Calendar.getInstance().getTime());
	    objeto.setFechaTransaccion(Calendar.getInstance().getTime());
	    log.log(Level.INFO, "");
	    persist(objeto);
	    entityManager.refresh(objeto);
	    
	}
	catch (Exception e) {
	    log.log(Level.SEVERE, "[ERROR]", e);
	    //throw new Exception(ConstantesAvaluos.ERROR);
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
    * @see JpaDao#merge(Object)
    */
    public InformacionConstruccion update(InformacionConstruccion objeto) throws Exception{
    	
    	//emf = Persistence.createEntityManagerFactory("avaluosJpa");
    	
    	//EntityManager entityManager=emf.createEntityManager();
	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	//if(!entityManager.isOpen())
	//	entityManager = emf.createEntityManager();
    	
	try {
	    objeto.setFechaTransaccion(Calendar.getInstance().getTime());
	    log.log(Level.INFO, "");
	    merge(objeto);
	    //entityManager.flush();
	}
	catch (Exception e) {
	    log.log(Level.SEVERE, "[ERROR]", e);
	    //throw new Exception(ConstantesAvaluos.ERROR);
	    Util.ManejaExcepciones(e);
	}
	finally
	{
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
	}
	return objeto;
    }

}
