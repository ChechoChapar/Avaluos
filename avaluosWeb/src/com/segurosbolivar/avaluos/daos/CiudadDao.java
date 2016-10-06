package com.segurosbolivar.avaluos.daos;

import java.util.Calendar;
import java.util.logging.FileHandler;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

import javax.persistence.EntityManager;
import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
import com.segurosbolivar.avaluos.entities.Ciudad;
import com.segurosbolivar.avaluos.entities.Departamento;
import com.segurosbolivar.avaluos.util.Util;

/**
 * Objeto de acceso a datos de la entidad Ciudad
 * 
 * @author Seguros Bolivar
 * @version 1.0
 */
public class CiudadDao extends JpaDao<Ciudad> {

    String mensajeTransaccion = null;

    public String getMensajeTransaccion() {
	return mensajeTransaccion;
    }

    public void setMensajeTransaccion(String mensajeTransaccion) {
	this.mensajeTransaccion = mensajeTransaccion;
    }
    
    /**
     * Permite guardar la ciudad
     * @param ciu Objeto con la información de la ciudad
     */
    public void insertaCiudad(Ciudad ciu) {
	EntityManager em = emf.createEntityManager();
	try {
	    setMensajeTransaccion(null);

	    setMensajeTransaccion(null);
	    em.getTransaction().begin();
	    ciu.setFechaCreacion(Calendar.getInstance().getTime());
	    ciu.setFechaTransaccion(Calendar.getInstance().getTime());
	    em.persist(ciu);
	    em.refresh(em.find(Departamento.class, ciu.getDepartamento().getIdDepartamento()));
	    em.getTransaction().commit();
	    setMensajeTransaccion(ConstantesAvaluos.EXITO);
	}
	catch (Exception e) {
	    log.log(Level.SEVERE, "--> Excepción Ciudad ", e);
	    setMensajeTransaccion(ConstantesAvaluos.ERROR);
	    e.printStackTrace();
	}
	finally {
	    em.close();
	}
    }
    
    /**
     * Edita los cambios sobre el objeto de Ciudad
     * @param ciu Objeto a actualizar
     */
    public void actualizaCiudad(Ciudad ciu) {
	EntityManager em = emf.createEntityManager();
	try {
	    setMensajeTransaccion(null);

	    setMensajeTransaccion(null);
	    em.getTransaction().begin();
	    ciu.setFechaTransaccion(Calendar.getInstance().getTime());
	    em.merge(ciu);
	    em.getTransaction().commit();
	    setMensajeTransaccion(ConstantesAvaluos.EXITO);
	}
	catch (Exception e) {
	    log.log(Level.SEVERE, "--> Excepción Ciudad ", e);
	    setMensajeTransaccion(ConstantesAvaluos.ERROR);
	    e.printStackTrace();
	}
	finally {
	    em.close();
	}
    }
    
    /**
     * Eliminar la ciudad
     * @param ciu Objeto a eliminar
     */
    public void borraCiudad(Ciudad ciu) {
	EntityManager em = emf.createEntityManager();

	try {
	    setMensajeTransaccion(null);

	    setMensajeTransaccion(null);
	    em.getTransaction().begin();
	    em.remove(em.find(Ciudad.class, ciu.getIdCiudad()));
	    em.getTransaction().commit();
	    setMensajeTransaccion(ConstantesAvaluos.EXITO);
	}
	catch (Exception e) {
	    log.log(Level.SEVERE, "--> Excepción Ciudad ", e);
	    setMensajeTransaccion(ConstantesAvaluos.ERROR);
	    e.printStackTrace();
	}
	finally {
	    em.close();
	}
    }

}
