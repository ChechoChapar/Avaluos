/**
 * 
 */
package com.segurosbolivar.avaluos.daos;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
import com.segurosbolivar.avaluos.entities.Avaluo;
import com.segurosbolivar.avaluos.entities.LiquidacionAvaluo;
import com.segurosbolivar.avaluos.util.Util;

/**
 * Objeto de acceso a datos de la clase LiquidacionAvaluo
 * @author Seguros Bolivar
 * @version 1.0
 */
public class LiquidacionAvaluoDao extends JpaDao<LiquidacionAvaluo> {

    /**
     * Crea un registro en la tabla PGB_LIQAVALUO
     * 
     * @param objeto
     *            que se va a persistir
     * @throws Exception
     */
    public List<LiquidacionAvaluo> create(List<LiquidacionAvaluo> objeto) throws Exception {
    	//emf = Persistence.createEntityManagerFactory("avaluosJpa");
    	//EntityManager entityManager=emf.createEntityManager();
	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	//if(!entityManager.isOpen())
		//entityManager = emf.createEntityManager();    	
    	
	try {
	    for (LiquidacionAvaluo liquidacionAvaluo : objeto) {
			liquidacionAvaluo.setFechaCreacion(Calendar.getInstance().getTime());
			liquidacionAvaluo.setFechaTransaccion(Calendar.getInstance().getTime());
			if(liquidacionAvaluo.getValorTotal() == null){
			    liquidacionAvaluo.setValorTotal(new BigDecimal(0));
			}
			persist(liquidacionAvaluo);
	    }
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
     * Actualiza valores de un registro en la tabla PGB_LIQAVALUO
     * 
     * @param objeto
     *            con los valores que se quiere actualizar
     * @throws Exception
     */
    public List<LiquidacionAvaluo> update(List<LiquidacionAvaluo> objeto) throws Exception {
    	try {
		    for (LiquidacionAvaluo liquidacionAvaluo : objeto) {
		    	liquidacionAvaluo.setFechaTransaccion(Calendar.getInstance().getTime());
	            //Man 10319 25-09-2012 para evita error por null
			    if(liquidacionAvaluo.getIdLiqavaluo() != null){	
			    	log.log(Level.INFO, "");
			    	merge((LiquidacionAvaluo)liquidacionAvaluo); 
			    }else{
			    	create((LiquidacionAvaluo)liquidacionAvaluo);
			    }
		    }
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
     * Crea un registro en la tabla PGB_LIQAVALUO
     * 
     * @param objeto
     *            que se va a persistir
     * @throws Exception
     */
    public void create(LiquidacionAvaluo objeto) throws Exception {
		objeto.setFechaCreacion(Calendar.getInstance().getTime());
		if(objeto.getValorTotal() == null){
			objeto.setValorTotal(new BigDecimal(0));
		}
		log.log(Level.INFO, "");
		persist((LiquidacionAvaluo)objeto);		
    }

}
