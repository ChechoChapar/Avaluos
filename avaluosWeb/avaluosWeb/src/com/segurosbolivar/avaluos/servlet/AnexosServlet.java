package com.segurosbolivar.avaluos.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.FileHandler;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.segurosbolivar.avaluos.entities.Archivo;
import com.segurosbolivar.avaluos.entities.ComplementosExcel;
import com.segurosbolivar.avaluos.util.Util;

/**
 * Servlet para la descarga de archivos anexos a un avaluo
 * @author Seguros Bolivar
 * @version 1.0
 */
public class AnexosServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private ServletConfig config;

    /**
     * Constructor por defecto
     */
    public AnexosServlet() {
	super();
    }

    /**
     * @see Servlet#init(ServletConfig)
     */
    public void init(ServletConfig config) throws ServletException {
	this.config = config;
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String operacion = (String) request.getParameter("operacion");
	descargarFachada(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String tipoCarga = request.getParameter("tipoCarga");
	if (tipoCarga.equalsIgnoreCase("fachada")) {
	    descargarFachada(request, response);
	}
	else {
	    descargarAnexo(request, response);
	}
    }

    /**
     * Recupera el anéxo fotográfico correspondiente a la fachada de un avaluo y lo retorna cómo respuesta del servlet.
     * @param request contiene el parametro idAvaluo que corresponde al identificador único del avaluo.
     * @param response respuesta del servlet que contendrá los bytes de la fachada del avaluo.
     * @throws ServletException
     * @throws IOException
     */
    private void descargarFachada(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
    	EntityManager em =null;     	
	try {
	    String idAvaluo = null;
	    idAvaluo = request.getParameter("idAvaluo");
	    EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
	    /*EntityManager*/ em = emf.createEntityManager();
	    Query query = null;

	    ServletOutputStream servletOutputStream = null;
	    servletOutputStream = response.getOutputStream();

	    byte[] bytes = null;
	    StringBuffer sql = new StringBuffer();
	    sql.append("SELECT archivo.nombre_archivo, archivo.contenido");
	    sql.append(" FROM pgb_anexo_fotografico anexo, archivos archivo");
	    sql.append(" WHERE anexo.id_img_fachada = archivo.id_archivo");
	    sql.append(" AND anexo.id_avaluo = ");
	    sql.append(idAvaluo);
	    sql.append(" AND anexo.id_anexo_fotografico = ");
	    sql.append(" (SELECT max(an.id_anexo_fotografico) FROM pgb_anexo_fotografico an WHERE an.id_avaluo = ");
	    sql.append(idAvaluo);
	    sql.append(")");
	    query = em.createNativeQuery(sql.toString());
	    List res = query.getResultList();
	    if ((res != null) && (!res.isEmpty())) {
		Object[] vec = (Object[]) res.get(0);
		Archivo archivo = new Archivo();
		archivo.setNombreArchivo((String) vec[0]);
		archivo.setContenidoArchivo((byte[]) vec[1]);
		response.setHeader("Content-disposition", "attachment; filename=" + archivo.getNombreArchivo());
		bytes = archivo.getContenidoArchivo();
		response.setContentLength(bytes.length);
		servletOutputStream.write(bytes, 0, bytes.length);
		servletOutputStream.flush();
		servletOutputStream.close();
	    }
	}
	catch (Exception e) {
	    try {
		StringWriter stringWriter = new StringWriter();
		PrintWriter printWriter = new PrintWriter(stringWriter);
		e.printStackTrace(printWriter);
		response.setContentType("text/plain");
		response.getOutputStream().print(stringWriter.toString());
	    }
	    catch (Exception e1) {
		//log Level.SEVERE, "[ERROR]", e
		e1.printStackTrace();
	    }
	}finally{
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	//	try{em.close();}catch(Exception ex1){ex1.printStackTrace();}	
	 }
    }

    /**
     * Recupera el anéxo fotográfico correspondiente al documento anexo de un avaluo y lo retorna cómo respuesta del servlet.
     * @param request contiene el parametro idAvaluo que corresponde al identificador único del avaluo.
     * @param response respuesta del servlet que contendrá los bytes del documento anexo del avaluo.
     * @throws ServletException
     * @throws IOException
     */
    private void descargarAnexo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
    	EntityManager em =null;    	
	try {
	    String idAvaluo = null;
	    try {
		idAvaluo = request.getParameter("idAvaluo");
	    }
	    catch (Exception ex) {
		ex.printStackTrace();
	    }

	    List<ComplementosExcel> listaComplementos = new ArrayList<ComplementosExcel>();
	    ComplementosExcel complemento = null;
	    EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
	    /*EntityManager*/ em = emf.createEntityManager();
	    Query query = null;

	    ServletOutputStream servletOutputStream = null;
	    try {
		servletOutputStream = response.getOutputStream();
	    }
	    catch (Exception e) {
		e.printStackTrace();
	    }

	    byte[] bytes = null;
	    try {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT archivo.nombre_archivo, archivo.contenido");
		sql.append(" FROM pgb_anexo_fotografico anexo, archivos archivo");
		sql.append(" WHERE anexo.id_doc_anexos = archivo.id_archivo");
		sql.append(" AND anexo.id_avaluo = ");
		sql.append(idAvaluo);
		sql.append(" AND anexo.id_anexo_fotografico = ");
		sql.append(" (SELECT max(an.id_anexo_fotografico) FROM pgb_anexo_fotografico an WHERE an.id_avaluo = ");
		sql.append(idAvaluo);
		sql.append(")");
		query = em.createNativeQuery(sql.toString());
		List res = query.getResultList();
		if ((res != null) && (!res.isEmpty())) {
		    Object[] vec = (Object[]) res.get(0);
		    Archivo archivo = new Archivo();
		    archivo.setNombreArchivo((String) vec[0]);
		    archivo.setContenidoArchivo((byte[]) vec[1]);
		    response.setHeader("Content-disposition", "attachment; filename=" + archivo.getNombreArchivo());
		    bytes = archivo.getContenidoArchivo();
		    response.setContentLength(bytes.length);
		    servletOutputStream.write(bytes, 0, bytes.length);
		    servletOutputStream.flush();
		    servletOutputStream.close();
		}
	    }
	    catch (Exception e) {
		e.printStackTrace();
	    }

	}
	catch (Exception e) {
	    try {
		StringWriter stringWriter = new StringWriter();
		PrintWriter printWriter = new PrintWriter(stringWriter);
		e.printStackTrace(printWriter);
		response.setContentType("text/plain");
		response.getOutputStream().print(stringWriter.toString());
	    }
	    catch (Exception e1) {
		e1.printStackTrace();
	    }
	}finally{
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	//	try{em.close();}catch(Exception ex1){ex1.printStackTrace();}	
	 }
	
    }
}