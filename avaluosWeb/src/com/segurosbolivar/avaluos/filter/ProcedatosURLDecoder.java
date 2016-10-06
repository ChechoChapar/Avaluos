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

public class ProcedatosURLDecoder implements Filter {


	private FilterConfig filterConfig;
    /**
     * constructor Default. 
     */
    public ProcedatosURLDecoder() {
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
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
	    
		HttpServletRequest httpRequest=(HttpServletRequest)request;
	    HttpServletResponse httpResponse=(HttpServletResponse)response;

	    String Incoming_Url=httpRequest.getRequestURI();
	    boolean encontrado=false;		
	    if (Incoming_Url.startsWith("/avaluosWeb/procedatos/"))	
	    {
	      String Replace_Part=Incoming_Url.substring(Incoming_Url.indexOf("/procedatos/"),Incoming_Url.length());
	      //String consecutivoBanco = Replace_Part.substring(Incoming_Url.indexOf("/ReporteAvaluo/ReporteAvaluo")+17,Replace_Part.length());
	      //String urlArchivo = Replace_Part.substring(Incoming_Url.indexOf("/procedatos/")+1,Replace_Part.length());
	      String urlArchivo = Replace_Part.substring(Incoming_Url.indexOf("/avaluosWeb/")+1,Replace_Part.length());
	      
	      /*if(urlArchivo.endsWith("."+ConstantesAvaluos.FORMATO_ZIP))
	      {
	    	  urlArchivo=urlArchivo.substring(0,urlArchivo.length()-4);
	      }*/	  
      
	      //String New_Url="/ReportServlet?idAvaluo="+av.getIdAvaluo();                                                  	      
	      String New_Url="/ProcedatosServlet?URLarchivo="+urlArchivo;
	      		  
	      // Use either ServletRequest#getRequestDispatcher() and then RequestDispatcher#forward() to forward the request/response to the new URL (server-side redirect, not reflected in browser address bar)
	      RequestDispatcher request_Dispatcher=request.getRequestDispatcher(New_Url);
	      request_Dispatcher.forward(request,response);
	       
		}	    
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		this.filterConfig=filterConfig;
	}

	
}
