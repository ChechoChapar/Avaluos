package com.segurosbolivar.avaluos.servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

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

//import weblogic.servlet.annotation.WLServlet;

import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
import com.segurosbolivar.avaluos.entities.Archivo;
import com.segurosbolivar.avaluos.entities.FormatoAvaluo;

/**
 * Servlet implementation class UploadServlet
 */
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadServlet() {
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
	 * Maximo tamaño de los archivos que se pueden cargar
	 */	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
	}
	//private static final int CONST_MAX_SIZE = 10000000;
	/**
	 * Inserta el archivo seleccionado en la base de datos
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		  FileItem item = null;
		  FileItemFactory factory = new DiskFileItemFactory();
		  Iterator iter = null;
		  List items = null;
		  ServletFileUpload upload = new ServletFileUpload( factory );
		  //upload.setSizeMax(ConstantesAvaluos.CONST_MAX_SIZE);
		  ServletOutputStream out = null;
		
    	  //02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
    	  EntityManager em =null; 
		  
		  try 
		  {
		    items = upload.parseRequest( req );
		    iter = items.iterator();
					
		    out = res.getOutputStream();
		    out.println( "" );
					
		    while( iter.hasNext() )
		    {
			
		      item = ( FileItem )iter.next();
					
		      if( item.isFormField() )
		      {
		        out.println( ""  );

		      } else {
		    	
		        Archivo archivo = new Archivo();
		        FormatoAvaluo formatoAvaluo = new FormatoAvaluo();
		        
		        formatoAvaluo.setDescripcion(item.getName());
		        formatoAvaluo.setFechaActualizacion(Calendar.getInstance().getTime());
		        formatoAvaluo.setUsuarioTransaccion(req.getParameter("codigoUsuario"));
		        formatoAvaluo.setFechaTransaccion(Calendar.getInstance().getTime());
		        formatoAvaluo.setFormatoExcel(archivo);
		        
		        archivo.setNombreArchivo(item.getName());
		        archivo.setTamanioArchivo(BigDecimal.valueOf(item.getSize()));
		        archivo.setContenidoArchivo(item.get());
		        archivo.setUsuarioCreacion(req.getParameter("codigoUsuario"));
		        archivo.setFechaCreacion(Calendar.getInstance().getTime());
		        archivo.setUsuarioTransaccion(req.getParameter("codigoUsuario"));
		        archivo.setFechaTransaccion(Calendar.getInstance().getTime());
		        
		        EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
		        /*EntityManager*/ em = emf.createEntityManager();
		        
		        em.getTransaction().begin();
		        em.persist(formatoAvaluo);
		        em.getTransaction().commit();
		      }
		    }
		    out.close();
		  } catch( FileUploadException fue ) {
		    fue.printStackTrace();
		  } 
		  catch( IOException ioe ) {
		    ioe.printStackTrace();
		  } 
		  catch( Exception e ) {
		    e.printStackTrace();
		  }
		  finally{
				//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
			//	try{em.close();}catch(Exception ex1){ex1.printStackTrace();}			  
		  }
	}
}