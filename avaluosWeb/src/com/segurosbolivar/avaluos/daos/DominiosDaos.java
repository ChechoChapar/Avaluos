package com.segurosbolivar.avaluos.daos;

import java.math.BigDecimal;
import java.util.Iterator;
import java.util.List;
import java.util.logging.FileHandler;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
import com.segurosbolivar.avaluos.entities.*;
import com.segurosbolivar.avaluos.util.Util;

/**
 * Objeto de acceso a datos de la entidad Dominios
 * 
 * @author Seguros Bolivar
 * @version 1.0
 */
public class DominiosDaos extends JpaDao<Dominios>{
	
	private List <Dominios> dominios;
	
	private String nombreDominio; 
	
	private String mensajeTransaccion = null;
	
	 /** Mecanismo de log */
    //private static final Logger log = Logger.getLogger("com.segurosbolivar.avaluos.daos.DominiosDaos");
    //FileHandler fh;

	public String getMensajeTransaccion() {
		return mensajeTransaccion;
	}

	public void setMensajeTransaccion(String mensajeTransaccion) {
		this.mensajeTransaccion = mensajeTransaccion;
	}

	public String getNombreDominio() {
		return nombreDominio;
	}

	public void setNombreDominio(String nombreDominio) {
		this.nombreDominio = nombreDominio;
	}

	/**
	 * Consulta los dominios existentes
	 * @return Lista de Objetos Dominios
	 */
	public List<Dominios> getDominios() {
		EntityManager em = emf.createEntityManager();
		Query query = em.createNamedQuery("getDominios");
		List<Dominios> dominios = query.getResultList();
		em.close();	  
		return dominios;
	}

	/**
	 * Obtiene los nombres de los dominios de las tablas cg_ref_codes
	 * @return Listado de nombres de dominios
	 */
	public List<String> getNombresDominios() {
		EntityManager em = emf.createEntityManager();
		Query query = em.createNamedQuery("getNombresDominios");
		List<String> dominios = query.getResultList();
		em.close();	  
		return dominios;
	}
	
	public void setDominios(List<Dominios> dominios) {
		this.dominios = dominios;
	}
	
	/**
	 * Crea un nuevo valor de dominio
	 * @param dom Objeto a insertar
	 * @return retorna el id del dominio
	 */
	@SuppressWarnings("unchecked")
	public int insertaVlrDominio(Dominios dom){
		EntityManager em = emf.createEntityManager();
		try
	    {   
//			fh = new FileHandler(Util.getProperty("log"), true);
//		    log.addHandler(fh);
//		    log.setLevel(Level.ALL);
//		    SimpleFormatter formatter = new SimpleFormatter();
//		    fh.setFormatter(formatter);
			
			setMensajeTransaccion(null);
	        em.getTransaction().begin();
	        em.persist(dom);
	        em.getTransaction().commit();
	        setMensajeTransaccion(ConstantesAvaluos.EXITO);
	    }
	    catch(Exception e)
	    { log.log(Level.SEVERE, "--> Excepción Ciudad ", e);
		  setMensajeTransaccion(ConstantesAvaluos.ERROR);
		  e.printStackTrace();
	    }
	    finally
	    {
	      em.close();
	    }
	    return dom.getIdCgRefCodes().intValue();
	}
	
	/**
	 * Actualiza el valor del dominio
	 * @param dom Objeto Dominios
	 */
	public void actualizaVlrDominio(Dominios dom)
	{   EntityManager em = emf.createEntityManager();
		try
	    {   
//			fh = new FileHandler(Util.getProperty("log"), true);
//		    log.addHandler(fh);
//		    log.setLevel(Level.ALL);
//		    SimpleFormatter formatter = new SimpleFormatter();
//		    fh.setFormatter(formatter);
			
			
			setMensajeTransaccion(null);
	        em.getTransaction().begin();
	        em.merge(dom);
	        em.getTransaction().commit();
	        setMensajeTransaccion(ConstantesAvaluos.EXITO);
	    }
	    catch(Exception e)
	    { log.log(Level.SEVERE, "--> Excepción Ciudad ", e);
		  setMensajeTransaccion(ConstantesAvaluos.ERROR);
		  e.printStackTrace();
	    }
	    finally
	    {
	      em.close();
	    }
	}
	
	/**
	 * Elimina un dominio
	 * @param id identificador del objeto a eliminar
	 */
	public void borraVlrDominio(BigDecimal id)
	{  
		EntityManager em = emf.createEntityManager();
		try
		{   
//			fh = new FileHandler(Util.getProperty("log"), true);
//		    log.addHandler(fh);
//		    log.setLevel(Level.ALL);
//		    SimpleFormatter formatter = new SimpleFormatter();
//		    fh.setFormatter(formatter);
			
			
			setMensajeTransaccion(null);
			em.getTransaction().begin();
			em.remove(em.find(Dominios.class, id));
			em.getTransaction().commit();
			setMensajeTransaccion(ConstantesAvaluos.EXITO);
		}
		catch(Exception e)
		{   log.log(Level.SEVERE, "--> Excepción Ciudad ", e);
			setMensajeTransaccion(ConstantesAvaluos.ERROR);
			e.printStackTrace();
		}finally
		{
			em.close();
		}
	}
	
	/**
	 * Consulta un dominio por nombre
	 * @param dominio nombre del dominio
	 * @return Lista de los valores del dominio consultado
	 */
	@SuppressWarnings("unchecked")
	public List<Dominios> buscarDominio(String dominio){

		List<Dominios> lista = null;	
		EntityManager em = emf.createEntityManager();

		try {

//			fh = new FileHandler(Util.getProperty("log"), true);
//		    log.addHandler(fh);
//		    log.setLevel(Level.ALL);
//		    SimpleFormatter formatter = new SimpleFormatter();
//		    fh.setFormatter(formatter);
			
			StringBuilder sql = new StringBuilder("SELECT d from Dominios d where d.rvCreateBy <> \"SEGURIDAD\"");

			if(dominio !=null && dominio.equals(new String("[Todos]")) == false){
				sql.append(" and d.rvDomain = '");
				sql.append(dominio+"'");
			}
			
			sql.append(" order by d.rvDomain");

			Query query = em.createQuery(sql.toString());
			lista = query.getResultList();

		} catch (Exception e) {
			log.log(Level.SEVERE, "--> Excepción Ciudad ", e);
			System.out.println("Se presento error en el metodo buscarDominio: " + e.getMessage());
			return lista;
		}
		finally
		{ em.close();
		}
		return lista;
	} 
	
	/**
	 * Recupera una lista con los valores de un dominio determinado 
	 * inserta un dominio vacio al comienzo de la lista
	 * @param dominio objeto que debe contener en la propiedad rvDomain
	 * el nombre del dominio que se quiere consultar
	 * @return Lista con los valores del dominio definido en rvDomain
	 */
	public List<Dominios> getValoresDominio(Dominios dominio) {
		EntityManager em = emf.createEntityManager();
		Query query = em.createNamedQuery("getValoresDominio");
		query.setParameter("nombreDominio", dominio.getRvDomain().toUpperCase());
		List<Dominios> valoresDominio = query.getResultList();
		valoresDominio.add(0, new Dominios(null,ConstantesAvaluos.TODOS_LOW_VALUE,ConstantesAvaluos.TODOS_RV_MEANING));
		em.close();	  
		return valoresDominio;
	}
	
	
	
}
