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

import com.segurosbolivar.avaluos.entities.Avaluo;

/**
 * Servlet Filter para convertir la url con parametros post del reporte 
 * en una url mas amigable al usuario no con el id sino con el consecutivo Banco.
 * ejemplo: 
 * /avaluosWeb/ReporteServlet/ReporteServlet?idAvaluo=1 en  
 * /avaluosWeb/ReporteAvaluo/ReporteAvaluo32
 * @deprecated este filter ya no se usa pues el nombre descriptivo del reporte
 * llama directamente a el fitro de Decodificacion
 * @see com.segurosbolivar.avaluos.filter.ReportURLDecoder
 */
public class ReportURLEncoder implements Filter {

	private FilterConfig filterConfig;
    /**
     * constructor Default
     */
    public ReportURLEncoder() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * Cambia la url de la peticion del usuario para hacerla visible en el navegador
	 * @deprecated: Filtro ReportURLDecoder se activa desde AVA3 ya incluyendo el nombre del pdf.
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
	    
		HttpServletRequest httpRequest=(HttpServletRequest)request;
	    HttpServletResponse httpResponse=(HttpServletResponse)response;

	    String Incoming_Url=httpRequest.getRequestURI();
		boolean encontrado=false;
		EntityManager em=null;
	    if (Incoming_Url.startsWith("/avaluosWeb/ReporteServlet/ReporteServlet"))
	    {
	      //String Replace_Part=Incoming_Url.substring(Incoming_Url.indexOf("/ReporteServlet?idAvaluo="),Incoming_Url.length());      
	      
			String idAvaluo = request.getParameter("idAvaluo");
	      
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");

			//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
			/*EntityManager*/ em = emf.createEntityManager();				
			Query query = em.createQuery
			(
						"	SELECT avaluo			"+
						"	  FROM Avaluo avaluo						" +
						"      WHERE  avaluo.idAvaluo="+idAvaluo	    			
			);
	      
			Avaluo av =(Avaluo)query.getSingleResult();// new Avaluo();
			if(av!=null)
			{	
				encontrado=true;
			}	
		  
		 if(encontrado)
		 {			
		  String nombre="/avaluosWeb/ReporteAvaluo/ReporteAvaluo";			
		  nombre=nombre+av.getConsecutivoBanco();
		  
		  String New_Url=nombre;
		  
	      // cast the incoming ServletResponse to HttpServletResponse and then HttpServletResponse#sendRedirect() to redirect the response to the new URL (client side redirect, reflected in browser address bar).
	      httpResponse.sendRedirect(New_Url);
	       
		 }
	    }
	    if(!encontrado)
		{
			 String New_Url=Incoming_Url.replace("/ReporteServlet/ReporteServlet","/ReportServlet");
			 RequestDispatcher request_Dispatcher=request.getRequestDispatcher(New_Url);
		     request_Dispatcher.forward(request,response);
		}
		// pass the request along the filter chain
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	//	try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterConfig=filterConfig;
	}

}
