package com.segurosbolivar.avaluos.servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.logging.FileHandler;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
import com.segurosbolivar.avaluos.entities.AnexoFotografico;
import com.segurosbolivar.avaluos.entities.Archivo;
import com.segurosbolivar.avaluos.entities.Avaluo;
import com.segurosbolivar.avaluos.util.Util;

/**
 * Servlet para la carga de anexos de un avaluo
 * 
 * @author Seguros Bolivar
 * @version 1.0
 */
public class UploadAnexosServlet extends HttpServlet {

    /**
     * Código de serialización de la clase.
     */
    private static final long serialVersionUID = 1L;

    /**
     * Constructor por defecto de la clase.
     */
    public UploadAnexosServlet() {
	super();
    }

    /**
     * @see Servlet#init(ServletConfig)
     */
    public void init(ServletConfig config) throws ServletException {
    }

    /**
     * @see Servlet#getServletInfo()
     */
    public String getServletInfo() {
	return null;
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
    }

    /**
	 * Maximo tamaño de los archivos que se pueden cargar
	 */	
	//private static final int CONST_MAX_SIZE = 10000000;
    /**
     * Inserta el archivo seleccionado en la base de datos
     * 
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

	FileItem item = null;
	FileItemFactory factory = new DiskFileItemFactory();
	Iterator iter = null;
	List items = null;
	ServletFileUpload upload = new ServletFileUpload(factory);

	String idAvaluo = req.getParameter("idAvaluo");
	String tipoCarga = req.getParameter("tipoCarga");

	try {
	    items = upload.parseRequest(req);
	    iter = items.iterator();

	    while (iter.hasNext()) {
		item = (FileItem) iter.next();
		if (item.isFormField()) {
		}
		else {
		    if (tipoCarga.equalsIgnoreCase("fachada")) {
			guardarFachada(item, idAvaluo, req);
		    }
		    else {
			guardarAnexo(item, idAvaluo, req);
		    }
		}
	    }
	}
	catch (FileUploadException e) {
	    e.printStackTrace();
	}
	catch (IOException e) {
	    e.printStackTrace();
	}
	catch (Exception e) {
	    e.printStackTrace();
	}
    }

    /**
     * Guarda en la BD un archivo jpg que contiene la foto de la fachada del predio
     * 
     * @param item
     *            datos del archivo que se va a guardar
     * @param idAvaluo
     *            identificador único del avaluo para el cual se va a alamacenar el archivo
     * @param req
     *            request
     * @throws Exception
     */
    private synchronized void guardarFachada(FileItem item, String idAvaluo, HttpServletRequest req) throws Exception {
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
	EntityManager em = emf.createEntityManager();

	Archivo archivo = new Archivo();
	AnexoFotografico anexoFotografico = new AnexoFotografico();

	StringBuffer sql = new StringBuffer("SELECT an FROM AnexoFotografico an WHERE an.avaluo.idAvaluo = ");
	sql.append(new BigDecimal(idAvaluo));
	List<AnexoFotografico> resList = em.createQuery(sql.toString()).getResultList();

	if ((resList != null) && (!resList.isEmpty())) {

	    AnexoFotografico anexoFachada = resList.get(0);
	    Archivo fachada = resList.get(0).getArchivoFoto();

	    em.getTransaction().begin();
	    if (fachada == null) {
		fachada = new Archivo();
		fachada.setNombreArchivo(item.getName());
		fachada.setTamanioArchivo(BigDecimal.valueOf(item.getSize()));
		fachada.setContenidoArchivo(item.get());
		fachada.setUsuarioCreacion(req.getParameter("codigoUsuario"));
		fachada.setFechaCreacion(Calendar.getInstance().getTime());
		fachada.setUsuarioTransaccion(req.getParameter("codigoUsuario"));
		fachada.setFechaTransaccion(Calendar.getInstance().getTime());
		em.persist(fachada);
	    }
	    else {
		fachada.setNombreArchivo(item.getName());
		fachada.setTamanioArchivo(BigDecimal.valueOf(item.getSize()));
		fachada.setContenidoArchivo(item.get());
		fachada.setUsuarioTransaccion(req.getParameter("codigoUsuario"));
		fachada.setFechaTransaccion(Calendar.getInstance().getTime());
	    }
	    anexoFachada.setArchivoFoto(fachada);
	    anexoFachada.setUsuarioTransaccion(req.getParameter("codigoUsuario"));
	    anexoFachada.setFechaTransaccion(Calendar.getInstance().getTime());
	    em.merge(fachada);
	    em.merge(anexoFachada);
	    em.getTransaction().commit();

	}
	else {
	    archivo.setNombreArchivo(item.getName());
	    archivo.setTamanioArchivo(BigDecimal.valueOf(item.getSize()));
	    archivo.setContenidoArchivo(item.get());
	    archivo.setUsuarioCreacion(req.getParameter("codigoUsuario"));
	    archivo.setFechaCreacion(Calendar.getInstance().getTime());
	    archivo.setUsuarioTransaccion(req.getParameter("codigoUsuario"));
	    archivo.setFechaTransaccion(Calendar.getInstance().getTime());

	    em.getTransaction().begin();
	    em.persist(archivo);
	    anexoFotografico.setAvaluo(em.find(Avaluo.class, new BigDecimal(idAvaluo)));
	    anexoFotografico.setArchivoFoto(archivo);
	    anexoFotografico.setUsuarioCreacion(req.getParameter("codigoUsuario"));
	    anexoFotografico.setFechaCreacion(Calendar.getInstance().getTime());
	    anexoFotografico.setUsuarioTransaccion(req.getParameter("codigoUsuario"));
	    anexoFotografico.setFechaTransaccion(Calendar.getInstance().getTime());
	    em.persist(anexoFotografico);
	    em.getTransaction().commit();
	}
	
	UploadAnexosPdfServlet anexos=new UploadAnexosPdfServlet();
	anexos.guardarImagenPdf(item, idAvaluo, "1", (String)req.getParameter("codigoUsuario"), req);

	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
    }

    /**
     * 
     * Guarda en la BD un archivo pdf que contiene los anéxos fotográficos del predio
     * 
     * @param item
     *            datos del archivo que se va a guardar
     * @param idAvaluo
     *            identificador único del avaluo para el cual se va a alamacenar el archivo
     * @param req
     *            request
     * @throws Exception
     */
    private void guardarAnexo(FileItem item, String idAvaluo, HttpServletRequest req) throws Exception {
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
	EntityManager em = emf.createEntityManager();

	Archivo archivo = new Archivo();
	AnexoFotografico anexoPdf = new AnexoFotografico();

	StringBuffer sql = new StringBuffer("SELECT an FROM AnexoFotografico an WHERE an.avaluo.idAvaluo = ");
	sql.append(new BigDecimal(idAvaluo));
	List<AnexoFotografico> resList = em.createQuery(sql.toString()).getResultList();

	if ((resList != null) && (!resList.isEmpty())) {

	    AnexoFotografico anexoFachada = resList.get(0);
	    Archivo anexo = resList.get(0).getArchivoPdf();

	    em.getTransaction().begin();
	    if (anexo == null) {
		anexo = new Archivo();
		anexo.setNombreArchivo(item.getName());
		anexo.setTamanioArchivo(BigDecimal.valueOf(item.getSize()));
		anexo.setContenidoArchivo(item.get());
		anexo.setUsuarioCreacion(req.getParameter("codigoUsuario"));
		anexo.setFechaCreacion(Calendar.getInstance().getTime());
		anexo.setUsuarioTransaccion(req.getParameter("codigoUsuario"));
		anexo.setFechaTransaccion(Calendar.getInstance().getTime());
		em.persist(anexo);
	    }
	    else {
		anexo.setNombreArchivo(item.getName());
		anexo.setTamanioArchivo(BigDecimal.valueOf(item.getSize()));
		anexo.setContenidoArchivo(item.get());
		anexo.setUsuarioTransaccion(req.getParameter("codigoUsuario"));
		anexo.setFechaTransaccion(Calendar.getInstance().getTime());
	    }
	    anexoFachada.setArchivoPdf(anexo);
	    anexoFachada.setUsuarioTransaccion(req.getParameter("codigoUsuario"));
	    anexoFachada.setFechaTransaccion(Calendar.getInstance().getTime());

	    em.merge(anexo);
	    em.merge(anexoFachada);
	    em.getTransaction().commit();
	}

	else {
	    archivo.setNombreArchivo(item.getName());
	    archivo.setTamanioArchivo(BigDecimal.valueOf(item.getSize()));
	    archivo.setContenidoArchivo(item.get());
	    archivo.setUsuarioCreacion(req.getParameter("codigoUsuario"));
	    archivo.setFechaCreacion(Calendar.getInstance().getTime());
	    archivo.setUsuarioTransaccion(req.getParameter("codigoUsuario"));
	    archivo.setFechaTransaccion(Calendar.getInstance().getTime());

	    em.getTransaction().begin();
	    em.persist(archivo);
	    anexoPdf.setAvaluo(em.find(Avaluo.class, new BigDecimal(idAvaluo)));
	    anexoPdf.setArchivoPdf(archivo);
	    anexoPdf.setUsuarioCreacion(req.getParameter("codigoUsuario"));
	    anexoPdf.setFechaCreacion(Calendar.getInstance().getTime());
	    anexoPdf.setUsuarioTransaccion(req.getParameter("codigoUsuario"));
	    anexoPdf.setFechaTransaccion(Calendar.getInstance().getTime());
	    em.persist(anexoPdf);
	    em.getTransaction().commit();
	}

	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
//	try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
    }
}