package com.segurosbolivar.avaluos.servlet;

import java.io.File;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.DefaultFileItemFactory;
import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUpload;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.log4j.BasicConfigurator;

import com.segurosbolivar.avaluos.entities.Archivo;
import com.segurosbolivar.avaluos.entities.ComplementosExcel;

import com.segurosbolivar.avaluos.util.Util;

//@WebServlet(value = "/ComplementosServlet", name = "ComplementosServlet")
/**
 * Servlet para realizar el cargue de complementos.
 * Servlet implementation class ReportServlet
 */
public class ComplementosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ServletConfig config;

	/** Mecanismo de log */
	//private static final Logger log = Logger.getLogger("com.segurosbolivar.avaluos.servlet.ComplementosServlet");
	//FileHandler fh;

	/**
	 * Constructor por defecto
	 * @see HttpServlet#HttpServlet()
	 */
	public ComplementosServlet() {
		super();
		try {
//			fh = new FileHandler(Util.getProperty("log"), true);
//			log.addHandler(fh);
//			log.setLevel(Level.ALL);
//			SimpleFormatter formatter = new SimpleFormatter();
//			fh.setFormatter(formatter);
		} catch (Exception e) {
			// log.log(Level.SEVERE, "[ERROR]", e);
			System.out.println("Error en sistema de log");
			e.printStackTrace();
		} finally {
			try{
//			fh.close();
			}catch(Exception ex1)
			{
				ex1.printStackTrace();
			}
		}
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// System.out.println("--> Init");
		this.config = config;
	}

	/**
	 * verifica el llamado del servlet por el metodo GET y segun el parametro operacion
	 * realiza un cargue o una descarga de un complemento
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String operacion = (String)request.getParameter("operacion");
		
		if(operacion==null)				
			operacion="";
		
		if(operacion.equals("download"))
		{
			descargarComplemento(request, response);
		}else if(operacion.equals("upload"))
		{
			cargarComplemento(request, response);
		}else
		{
			/*si hay un errror en la operacion intenta escribirlo en la salida*/
			StringWriter stringWriter = new StringWriter();
			PrintWriter printWriter = new PrintWriter(stringWriter);
			printWriter.print("<script>window.close();</script>");
			response.setContentType("text/html");
			response.getOutputStream().print(stringWriter.toString());			
		}	
	}

	/**
	 * verifica el llamado del servlet por el metodo POST y segun el parametro operacion
	 * realiza un cargue o una descarga de un complemento
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("operacion").equals("download"))
		{
			descargarComplemento(request, response);
		}else if(request.getParameter("operacion").equals("upload"))
		{
			cargarComplemento(request, response);
		}else
		{
			/*si hay un errror en la operacion intenta escribirlo en la salida*/
			StringWriter stringWriter = new StringWriter();
			PrintWriter printWriter = new PrintWriter(stringWriter);
			printWriter.print("<script>window.close();</script>");
			response.setContentType("text/html");
			response.getOutputStream().print(stringWriter.toString());
		}
	}

	/**
	 * Ejecuta la descarga de un complemento
	 * recibe el id del archivo correspondiente al complemento como parametro del request
	 */
	private void descargarComplemento(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
    	EntityManager em =null;		
		
		// TODO Auto-generated method stub
		try {
			
			String idArchivo = null;
			try {
				idArchivo = request.getParameter("idArchivo");
			} catch (Exception ex) {
				ex.printStackTrace();
			}

			List<ComplementosExcel> listaComplementos = new ArrayList<ComplementosExcel>();
			ComplementosExcel complemento = null;
			// com

			EntityManagerFactory emf = Persistence
					.createEntityManagerFactory("avaluosJpa");
			/*EntityManager*/ em = emf.createEntityManager();
			Query query = null;

			ServletOutputStream servletOutputStream = null;
			try {
				servletOutputStream = response.getOutputStream();
			} catch (Exception e) {
				e.printStackTrace();
			}

			byte[] bytes = null;

			try {
						query = em.createNativeQuery("" +
						" SELECT " +
						"   nombre_Archivo, " +
						"   contenido " +
						" FROM" +
						"   Archivos "+
						" WHERE" +
						"   id_Archivo="+ idArchivo
						);
						
				/*Se elimina la conversion a Archivo porque en el query no se incluyen los bytes del archivo */

						//listaComplementos = query.getResultList();
				//ComplementosExcel compl = (ComplementosExcel) query
				//		.getSingleResult();				
				//Archivo archivo  = (Archivo) query.getSingleResult();	
				Object[]  vec  = (Object[])query.getSingleResult();
				
				Archivo archivo  = new Archivo();
				archivo.setNombreArchivo((String)vec[0]);
				archivo.setContenidoArchivo((byte[])vec[1]);


				response.setHeader("Content-disposition",
						"attachment; filename="
								+ archivo.getNombreArchivo());
				bytes = archivo.getContenidoArchivo();
				response.setContentLength(bytes.length);
				servletOutputStream.write(bytes, 0, bytes.length);

				System.out.println("*-*-*-Escribi Complemento");
				servletOutputStream.flush();
				servletOutputStream.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

		} catch (Exception e) {
			// display stack trace in the browser
			try {
				StringWriter stringWriter = new StringWriter();
				PrintWriter printWriter = new PrintWriter(stringWriter);
				e.printStackTrace(printWriter);
				response.setContentType("text/plain");
				response.getOutputStream().print(stringWriter.toString());
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		}finally{
			//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
			//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
		}
	}

	/**
	 * Maximo tamaño de los archivos que se pueden cargar
	 */
	private static final int CONST_MAX_SIZE = 20000000;

	/**
	 * Ejecuta el cargue de un complemento
	 * recibe el id del usuario que va a cargar el complemento
	 * , la descripcion del complemento como parametro del request
	 * y los bytes del archivo a cargar
	 */
	protected void cargarComplemento(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
    	EntityManager em =null;
		
		// Comprobar si el request de upload que llega es un request multipart  (que se este enviando un file)
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// maximo tamaño que sera guardado en buffer
		factory.setSizeThreshold(4096);
		// si se excede del anterior tamaño, se ira guardando temporalmente, en
		// la sgte direccion
		//o factory.setRepository(new File("c:/"));
		ServletFileUpload upload = new ServletFileUpload(factory);
		// maximo tamaño del archivo permitido (si se excede salta al catch)
		upload.setSizeMax(CONST_MAX_SIZE);
		// El handler Parsea el request 
		// Esto nos da una lista de elementos del request
		List items = null;
		try {
			items = upload.parseRequest(request);
		} catch (FileUploadException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			//log.log(Level.SEVERE, "--> Excepción Cargue Complementos ", e1);
			//throw new ServletException(e1);
			response.getWriter().write("--> Excepción Cargue Complementos "+e1.getMessage());
			return;
		}
		Iterator itr = items.iterator();

		FileInputStream fis = null;
		InputStreamReader rd = null;
		BufferedReader br = null;

		String cedula = (String) request.getParameter("cedula");
		String descripcion = (String) request.getParameter("descripcion");

		while (itr.hasNext()) {
			FileItem item = (FileItem) itr.next();

			// Comprobar si el elemento actual es un campo de formulario o un archivo cargado 			
			if (item.isFormField()) {

				// Obtener el nombre del campo 
				String fieldName = item.getFieldName();

//				// if it is name, we can set it in request to thank the user
//				if (fieldName.equals("name"))
//					request.setAttribute("msg",
//							"Thank You: " + item.getString());

			} else {

				
				// El objeto item debe ser un archivo subido guardado en el disco. 
				// Tenga en cuenta que Parece haber un bug en item.getName () 
				// que devuelve toda la Ruta de acceso en la máquina del cliente para 
				// el nombre del archivo cargado, en lugar de sólo el nombre de archivo.
				// como workaround a eso, se utiliza FullFile.getName() 
				File fullFile = new File(item.getName());
				// Se obitene la ruta en el servidor donde se cargara el archivo 
				String path = Util.getProperty("ruta.cargue.complementos");
				File savedFile = new File(path, fullFile.getName());

				try {
					item.write(savedFile);

					fis = new FileInputStream(savedFile);
					rd = new InputStreamReader(fis);
					br = new BufferedReader(rd);
					
					String linea = null;

					int numLinea = 0;

					byte[] buf = new byte[1024];

					int n;
					FileOutputStream fileoutputstream;

					EntityManagerFactory emf = Persistence
					.createEntityManagerFactory("avaluosJpa");
					/*EntityManager*/ em = emf.createEntityManager();
					em.getTransaction().begin();
					Archivo archivo = new Archivo();
					archivo.setNombreArchivo(savedFile.getName());
					// archivo.setTipoArchivo(theFile.getName().substring(theFile.getName().lastIndexOf(".")+ 1));
					byte[] b = new byte[(int) item.getSize()];
					FileInputStream fileInputStream = new FileInputStream(savedFile);
					fileInputStream.read(b);
					archivo.setTamanioArchivo(new BigDecimal(b.length));					
					archivo.setContenidoArchivo(b);
					archivo.setUsuarioCreacion(cedula);
					archivo.setFechaCreacion(Calendar.getInstance().getTime());
					archivo.setUsuarioTransaccion(cedula);
					archivo.setFechaTransaccion(Calendar.getInstance().getTime());
					em.persist(archivo);
				
					ComplementosExcel complemento = new ComplementosExcel();
					complemento.setArchivo(archivo);
					complemento.setDescripcionComplemento(descripcion);
					complemento.setFechaCreacion(Calendar.getInstance().getTime());
					complemento.setFechaTransaccion(Calendar.getInstance().getTime());
					complemento.setUsuarioCreacion(cedula);
					complemento.setUsuarioTransaccion(cedula);
					
					em.persist(complemento);
					
					em.getTransaction().commit();

				} catch (Exception e) {
										
					response.getWriter().write("--> Excepción Cargue Complementos "+e.getMessage());				
					e.printStackTrace();
					//log.log(Level.SEVERE, "--> Excepción Cargue Complementos ",e);
					return;
				} finally {
					// En el finally cerramos el fichero, para asegurarnos
					// que se cierra tanto si todo va bien como si salta
					// una excepcion.
					try {
						if (null != br) {
							br.close();
							rd.close();
							fis.close();
						}
					} catch (Exception ex) {
						//log.log(Level.SEVERE,"--> Excepción Cargue Complementos ", ex);
						ex.printStackTrace();
					}
					
					//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
				//	try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
					
				}
			}
		}
	}


	
	
///*	
//	protected void cargarComplemento(HttpServletRequest request,
//			HttpServletResponse response) throws ServletException, IOException {
//		// first check if the upload request coming in is a multipart request
//		boolean isMultipart = FileUpload.isMultipartContent(request);
//		DefaultFileItemFactory factory = new DefaultFileItemFactory();
//		// maximo tamaño que sera guardado en buffer
//		factory.setSizeThreshold(4096);
//		// si se excede del anterior tamaño, se ira guardando temporalmente, en
//		// la sgte direccion
//		// factory.setRepository(new File("c:/"));
//		DiskFileUpload upload = new DiskFileUpload(factory);
//		// maximo tamaño del archivo permitido (si se excede salta al catch)
//		upload.setSizeMax(CONST_MAX_SIZE);
//		// parse this request by the handler
//		// this gives us a list of items from the request
//		List items = null;
//		try {
//			items = upload.parseRequest(request);
//		} catch (FileUploadException e1) {
//			// TODO Auto-generated catch block
//			e1.printStackTrace();
//			//log.log(Level.SEVERE, "--> Excepción Cargue Complementos ", e1);
//			//throw new ServletException(e1);
//			response.getWriter().write("--> Excepción Cargue Complementos "+e1.getMessage());
//			return;
//		}
//		Iterator itr = items.iterator();
//
//		FileInputStream fis = null;
//		InputStreamReader rd = null;
//		BufferedReader br = null;
//
//		String cedula = (String) request.getParameter("cedula");
//		String descripcion = (String) request.getParameter("descripcion");
//
//		while (itr.hasNext()) {
//			FileItem item = (FileItem) itr.next();
//
//			// check if the current item is a form field or an uploaded file
//			if (item.isFormField()) {
//
//				// get the name of the field
//				String fieldName = item.getFieldName();
//
//				// if it is name, we can set it in request to thank the user
//				if (fieldName.equals("name"))
//					request.setAttribute("msg",
//							"Thank You: " + item.getString());
//
//			} else {
//
//				// the item must be an uploaded file save it to disk. Note that
//				// there
//				// seems to be a bug in item.getName() as it returns the full
//				// path on
//				// the client's machine for the uploaded file name, instead of
//				// the file
//				// name only. To overcome that, I have used a workaround using
//				// fullFile.getName().
//				File fullFile = new File(item.getName());
//				// String path = config.getServletContext().getRealPath("");
//				String path = Util.getProperty("ruta.cargue.complementos");
//				File savedFile = new File(path, fullFile.getName());
//
//				try {
//					item.write(savedFile);
//
//					fis = new FileInputStream(savedFile);
//					rd = new InputStreamReader(fis);
//					br = new BufferedReader(rd);
//					
//					String linea = null;// br.readLine();
//
//					int numLinea = 0;
//
//					// path = "d:\\servlet\\testZip\\";
//					byte[] buf = new byte[1024];
//					// byte[] buf = new byte[CONST_MAX_SIZE];
//
//					// for each entry to be extracted
//					// String entryName = zipentry.getName();
//					// System.out.println("entryname "+entryName);
//					int n;
//					FileOutputStream fileoutputstream;
//					// File newFile = new File(entryName);
//					//File newFile = new File("File");
//					//String directory = newFile.getParent();
//
//					//if (directory == null) {
//						// if(newFile.isDirectory())
//						// break;
//					//}
//
//					// System.out.println(path+System.getProperty("file.separator")+item.getName()+System.getProperty("file.separator")+entryName);
//
//					//String directorio = item.getName().substring(0,
//					//		item.getName().length() - 4);
//
//					//File theDir = new File(path
//					//		+ System.getProperty("file.separator") + directorio
//					//		+ System.getProperty("file.separator"));
//
//					// if the directory does not exist, create it
//					//if (!theDir.exists()) {
//					//	System.out.println("creating directory: "
//					//			+ item.getName());
//					//	theDir.mkdir();
//					//}
//
//					// File theFile = new
//					// File(path+System.getProperty("file.separator")+directorio+System.getProperty("file.separator")+entryName);
//					//File theFile = new File(path
//					//		+ System.getProperty("file.separator") + directorio
//					//		+ System.getProperty("file.separator") + "Comple");
//
//					/*
//					 * // if the file does not exist, create it if
//					 * (!theFile.exists()) {
//					 * System.out.println("deleting file: " + item.getName());
//					 * theFile.createNewFile() }
//					 */
//
//					/*
//					 * fileoutputstream = new FileOutputStream(
//					 * path+System.getProperty
//					 * ("file.separator")+item.getName()+System
//					 * .getProperty("file.separator")+entryName);
//					 */
//					//fileoutputstream = new FileOutputStream(savedFile);
//
//					// byte[] tmp=null;
//
//					/*
//					 * if(theFile.length()<1) { throw new
//					 * IOException("El archivo esta vacio"); }
//					 */
//
//					// buf = new byte[(int)zipentry.getSize()];
//
//					EntityManagerFactory emf = Persistence
//					.createEntityManagerFactory("avaluosJpa");
//					EntityManager em = emf.createEntityManager();
//					em.getTransaction().begin();
//					/*em.persist(archivo);
//					em.getTransaction().commit();**/
//					
//					Archivo archivo = new Archivo();
//					archivo.setNombreArchivo(savedFile.getName());
//					// archivo.setTipoArchivo(theFile.getName().substring(theFile.getName().lastIndexOf(".")
//					// + 1));
//					//archivo.setTamanioArchivo(BigDecimal.valueOf(savedFile.length()));
//					// archivo.setTamanioArchivo(BigDecimal.valueOf(tmp.length));
//					// archivo.setContenidoArchivo(item.get());
//					// archivo.setContenidoArchivo(buf);
//					// archivo.setContenidoArchivo(tmp);
//
//					byte[] b = new byte[(int) item.getSize()];
//					FileInputStream fileInputStream = new FileInputStream(
//							savedFile);
//					fileInputStream.read(b);
//					/*
//					 * for (int i = 0; i < b.length; i++) {
//					 * System.out.print((char)b[i]); }
//					 */
//
//					archivo.setTamanioArchivo(new BigDecimal(b.length));					
//					archivo.setContenidoArchivo(b);
//					// archivo.setConsecutivoBatch(new
//					// BigDecimal(consecutivoBatch));
//					archivo.setUsuarioCreacion(cedula);
//					archivo.setFechaCreacion(Calendar.getInstance().getTime());
//					archivo.setUsuarioTransaccion(cedula);
//					archivo.setFechaTransaccion(Calendar.getInstance()
//							.getTime());
//
//					/*EntityManagerFactory emf = Persistence
//							.createEntityManagerFactory("avaluosJpa");
//					EntityManager em = emf.createEntityManager();*/
//					
//					/*em.getTransaction().begin();*/
//					em.persist(archivo);
//					
//					ComplementosExcel complemento = new ComplementosExcel();
//					complemento.setArchivo(archivo);
//					complemento.setDescripcionComplemento(descripcion);
//					complemento.setFechaCreacion(Calendar.getInstance().getTime());
//					complemento.setFechaTransaccion(Calendar.getInstance().getTime());
//					complemento.setUsuarioCreacion(cedula);
//					complemento.setUsuarioTransaccion(cedula);
//					
//					em.persist(complemento);
//					
//					em.getTransaction().commit();
//
//					// archivo.setFechaTransaccion(Calendar.getInstance().getTime());
//
//					/*
//					 * EntityManagerFactory emf =
//					 * Persistence.createEntityManagerFactory("avaluosJpa");
//					 * EntityManager em = emf.createEntityManager();
//					 * 
//					 * em.getTransaction().begin(); em.persist(formatoAvaluo);
//					 * em.getTransaction().commit();
//					 */
//
//				} catch (Exception e) {
//					
//					
//					response.getWriter().write("--> Excepción Cargue Complementos "+e.getMessage());
//					
//					/*em.getTransaction().rollback();
//					em.getTransaction().begin();
//					cargue.setContenidoLineaPlano(linea);
//					cargue.setEstadoCargue("RECHAZADO");
//					cargue.setMensajeError("El formato del archivo no es correcto: "+ex.getMessage());
//					em.merge(cargue);
//					em.getTransaction().commit();
//					log.log(Level.SEVERE, "--> Excepción Cargue Plano ", ex);
//					//throw new IOException(ex);*/
//					
//					
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//					//log.log(Level.SEVERE, "--> Excepción Cargue Complementos ",e);
//					//throw new IOException(e);
//					//throw new RuntimeException(e);
//					return;
//				} finally {
//					// En el finally cerramos el fichero, para asegurarnos
//					// que se cierra tanto si todo va bien como si salta
//					// una excepcion.
//					try {
//						if (null != br) {
//							br.close();
//							rd.close();
//							fis.close();
//						}
//					} catch (Exception ex) {
//						//log.log(Level.SEVERE,"--> Excepción Cargue Complementos ", ex);
//						ex.printStackTrace();
//					}
//				}
//			}
//		}
//	}
//*/
	/**
	 * Pruebas 
	 */
	public static void main(String[] args) throws IOException, ServletException {
		BasicConfigurator.configure(); 		//Log4J
		ComplementosServlet cs = new ComplementosServlet();
		cs.descargarComplemento(null, null);
	}
}