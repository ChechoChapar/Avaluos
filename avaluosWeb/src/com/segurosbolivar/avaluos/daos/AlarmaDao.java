package com.segurosbolivar.avaluos.daos;

import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.logging.FileHandler;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import com.segurosbolivar.avaluos.entities.Alarma;
import com.segurosbolivar.avaluos.util.Util;
import com.segurosbolivar.avaluos.constantes.*;


/**
 * Objeto de acceso a datos para la entidad Alarma 
 * @author Seguros Bolivar
 * @version 1.0
 */

public class AlarmaDao extends JpaDao<Alarma> {
	String mensajeTransaccion = null;
	
	/** Mecanismo de log */
    //private static final Logger log = Logger.getLogger("com.segurosbolivar.avaluos.daos.AlarmaDao");
    //FileHandler fh;
	
	public String getMensajeTransaccion() {
		return mensajeTransaccion;
	}

	public void setMensajeTransaccion(String mensajeTransaccion) {
		this.mensajeTransaccion = mensajeTransaccion;
	}

	/**
	 * Permite guardar los datos de la alarma
	 * @param alm Objeto Alarma para persistir en la BD
	 */
	public void guardaAlarma(Alarma alm)
	{   //emf=Persistence.createEntityManagerFactory("avaluosJpa");
		EntityManager em = emf.createEntityManager();
		try
		{
//	        fh = new FileHandler(Util.getProperty("log"), true);
//		     log.addHandler(fh);
//		     log.setLevel(Level.ALL);
//		     SimpleFormatter formatter = new SimpleFormatter();
//		     fh.setFormatter(formatter);
			 setMensajeTransaccion(null);
	       
	         em.getTransaction().begin();
	         alm.setFechaCreacion(Calendar.getInstance().getTime());
	 	     alm.setFechaTransaccion(Calendar.getInstance().getTime());
	         em.persist(alm);
	         em.getTransaction().commit();
	         setMensajeTransaccion(ConstantesAvaluos.EXITO);
	       
	        System.out.println("Mensaje "+getMensajeTransaccion());
	    }
	    catch(Exception e)
	    {
	      log.log(Level.SEVERE, "--> Excepción Alarma ", e);
	      setMensajeTransaccion(ConstantesAvaluos.ERROR);
		  e.printStackTrace();
		  throw new RuntimeException(e);
	    }
	    finally
	    {
	      em.close();
	    }
	}

	/**
	 * Consulta la información de Alarmas
	 * @return Lista de objetos Alarma
	 */
	public List<Alarma> consultaAlarmas()	
	{ //emf=Persistence.createEntityManagerFactory("avaluosJpa");
	  EntityManager em = emf.createEntityManager();
	  Query query = em.createNamedQuery("getAlarmas");
	  List<Alarma> listaAlarmas = query.getResultList();
	  em.close();	  
	  return listaAlarmas;
	}
	
	/**
	 * Consulta la última alarma vigente
	 * @return Cadena de la alarma
	 */
	public String retornaAlarma()
	{ 
	 String mensaje = new String("");	
	 EntityManager em = emf.createEntityManager();
	 try
	  {		   
		  System.out.println(" Va a ejecutar Query");
		  Query query = em.createQuery("select a from Alarma a where a.fechaCreacion = (select MAX(b.fechaCreacion) from Alarma b)");
		  System.out.println(" Asigna resultados");
		  Alarma ord = (Alarma)query.getSingleResult();
		  System.out.println("Pasa asignación");
		  Calendar fecha = Calendar.getInstance();
	      Date fechaVigencia = ord.getFechaCreacion();
		  Calendar fechaC = Calendar.getInstance();
		  fechaC.set(1900+110,11,10);
		  fechaC.set(1900+fechaVigencia.getYear(), fechaVigencia.getMonth(),fechaVigencia.getDate());
		  fechaC.add(Calendar.DATE,ord.getNumDias().intValue());
		  System.out.println("Fecha Límite "+fechaC.getTime());
	
		  if(fecha.before(fechaC))
		  { System.out.println("Muestra Alarma ");	 
		    mensaje = ord.getDescripcionAlerta();
		  }	 
		  else
		  { System.out.println("No Muestra Alarma ");
		  }	 
	  
	  }
	  catch(Exception e)
	  {
		System.out.println("Error en el metodo  retornaAlarma(): " + e.getMessage() );  
		  
		//throw new RuntimeException(e);
	  }
	  finally{
		  em.close();  
	  }
	  return mensaje;
	}
	
	/**
	 * Llamado ejemplo métodos clase Alarma
	 * @param args
	 */
	public static void main(String[] args) {
		  AlarmaDao cliDao = new AlarmaDao();
		  EntityManagerFactory emf=Persistence.createEntityManagerFactory("avaluosJpa");
		  EntityManager em = emf.createEntityManager();

		  /*Query query = em.createNamedQuery("getUltimaAlarma");
		  query.setMaxResults(1);
		  System.out.println(" Asigna resultados de Alarma");
		  Alarma ord = (Alarma)query.getSingleResult();
		  System.out.println("Pasa asignación");
		  Calendar fecha = Calendar.getInstance();
	      Date fechaVigencia = ord.getFechaCreacion();
		  Calendar fechaC = Calendar.getInstance();
		  fechaC.set(1900+110,11,10);
		  fechaC.set(1900+fechaVigencia.getYear(), fechaVigencia.getMonth(),fechaVigencia.getDate());
		  fechaC.add(Calendar.DATE,ord.getNumDias().intValue());
		  System.out.println("Fecha Límite "+fechaC.getTime());

		  if(fecha.before(fechaC))
		  { System.out.println("Muestra Alarma ");	 
		  }	 
		  else
		  { System.out.println("No Muestra Alarma ");
		  }	*/
		  
		  Query query = em.createQuery("select a from Alarma a where a.fechaCreacion = (select MAX(b.fechaCreacion) from Alarma b)");
		  System.out.println(" Asigna resultados de Alarma ");
		  Alarma ord = (Alarma)query.getSingleResult();
		  System.out.println("Pasa asignación");
		  Calendar fecha = Calendar.getInstance();
	      Date fechaVigencia = ord.getFechaCreacion();
		  Calendar fechaC = Calendar.getInstance();
		  fechaC.set(1900+110,11,10);
		  fechaC.set(1900+fechaVigencia.getYear(), fechaVigencia.getMonth(),fechaVigencia.getDate());
		  fechaC.add(Calendar.DATE,ord.getNumDias().intValue());
		  System.out.println("Fecha Límite "+fechaC.getTime());
	
		  if(fecha.before(fechaC))
		  { System.out.println("Muestra Alarma ");	 
		  }	 
		  else
		  { System.out.println("No Muestra Alarma ");
		  }
		  //em.close();
		  
	   }
	}
