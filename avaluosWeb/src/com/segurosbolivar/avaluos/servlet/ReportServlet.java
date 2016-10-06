package com.segurosbolivar.avaluos.servlet;

import net.sf.jasperreports.engine.JasperPrint;   

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import org.apache.log4j.BasicConfigurator;

import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.JasperRunManager;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.query.JRJpaQueryExecuterFactory;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.pdf.PdfCopy;
import com.lowagie.text.pdf.PdfReader;

import com.segurosbolivar.avaluos.entities.Avaluo;

import com.segurosbolivar.avaluos.util.Util;

//@WebServlet(value = "/ReportServlet", name = "ReportServlet")
/**
 * Servlet para imprimir el reporte de avaluo
 * Servlet implementation class ReportServlet
 */
public class ReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ServletConfig config;

	/** Mecanismo de log */
	//private static final Logger log = Logger.getLogger("com.segurosbolivar.avaluos.servlet.ReportServlet");
	//FileHandler fh;   

	/**
	 * Constructor por defecto
	 * @see HttpServlet#HttpServlet()
	 */
	public ReportServlet() {
		super();
		try {
			//		    fh = new FileHandler(Util.getProperty("log"), true);
			//		    log.addHandler(fh);
			//		    log.setLevel(Level.ALL);
			//		    SimpleFormatter formatter = new SimpleFormatter();
			//		    fh.setFormatter(formatter);
		}    
		catch (Exception e) {
			//log.log(Level.SEVERE, "[ERROR]", e);
			System.out.println("Error en sistema de log");		
			e.printStackTrace();		    
		}
		finally{
			//			fh.close();
		}
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		//System.out.println("--> Init");
		this.config=config;
	}

	/**
	 * verifica el llamado del servlet por el metodo GET y llama al metodo de generacion
	 * de reportes
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		generarReporte1(request,response);
	}

	/**
	 * verifica el llamado del servlet por el metodo POST y llama al metodo de generacion
	 * de reportes
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		generarReporte1(request,response);
	}

	
	/**
	 * Metodo que genera el reporte de avaluo para imprimirlo en la salida del 
	 * servlet. Recibe el id del avaluo a imprimir como parametro del request 
	 */
	private void generarReporte1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
    	EntityManager em =null; 
		
		try {
			String idAvaluo = null;
			try{idAvaluo = request.getParameter("idAvaluo");}catch(Exception ex){ex.printStackTrace();}
			String idAvaluos = null;
			try{idAvaluos = request.getParameter("idAvaluos");}catch(Exception ex){ex.printStackTrace();}
			Map parameterMap = new HashMap();
			int parameterCount = 0; 

			//Trae el objeto avaluo con el id Recibido
			
			List<Avaluo> listavaluos = new ArrayList<Avaluo>();

			EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
			/*EntityManager*/ em = emf.createEntityManager();				
			Query query = em.createQuery
			(
					"	SELECT avaluo			"+
					"	  FROM Avaluo avaluo							"
			);
			if(idAvaluo!=null)
			{	
				query = em.createQuery
				(
						"	SELECT avaluo			"+
						"	  FROM Avaluo avaluo						" +
						"      WHERE  avaluo.idAvaluo="+idAvaluo	    			
				);
			}
			else if(idAvaluos!=null)
			{	
				query = em.createQuery
				(
						"	SELECT avaluo			"+
						"	  FROM Avaluo avaluo						" +
						"      WHERE  avaluo.idAvaluo in ("+idAvaluos+") and avaluo.estadoAvaluo = 3"	    			
				);
			}	

			listavaluos = query.getResultList();
			
			//Asignamos el objeto recibido de JPA como fuente de datos del reporte
			JRBeanCollectionDataSource ds =new JRBeanCollectionDataSource(listavaluos);  
			// Recuperamos el fichero fuente   
			//JasperDesign jd=JRXmlLoader.load(Util.getProperty("ruta.cargue.masivo")+System.getProperty("file.separator")+Util.getProperty("reportes")+System.getProperty("file.separator")+"report4.jrxml");        
			JasperDesign jd=JRXmlLoader.load(Util.getProperty("ruta.cargue.masivo")+System.getProperty("file.separator")+Util.getProperty("reportes")+System.getProperty("file.separator")+"report5c11.jrxml");        
			// Compilamos el informe jrxml  
			JasperReport report = JasperCompileManager.compileReport(jd);  
			// Rellenamos el informe con la conexion creada y sus parametros establecidos
			parameterMap.put("SUBREPORT_DIR", 
					Util.getProperty("ruta.cargue.masivo")+System.getProperty("file.separator") +Util.getProperty("reportes")+System.getProperty("file.separator")
			);
			
			String aprobado = null;
			try{aprobado = request.getParameter("aprobado");}catch(Exception ex){ex.printStackTrace();}
			if(aprobado != null)
				parameterMap.put("IS_APROBADO",new Boolean(aprobado));
			
			//llenamos el reporte
			//JasperPrint print = JasperFillManager.fillReport(report,parameterMap, ds);  

			//Obtenemos la salida para generar el reporte
			ServletOutputStream servletOutputStream=null;
			try {
				servletOutputStream = response.getOutputStream();
			} catch (Exception e) {
				e.printStackTrace();
			}

			byte[] bytes=null;
			//JasperPrint jp=null;
			
			//Seteamos el parametro del executer para decirle a Jasper reports que es JPA y le enviamos el Entity Manager
			parameterMap.put(JRJpaQueryExecuterFactory.PARAMETER_JPA_ENTITY_MANAGER, em);

			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			List<byte[]> listPdfs= new ArrayList<byte[]>();
			for(Avaluo aval : listavaluos)
			{	
				List<Avaluo> listTmp=new ArrayList<Avaluo>();
				listTmp.add(aval);
			//generamos el PDF
			bytes=JasperRunManager.runReportToPdf(
					JasperCompileManager.compileReport(jd), parameterMap, 
						new JRBeanCollectionDataSource(/*listavaluos*/listTmp));

			try {
				response.setContentType("application/pdf");
				
				//Se une el reporte con el anexo fotografico en PDF
					/*if(listavaluos.size()==1)
					{*/
				query = em.createNativeQuery
				(
						"select a.Contenido from archivos a" +
						" where a.id_archivo = " +
								//"(select ID_DOC_ANEXOS from pgb_anexo_fotografico where id_avaluo="+idAvaluo+")"	    			
								"(select ID_DOC_ANEXOS from pgb_anexo_fotografico where id_avaluo="+aval.getIdAvaluo()+")"
				);

						
				byte[] anexobyte=null;
				try
				{
					anexobyte=(byte[])query.getSingleResult();
				}catch(Exception e)
				{
					e.printStackTrace();
					//log.log(Level.WARNING, "No tiene anexo Fotografico");				
				}

				PdfReader reader1 = new PdfReader(bytes);	
				PdfReader reader2 = null;
				try{
					reader2 = new PdfReader(anexobyte);
				}catch(IOException e)
				{
					e.printStackTrace();
				}
						catch(Exception e)
						{
							System.out.println("********************************** \n\n");
							System.out.println("El reporte no tiene anexos");
							System.out.println("********************************** \n\n");
							e.printStackTrace();
						}

				Document document = new Document();

						/*ByteArrayOutputStream*/ baos = new ByteArrayOutputStream(); 

				PdfCopy copy = new PdfCopy(document, baos);

				document.open();		

				copy.addPage(copy.getImportedPage(reader1, 1));

				if(reader2!= null){				
					copy.addPage(copy.getImportedPage(reader2, 1));
					copy.freeReader(reader2);
				}

				copy.freeReader(reader1);

				document.close();
					/*}
					else if(listavaluos.size()>1)
					{
				
						//baos=obtenerPdfs(idAvaluos);
					}*/
					} catch (Exception e) {
						e.printStackTrace();
					}
					//baos.toByteArray()
					listPdfs.add(baos.toByteArray());
					
				}
			    baos = doMerge(listPdfs);
				baos.writeTo(servletOutputStream); 				

				System.out.println("*-*-*-Escribi PDF");
				servletOutputStream.flush();
				servletOutputStream.close();
			/*
			} catch (Exception e) {
				e.printStackTrace();
			}*/

			//System.out.println("*-*-*-antes XLS");
			//OutputStream output = new FileOutputStream(new File("C:\\Users\\BOLIVAR\\Documents\\reportJPA.xls"));
			// coding For Excel: 

			//		JRXlsExporter exporterXLS = new JRXlsExporter(); 
			//		//exporterXLS.setParameter(JRXlsExporterParameter.JASPER_PRINT, jp); 
			//		exporterXLS.setParameter(JRXlsExporterParameter.JASPER_PRINT, print);
			//		exporterXLS.setParameter(JRXlsExporterParameter.OUTPUT_STREAM, output); 
			//		exporterXLS.setParameter(JRXlsExporterParameter.IS_ONE_PAGE_PER_SHEET, Boolean.TRUE); 
			//		exporterXLS.setParameter(JRXlsExporterParameter.IS_AUTO_DETECT_CELL_TYPE, Boolean.TRUE); 
			//		exporterXLS.setParameter(JRXlsExporterParameter.IS_WHITE_PAGE_BACKGROUND, Boolean.FALSE); 
			//		exporterXLS.setParameter(JRXlsExporterParameter.IS_REMOVE_EMPTY_SPACE_BETWEEN_ROWS, Boolean.TRUE); 
			//		exporterXLS.exportReport(); 
			//		System.out.println("*-*-*-despues XLS");

		} 
		catch (Exception e) 
		{
			// si algo falla muesta el stack trace en el browser
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
		finally{
			//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//	try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
		}

	}

	private ByteArrayOutputStream doMerge(List<byte[]> list/*, OutputStream outputStream*/)
	  throws DocumentException, IOException {
	Document document = new Document();
	ByteArrayOutputStream baos = new ByteArrayOutputStream();
	PdfCopy copy = new PdfCopy(document, baos);
	document.open();
	int n;
	for (byte[] in : list) {
	    PdfReader reader = new PdfReader(in);
	    for (int i = 1; i <= reader.getNumberOfPages(); i++) {
	    	//n = reader.getNumberOfPages();
	    	//n = reader.getNumberOfPages()/2;
	    	n = 1;
	    	
	    	/*
	        // loop over the pages in that document
	        for (int page = 0; page < n; page++ ) {
	            //copy.addPage(copy.getImportedPage(reader, ++page));
	        	//copy.addPage(copy.getImportedPage(reader, n*2));
	        	copy.addPage(copy.getImportedPage(reader, 1));
	        	copy.addPage(copy.getImportedPage(reader, 2));
	        }
	        */
	    	
        	copy.addPage(copy.getImportedPage(reader, i));
	        copy.freeReader(reader);
	        reader.close();
	    }
	}
	/*outputStream.flush();
	document.close();
	outputStream.close();*/
	document.close();
	return baos;
	}
	
	public ByteArrayOutputStream obtenerPdfs(byte[] reportes,String idAvaluos)
	{
		EntityManager em =null; 
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
		/*EntityManager*/ em = emf.createEntityManager();				
		Query query;
		query = em.createNativeQuery
		(
				"select a.Contenido from archivos a" +
				" where a.id_archivo = " +
				"(select ID_DOC_ANEXOS from pgb_anexo_fotografico where id_avaluo in (select id_avaluo from pgb_avaluos where a_estadoavaluo = 3 and id_avaluo in ("+idAvaluos+")))"	    			
		);
		
			
			List anexos = query.getResultList();
		
		/*
		byte[] anexobyte=null;
		try
		{
			anexobyte=(byte[])query.getSingleResult();
		}catch(Exception e)
		{
			e.printStackTrace();
			//log.log(Level.WARNING, "No tiene anexo Fotografico");				
		}

		PdfReader reader1 = new PdfReader(bytes);	
		PdfReader reader2 = null;
		try{
			reader2 = new PdfReader(anexobyte);
		}catch(IOException e)
		{
			e.printStackTrace();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		Document document = new Document();

		ByteArrayOutputStream baos = new ByteArrayOutputStream(); 

		PdfCopy copy = new PdfCopy(document, baos);

		document.open();		

		copy.addPage(copy.getImportedPage(reader1, 1));

		if(reader2!= null){				
			copy.addPage(copy.getImportedPage(reader2, 1));
			copy.freeReader(reader2);
		}

		copy.freeReader(reader1);

		document.close();
		*/
		
		return null;
	}
	/**
	 * Pruebas 
	 */
	public static void main(String[] args) throws IOException,ServletException {
		BasicConfigurator.configure();		//Log4J
		ReportServlet rs=new ReportServlet();
		rs.generarReporte1(null,null);
	}   
}