package com.segurosbolivar.avaluos.servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.segurosbolivar.avaluos.entities.PgbArchivosTmp;
import com.segurosbolivar.avaluos.entities.PgbCargueTmp;
import com.segurosbolivar.avaluos.servlet.ThreadCargue.tipoArchivo;
import com.segurosbolivar.avaluos.util.EnviaMensajeCargue;
import com.segurosbolivar.avaluos.util.Util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ThreadCargue implements Runnable {

	private File savedFile;
	
	public static enum tipoArchivo{TXT,ZIP};

	private tipoArchivo tipoDeArchivo;
	
	private HttpServletRequest request;
	private HttpServletResponse response;

	private String nombreItem;
	private String cedula;
	private String consecutivoBatch;
	private String proyectoConstructor;
	
	
	ThreadCargue(File file,String item,String cedu,String consecutiv,String proyectoConstr,tipoArchivo tipo,HttpServletRequest req,HttpServletResponse res){
		this.request=req;
		this.response=res;
		this.tipoDeArchivo=tipo;
		this.savedFile=file;
		this.nombreItem=item;
		this.cedula=cedu;
		this.consecutivoBatch=consecutiv;
		this.proyectoConstructor=proyectoConstr;
	}
	/*
	public ThreadCargue(File savedFile2, String name, tipoArchivo txt,
			HttpServletRequest req, HttpServletResponse res) {
		// TODO Auto-generated constructor stub
	}*/

	@Override
	public void run() {
	
		String linea = null;
		
		FileInputStream fis=null;
		InputStreamReader rd=null; 
		BufferedReader br=null;
		
		try {
			fis = new FileInputStream(this.savedFile);
		} catch (FileNotFoundException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
			return;
		};
		//31 Mar 2011 Se agrega para asegurar compatibilidad con caracteres especiales 
		//(Tildes, Ñ) con los clientes (maquinas Windows)
		
		try {
			rd = new InputStreamReader(fis,"ISO-8859-1");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			return;
		}
		
		
		
		br = new BufferedReader (rd);
		
		//String cedula = (String)request.getParameter("cedula");
		
		int numLinea=0;
		
		
		String path;
		try {
			path = Util.getProperty("ruta.cargue.masivo");
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			return;
		}
		
		//this.nombreItem=savedFile.getName();
		
    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
    	EntityManager em =null;   
		
		if(this.tipoDeArchivo.equals(tipoArchivo.TXT))
		{	
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
			
			/*EntityManager*/ em = emf.createEntityManager();

			//Se obtiene un numero de refrencia para el plano
			Query query = em.createNativeQuery
			("SELECT SEQ_PGB_REFERENCIA_CARGUE.NEXTVAL FROM DUAL");
			BigDecimal referencia = (BigDecimal)query.getSingleResult();				    

			//res.setStatus(res.SC_CONTINUE);
			
			//Se crea una instancia de la clase EnviaMensajeCargue para retroalimentar a Flex con el estado del cargue
			EnviaMensajeCargue ms=new EnviaMensajeCargue();
			try {
				while ((linea=br.readLine())!=null) {
					System.out.println(linea);
					numLinea++;	
					
					em.getTransaction().begin();
							
					//String consecutivoBatch = (String)request.getParameter("consecutivo");
					//Se envia proceso de la linea actual a Flex
					//ms.enviar("REF: "+referencia+" PROCESANDO LINEA: "+numLinea);
					ms.enviar(nombreItem+" PROCESANDO LINEA: "+numLinea);
					
					response.setStatus(response.SC_CONTINUE);
					
					System.out.println(nombreItem+" PROCESANDO LINEA: "+numLinea);
					
					PgbCargueTmp cargue = new PgbCargueTmp();

					cargue.setContenidoLineaPlano(linea);
					cargue.setEstadoCargue("CARGADO");
					cargue.setFechaTransaccion(Calendar.getInstance().getTime());
					cargue.setLineaPlano(new BigDecimal(numLinea));
					cargue.setNumeroRefCargue(referencia);							
					cargue.setConsecutivoBatch(new BigDecimal(this.consecutivoBatch));
					cargue.setTipoCargue("CARGUE");            
					cargue.setUsuarioTransaccion(this.cedula);
					cargue.setNombreArchivo(nombreItem);

					//cargue.setTipoProyecto(new BigDecimal(2));
					if(proyectoConstructor.equals("true"))
					{
					   cargue.setTipoProyecto(new BigDecimal(2));
					}else if(proyectoConstructor.equals("false"))
					{
						cargue.setTipoProyecto(new BigDecimal(1));
					}	
					
					em.persist(cargue);			        

					try
					{
						//Se realiza el llamado a la malla validadora (Procedimiento PL/SQL)
						//El cual valida el plano y si es correcto lo inserta como avaluos			
						//query = em.createNativeQuery("BEGIN PRC_CARGA_AVALUO(pREFERENCIA_CARGUE=>?,pTIPO_CARGUE=>?); END;");		            
						//query = em.createNativeQuery("BEGIN PRC_CARGA_AVALUO1(pREFERENCIA_CARGUE=>?,pTIPO_CARGUE=>?,pProyecto_constructor=>?); END;");
						query = em.createNativeQuery("BEGIN PRC_CARGA_AVALUO_CONSTRUCTOR(pREFERENCIA_CARGUE=>?,pTIPO_CARGUE=>?,pProyecto_constructor=>?); END;");						
						query.setParameter(1, referencia.toString());
						query.setParameter(2, "CARGUE");
						query.setParameter(3, proyectoConstructor);
						
						query.executeUpdate();
					}
					catch(Exception ex)
					{
						try {
							//TODO:Verificar
							em.getTransaction().rollback();
							em.getTransaction().begin();
							//Se actualiza el estado a la linea como rechazado
							//si se produce una excepcion
							cargue.setContenidoLineaPlano(linea);
							cargue.setEstadoCargue("RECHAZADO");
							cargue.setMensajeError("El formato del archivo no es correcto: "+ex.getMessage());
							em.merge(cargue);
							//em.getTransaction().commit();
							//log.log(Level.SEVERE, "--> Excepción Cargue Plano ", ex);
							//throw new IOException(ex);
							//imprimeError(ex,res);
							ex.printStackTrace();
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
					finally
					{
						try {
							em.getTransaction().commit();
						} catch (Exception e) {
							e.printStackTrace();
						}								
					}

				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return;
			}
			//EnviaMensajeCargue ms=new EnviaMensajeCargue();
			ms.enviar(nombreItem+" FIN "+numLinea);
		}
		else if(this.tipoDeArchivo.equals(tipoArchivo.ZIP)){
			try
			{
				//Se lee el contenido del zip con los anexos
				
				byte[] buf = new byte[1024];
				//byte[] buf = new byte[CONST_MAX_SIZE];
				ZipInputStream zipinputstream = null;
				ZipEntry zipentry;
				zipinputstream = new ZipInputStream(
						new FileInputStream(savedFile));

				zipentry = zipinputstream.getNextEntry();
				while (zipentry != null) 
				{ 

					response.setStatus(response.SC_CONTINUE);
					//se itera cada entrada del zip a extractar
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

					System.out.println(path+System.getProperty("file.separator")+nombreItem+System.getProperty("file.separator")+entryName);

					if(nombreItem==null)
					{
						continue;
					}	
					
					String directorio = nombreItem.substring(0,nombreItem.length()-4);

					File theDir = new File(path+System.getProperty("file.separator")+directorio+System.getProperty("file.separator"));

					// si el directorio not existe, sera creado
					if (!theDir.exists())
					{
						System.out.println("creando directorio: " + nombreItem);
						theDir.mkdir();
					}

					File theFile = new File(path+System.getProperty("file.separator")+directorio+System.getProperty("file.separator")+entryName);

					fileoutputstream = new FileOutputStream(theFile);

					buf = new byte[(int)zipentry.getSize()];

					//Se leen los bytes del zip para escribirlos en disco
					while ((n = zipinputstream.read(buf, 0, 1024)) > -1)
					{	
						fileoutputstream.write(buf, 0, n);
					}    	
					fileoutputstream.close(); 
					
					//Se obtiene el consecutivo del batch
					//String consecutivoBatch = (String)request.getParameter("consecutivo");														

					PgbArchivosTmp archivo = new PgbArchivosTmp();
					archivo.setNombreArchivo(theFile.getName());						        
					//archivo.setTipoArchivo(theFile.getName().substring(theFile.getName().lastIndexOf(".") + 1));
					archivo.setTamanioArchivo(BigDecimal.valueOf(theFile.length()));

					//Se cambia el metodo de lectura por bugs en la lectura del anexo
					
					//archivo.setContenidoArchivo(item.get());
					//archivo.setContenidoArchivo(buf);
					//archivo.setContenidoArchivo(tmp);								
					byte[] b = new byte[(int) theFile.length()];
					FileInputStream fileInputStream = new FileInputStream(theFile);
					fileInputStream.read(b);
					fileInputStream.close();

					archivo.setContenido(b);
					archivo.setConsecutivoBatch(new BigDecimal(this.consecutivoBatch));
					archivo.setUsuarioCreacion(this.cedula);
					archivo.setFechaCreacion(Calendar.getInstance().getTime());
					archivo.setUsuarioTransaccion(this.cedula);
					archivo.setFechaTransaccion(Calendar.getInstance().getTime());

					EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
					/*EntityManager*/ em = emf.createEntityManager();
					em.getTransaction().begin();
					em.persist(archivo);			        		
					em.getTransaction().commit();

					zipinputstream.closeEntry();
					zipentry = zipinputstream.getNextEntry();

				}//fin while
				zipinputstream.close();
				}
				catch (Exception e)
				{
					e.printStackTrace();
	                //Genera fallo global en el cargue si falla el cargue de las imagenes  
					//imprimeError(e,res);
					////imprimeError(new Exception("Fallo el cargue de las imagenes o la lectura del .ZIP. Error: "+e.getMessage()+" Clase: "+e.getClass()+" Id: "+e.toString(),e),response);
				}
				//log.log(Level.SEVERE, "--> Excepción Cargue Plano ", e);
				EnviaMensajeCargue ms=new EnviaMensajeCargue();
				ms.enviar(nombreItem+" FIN "+numLinea);	
			}
		try{                    
			if( null != br ){   							
				br.close();
				rd.close();
				fis.close();
			}                 
		}catch (Exception ex){ 
			//log.log(Level.SEVERE, "--> Excepción Cargue Plano ", ex);
			ex.printStackTrace();
		}finally
		{
			//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//	try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
		}
	 //Thread.
	}
	public File getSavedFile() {
		return savedFile;
	}
	public void setSavedFile(File savedFile) {
		this.savedFile = savedFile;
	}

	public tipoArchivo getTipo() {
		return tipoDeArchivo;
	}

	public void setTipo(tipoArchivo tipo) {
		this.tipoDeArchivo = tipo;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public HttpServletResponse getResponse() {
		return response;
	}

	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}

	public tipoArchivo getTipoDeArchivo() {
		return tipoDeArchivo;
	}

	public void setTipoDeArchivo(tipoArchivo tipoDeArchivo) {
		this.tipoDeArchivo = tipoDeArchivo;
	}

	public String getNombreItem() {
		return nombreItem;
	}

	public void setNombreItem(String nombreItem) {
		this.nombreItem = nombreItem;
	}

	public String getCedula() {
		return cedula;
	}

	public void setCedula(String cedula) {
		this.cedula = cedula;
	}

	public String getConsecutivoBatch() {
		return consecutivoBatch;
	}

	public void setConsecutivoBatch(String consecutivoBatch) {
		this.consecutivoBatch = consecutivoBatch;
	}

	public String getProyectoConstructor() {
		return proyectoConstructor;
	}

	public void setProyectoConstructor(String proyectoConstructor) {
		this.proyectoConstructor = proyectoConstructor;
	}
	
}
