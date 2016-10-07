<%@ page language="java" import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
/**
* Pagina jsp que reemplaza la pagina MenuPrincipal.html generada por flex.
* aqui se reciben los parametros del usuario y las propiedades de las rutas para el
* el sandbox de flex y son enviadas a la pelicula flash.
* se medifico el archivo AC_OETags.js para el cache de las peliculas Flash
* lee los archivos flexResources.properties y config.properties
* llama asincronamentre a logout.jsp para finalizar la session
* FIXME: Invalida la sesion jsp pero el acelerador de LDAP posee su propia session que no se invalida
* con este comando 
*/

ResourceBundle resource = ResourceBundle.getBundle("flexResources");
/// commonVariable.properties file will be in WEB-INF/classess  folder

String bannerPath=resource.getString("banner.path");
String backPath=resource.getString("background.path");
String copyright=resource.getString("copyright");

%> 

<!-- saved from url=(0014)about:internet -->

<%

	String parCedula = (String) request.getParameter("cedula");

	if(parCedula==null)
	{
		//session.invalidate(); 
		session=null;
	}
	
	session = request.getSession(false);
	if(session==null)
	{
	 //pageContext.forward("login.html");
	 response.sendError(401);
	}
	String sessId = session.getId();
%>

<%
ResourceBundle resource1 = ResourceBundle.getBundle("config");
/// commonVariable.properties file will be in WEB-INF/classess  folder

String urlArchivo=resource1.getString("url.archivo");
%>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">	
    <!-- 
    Smart developers always View Source. 
    
    This application was built using Adobe Flex, an open source framework
    for building rich Internet applications that get delivered via the
    Flash Player or to desktops via Adobe AIR. 
    
    Learn more about Flex at http://flex.org 
    // -->
    <head>
        <title></title>         
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<!-- Include CSS to eliminate any default margins/padding and set the height of the AC_FL_RunContent()html element and 
		     the body element to 100%, because Firefox, or any Gecko based browser, interprets percentage as 
			 the percentage of the height of its parent container, which has to be set explicitly.  Initially, 
			 don't display flashContent div so it won't show if JavaScript disabled.
		-->
        <!--<style type="text/css" media="screen"> 
			html, body	{ height:100%; }
			body { margin:0; padding:0; overflow:auto; text-align:center; 
			       background-color: #000000; }   
			#flashContent { display:none; }
        </style>--> 
        <style type="text/css" media="screen"> 
			html, body	{ height:100%; }
			body { margin:0; padding:0; text-align:center; 
			       background-color: #000000; }   
			/*#flashContent { display:none; }*/
        </style>
		 
		<!-- Enable Browser History by replacing useBrowserHistory tokens with two hyphens -->
        <!-- BEGIN Browser History required section -->
        <link rel="stylesheet" type="text/css" href="history/history.css" />

<script>
  
	/**
	 * la definicion de este bloque 
	 * es para tomar mediciones con google
	 */
	 // remover el comentario para los ambientes de test y produccion 
	 
  	 /*** (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  		
  		
  		// Variables para Produccion 
	  	ga('create', 'UA-83128424-1', 'auto');
  		// Variable Para Test
  	  	// ga('create', 'UA-83132808-1', 'auto');
  		
	  	ga('send', 'pageview');
	  */ 
	  
</script>

<script type="text/javascript" src="history/history.js"></script>
        <!-- END Browser History required section -->  
		    
        <script type="text/javascript" src="swfobject.js"></script>
        <script type="text/javascript">

        function unload()
        {
        sessionInvalidate();
        /*this.window.close();*/
        }
        
        function sessionInvalidate() 
        { 
        //var url = 'servlet/misc.sessInv'; //sessInv is the servlet class
        var url = 'logout.jsp'; //sessInv is the servlet class

        if (window.ActiveXObject) 
        { 
        httpRequest = new ActiveXObject("Microsoft.XMLHTTP"); 
        } 
        else if (window.XMLHttpRequest) 
        { 
        httpRequest = new XMLHttpRequest(); 
        } 

        httpRequest.open("GET", url, true); 
        httpRequest.onreadystatechange = function() {processRequest(); } ; 
        httpRequest.send(null); 

        } 

        function processRequest() 
        { 
        if (httpRequest.readyState == 4) 
        { 
        if(httpRequest.status == 200) 
        { 

        } 
        else 
        { 
        //alert("Error loading page\n"+ httpRequest.status +":"+ httpRequest.statusText); 
        } 
        } 
        }         
        </script>
        <script type="text/javascript">
            <!-- For version detection, set to min. required Flash Player version, or 0 (or 0.0.0), for no version detection. --> 
            var swfVersionStr = "10.0.0";
            <!-- To use express install, set to playerProductInstall.swf, otherwise the empty string. -->
            var xiSwfUrlStr = "playerProductInstall.swf";
            var flashvars = {};
            flashvars.cedula = "<%= parCedula %>";
            flashvars.banner = "<%= bannerPath %>";
            flashvars.background = "<%= backPath %>";            
            flashvars.copyright= "<%= copyright %>";
            flashvars.urlArchivo= "<%= urlArchivo %>";
            flashvars.jSessionId= "<%= sessId %>";
            var params = {};            
            params.quality = "high";
            params.bgcolor = "#000000";
            params.allowscriptaccess = "sameDomain";
            params.allowfullscreen = "true";
            var attributes = {};
            attributes.id = "MenuPrincipal";
            attributes.name = "MenuPrincipal";
            attributes.align = "middle";
            swfobject.embedSWF(
                "MenuPrincipal.swf", "flashContent", 
                "100%", "100%", 
                swfVersionStr, xiSwfUrlStr, 
                flashvars, params, attributes);
			<!-- JavaScript enabled so display the flashContent div in case it is not replaced with a swf object. -->
			swfobject.createCSS("#flashContent", "display:block;text-align:left;");
        </script>
       <SCRIPT LANGUAGE="JavaScript">
    	function salir() {
		/*alert('salir');*/
        window.close();
        window.location.href="https://www.bolnet.com.co/";
		}
	  </SCRIPT>
	  	  
	  <script type="text/javascript">
		function Ajax(){
		var xmlHttp;
			try{	
				xmlHttp=new XMLHttpRequest();// Firefox, Opera 8.0+, Safari
			}
			catch (e){
				try{
					xmlHttp=new ActiveXObject("Msxml2.XMLHTTP"); // Internet Explorer
				}
				catch (e){
				    try{
						xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
					}
					catch (e){
						alert("No AJAX!?");
						return false;
					}
				}
			}
		
		xmlHttp.onreadystatechange=function(){
			if(xmlHttp.readyState==4){
				//document.getElementById('ReloadThis').innerHTML=xmlHttp.responseText;
				//setTimeout('Ajax()',10000);
			}
		} 
		//alert('cargo pagina asincrona javascript');		
		xmlHttp.open("GET","poll.html;jsessionid=<%=sessId%>",true);
		xmlHttp.send(null);
		}
		
		/*window.onload=function(){
			setTimeout('Ajax()',10000);
		}*/
		function setTimeOut1()
		{
			try{
				setTimeout('Ajax()',40000);
			}
			catch (e){
				alert(e);
				return false;
			}
			
			setTimeout('Ajax()',40000);
		}
		function clearTimeOut1()
		{
			try{
				clearTimeout('Ajax()');
			}
			catch (e){
				alert(e);
				return false;
			}		
		clearTimeout('Ajax()');
		}		
		</script>

    </head>
    <body onbeforeUnload="unload()">
        <!-- SWFObject's dynamic embed method replaces this alternative HTML content with Flash content when enough 
			 JavaScript and Flash plug-in support is available. The div is initially hidden so that it doesn't show
			 when JavaScript is disabled.
		-->
        <div id="flashContent">
        	<p>
	        	To view this page ensure that Adobe Flash Player version 
				10.0.0 or greater is installed. 
			</p>
			<script type="text/javascript"> 
				var pageHost = ((document.location.protocol == "https:") ? "https://" :	"http://"); 
				document.write("<a href='http://www.adobe.com/go/getflashplayer'><img src='" 
								+ pageHost + "www.adobe.com/images/shared/download_buttons/get_flash_player.gif' alt='Get Adobe Flash player' /></a>" ); 
			</script> 
        </div>
	   	
       	<noscript>
            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="100%" height="100%" id="MenuPrincipal">
                <param name="movie" value="MenuPrincipal.swf" />
                <param name="quality" value="high" />
                <param name="bgcolor" value="#000000" />
                <param name="allowScriptAccess" value="sameDomain" />
                <param name="allowFullScreen" value="true" />
                <!--[if !IE]>-->
                <object type="application/x-shockwave-flash" data="MenuPrincipal.swf" width="100%" height="100%">
                    <param name="quality" value="high" />
                    <param name="bgcolor" value="#000000" />
                    <param name="allowScriptAccess" value="sameDomain" />
                    <param name="allowFullScreen" value="true" />
                <!--<![endif]-->
                <!--[if gte IE 6]>-->
                	<p> 
                		Either scripts and active content are not permitted to run or Adobe Flash Player version
                		10.0.0 or greater is not installed.
                	</p>
                <!--<![endif]-->
                    <a href="http://www.adobe.com/go/getflashplayer">
                        <img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash Player" />
                    </a>
                <!--[if !IE]>-->
                </object>
                <!--<![endif]-->
            </object>
	    </noscript>		
   </body>
</html>
