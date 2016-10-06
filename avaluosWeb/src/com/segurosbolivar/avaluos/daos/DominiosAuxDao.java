package com.segurosbolivar.avaluos.daos;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
import com.segurosbolivar.avaluos.entities.Dominios;
import com.segurosbolivar.avaluos.entities.DominiosAux;

/**
 * Objeto de acceso a datos para la entidad DominiosAux
 * @author Seguros Bolivar
 * @version 1.0
 */
public class DominiosAuxDao extends JpaDao<DominiosAux>{
    
    /**
	 * Recupera una lista con los valores de un dominio determinado 
	 * inserta un dominio vacio al comienzo de la lista.
	 * @param dominio objeto que debe contener en la propiedad rvDomain
	 * el nombre del dominio que se quiere consultar.
	 * @return Lista con los valores del dominio definido en rvDomain.
	 */
	public List<DominiosAux> getValoresDominioProcedatos(DominiosAux dominio) {
		EntityManager em = emf.createEntityManager();
		Query query = em.createNamedQuery("getValoresDominioAux");
		query.setParameter("nombreDominio", dominio.getRvDomain().toUpperCase());
		List<DominiosAux> valoresDominio = query.getResultList();
		valoresDominio.add(0, new DominiosAux(null,ConstantesAvaluos.TODOS_LOW_VALUE,ConstantesAvaluos.TODOS_RV_MEANING));
		em.close();	  
		return valoresDominio;
	}
	
	/**
	 * Recupera de la lista de dominios todos los posibles valores de la descripción de una liquidación, 
	 * dependiendo de si esta sometido a propiedad horizontal o no.
	 * @param dominio nombre del dominio que se quiere consultar
	 * @param propiedadHorizontal 1 si esta sometido a propiedad horizontal 2 si no lo esta 
	 * @return Lista con los valores del dominio consultado
	 */
	public List<DominiosAux> getValoresDescLiquidacion(String dominio, BigDecimal propiedadHorizontal) {
		
	    	List<DominiosAux> valoresDominio = new ArrayList<DominiosAux>(); 
	    	if(propiedadHorizontal == null){
	    	    return valoresDominio;
		}
	    	if(propiedadHorizontal.equals(new BigDecimal(1)))
	    	{
	    	    EntityManager em = emf.createEntityManager();
	    	    Query query = em.createQuery("select d from DominiosAux d WHERE d.rvDomain = 'DESCLIQUIDACION' " +
	    	    		" and d.rvLowValue != '21'" +
	    	    		" and d.rvLowValue != '22' order by d.rvMeaning  ");
		    valoresDominio = query.getResultList();
		    em.close();
	    	}
	    	else if(propiedadHorizontal.equals(new BigDecimal(2)))
	    	{
	    	    EntityManager em = emf.createEntityManager();
	    	    Query query = em.createQuery("select d from DominiosAux d WHERE d.rvDomain = 'DESCLIQUIDACION' " +
	    	    		" and (d.rvLowValue = '21'" +
	    	    		" or d.rvLowValue = '22')  order by d.rvMeaning  ");		    
	    	    valoresDominio = query.getResultList();
		    em.close();
	    	}    
		return valoresDominio;
	}
	
	/**
	 * Recupera una lista de dominios. 
	 * @param dominio nombre del dominio que se quiere consultar
	 * @return Lista con los dominios correspondientes al nombre del parametro
	 */
	public List<Dominios> getValoresDominio(String dominio) {
		EntityManager em = emf.createEntityManager();
		Query query = em.createNamedQuery("getValoresDominioAux");
		query.setParameter("nombreDominio", dominio.toUpperCase());
		List<Dominios> valoresDominio = query.getResultList();
		em.close();	  
		return valoresDominio;
	}
	
	public List<Dominios> getValoresDominioByAbbreviation(String dominio, String abbreviation) {
		EntityManager em = emf.createEntityManager();
		Query query = em.createNamedQuery("getValoresDominioAuxByAbbreviation");
		query.setParameter("nombreDominio", dominio.toUpperCase());
		query.setParameter("abbreviation", abbreviation.toUpperCase());
		List<Dominios> valoresDominio = query.getResultList();
		em.close();	  
		return valoresDominio;
	}
	
}
