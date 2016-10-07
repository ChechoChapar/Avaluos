package com.segurosbolivar.avaluos.daos;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;
import java.util.logging.FileHandler;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import com.segurosbolivar.avaluos.entities.Archivo;
import com.segurosbolivar.avaluos.entities.Calendario;
import com.segurosbolivar.avaluos.util.Util;

/**
 * Objeto de acceso a datos para la entidad Archivo
 * @author Seguros Bolivar
 * @version 1.0
 */
public class ArchivoDao extends JpaDao<ArchivoDao> {

    /**
     * Permite recuperar de la base de datos un archivo para escribirlo en la ruta especificada en el archivio de confiuración del aplicativo,
     * previamente borra cualquier archivo que se encuentre en la carpeta temporal.
     * 
     * @return el nombre del archivo
     */
    public String descargarArchivo() {

	Archivo archivo = null;
	EntityManager em = null;
	try {
	    //File dir = new File(Util.getProperty("domain") + Util.getProperty("tmp"));
		//30 Nov 2012 se agrega cambio por carpeta procedatos
	    File dir = new File(Util.getProperty("ruta.cargue.masivo")+System.getProperty("file.separator")+Util.getProperty("tmp"));	    

	    Util.deleteDirectory(dir);

	    StringBuffer sql = new StringBuffer();
	    sql.append("SELECT archivo FROM Archivo archivo WHERE archivo.idArchivo=(SELECT MAX(tmp.formatoExcel.idArchivo) FROM FormatoAvaluo tmp)");
	    
	    //02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	    /*EntityManager*/ em = EntityManagerImp.getManager();
	    List<Archivo> archivoList = em.createQuery(sql.toString()).getResultList();
	    if ((archivoList == null) || (archivoList.isEmpty())) {
		archivo = new Archivo();
		archivo.setNombreArchivo(null);
	    }
	    else {
		archivo = archivoList.get(0);
		//30 Nov 2012 se agrega cambio por carpeta procedatos
		FileOutputStream archivoNuevo = new FileOutputStream(Util.getProperty("ruta.cargue.masivo")+System.getProperty("file.separator")+Util.getProperty("tmp")
		//FileOutputStream archivoNuevo = new FileOutputStream(Util.getProperty("domain") + Util.getProperty("tmp")
			+ archivo.getNombreArchivo());
		archivoNuevo.write(archivo.getContenidoArchivo());
		archivoNuevo.close();
	    }
	}
	catch (FileNotFoundException e) {
	    log.log(Level.SEVERE, "[ERROR]", e);
	    e.printStackTrace();
	}
	catch (IOException e) {
	    log.log(Level.SEVERE, "[ERROR]", e);
	    e.printStackTrace();
	}
	catch (Exception e) {
	    log.log(Level.SEVERE, "[ERROR]", e);
	    e.printStackTrace();
	}
	finally{
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
	}
	return archivo.getNombreArchivo();

    }

    /**
     * Recupera un archivo de la BD, lo escribe en idsco en la ruta definida en el archivo de configuración.
     * 
     * @param id
     *            Identificador único del archivo que se desea recuperar
     * @return Nombre del archivo recuperado.
     */
    public String descargarArchivoId(BigDecimal id) {

	StringBuffer sql = new StringBuffer();

	sql.append("SELECT archivo FROM Archivo archivo WHERE archivo.idArchivo=:id");
	EntityManager em = EntityManagerImp.getManager();
	Archivo archivo = (Archivo) em.createQuery(sql.toString()).setParameter("id", id).getSingleResult();

	try {
	    FileOutputStream archivoNuevo = new FileOutputStream(Util.getProperty("domain") + archivo.getNombreArchivo());
	    archivoNuevo.write(archivo.getContenidoArchivo());
	    archivoNuevo.close();
	}
	catch (FileNotFoundException e) {
	    log.log(Level.SEVERE, "[ERROR]", e);
	    e.printStackTrace();
	}
	catch (IOException e) {
	    log.log(Level.SEVERE, "[ERROR]", e);
	    e.printStackTrace();
	}
	finally{
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
	}
	return archivo.getNombreArchivo();
    }

    /**
     * Recupera el contenido de un archivo
     * @param id identificador único del archivo que se desea recuperar
     * @return areglo de bytes con el contenido del archivo.
     */
    public byte[] obtieneContenido(BigDecimal id) {
	byte[] contenido;
	EntityManager em = EntityManagerImp.getManager();

	Query query = em.createNamedQuery("getContenidoArchivoId").setParameter("id", id);
	contenido = (byte[]) query.getSingleResult();
	em.close();
	return contenido;
    }

}
