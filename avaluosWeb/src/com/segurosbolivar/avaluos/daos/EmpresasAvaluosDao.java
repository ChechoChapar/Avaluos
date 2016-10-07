package com.segurosbolivar.avaluos.daos;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.logging.FileHandler;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
import com.segurosbolivar.avaluos.entities.AnexoFotografico;
import com.segurosbolivar.avaluos.entities.Archivo;
import com.segurosbolivar.avaluos.entities.Avaluo;
import com.segurosbolivar.avaluos.entities.Ciudad;
import com.segurosbolivar.avaluos.entities.ComportamientoOfertaDemanda;
import com.segurosbolivar.avaluos.entities.CondicionesSalubridad;
import com.segurosbolivar.avaluos.entities.Dominios;
import com.segurosbolivar.avaluos.entities.EmpresasAvaluos;
import com.segurosbolivar.avaluos.entities.InformacionBarrio;
import com.segurosbolivar.avaluos.entities.InformacionConstruccion;
import com.segurosbolivar.avaluos.entities.InformacionInmueble;
import com.segurosbolivar.avaluos.entities.LiquidacionAvaluo;
import com.segurosbolivar.avaluos.entities.LiquidacionAvaluoTotal;
import com.segurosbolivar.avaluos.entities.Observaciones;
import com.segurosbolivar.avaluos.util.Util;

/**
 * Objeto de acceso a datos de la entidad EmpresaAvaluos
 * 
 * @author Seguros Bolivar
 * @version 1.0
 */
public class EmpresasAvaluosDao extends JpaDao<EmpresasAvaluos> {

    String mensajeTransaccion = null;

    /** Mecanismo de log */
    // private static final Logger log = Logger.getLogger("com.segurosbolivar.avaluos.daos.EmpresasAvaluosDao");
    // FileHandler fh;

    public String getMensajeTransaccion() {
	return mensajeTransaccion;
    }

    public void setMensajeTransaccion(String mensajeTransaccion) {
	this.mensajeTransaccion = mensajeTransaccion;
    }

    /**
     * Consulta las empresas
     * @return Lista de Empresas
     */
    public List<EmpresasAvaluos> retornaEmpresas() {
	EntityManager em = emf.createEntityManager();
	List<EmpresasAvaluos> resultados = null;
	try { /*
	       * fh = new FileHandler(Util.getProperty("log"), true); log.addHandler(fh); log.setLevel(Level.ALL); SimpleFormatter formatter = new
	       * SimpleFormatter(); fh.setFormatter(formatter);
	       */

	    resultados = em.createNamedQuery("getEmpresas").getResultList();
	}
	catch (Exception e) { // log.log(Level.SEVERE, "--> Excepción Empresas ", e);
	    e.printStackTrace();
	}
	finally {
	    em.close();
	}
	return resultados;
    }

    /**
     * Almacena o actualiza una empresa
     * @param empresa objeto Empresa a insertar o actualizar
     * @param logo objeto archivo de logo de la empresa 
     * @param firma objeto Archivo de la firma de la empresa
     */
    public void guardaEmpresa(EmpresasAvaluos empresa, Archivo logo, Archivo firma) {
	EntityManager em = emf.createEntityManager();
	try {
	    // fh = new FileHandler(Util.getProperty("log"), true);
	    // log.addHandler(fh);
	    // log.setLevel(Level.ALL);
	    // SimpleFormatter formatter = new SimpleFormatter();
	    // fh.setFormatter(formatter);

	    // the following statement is used to log any messages
	    log.log(Level.ALL, "--> El log esta correcto");

	    setMensajeTransaccion(null);
	    em.getTransaction().begin();
	    if (logo != null) {
		empresa.setLogo(logo);
	    }

	    if (firma != null) {
		empresa.setFirma(firma);
	    }

	    if (empresa.getIdEmpresaAvaluo() != null) {
		em.find(EmpresasAvaluos.class, empresa.getIdEmpresaAvaluo());
		System.out.println("merge Empresa " + empresa.getIdEmpresaAvaluo());
		empresa.setFechaTransaccion(Calendar.getInstance().getTime());
		em.merge(empresa);
	    }
	    else {
		System.out.println("persist Empresa " + empresa.getIdEmpresaAvaluo());
		empresa.setFechaCreacion(Calendar.getInstance().getTime());
		empresa.setFechaTransaccion(Calendar.getInstance().getTime());
		em.persist(empresa);
	    }

	    em.getTransaction().commit();
	    setMensajeTransaccion(ConstantesAvaluos.EXITO);
	}
	catch (Exception e) {
	    setMensajeTransaccion(ConstantesAvaluos.ERROR);
	    log.log(Level.SEVERE, "--> Excepción Empresas ", e);
	    e.printStackTrace();
	}
	finally {
	    em.close();
	}
    }
    
    
    /**
     * Trae el id del archivo del logo de una empresa
     * @param empresa Objeto Empresa a actualizar
     * @return id del logo de la empresa
     */
    public BigDecimal consultaLogo(EmpresasAvaluos empresa) {
	EntityManager em = emf.createEntityManager();
	BigDecimal idLogo = null;
	System.out.println("Empresa " + empresa.getIdEmpresaAvaluo());
	try {
	    // fh = new FileHandler(Util.getProperty("log"), true);
	    // log.addHandler(fh);
	    // log.setLevel(Level.ALL);
	    // SimpleFormatter formatter = new SimpleFormatter();
	    // fh.setFormatter(formatter);
	    idLogo = (BigDecimal) em.createNamedQuery("getLogoEmpresa").setParameter(1, empresa.getIdEmpresaAvaluo()).getSingleResult();
	    System.out.println("Logo " + idLogo);
	}
	catch (Exception e) {
	    log.log(Level.SEVERE, "--> Excepción Empresas ", e);
	    e.printStackTrace();
	}
	finally {
	    em.close();
	}
	return idLogo;
    }

    
    /**
     * Consulta el id del archivo de la firma de la empresa
     * @param empresa Objeto de la empresa a actualizar
     * @return id de la firma de la empresa
     */
    public BigDecimal consultaFirma(EmpresasAvaluos empresa) {
	EntityManager em = emf.createEntityManager();
	BigDecimal idFirma = null;
	System.out.println("Empresa " + empresa.getIdEmpresaAvaluo());
	try {
	    // fh = new FileHandler(Util.getProperty("log"), true);
	    // log.addHandler(fh);
	    // log.setLevel(Level.ALL);
	    // SimpleFormatter formatter = new SimpleFormatter();
	    // fh.setFormatter(formatter);

	    idFirma = (BigDecimal) em.createNamedQuery("getFirmaEmpresa").setParameter(1, empresa.getIdEmpresaAvaluo()).getSingleResult();
	}
	catch (Exception e) {
	    log.log(Level.SEVERE, "--> Excepción Empresas ", e);
	    e.printStackTrace();
	}
	finally {
	    em.close();
	}
	return idFirma;
    }
    
    /**
     * Elimina la empresa
     * @param empresa Objeto de la empresa a eliminar
     */
    public void borraEmpresa(EmpresasAvaluos empresa) {
	EntityManager em = emf.createEntityManager();

	try {
	    // fh = new FileHandler(Util.getProperty("log"), true);
	    // log.addHandler(fh);
	    // log.setLevel(Level.ALL);
	    // SimpleFormatter formatter = new SimpleFormatter();
	    // fh.setFormatter(formatter);

	    setMensajeTransaccion(null);
	    System.out.println("borrar Id " + empresa.getIdEmpresaAvaluo());
	    em.getTransaction().begin();
	    em.remove(em.find(EmpresasAvaluos.class, empresa.getIdEmpresaAvaluo()));
	    em.getTransaction().commit();
	    setMensajeTransaccion(ConstantesAvaluos.EXITO);
	    System.out.println("Mensaje " + getMensajeTransaccion());
	}
	catch (Exception e) {
	    log.log(Level.SEVERE, "--> Excepción Empresas ", e);
	    setMensajeTransaccion(ConstantesAvaluos.ERROR);
	    e.printStackTrace();
	}
	finally {
	    em.close();
	}
    }
    
    /**
     * Retorna un objeto de Empresa 
     * @param idEmpresa identificador de la empresa a consultar
     * @return Objeto de la Empresa
     */    
    public EmpresasAvaluos retornaEmpresa(BigDecimal idEmpresa) {
	EntityManager em = emf.createEntityManager();
	EmpresasAvaluos resultado = null;
	try {
	    // fh = new FileHandler(Util.getProperty("log"), true);
	    // log.addHandler(fh);
	    // log.setLevel(Level.ALL);
	    // SimpleFormatter formatter = new SimpleFormatter();
	    // fh.setFormatter(formatter);

	    resultado = (EmpresasAvaluos) em.createQuery("select e from EmpresasAvaluos e where e.idEmpresaAvaluo =" + idEmpresa).getSingleResult();
	}
	catch (Exception e) {
	    log.log(Level.SEVERE, "--> Excepción Empresa ", e);
	    e.printStackTrace();
	}
	finally {
	    em.close();
	}
	return resultado;
    }

    /**
     * @param args
     */
    public static void main(String[] args) {
	// TODO Auto-generated method stub
    }

    /**
     * Recupera el listado de empresas que coinciden con el criterio de búsqueda aproximado
     * 
     * @param descEmpresa
     *            nombre de la empresa, en la BD el campo se llama DESC_EMPRESA
     * @return Lista de empresas que satisfacen el criterio de búsqueda
     * @throws Exception
     */
    public List<EmpresasAvaluos> getEmpresaPorDescEmpresa(String descEmpresa) throws Exception {
    	//emf = Persistence.createEntityManagerFactory("avaluosJpa");
    	//EntityManager entityManager=emf.createEntityManager();
	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	//if(!entityManager.isOpen())
	//	entityManager = emf.createEntityManager();    	
    	
	List<EmpresasAvaluos> resultList = null;
	StringBuffer sql = new StringBuffer("SELECT e FROM EmpresasAvaluos e WHERE upper(e.descEmpresa) LIKE '%");
	sql.append(descEmpresa.toUpperCase());
	sql.append("%'");
	try {
	    resultList = entityManager.createQuery(sql.toString()).getResultList();
	}
	catch (Exception e) {
	    log.log(Level.SEVERE, "[ERROR]", e);
	    throw new Exception(ConstantesAvaluos.ERROR);
	}
	finally
	{
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{entityManager.close();}catch(Exception ex1){ex1.printStackTrace();}
	}
	return resultList;
    }

}
