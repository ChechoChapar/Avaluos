package com.segurosbolivar.avaluos.daos;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.List;
import java.util.logging.FileHandler;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
import com.segurosbolivar.avaluos.entities.Ciudad;
import com.segurosbolivar.avaluos.entities.Departamento;
import com.segurosbolivar.avaluos.entities.EmpresasAvaluos;
import com.segurosbolivar.avaluos.util.Util;

/**
 * Objeto de acceso a datos de la entidad Departamento
 * 
 * @author Seguros Bolivar
 * @version 1.0
 */
public class DepartamentoDao extends JpaDao<Departamento>{
	
    String mensajeTransaccion = null;
   
    /** Mecanismo de log */
    //private static final Logger log = Logger.getLogger("com.segurosbolivar.avaluos.daos.DepartamentoDao");
    //FileHandler fh;
	
	public String getMensajeTransaccion() {
		return mensajeTransaccion;
	}

	public void setMensajeTransaccion(String mensajeTransaccion) {
		this.mensajeTransaccion = mensajeTransaccion;
	}
    
	/**
	 * Retorna el listado de departamentos
	 * @return Lista de objetos de departamentos
	 */
	public List<Departamento> consultaDepartamentos()
	{ EntityManager em = emf.createEntityManager();
	  Query query = em.createNamedQuery("getDeptos");
	  List<Departamento> listaCalendario = query.getResultList();
	  em.close();	  
	  return listaCalendario;
	}
	
	/**
	 * Inserta objetos departamento
	 * @param dep Objeto a insertar
	 */
	public void insertaDepartamento(Departamento dep)
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
	        dep.setFechaCreacion(Calendar.getInstance().getTime());
		    dep.setFechaTransaccion(Calendar.getInstance().getTime());
	        em.persist(dep);
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
	 * Editar el contenido del objeto Departamento
	 * @param dep Objeto a actualizar
	 */
	public void actualizaDepartamento(Departamento dep)
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
		    dep.setFechaTransaccion(Calendar.getInstance().getTime());
	        em.merge(dep);
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
	 * Elimina departamentos
	 * @param dep Objeto departamento 
	 */
	public void borraDepartamento(Departamento dep)
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
			em.remove(em.find(Departamento.class, dep.getIdDepartamento()));
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
	 * Ejecuta WebService para sincronizar los códigos de los departamentos
	 * @param parUsuario Recibe el usuario que realiza la transacción
	 */
	public void sincronizaDane(String parUsuario)
	{
		EntityManager em = EntityManagerImp.getManager();

		try {
			
//			fh = new FileHandler(Util.getProperty("log"), true);
//		    log.addHandler(fh);
//		    log.setLevel(Level.ALL);
//		    SimpleFormatter formatter = new SimpleFormatter();
//		    fh.setFormatter(formatter);
			
			em.getTransaction().begin();			
			Query query = em.createNamedQuery("sincDane");
			query.setParameter("pusuario", parUsuario);

			String mensaje = (String) query.getSingleResult();

			if(mensaje != null && mensaje != ""){
				System.out.println("Error...");
				throw new RuntimeException(mensaje);
			}

			em.getTransaction().commit();
			setMensajeTransaccion(ConstantesAvaluos.EXITO);
		} catch (Exception e) {
			log.log(Level.SEVERE, "--> Excepción Ciudad ", e);
			System.out.println("Error ejecutando proceso: " + e);
			setMensajeTransaccion(ConstantesAvaluos.ERROR);
			em.getTransaction().rollback();
		}finally{	
			em.close();
		}
	}
	
	/**
	 * Consulta un departamento por Id
	 * @param id id del departamento
	 * @return Objeto departamento
	 */
	public Departamento consultaDepartamentoId(BigDecimal id)
	{   EntityManager em = emf.createEntityManager();
	    Departamento depto = new Departamento(); 	
	    try
	    {   
	        em.getTransaction().begin();
	        Query query = em.createQuery("select d from Departamento d where d.idDepartamento = "+id);
	        depto = (Departamento)query.getSingleResult();
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
	    
	    return depto;
	}
	
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
	  DepartamentoDao depDao = new DepartamentoDao();
	  EntityManagerFactory emf=Persistence.createEntityManagerFactory("avaluosJpa");
	  EntityManager em = emf.createEntityManager();
	  
	  Departamento depto = depDao.consultaDepartamentoId(new BigDecimal("1"));
	  
	  for(Ciudad lisDepto: depto.getCiudadesDepto())
	  System.out.println("Departamento "+ depto.getCiudadesDepto());
	
	  //try{em.close();}catch(Exception ex1){ex1.printStackTrace();}

	}
	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos

}
