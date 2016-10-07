package com.segurosbolivar.avaluos.servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
//import javax.servlet.SingleThreadModel;
//import javax.servlet.annotation.WebServlet; //
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.apache.commons.fileupload.DefaultFileItemFactory;
//import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;
//import org.apache.commons.fileupload.FileUpload;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.segurosbolivar.avaluos.entities.PgbArchivosTmp;
import com.segurosbolivar.avaluos.entities.PgbCargueTmp;
//import com.segurosbolivar.avaluos.servlet.ThreadCargue.tipoArchivo;
import com.segurosbolivar.avaluos.util.EnviaMensajeCargue;
import com.segurosbolivar.avaluos.util.Util;

import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;

//@WebServlet("/UploadServlet")
//@PersistenceContext(type=PersistenceContextType.TRANSACTION)
/**
 * Servlet para realizar los cargues masivos de avaluos
 * Servlet implementation class MultiUploadServlet 
 */
public class MultiUploadServlet extends HttpServlet {

	private ServletConfig config;

	private static final long serialVersionUID = 1L;

	/** Mecanismo de log */
	//private static final Logger log = Logger.getLogger("com.segurosbolivar.avaluos.servlet.MultiUploadServlet");
	//FileHandler fh;   

	/**
	 * Constructor por defecto
	 * @see HttpServlet#HttpServlet()
	 */
	/*public MultiUploadServlet() {
		super();
		System.out.println("--> Constructor");
	}*/

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		System.out.println("--> Init");
		this.config=config;
	}

	/**
	 * @see Servlet#getServletInfo()
	 */
	public String getServletInfo() {
		System.out.println("--> ServletInfo");
		return null;
	}

	/**
	 * verifica el llamado del servlet por el metodo GET. No realiza ninguna operacion ya
	 * que el servlet de los cargues masivos solo utiliza post
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("--> get");
	}

	/**
	 * Maximo tamaño de los archivos que se pueden cargar
	 */	
	private static final int CONST_MAX_SIZE = 10000000;

	/**
	 * Verifica el llamado del servlet por el metodo POST y  
	 * Ejecuta el cargue de masivo de avalúos recibe el id del usuario que va a cargar el 
	 * archivo , el consecutivo del batch como parametro del request
	 * y los bytes del archivo a cargar
	 * 	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 *//*ojo con el throws de complementos*/
	//Se elimina hilo y es reemplazado por trigger.
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
    	EntityManager em =null;
		
		// Comprobar si el request de upload que llega es un request multipart  (que se este enviando un file)
		boolean isMultipart = ServletFileUpload.isMultipartContent(req);


	DiskFileItemFactory factory = new DiskFileItemFactory();
	// maximo tamaño que sera guardado en buffer
	factory.setSizeThreshold(4096);
		// la sgte direccion
		//o factory.setRepository(new File("c:/"));
		ServletFileUpload upload = new ServletFileUpload(factory);
		// maximo tamaño del archivo permitido (si se excede salta al catch)
		upload.setSizeMax(ConstantesAvaluos.CONST_MAX_SIZE);
		// El handler Parsea el request 
		// Esto nos da una lista de elementos del request
	List items = null;
	try {
		items = upload.parseRequest(req);
	} catch (FileUploadException e1) {
	// TODO Auto-generated catch block
		e1.printStackTrace();
		//log.log(Level.SEVERE, "--> Excepción Cargue Plano ", e1);
		//throw new ServletException(e1);
		//imprimeError(e1,res);
		return;
	}
	Iterator itr = items.iterator();

	FileInputStream fis=null;
	InputStreamReader rd=null; 
	BufferedReader br=null;

		while(itr.hasNext()) {
			FileItem item = (FileItem) itr.next();
			
			EnviaMensajeCargue ms=new EnviaMensajeCargue();
			
			// Comprobar si el elemento actual es un campo de formulario o un archivo cargado 			
			if(item.isFormField()) {

				// Obtener el nombre del campo 
				String fieldName = item.getFieldName();

			} else {

				// El objeto item debe ser un archivo subido guardado en el disco. 
				// Tenga en cuenta que Parece haber un bug en item.getName () 
				// que devuelve toda la Ruta de acceso en la máquina del cliente para 
				// el nombre del archivo cargado, en lugar de sólo el nombre de archivo.
				// como workaround a eso, se utiliza FullFile.getName()
				File fullFile  = new File(item.getName());
				// Se obitene la ruta en el servidor donde se cargara el archivo 
				//String path = Util.getProperty("ruta.cargue.masivo");
				//Nueva ruta para eliminar archivos del cargue
				String path = Util.getProperty("nueva.ruta.cargue.masivo");
				
				//Borrar archivos del cargue masivo mayores a 7 dias
				Util.deleteFilesOlderThanNdays(ConstantesAvaluos.DIAS_BORRADO_CARGUE,path);
				
				File savedFile = new File(path,fullFile.getName());			

				BigDecimal referencia=null; 
				String consecutivoBatch=null;
				
				try {
					item.write(savedFile);

					fis = new FileInputStream(savedFile);;
					//31 Mar 2011 Se agrega para asegurar compatibilidad con caracteres especiales 
					//(Tildes, Ñ) con los clientes (maquinas Windows)
					rd = new InputStreamReader(fis,"ISO-8859-1");
					br = new BufferedReader (rd);
					String linea = null;
					//StringBuffer linea = new StringBuffer();
					String lineaTmp = "";

					int numLinea=0;

					String cedula = (String)req.getParameter("cedula");
					String proyectoConstructor = (String)req.getParameter("constructor");

					PgbCargueTmp[] listacargados; 					
					
					//Se verifica si es el plano o los anexos lo que recibe el servlet
					if((item.getName()).toUpperCase().indexOf(".TXT")!=-1)
					{	
						EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
						
						/*EntityManager*/ em = emf.createEntityManager();
						
						//Se obtiene un numero de refrencia para el plano
						Query query = em.createNativeQuery
						("SELECT SEQ_PGB_REFERENCIA_CARGUE.NEXTVAL FROM DUAL");
//						BigDecimal referencia = (BigDecimal)query.getSingleResult();
						referencia = (BigDecimal)query.getSingleResult();

						res.setStatus(res.SC_CONTINUE);

						
						
						//Se crea una instancia de la clase EnviaMensajeCargue para retroalimentar a Flex con el estado del cargue
						//EnviaMensajeCargue ms=new EnviaMensajeCargue();
						
						//em.getTransaction().begin();
						
						while ((linea=br.readLine())!=null) {
							
							//linea = new StringBuffer(lineaTmp);
							
							System.out.println(linea);
							numLinea++;	
							
							em.getTransaction().begin();
									
							consecutivoBatch = (String)req.getParameter("consecutivo");
							//Se envia proceso de la linea actual a Flex
							//ms.enviar("REF: "+referencia+" PROCESANDO LINEA: "+numLinea);
							ms.enviar(item.getName()+" PROCESANDO LINEA: "+numLinea);
							
							res.setStatus(res.SC_CONTINUE);
							
							System.out.println(item.getName()+" PROCESANDO LINEA: "+numLinea);
							
							//ThreadCargue t = new ThreadCargue(savedFile,name,cedula,consecutivoBatch,proyectoConstructor,ThreadCargue.tipoArchivo.TXT,req,res);
							
							//ThreadCargue t = new ThreadCargue(linea,numLinea,savedFile.getName(),cedula,consecutivoBatch,referencia,proyectoConstructor);
					        //new Thread(t). start ( );							
								
							PgbCargueTmp cargue = new PgbCargueTmp();

							//SE COLOCA AL REEMPLAZAR POR TRIGGER
							try
							{
							
							cargue.setContenidoLineaPlano(linea.toString());
							cargue.setEstadoCargue("CARGADO");
							cargue.setFechaTransaccion(Calendar.getInstance().getTime());
							cargue.setLineaPlano(new BigDecimal(numLinea));
							cargue.setNumeroRefCargue(referencia);							
							cargue.setConsecutivoBatch(new BigDecimal(consecutivoBatch));
							cargue.setTipoCargue("CARGUE");            
							cargue.setUsuarioTransaccion(cedula);
							cargue.setNombreArchivo(item.getName());

						if(proyectoConstructor.equals("true"))
						{
						   cargue.setTipoProyecto(new BigDecimal(2));
						}else if(proyectoConstructor.equals("false"))
						{
							cargue.setTipoProyecto(new BigDecimal(1));
						}
						em.persist(cargue);	        

						em.getTransaction().commit();
						
						//Se reemplaza llamado al PL por TRIGGER.
						//em.getTransaction().begin();
						
//						try
//						{
//						//em.getTransaction().begin();				        
//					//query = em.createNativeQuery("BEGIN PRC_CARGA_AVALUO(pREFERENCIA_CARGUE=>?,pTIPO_CARGUE=>?); END;");
//							query = em.createNativeQuery("BEGIN PRC_CARGA_AVALUO_CONSTRUCTOR(pREFERENCIA_CARGUE=>?,pTIPO_CARGUE=>?,pProyecto_constructor=>?); END;");
//							query.setParameter(1, referencia.toString());
//							query.setParameter(2, "CARGUE");
//							query.setParameter(3, proyectoConstructor);
//							query.executeUpdate();
//							//query.getResultList()
//					//query.getSingleResult()							
//
//						//cargue.setEstadoCargue("APLICADO");
//							//em.getTransaction().commit();
						}
						catch(Exception ex)
						{
							try {
								//?
								em.getTransaction().rollback();
								em.getTransaction().begin();
								//?
								cargue.setContenidoLineaPlano(linea.toString());
								cargue.setEstadoCargue("RECHAZADO");
								cargue.setMensajeError("El formato del archivo no es correcto: "+ex.getMessage());
							em.merge(cargue);
								//10Feb2011  
								//em.getTransaction().commit();
								//log.log(Level.SEVERE, "--> Excepción Cargue Plano ", ex);
								//throw new IOException(ex);
								//imprimeError(ex,res);
								ex.printStackTrace();
							} catch (Exception e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}finally{em.getTransaction().commit();}
					}
						finally
						{
							//10Feb2011
							
//							try {
//								//em.getTransaction().commit();
//							} catch (Exception e) {
//								// TODO Auto-generated catch block
//								e.printStackTrace();
//							}								
							//em.close();
						}

						//Se reemplaza hilo por TRIGGER
						//ThreadCargue t = new ThreadCargue(new StringBuffer(linea),numLinea,savedFile.getName(),cedula,consecutivoBatch,referencia,proyectoConstructor);
				        //new Thread(t). start ( );
					}	
						
						//em.getTransaction().commit();

						//Se reemplaza hilo por TRIGGER
						//ThreadCargue t = new ThreadCargue(new StringBuffer(linea),numLinea,savedFile.getName(),cedula,consecutivoBatch,referencia,proyectoConstructor);
				        //new Thread(t). start ( );
				}
				else if((item.getName()).toUpperCase().indexOf(".ZIP")!=-1){

					EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
					/*EntityManager*/ em = emf.createEntityManager();
					
					try
					{
						
						em.getTransaction().begin();
						
						//path = "d:\\servlet\\testZip\\";
						byte[] buf = new byte[1024];
						//byte[] buf = new byte[CONST_MAX_SIZE];
						//byte[] buf = null;
						ZipInputStream zipinputstream = null;
						ZipEntry zipentry;
						zipinputstream = new ZipInputStream(
								new FileInputStream(savedFile));

						zipentry = zipinputstream.getNextEntry();
						while (zipentry != null) 
						{ 

				//for each entry to be extracted
							String entryName = zipentry.getName();
							System.out.println("entryname "+entryName);
							int n;
							FileOutputStream fileoutputstream;
							File newFile = new File(entryName);
							String directory = newFile.getParent();

							if(directory == null)
							{
							if(newFile.isDirectory())
									break;
							}

							System.out.println(path+System.getProperty("file.separator")+item.getName()+System.getProperty("file.separator")+entryName);

							String directorio = item.getName().substring(0,item.getName().length()-4);

							File theDir = new File(path+System.getProperty("file.separator")+directorio+System.getProperty("file.separator"));

							// if the directory does not exist, create it
							if (!theDir.exists())
							{
							System.out.println("creating directory: " + item.getName());
								theDir.mkdir();
							}
							File theFile = new File(path+System.getProperty("file.separator")+directorio+System.getProperty("file.separator")+entryName);

							// if the file does not exist, create it
			                //if (!theFile.exists())
			                //{
			                //	System.out.println("deleting file: " + item.getName());
			                //	theFile.createNewFile()
                //}

							//fileoutputstream = new FileOutputStream(
			                //		path+System.getProperty("file.separator")+item.getName()+System.getProperty("file.separator")+entryName);             
							fileoutputstream = new FileOutputStream(theFile);

							//byte[] tmp=null;

							//if(theFile.length()<1)
			                //{
			                //	throw new IOException("El archivo esta vacio");
			                //}	

							try
							{
							buf = new byte[(int)zipentry.getSize()];
							}
							catch(Exception ex)
							{
								ex.printStackTrace();
								buf = new byte[1024];
							}

						while ((n = zipinputstream.read(buf, 0, 1024)) > -1)
								//while ((n = zipinputstream.read(buf, 0, (int)zipentry.getSize())) > -1)
							{	
								//tmp=buf;
								fileoutputstream.write(buf, 0, n);
							}    	
							fileoutputstream.close(); 

							//String consecutivoBatch = (String)req.getParameter("consecutivo");														
							consecutivoBatch = (String)req.getParameter("consecutivo");

							PgbArchivosTmp archivo = new PgbArchivosTmp();
							archivo.setNombreArchivo(theFile.getName());						        
							//archivo.setTipoArchivo(theFile.getName().substring(theFile.getName().lastIndexOf(".") + 1));
							archivo.setTamanioArchivo(BigDecimal.valueOf(theFile.length()));
							//archivo.setTamanioArchivo(BigDecimal.valueOf(tmp.length));						        
							//archivo.setContenidoArchivo(item.get());
							//archivo.setContenidoArchivo(buf);
							//archivo.setContenidoArchivo(tmp);
							
						byte[] b = new byte[(int) theFile.length()];
							FileInputStream fileInputStream = new FileInputStream(theFile);
							fileInputStream.read(b);
							//for (int i = 0; i < b.length; i++) {
					        //System.out.print((char)b[i]);
				        //}
							fileInputStream.close();

							archivo.setContenido(b);
						archivo.setConsecutivoBatch(new BigDecimal(consecutivoBatch));
							archivo.setUsuarioCreacion(cedula);
							archivo.setFechaCreacion(Calendar.getInstance().getTime());
				archivo.setUsuarioTransaccion(cedula);
							archivo.setFechaTransaccion(Calendar.getInstance().getTime());

//							EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
//							EntityManager em = emf.createEntityManager();
//							em.getTransaction().begin();
							em.persist(archivo);			        		
//							em.getTransaction().commit();
							zipinputstream.closeEntry();
							zipentry = zipinputstream.getNextEntry();

						}//while

					zipinputstream.close();
					}
				catch (Exception e)
					{
					e.printStackTrace();
						//log.log(Level.SEVERE, "--> Excepción Cargue Plano ", e);
					}
				
					em.getTransaction().commit();
				
				}					


			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				//log.log(Level.SEVERE, "--> Excepción Cargue Plano ", e);
				//throw new IOException(e);
				imprimeError(e,res);

			}
			finally{
				// En el finally cerramos el fichero, para asegurarnos
				// que se cierra tanto si todo va bien como si salta 
				// una excepcion.
				try{                    
					if( null != br ){   							
						br.close();
						rd.close();
						fis.close();
				}                  
				}catch (Exception ex){ 
					//log.log(Level.SEVERE, "--> Excepción Cargue Plano ", ex);
					ex.printStackTrace();
				}
				
				//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
				//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
				
			}
		}
		ms.enviar(item.getName()+" FIN: ");
	}
	res.setStatus(res.SC_OK);	
	// res.setStatus(res.SC_SEE_OTHER);
}    
	
	/**
	 * Metodo para generar una salida del servlet para mostrar una excepcion hacia flex.
	 */
	public void imprimeError(Exception e,HttpServletResponse response)
	{
		try {
			StringWriter stringWriter = new StringWriter();
			PrintWriter printWriter = new PrintWriter(stringWriter);
			e.printStackTrace(printWriter);
			response.setContentType("text/plain");
			response.getOutputStream().print(stringWriter.toString());
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}	
}