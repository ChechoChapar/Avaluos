package com.segurosbolivar.avaluos.filter;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
import com.segurosbolivar.avaluos.entities.Avaluo;

/**
 * Servlet Filter para decodificar una url de reporte y llamar al  
 * convirtiendo el consecutivo al id.
 * ejemplo: 
 * /avaluosWeb/ReporteAvaluo/ReporteAvaluo32 en  
 * /avaluosWeb/ReporteServlet/ReporteServlet?idAvaluo=1
 */
public class ReportURLDecoder implements Filter {

	private FilterConfig filterConfig;
    /**
     * constructor Default. 
     */
    public ReportURLDecoder() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * Transcribe la peticion al reportServlet sin hacerla visible en el navegador
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public synchronized void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
	    
		HttpServletRequest httpRequest=(HttpServletRequest)request;
	    HttpServletResponse httpResponse=(HttpServletResponse)response;

	    String Incoming_Url=httpRequest.getRequestURI();
	    boolean encontrado=false;
	    EntityManager em=null;
	    if (Incoming_Url.startsWith("/avaluosWeb/ReporteAvaluo/"))	
	    {
	      String Replace_Part=Incoming_Url.substring(Incoming_Url.indexOf("/ReporteAvaluo/"),Incoming_Url.length());
	      //String consecutivoBanco = Replace_Part.substring(Incoming_Url.indexOf("/ReporteAvaluo/ReporteAvaluo")+17,Replace_Part.length());
	      String consecutivoBanco = Replace_Part.substring(Incoming_Url.indexOf("/ReporteAvaluo/")+4,Replace_Part.length());
	      
	      if(consecutivoBanco.endsWith("."+ConstantesAvaluos.FORMATO_PDF))
	      {
	    	  consecutivoBanco=consecutivoBanco.substring(0,consecutivoBanco.length()-4);
	      }	  
	      
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
			//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
			/*EntityManager*/ em = emf.createEntityManager();				
			Query query = em.createQuery
			(
						"	SELECT avaluo			"+
						"	  FROM Avaluo avaluo						" +
						"      WHERE  avaluo.consecutivoBanco='"+consecutivoBanco+"'"	    			
			);
	      
			Avaluo av =(Avaluo)query.getSingleResult();// new Avaluo();
			if(av!=null)
			{	
				encontrado=true;
			}	
	      
		 if(encontrado)
		 {			
	      
	      String New_Url="/ReportServlet?idAvaluo="+av.getIdAvaluo();                                                  	      
	      		  
	      // Use either ServletRequest#getRequestDispatcher() and then RequestDispatcher#forward() to forward the request/response to the new URL (server-side redirect, not reflected in browser address bar)
	      RequestDispatcher request_Dispatcher=request.getRequestDispatcher(New_Url);
	      request_Dispatcher.forward(request,response);
	      
		 } 
		}	    
		// pass the request along the filter chain
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	//	try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
	    
	    //NullPointer
	    try{chain.doFilter(request, response);}catch(Exception e){e.printStackTrace();}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		this.filterConfig=filterConfig;
	}

}
