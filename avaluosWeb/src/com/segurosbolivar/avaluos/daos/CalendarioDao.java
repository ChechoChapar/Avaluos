package com.segurosbolivar.avaluos.daos;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.logging.FileHandler;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

import com.segurosbolivar.avaluos.constantes.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.segurosbolivar.avaluos.entities.Calendario;
import com.segurosbolivar.avaluos.util.Util;

/**
 * Objeto de acceso a datos para la entidad Calendario 
 * @author Seguros Bolívar
 * @version 1.0
 */
public class CalendarioDao extends JpaDao<Calendario> {

	String mensajeTransaccion = null;
	
	/** Mecanismo de log */
    //private static final Logger log = Logger.getLogger("com.segurosbolivar.avaluos.daos.CalendarioDao");
    //FileHandler fh;

	public String getMensajeTransaccion() {
		return mensajeTransaccion;
	}

	public void setMensajeTransaccion(String mensajeTransaccion) {
		this.mensajeTransaccion = mensajeTransaccion;
	}

	/**
	 * Guarda las fechas no hábiles que selecciona el usuario
	 * @param lista Permite recibir varias fechas
	 */
	public void guardaFechas(List<Calendario> lista)
	{   EntityManager em = emf.createEntityManager();
	    Date fechaIngresada = new Date();
		try
	    {   setMensajeTransaccion(null);
	    
//		    fh = new FileHandler(Util.getProperty("log"), true);
//		    log.addHandler(fh);
//		    log.setLevel(Level.ALL);
//		    SimpleFormatter formatter = new SimpleFormatter();
//		    fh.setFormatter(formatter);
	    
	       
	        for(Calendario cal : lista )
	        { em.getTransaction().begin();
	          cal.setFechaCreacion(new java.sql.Date(Calendar.getInstance().getTime().getTime()));
		      cal.setFechaTransaccion(new java.sql.Date(Calendar.getInstance().getTime().getTime()));
		      fechaIngresada = cal.getFechaNoHabil();
		      em.persist(cal);
	          em.getTransaction().commit();
	          setMensajeTransaccion(ConstantesAvaluos.EXITO);
	        }
	       
	        System.out.println("Mensaje "+getMensajeTransaccion());
	    }		
		catch(javax.persistence.RollbackException e)
	    { if(e.getCause().getMessage().contains("ORA-00001"))
		  { setMensajeTransaccion(ConstantesAvaluos.CONSTRAINT +" Fecha: "+ fechaIngresada + " Por favor eliminarlo de la lista con doble clic.");
		    e.printStackTrace();
		  }   
		  else{
		    setMensajeTransaccion(ConstantesAvaluos.ERROR);
		    e.printStackTrace();
		  }
	    }
		catch(Exception e)
	    { setMensajeTransaccion(ConstantesAvaluos.ERROR);
		  e.printStackTrace();
	    }
	    finally{
	      em.close();
	    }
	}
    
	/**
	 * Elimina las fechas seleccionadas por el usuario 
	 * @param lista Recibe varias fechas a la vez
	 */
	public void borraFechas(List<Calendario> lista)
	{  
		EntityManager em = emf.createEntityManager();
		
		try
		{   
			setMensajeTransaccion(null);
			
//			fh = new FileHandler(Util.getProperty("log"), true);
//		    log.addHandler(fh);
//		    log.setLevel(Level.ALL);
//		    SimpleFormatter formatter = new SimpleFormatter();
//		    fh.setFormatter(formatter);
			
			
			for(Calendario cal : lista )
			{ 
				System.out.println("borrar Id "+cal.getIdCalendario());
				em.getTransaction().begin();
				em.remove(em.find(Calendario.class, cal.getIdCalendario()));
				em.getTransaction().commit();
				setMensajeTransaccion(ConstantesAvaluos.EXITO);
			}
			
			System.out.println("Mensaje "+getMensajeTransaccion());
		}
		catch(Exception e)
		{
			setMensajeTransaccion(ConstantesAvaluos.ERROR);
			e.printStackTrace();
		}finally{
			em.close();
		}
	}

	/**
	 * Servicio que retorna la lista de años que existen en el sistema para la consulta de fechas no hábiles 
	 * @return Lista de Objetos tipo Calendario
	 */
	public List<BigDecimal> retornaAnios()
	{ EntityManager em = emf.createEntityManager();
	  List<BigDecimal> resultados = null;
	  try{
			resultados = em.createNamedQuery("queryAnios").getResultList();
			
//			fh = new FileHandler(Util.getProperty("log"), true);
//		    log.addHandler(fh);
//		    log.setLevel(Level.ALL);
//		    SimpleFormatter formatter = new SimpleFormatter();
//		    fh.setFormatter(formatter);
			
		  }catch(Exception e)
		  { log.log(Level.SEVERE, "--> Excepción Calendario ", e);
			e.printStackTrace();	 
		  }
		  finally
		 { em.close();  	 
		 }
	  return resultados; 
	}

	/**
	 * Retorna la lista de Fechas no hábiles
	 * @return Lista de objetos Calendario
	 */
	public List<Calendario> getFechasNoHabiles()
	{ EntityManager em = emf.createEntityManager();
	  Query query = em.createNamedQuery("getFechas");
	  List<Calendario> listaCalendario = query.getResultList();
	  em.close();	  
	  return listaCalendario;
	}
    
	/**
	 * Consulta las fechas de un año seleccionado
	 * @param anio año a consultar
	 * @return Lista de objetos Calendario
	 */
	public List<Calendario> getCalendarioPorAnio(String anio)
	{ 

		EntityManager em = emf.createEntityManager();
		System.out.println("Año "+anio);
		Calendar inicio = Calendar.getInstance();
		inicio.set(Integer.parseInt(anio),
				0,
				1);
		Calendar fin = Calendar.getInstance();
		fin.set(Integer.parseInt(anio),
				11,
				31); 
		Query query = em.createNamedQuery("queryPorAnio").setParameter("fechainicio", new java.sql.Date(inicio.getTime().getTime())).setParameter("fechafin",new java.sql.Date(fin.getTime().getTime()));
		List<Calendario> listaCalendario = query.getResultList();
		em.close();	  
		return listaCalendario;
	}

    /**
     * Retorna los días no hábiles para un año específico
     * @param anio
     * @return
     */
	@SuppressWarnings("unchecked")
	public List<Calendario> buscarDiasNoHabiles(BigDecimal anio){

		List<Calendario> lista = null;	
		EntityManager em = emf.createEntityManager();

		try {
			
//			fh = new FileHandler(Util.getProperty("log"), true);
//		    log.addHandler(fh);
//		    log.setLevel(Level.ALL);
//		    SimpleFormatter formatter = new SimpleFormatter();
//		    fh.setFormatter(formatter);

			StringBuilder sql = new StringBuilder("SELECT c from Calendario c");

			if(anio !=null ){
				sql.append(" where c.anio = ");
				sql.append(anio);
			}

			Query query = em.createQuery(sql.toString());
			lista = query.getResultList();

		} catch (Exception e) {
			log.log(Level.SEVERE, "--> Excepción Calendario ", e);
			return lista;
		}
		finally
		{ em.close();
		}
		return lista;
	} 

	/**
	 * Ejecuta proceso que carga automáticamente los sábados y domingos
	 * @param parAnio, Año para el que se va a cargar los días sábados y domingos
	 * @param parUsuario, Usuario que realiza el proceso
	 */
	public void cargaSabadosDomingos(BigDecimal parAnio ,String parUsuario)
	{
		EntityManager em = EntityManagerImp.getManager();

		try {
			
//			fh = new FileHandler(Util.getProperty("log"), true);
//		    log.addHandler(fh);
//		    log.setLevel(Level.ALL);
//		    SimpleFormatter formatter = new SimpleFormatter();
//		    fh.setFormatter(formatter);
		    
			em.getTransaction().begin();			
			Query query = em.createNamedQuery("ejecutaCalendario");
			query.setParameter("panio",parAnio);
			query.setParameter("pusuario", parUsuario);

			String mensaje = (String) query.getSingleResult();

			if(mensaje != null && mensaje != ""){
				System.out.println("Error...");
				throw new Exception(mensaje);
			}

			em.getTransaction().commit();
			setMensajeTransaccion(ConstantesAvaluos.EXITO);
		} catch (Exception e) {
			log.log(Level.SEVERE, "--> Excepción Calendario ", e);
			setMensajeTransaccion(ConstantesAvaluos.ERROR);
			em.getTransaction().rollback();
		}finally{	
			em.close();
		}
	}


	/**
	 * @param args
	 */
	public static void main(String[] args) {

		EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
		EntityManager em = emf.createEntityManager();
		CalendarioDao calDao = new CalendarioDao();
		String anio = new String("2011");

		List<Calendario> listaFechas = (List<Calendario>)calDao.getCalendarioPorAnio(anio);

		System.out.println("Fechas ");
		for(Calendario lista : listaFechas )
		{
			System.out.println("Fecha "+ lista.getFechaNoHabil());
		}
		
	    System.out.println("Hora Actual "+Calendar.getInstance().getTime());
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
	}

}
