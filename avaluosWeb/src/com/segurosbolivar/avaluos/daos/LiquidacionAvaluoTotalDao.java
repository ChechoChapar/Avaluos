/**
 * 
 */
package com.segurosbolivar.avaluos.daos;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
import com.segurosbolivar.avaluos.entities.Avaluo;
import com.segurosbolivar.avaluos.entities.LiquidacionAvaluoTotal;
import com.segurosbolivar.avaluos.util.Util;

/**
 * Objeto de acceso a datos para la entidad LiquidacionAvaluoTotal
 * @author Seguros Bolivar
 * @version 1.0
 */
public class LiquidacionAvaluoTotalDao extends JpaDao<LiquidacionAvaluoTotal> {
    
    /**
     * @see JpaDao#persist(Object)
     */
    public LiquidacionAvaluoTotal create(LiquidacionAvaluoTotal objeto) throws Exception{
    	//emf = Persistence.createEntityManagerFactory("avaluosJpa");
    	//EntityManager entityManager=emf.createEntityManager();
	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	//if(!entityManager.isOpen())
	//	entityManager = emf.createEntityManager();    	
    	
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
	finally
	{
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
	}
	return objeto;
    }
    
    /**
     *@see JpaDao#merge(Object) 
     */
    public LiquidacionAvaluoTotal update(LiquidacionAvaluoTotal objeto) throws Exception{
    	//emf = Persistence.createEntityManagerFactory("avaluosJpa");
    	//EntityManager entityManager=emf.createEntityManager();
	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	//if(!entityManager.isOpen())
	//	entityManager = emf.createEntityManager();
    	
	try {
	    Avaluo avaluo = entityManager.find(Avaluo.class, objeto.getAvaluo().getIdAvaluo());
	    avaluo.setFechaTransaccion(Calendar.getInstance().getTime());
	    avaluo.setUsuarioTransaccion(objeto.getUsuarioTransaccion());
	    
	    
	   
	    
	    objeto.setFechaTransaccion(Calendar.getInstance().getTime());
	    entityManager.getTransaction().begin();
	    entityManager.merge(avaluo);
	    
	    if(objeto.getIdLiqavaluoTotal() == null){
	    	entityManager.persist((LiquidacionAvaluoTotal)objeto); 
	    }else{
	    	entityManager.merge((LiquidacionAvaluoTotal)objeto);
	    }
	    
	    entityManager.getTransaction().commit();
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
     * Consulta el valor de la uvr para la fecha del parametro
     * 
     * @param fecha
     *            para la cual s quiere consultar el valor de la uvr
     * @return valor de la uvr o un valor nulo se no encuentra el valor para la fecha especificada
     */
    public BigDecimal getUvrDia(String fecha) {
    	//emf = Persistence.createEntityManagerFactory("avaluosJpa");
    	//EntityManager entityManager=emf.createEntityManager();
	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	//if(!entityManager.isOpen())
	//	entityManager = emf.createEntityManager();    	
    	
	BigDecimal res = null;
	StringBuffer sql = new StringBuffer("SELECT tc1 valor_uvr FROM a1000500");
	sql.append(" WHERE cod_mon = 7 AND fecha_tipo_cambio = to_date('");
	sql.append(fecha);
	sql.append("', 'dd/mm/rrrr')");
	List resList = entityManager.createNativeQuery(sql.toString()).getResultList();
	if((resList != null) && (!resList.isEmpty())){
	    BigDecimal resTmp = (BigDecimal) resList.get(0);
	    if ((resTmp != null) && (resTmp.compareTo(new BigDecimal(0)) > 0)) {
		    res = resTmp;
		}
	    else {
		res = new BigDecimal(0);
	    }
	}
	else {
	    res = new BigDecimal(0);
	}
	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
	return res;
    }
}
