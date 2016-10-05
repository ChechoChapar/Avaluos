/**
 * 
 */
package com.segurosbolivar.avaluos.daos;

import java.util.Calendar;
import java.util.logging.Level;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
import com.segurosbolivar.avaluos.entities.InformacionBarrio;
import com.segurosbolivar.avaluos.util.Util;

/**
 * Objeto de acceso a datos de la entitdad InformacionBarrio
 * @author Seguros Bolivar
 * @version 1.0
 */
public class InformacionBarrioDao extends JpaDao<InformacionBarrio> {

	
	 
    public InformacionBarrioDao() {
    	super();
    	//emf = Persistence.createEntityManagerFactory("avaluosJpa");
		//
		// TODO Auto-generated constructor stub
	}

	//EntityManager entityManager=emf.createEntityManager();
    
	/**
    * @see JpaDao#persist(Object)
    */
    public InformacionBarrio create(InformacionBarrio objeto) throws Exception {
//    	emf = Persistence.createEntityManagerFactory("avaluosJpa");
//    	EntityManager entityManager=emf.createEntityManager();
//	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
//	if(!entityManager.isOpen())
//		entityManager = emf.createEntityManager();
    	
	try {
	    objeto.setFechaCreacion(Calendar.getInstance().getTime());
	    objeto.setFechaTransaccion(Calendar.getInstance().getTime());
	    log.log(Level.INFO, "");
	    persist(objeto);
	}
	catch (Exception e) {
	    log.log(Level.SEVERE, "[ERROR]", e);
	    //throw new Exception(ConstantesAvaluos.ERROR);
	    Util.ManejaExcepciones(e);
	}
//	finally
//	{
//		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
//		try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
//	}
	return objeto;
    }

    /**
    * @see JpaDao#merge(Object)
    */
    public InformacionBarrio update(InformacionBarrio objeto) throws Exception {
//    	emf = Persistence.createEntityManagerFactory("avaluosJpa");
//    	EntityManager entityManager=emf.createEntityManager();
//	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
//	if(!entityManager.isOpen())
//		entityManager = emf.createEntityManager();
    	
	try {
	    objeto.setFechaTransaccion(Calendar.getInstance().getTime());
	    log.log(Level.INFO, "");
	    if(objeto.getIdInformacionBarrio() == null){
	    	persist((InformacionBarrio)objeto); 
	    }else{
	    	merge((InformacionBarrio)objeto);
	    }
	}
	catch (Exception e) {
		log.log(Level.SEVERE, "[ERROR]", e);
	    //throw new Exception(ConstantesAvaluos.ERROR);
	    Util.ManejaExcepciones(e);
	}
//	finally
//	{
//		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
//		try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
//	}
	return objeto;
    }

}
