package com.segurosbolivar.avaluos.daos;

import java.util.Calendar;
import java.util.List;
import java.util.logging.FileHandler;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
import com.segurosbolivar.avaluos.entities.EmpresasAvaluos;
import com.segurosbolivar.avaluos.entities.PeritosEmpresa;
import com.segurosbolivar.avaluos.util.Util;

/**
 * Objeto de acceso a datos de la entidad PeritosEmpresa
 * 
 * @author Seguros Bolivar
 * @version 1.0
 */

public class PeritosEmpresaDao extends JpaDao<PeritosEmpresa> {
	
	String mensajeTransaccion = null;
	
	 /** Mecanismo de log */
    //private static final Logger log = Logger.getLogger("com.segurosbolivar.avaluos.daos.PeritosEmpresaDao");
    //FileHandler fh;

	public String getMensajeTransaccion() {
		return mensajeTransaccion;
	}

	public void setMensajeTransaccion(String mensajeTransaccion) {
		this.mensajeTransaccion = mensajeTransaccion;
	}
    
	/**
	 * Consulta los peritos
	 * @return Listado de Peritos de Empresa
	 */
	public List<PeritosEmpresa> consultaUsuarios()
	{ EntityManager em = emf.createEntityManager();
	  Query query = em.createNamedQuery("getPeritosEmpresa");
	  List<PeritosEmpresa> listaPeritos = query.getResultList();
	  em.close();	  
	  return listaPeritos;
	}
	
	/**
	 * Almacena a un perito de una empresa seleccionada
	 * @param perito objeto a ingresar
	 */
	public void guardaPeritoEmpresa(PeritosEmpresa perito)
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
        	perito.setFechaCreacion(Calendar.getInstance().getTime());
        	perito.setFechaTransaccion(Calendar.getInstance().getTime());
        	EmpresasAvaluos empresa = perito.getEmpresasAvaluo();
        	List peritos = empresa.getPeritosEmpresas();
        	peritos.add(perito);
	        em.persist(perito);
	        System.out.println("Va a persistir empresa");
	        em.merge(empresa);
	        em.getTransaction().commit();
	        setMensajeTransaccion(ConstantesAvaluos.EXITO);
	    }
	    catch(Exception e)
	    {
	      log.log(Level.SEVERE, "--> Excepción Perito Empresa ", e);
	      setMensajeTransaccion(ConstantesAvaluos.ERROR);
		  e.printStackTrace();
	    }
	    finally
	    {
	    
	      em.close();
	    }
	}
	
	/**
	 * Inactiva Perito de una empresa
	 * @param perito Objeto perito a inactivar
	 */
	public void inactivaPeritoEmpresa(PeritosEmpresa perito)
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
        	perito.setFechaTransaccion(Calendar.getInstance().getTime());
            em.merge(perito);
	        em.getTransaction().commit();
	        setMensajeTransaccion(ConstantesAvaluos.EXITO);
	    }
	    catch(Exception e)
	    { log.log(Level.SEVERE, "--> Excepción inativa Perito ", e);
		  setMensajeTransaccion(ConstantesAvaluos.ERROR);
		  e.printStackTrace();
	    }
	    finally
	    {
	      em.close();
	    }
	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
	}
}
