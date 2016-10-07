package com.segurosbolivar.avaluos.daos;

import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.sql.Connection;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import tool.pdf.Compress;

import multivalent.std.adaptor.pdf.Dict;
import multivalent.std.adaptor.pdf.PDFReader;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.JasperRunManager;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.export.JRPdfExporter;
import net.sf.jasperreports.engine.export.JRPdfExporterParameter;
import net.sf.jasperreports.engine.util.JRProperties;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

import net.sf.jasperreports.engine.JasperPrint;

import com.pt.io.InputUniByteArray;
import com.segurosbolivar.avaluos.entities.AnexoFotografico;
import com.segurosbolivar.avaluos.entities.Archivo;
import com.segurosbolivar.avaluos.entities.Avaluo;
import com.segurosbolivar.avaluos.entities.ListaAnexosPdf;
import com.segurosbolivar.avaluos.util.Util;


import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.pdf.PdfReader;
import com.lowagie.text.pdf.PdfStamper;
import com.lowagie.text.pdf.PdfWriter;


public class ListaAnexosDao {

	public String consultaNomImagen(String idAvaluo,String consecutivo)
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
		EntityManager em = emf.createEntityManager();
		
		ListaAnexosPdf anexoPdf  = null;//new ListaAnexosPdf();
		
		//StringBuffer sql = new StringBuffer("SELECT ls FROM ListaAnexosPdf ls WHERE ls.pgbAvaluo.idAvaluo = "+idAvaluo+" and ls.consecutivoAnexo = "+consecutivo);
		StringBuffer sql = new StringBuffer("SELECT ls.archivo.nombreArchivo FROM ListaAnexosPdf ls WHERE ls.pgbAvaluo.idAvaluo = "+idAvaluo+" and ls.consecutivoAnexo = "+consecutivo);
		
		String result = null;
		
		try {
			//anexoPdf = (ListaAnexosPdf)em.createQuery(sql.toString()).getSingleResult();
			result = (String)em.createQuery(sql.toString()).getSingleResult();
		} catch (Exception e) {
			//e.printStackTrace();
		}
		finally
		{
			//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
			//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
		}
		return result;
	}
	
	public String borraImagen(String idAvaluo,String consecutivo)
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
		EntityManager em = emf.createEntityManager();

		Archivo archivo = new Archivo();
		//AnexoFotografico anexoFotografico = new AnexoFotografico();
		ListaAnexosPdf anexoPdf  = null;//new ListaAnexosPdf(); 
		
		/*Avaluo av = new Avaluo();
		av.setIdAvaluo(new BigDecimal(idAvaluo));*/
		
		Query query = em.createQuery
		(
				"	SELECT avaluo			"+
				"	  FROM Avaluo avaluo						" +
				"      WHERE  avaluo.idAvaluo="+idAvaluo	    			
		);
		Avaluo av = (Avaluo)query.getSingleResult();
		
		if(av!=null)
		{		
			Date fechaAct = new Date(); 

			StringBuffer sql = new StringBuffer("SELECT ls FROM ListaAnexosPdf ls WHERE ls.pgbAvaluo.idAvaluo = "+idAvaluo+" and ls.consecutivoAnexo = "+consecutivo);
			
			
			try {
				anexoPdf = (ListaAnexosPdf)em.createQuery(sql.toString()).getSingleResult();
			} catch (Exception e) {
				e.printStackTrace();
			}
						
		    em.getTransaction().begin();			
			if(anexoPdf==null)
			{								

			}
			else
			{
				
				em.remove(anexoPdf);
				
			}	
		    em.getTransaction().commit();
		}
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
		return null;
	}
	
	public String/*void*/ generarAnexo(String idAvaluo,String codigoUsuario) throws JRException, IOException, DocumentException
	{
	  EntityManager em = null; 
	  //NullPointer
	  Connection conn = null;
	  ByteArrayOutputStream baos = null; 
	  try{	  			
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
			//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
			/*EntityManager*/ em = emf.createEntityManager();			
			Query query = em.createNativeQuery("" +
					" select count(1)" +
					" from pgb_lst_anexos_pdf t " +
					" where t.consecutivo_anexo <= 6 " +
					" and t.id_avaluo = '"+idAvaluo+"' "
					);
			BigDecimal cuenta = (BigDecimal)query.getSingleResult();
			if(cuenta.intValue()<6){
				//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
				//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
				System.out.print("Debe cargar mínimo la fachada y las 5 primeras imágenes para generar el pdf");
				return "Debe cargar mínimo la fachada y las 5 primeras imágenes para generar el pdf";
			}		
			query = em.createNativeQuery("" +
					" select av.n_consecutivobanco "+
					"  from pgb_avaluos av "+
					" where  av.id_avaluo = '"+idAvaluo+"' "
					);
			BigDecimal consecutivo = (BigDecimal)query.getSingleResult();
			
			//Connection conn = Util.getJDB	ConnFromEM(EntityManagerImp.getManager());
			//NullPointer Connection 
			conn = Util.getJDBConnFromEM(em);
			HashMap parameterMap = new HashMap();
			
			// Recuperamos el fichero fuente   
			JasperDesign jd=JRXmlLoader.load(Util.getProperty("ruta.cargue.masivo")+System.getProperty("file.separator")+Util.getProperty("reportes")+System.getProperty("file.separator")+"PdfAnexos.jrxml");        
			// Compilamos el informe jrxml  
			JasperReport report = JasperCompileManager.compileReport(jd);
			
			parameterMap.put("ID_AVALUO",idAvaluo);		
			// Rellenamos el informe con la conexion creada y sus parametros establecidos
			parameterMap.put("SUBREPORT_DIR", 
					Util.getProperty("ruta.cargue.masivo")+System.getProperty("file.separator") +Util.getProperty("reportes")+System.getProperty("file.separator")
			);
			//llenamos el reporte
			//JasperPrint print = JasperFillManager.fillReport(report,parameterMap, null);
			
			JRProperties.setProperty("net.sf.jasperreports.export.pdf.compressed", true);
			
			JasperPrint print = JasperFillManager.fillReport(report, parameterMap, conn);
			
			/*JRPdfExporter exporter = new JRPdfExporter();
	        exporter.setParameter(JRPdfExporterParameter.IS_COMPRESSED, true);
	        exporter.setParameter(JRExporterParameter.JASPER_PRINT,
	        print);*/		
			
			byte[] bytes;		
			
			bytes=JasperRunManager.runReportToPdf(report,parameterMap,conn);
			
		    PdfReader reader = new PdfReader(bytes);
		    
		    //NullPointer ByteArrayOutputStream 
		    baos = new ByteArrayOutputStream();            
	                  
		    PdfStamper stamper = new PdfStamper(reader, baos,PdfWriter.VERSION_1_5);
		    stamper.getWriter().setFullCompression();
		    stamper.setFullCompression();
		    stamper.close();
		    
	        baos.close();
	        bytes = baos.toByteArray();
	
		    /*reader = new PdfReader(bytes);
		    stamper = new PdfStamper(reader, new FileOutputStream("C:\\Users\\80093644\\myDecompressed.pdf"), '1');
		    Document.compress = false;
		    int total = reader.getNumberOfPages() + 1;
		    for (int i = 1; i < total; i++) {
		      reader.setPageContent(i, reader.getPageContent(i));
		    }
		    stamper.close();*/
	
		    showFileSize(bytes);
		    /*showFileSize("my.pdf");
		    showFileSize("myDecompressed.pdf");*/
			
		    phelps.io.OutputStreams.compress(baos,"gzip");
		    
	        bytes = baos.toByteArray();
	        
		    showFileSize(bytes);
		   
		    baos = new ByteArrayOutputStream();
		    JRPdfExporter exporter = new JRPdfExporter();
	        exporter.setParameter(JRPdfExporterParameter.IS_COMPRESSED, true);
            exporter.setParameter(JRExporterParameter.JASPER_PRINT,
            		print);
            exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, baos);
		    exporter.exportReport();
		    bytes = baos.toByteArray();
		    
		    showFileSize(bytes);
            
//		    Compress comprPDf = new Compress(bytes);
//		    //comprPDf.
//		    
//		    //Compress comprPDf = new Compress((PDFReader)null);
//		    PDFReader Pdfreader = new PDFReader(new InputUniByteArray(bytes));
//		    
//		    //Pdfreader.
//		    
//		    //comprPDf.compress(new PDFWriter(paramOutputUni, this.pdfr_));
//		    
//		    /*Field field = Pdfreader.getClass().getDeclaredField("pdfr_");
//		    field.setAccessible(true);
//		    field.set(Pdfreader, Pdfreader);*/
//		    
//		    //Class<?> parameterTypes;
//		    
//			//Method method = Pdfreader.getClass().getDeclaredMethod("compress", parameterTypes)
//		    //return field.get(instance);
//		    
//		    Pdfreader = comprPDf.writePipe();
//		    
//		    bytes=comprPDf.writeBytes();
//		    showFileSize(bytes);
		    
			em.getTransaction().begin();
			
			Archivo arch=new Archivo();
			
			arch.setNombreArchivo(consecutivo+"_fotos.pdf");
			arch.setTamanioArchivo(BigDecimal.valueOf(showFileSize(bytes)));
			arch.setContenidoArchivo(bytes);
			Date fechaAct = new Date();
			arch.setUsuarioCreacion(codigoUsuario);
			//arch.setUsuarioCreacion("80093644");
			arch.setFechaCreacion(fechaAct);
			arch.setUsuarioTransaccion(codigoUsuario);
			//arch.setUsuarioTransaccion("80093644");
			arch.setFechaTransaccion(fechaAct);
	
			//em.persist(arch);
			
			StringBuffer sql = new StringBuffer("SELECT an FROM AnexoFotografico an WHERE an.avaluo.idAvaluo = ");
			sql.append(new BigDecimal(idAvaluo));
			
			List<AnexoFotografico> resList = em.createQuery(sql.toString()).getResultList();
	
			AnexoFotografico anexoFotos;
			
			Archivo archFotos;
			
			if ((resList != null) && (!resList.isEmpty())) {
				anexoFotos = resList.get(0);
				
				archFotos = resList.get(0).getArchivoPdf();
				
				if (archFotos == null)
				{
					archFotos=arch;					
					em.persist(archFotos);
				}
				else
				{
					archFotos.setNombreArchivo(arch.getNombreArchivo());
					archFotos.setTamanioArchivo(arch.getTamanioArchivo());
					archFotos.setContenidoArchivo(arch.getContenidoArchivo());
					archFotos.setUsuarioTransaccion(codigoUsuario);
					archFotos.setFechaTransaccion(fechaAct);
				}	
				anexoFotos.setArchivoPdf(archFotos);
				anexoFotos.setUsuarioTransaccion(codigoUsuario);
				anexoFotos.setFechaTransaccion(fechaAct);
				
			    em.merge(archFotos);
			    em.merge(anexoFotos);
			    em.getTransaction().commit();
			}
			else
			{
				//em.getTransaction().begin();
				
				archFotos=arch;
				em.persist(archFotos);
				
				anexoFotos= new AnexoFotografico();
				
				anexoFotos.setAvaluo(em.find(Avaluo.class, new BigDecimal(idAvaluo)));
				anexoFotos.setArchivoPdf(archFotos);
				anexoFotos.setUsuarioCreacion(codigoUsuario);
				anexoFotos.setFechaCreacion(fechaAct);
				anexoFotos.setUsuarioTransaccion(codigoUsuario);
				anexoFotos.setFechaTransaccion(fechaAct);
				
			    em.persist(anexoFotos);
			    em.getTransaction().commit();
				
			}				
			//em.getTransaction().commit();
	  }		
	  catch(Exception e){		  
		  e.printStackTrace();
		  return "Se presento un error en la generación del Anexo: "+e.getMessage();
	  }
	  finally
	  {
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
		  
		  //NullPointer
		  try
		  {
			  if(conn != null){
				  conn.close();
			  }
			  if(baos != null){
				  baos.close();
			  }
		  }catch(Exception e)
		  {
			  e.printStackTrace();
		  }
		  
	   }
	    //Generacion Exitosa
		return null;
		
	}
	
	  private static int showFileSize(byte[] filename) throws IOException {
		    PdfReader reader = new PdfReader(filename);		    
		    return reader.getFileLength();
	  }
	
	  /*private static void showFileSize(String filename) throws IOException {
		    PdfReader reader = new PdfReader(filename);
		    System.out.print("Size ");
		    System.out.print(filename);
		    System.out.print(": ");
		    System.out.println(reader.getFileLength());
		  }*/
	
	public static void main(String args[]) throws JRException, IOException, DocumentException
	{
		EntityManager em = EntityManagerImp.getManager();
		em.getTransaction().begin();
		ListaAnexosPdf anexo = new ListaAnexosPdf();
		
		Query query = em.createNativeQuery("SELECT SEQ_PGB_LST_ANEXOS_PDF.nextval FROM DUAL");
		BigDecimal valor = (BigDecimal)query.getSingleResult();
		anexo.setIdListaAnexosPdf(valor);
		em.persist(anexo);
		em.getTransaction().commit();
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
		
		/*ListaAnexosDao dao=new ListaAnexosDao();
		dao.generarAnexo();*/
		
		/*int a = 11;
		for (int i = 1; i < 15; i++) {
			System.out.println("" +
					"  <upload:FileUploadAnexosPdf id=\"fileUp"+i+"\" creationComplete=\"fileUp"+i+".init(uploadPrgs"+i+", cancelUp"+i+");\" />\n"+
					"	<mx:HBox width=\"319\"  height=\"23\" x=\"46\" y=\""+a+"\">						\n"+
					"		<mx:Label  text=\"Imagen "+i+"\">									\n"+
					"		</mx:Label>											\n"+
					"		<mx:ProgressBar id=\"uploadPrgs"+i+"\" label=\"\" mode=\"manual\"  height=\"21\"/>			\n"+
					"		<mx:Button id=\"startUpload\" click=\"init();fileUp"+i+".startUploadImgs();\"			\n"+
					"				   skin=\"@Embed(source='assets/icons/adjuntar.gif')\"				\n"+
					"				   toolTip=\"Cargar...\"				   			\n"+
					"				   />										\n"+
					"		<mx:Button id=\"cancelUp"+i+"\" click=\"fileUp"+i+".cancelUpload()\" enabled=\"false\" 			\n"+
					"				   skin=\"@Embed(source='assets/icons/cancelar.gif')\"				\n"+
					"				   toolTip=\"Cancelar\"				   				\n"+
					"				   width=\"20\" height=\"20\"/>							\n"+
					"	</mx:HBox>												\n"
					);
			a=a+20;
		}
		*/
		
	}
	
}
