package com.segurosbolivar.avaluos.servlet;

import net.sf.jasperreports.engine.JasperPrint;   

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
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

import org.apache.log4j.BasicConfigurator;

import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.JasperRunManager;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.design.JRDesignQuery;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.query.JRJpaQueryExecuterFactory;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

import com.lowagie.text.Document;
import com.lowagie.text.pdf.PdfCopy;
import com.lowagie.text.pdf.PdfReader;

import com.segurosbolivar.avaluos.entities.Avaluo;

import com.segurosbolivar.avaluos.util.Util;
import com.segurosbolivar.avaluos.util.pojoReportes;

//@WebServlet(value = "/ReportServlet", name = "ReportServlet")
/**
 * Servlet para imprimir el reporte de estadísticas de avalúos
 * Servlet implementation class ReportServlet
 */
public class ReportesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ServletConfig config;

	/** Mecanismo de log */
	//private static final Logger log = Logger.getLogger("com.segurosbolivar.avaluos.servlet.ReportServlet");
	//FileHandler fh;   

	/**
	 * Constructor por defecto
	 * @see HttpServlet#HttpServlet()
	 */
	public ReportesServlet() {
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
		generaReportes(request,response);
	}

	/**
	 * verifica el llamado del servlet por el metodo POST y llama al metodo de generacion
	 * de reportes
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		generaReportes(request,response);
	}
	
	/**
	 * Metodo que genera el reporte de avaluo para imprimirlo en la salida del 
	 * servlet. Recibe el id del avaluo a imprimir como parametro del request 
	 */
	private void generaReportes(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
    	EntityManager em =null;
    	
		try {
		
		String nomReporte = null;
		try{nomReporte = request.getParameter("nomReporte");}catch(Exception ex){ex.printStackTrace();}	
			
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
		/*EntityManager*/ em = emf.createEntityManager();
			
		HashMap parameterMap = new HashMap();
		
		//Asignamos el objeto recibido de JPA como fuente de datos del reporte
		
		JasperDesign jd=JRXmlLoader.load(Util.getProperty("ruta.cargue.masivo")+System.getProperty("file.separator")+Util.getProperty("reportes")+System.getProperty("file.separator")+nomReporte+".jrxml");
		
		String query = jd.getQuery().getText();
		// Compilamos el informe jrxml  
		//JasperReport report = JasperCompileManager.compileReport(jd);  
		//JasperReport report = (JasperReport)JRLoader.loadObject(Util.getProperty("ruta.cargue.masivo")+System.getProperty("file.separator")+Util.getProperty("reportes")+System.getProperty("file.separator")+"avaluosXCalificacionPerito.jasper");
		JasperReport report = (JasperReport)JRLoader.loadObject(Util.getProperty("ruta.cargue.masivo")+System.getProperty("file.separator")+Util.getProperty("reportes")+System.getProperty("file.separator")+nomReporte+".jasper");
		// Rellenamos el informe con la conexion creada y sus parametros establecidos
		parameterMap.put("SUBREPORT_DIR", 
				Util.getProperty("ruta.cargue.masivo")+System.getProperty("file.separator") +Util.getProperty("reportes")+System.getProperty("file.separator")
		);
		parameterMap.put(JRJpaQueryExecuterFactory.PARAMETER_JPA_ENTITY_MANAGER, em);

		String condicion = "";
		try{condicion = request.getParameter("condicion");}catch(Exception ex){ex.printStackTrace();}		
		parameterMap.put("P_CONDICION", condicion);

		String valor = null;
		try{valor = request.getParameter("valor");}catch(Exception ex){ex.printStackTrace();}		
		if(valor!=null)
			parameterMap.put("P_VALOR", valor);
		
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
		
//		//JRDesignQuery des = new JRDesignQuery();
//		//des.setText(query.replace("$P!{P_CONDICION}", condicion));	
//		//jd.setQuery(des);
//		
//		List<pojoReportes> listaRep=new ArrayList();
//		Query qr = em.createQuery(query.replace("$P!{P_CONDICION}", condicion));
//		List resultList = qr.getResultList();
//		//Conversion
//		//listaRep=(List<pojoReportes>)resultList;
//		
//			for(int i=0; i< resultList.size(); i++)
//			{
//				Object[] obj = (Object[])resultList.get(i);
//				pojoReportes rep = new pojoReportes();
//				rep.setCOLUMN_1(obj[0]);
//				rep.setCOLUMN_2(obj[1]);
//				rep.setCOLUMN_3(obj[2]);
//				listaRep.add(rep); 
//			}
//		
		/*bytes=JasperRunManager.runReportToPdf(
				JasperCompileManager.compileReport(jd), parameterMap, 
				new JRBeanCollectionDataSource(listavaluos));*/
		//bytes=JasperRunManager.runReportToPdf(report, parameterMap);
		bytes=JasperRunManager.runReportToPdf(JasperCompileManager.compileReport(jd), parameterMap);
		/*bytes=JasperRunManager.runReportToPdf(
				JasperCompileManager.compileReport(jd), parameterMap, 
				new JRBeanCollectionDataSource((em.createQuery(query.replace("$P!{P_CONDICION}", condicion))).getResultList()));*/
		//bytes=JasperRunManager.runReportToPdf(
		//		JasperCompileManager.compileReport(jd), parameterMap,new JRBeanCollectionDataSource(listaRep));
		
		try {
			response.setContentType("application/pdf");
			
			//Nombre al reporte
			//Se elimina, fue solucionado por el filtro ReportURLDecoder.java
	
			//ByteArrayOutputStream baos = new ByteArrayOutputStream(); 	
			//baos.writeTo(servletOutputStream);				
			servletOutputStream.write(bytes);

			System.out.println("*-*-*-Escribi PDF");
			servletOutputStream.flush();
			servletOutputStream.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
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
			e.printStackTrace();
		}finally{
			//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//	try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
		}
	}

	/**
	 * Pruebas 
	 */
	public static void main(String[] args) throws IOException,ServletException {
		BasicConfigurator.configure();		//Log4J
		ReportesServlet rs=new ReportesServlet();
		rs.generaReportes(null,null);
	}   
}