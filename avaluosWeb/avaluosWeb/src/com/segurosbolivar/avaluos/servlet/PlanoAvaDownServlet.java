package com.segurosbolivar.avaluos.servlet;

import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.Serializable;
import java.io.StringWriter;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Random;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;

import com.segurosbolivar.avaluos.daos.AvaluosDao;
import com.segurosbolivar.avaluos.entities.Archivo;
import com.segurosbolivar.avaluos.entities.ComplementosExcel;
import com.segurosbolivar.avaluos.entities.PgbArchivosTmp;
import com.segurosbolivar.avaluos.util.Util;

public class PlanoAvaDownServlet extends HttpServlet implements Serializable {

	private ServletConfig config;

	private static final long serialVersionUID = 1L;

	private static final int BUFSIZE = 4096;

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		System.out.println("--> Init");
		this.config = config;
	}

	/**
	 * @see Servlet#getServletInfo()
	 */
	public String getServletInfo() {
		System.out.println("--> ServletInfo");
		return null;
	}

	private Archivo descargarFachada(String idAvaluo) 
		throws ServletException,IOException {

		EntityManagerFactory emf = Persistence
		.createEntityManagerFactory("avaluosJpa");
		EntityManager em = emf.createEntityManager();
		Query query = null;

		byte[] bytes = null;
		Archivo archivo = null;
		

		try {
			StringBuffer sql = new StringBuffer();
			//sql.append("SELECT archivo.nombre_archivo, archivo.contenido");
			sql.append("SELECT (select TRIM(TO_CHAR(av.n_consecutivobanco,'999999999999999999999999999999999999'))||'_FACHADA.jpg' as nombrearchivo from pgb_avaluos av where av.id_avaluo = anexo.id_avaluo) as nombrearchivo, archivo.contenido");
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
				//Archivo archivo = new Archivo();
				archivo = new Archivo();
				archivo.setNombreArchivo((String) vec[0]);
				archivo.setContenidoArchivo((byte[]) vec[1]);
				bytes = archivo.getContenidoArchivo();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{

			//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//	try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
		}

		return archivo;
		
	}

	private Archivo descargarAnexo(String idAvaluo)
		throws ServletException,IOException {

		List<ComplementosExcel> listaComplementos = new ArrayList<ComplementosExcel>();
		ComplementosExcel complemento = null;
		EntityManagerFactory emf = Persistence
		.createEntityManagerFactory("avaluosJpa");
		EntityManager em = emf.createEntityManager();
		Query query = null;

		byte[] bytes = null;
		Archivo archivo = null;
		try {
			StringBuffer sql = new StringBuffer();
			//sql.append("SELECT archivo.nombre_archivo, archivo.contenido");
			sql.append("SELECT (select TRIM(TO_CHAR(av.n_consecutivobanco,'999999999999999999999999999999999999'))||'_FOTOS.pdf' as nombrearchivo from pgb_avaluos av where av.id_avaluo = anexo.id_avaluo) as nombrearchivo, archivo.contenido");			
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
				//Archivo archivo = new Archivo();
				archivo = new Archivo();
				archivo.setNombreArchivo((String) vec[0]);
				archivo.setContenidoArchivo((byte[]) vec[1]);
				bytes = archivo.getContenidoArchivo();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{

			//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
			//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
		}

		return archivo;
		
		
	}
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException
	{
		doPost(req,res);
	}
			
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException {

		System.out.println("--> post");

		EntityManagerFactory emf = Persistence
		.createEntityManagerFactory("avaluosJpa");
		EntityManager em = emf.createEntityManager();

		/*String mimetype;
		mimetype = "application/octet-stream";
		res.setContentType(mimetype);
		
		byte[] byteBuffer = new byte[BUFSIZE];*/

		try {

			em.getTransaction().begin();

			//byte[] buf = new byte[1024];
			
			ServletOutputStream servletOutputStream = null;
		    try {
			servletOutputStream = res.getOutputStream();
		    }
		    catch (Exception e) {
			e.printStackTrace();
		    }
			
		    //BufferedOutputStream bao = new BufferedOutputStream(res.getOutputStream()/*servletOutputStream*/); 
		    
			//ZipOutputStream output = new ZipOutputStream(bao);
			//ZipOutputStream output = new ZipOutputStream(servletOutputStream);
		    //ZipOutputStream output = new ZipOutputStream(bao);
		    //ZipOutputStream output = new ZipOutputStream(new FileOutputStream( "donload.zip" ));
		    ByteArrayOutputStream baos = new ByteArrayOutputStream();
		    ZipOutputStream output = new ZipOutputStream(baos);
			
			
			AvaluosDao dao = new AvaluosDao();

			// ?values=elem1&values=elem2&values=elem3

			List<String> id = java.util.Arrays.asList(req
					.getParameterValues("ids"));
			
			List<String> ids = new ArrayList<String>();
			
			for (int i = 0; i < id.size(); i++) {
				if((String)id.get(i)==null)
				{
					//ids.remove(i);
				}
				else if(((String)id.get(i)).equals("") || ((String)id.get(i)).length()<1)
				{	
					//ids.remove(i);
					//StringBuffer id = new StringBuffer((String)ids.get(i));
				}
				else// if(((String)ids.get(i)).equals("") || ((String)ids.get(i)).length()>0)
				{
					ids.add((String)id.get(i));
				}	
			}
			
			

			StringBuffer planoAva = dao.getLineasAvaluo(ids, true);
			
			byte[] bytes = String.valueOf(planoAva).getBytes();
			
	
			Random generator = new Random();
			
			ZipEntry entry = new ZipEntry("PlanoAsobancaria"+generator.nextInt(999)+".txt");
			entry.setSize(bytes.length);
			
			output.putNextEntry(entry);
			
			/*InputStream input = new ByteArrayInputStream(bytes);
		    int byteCount; 
		    byte[] data;
		    
		    
		    data = new byte[BUFSIZE];   
		    
	        while((byteCount = input.read(data, 0, BUFSIZE)) != -1)   
	          {   
	        	output.write(data, 0, byteCount);   
	          }*/   

		    
			
			output.write(bytes);
			output.flush();
			output.closeEntry();
			//input.close();
			
			for (int i = 0; i < ids.size(); i++) {
				
				//System.out.println(ids.get(i));
				StringBuffer id1 = new StringBuffer((String)ids.get(i));
				Archivo arc=descargarAnexo(id1.toString());
				
				if(arc!=null)
				{	
					try
					{
					/*ZipEntry*/ entry = new ZipEntry(arc.getNombreArchivo());
					entry.setSize(arc.getContenidoArchivo().length);
					output.putNextEntry(entry);
					
					/*input = new ByteArrayInputStream(arc.getContenidoArchivo());
					
				    data = new byte[BUFSIZE];   
				    
			        while((byteCount = input.read(data, 0, BUFSIZE)) != -1)   
			          {   
			        	output.write(data, 0, byteCount);   
			          } 
					*/
					output.write(arc.getContenidoArchivo());
					//entry.setExtra(arc.getContenidoArchivo());
					output.closeEntry();
					}catch(Exception ex)
					{
						ex.printStackTrace();
					}
					finally{
						//output.closeEntry();	
					}
				}
			}

			for (int i = 0; i < ids.size(); i++) {
				//System.out.println(ids.get(i));
				StringBuffer id1 = new StringBuffer((String)ids.get(i));
				Archivo arc=descargarFachada(id1.toString());
				
				if(arc!=null)
				{	
					try
					{
					/*ZipEntry*/ entry = new ZipEntry(arc.getNombreArchivo());
					entry.setSize(arc.getContenidoArchivo().length);
					output.putNextEntry(entry);
					
					/*input = new ByteArrayInputStream(arc.getContenidoArchivo());
					
				    data = new byte[BUFSIZE];   
				    
			        while((byteCount = input.read(data, 0, BUFSIZE)) != -1)   
			          {   
			        	output.write(data, 0, byteCount);   
			          } 
					*/
					output.write(arc.getContenidoArchivo());
					//entry.setExtra(arc.getContenidoArchivo());
					output.closeEntry();
					}catch(Exception ex)
					{
						ex.printStackTrace();
					}
					finally{
						//output.closeEntry();	
					}
				}
			}
			
			
			//ByteArrayOutputStream bos= new ByteArrayOutputStream(output);
			//output.close();
			
		    res.setHeader("Content-disposition", "attachment; filename=output.zip");
		    
		    //byte[] bytes = readBytes(bao);
		    //servletOutputStream.toByteArray();
		    
		    //res.setContentLength(outpu);
		    //servletOutputStream.write(bytes, 0, bytes.length);
		    output.finish();
		    //bao.flush();
		    //bao.close();
		    
	        res.setContentType("application/zip");
            res.setHeader("Content-Disposition", "attachment; filename=\"DATA.ZIP\"");
		    
		    servletOutputStream.write(baos.toByteArray());
		    
		    servletOutputStream.flush();
		    servletOutputStream.close();					    
			
		} catch (Exception e) {
			e.printStackTrace();
			// log.log(Level.SEVERE, "--> Excepción Descarga Plano ", e);
			// throw new IOException(e);
			// imprimeError(e,response);
		} finally {
			// En el finally cerramos para asegurarnos
			// que se cierra tanto si todo va bien como si salta
			// una excepcion.
			/*
			 * try{ if( null != br ){ br.close(); rd.close(); fis.close(); }
			 * }catch (Exception ex){ //log.log(Level.SEVERE,
			 * "--> Excepción Descarga Plano ", ex); ex.printStackTrace(); }
			 */
			
			//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//	try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
			
		}

		/*
		 * } else { res.sendError(HttpServletResponse.SC_NOT_FOUND); }
		 */

		// } catch(Exception e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// //log.log(Level.SEVERE, "--> Excepción Descarga Plano ", e);
		// //throw new IOException(e);
		// //imprimeError(e,response);
		//
		// }
		// finally{
		// // En el finally cerramos el fichero, para asegurarnos
		// // que se cierra tanto si todo va bien como si salta
		// // una excepcion.
		// try{
		// if( null != br ){
		// br.close();
		// rd.close();
		// fis.close();
		// }
		// }catch (Exception ex){
		// //log.log(Level.SEVERE, "--> Excepción Descarga Plano ", ex);
		// ex.printStackTrace();
		// }
		// }

	}

}
