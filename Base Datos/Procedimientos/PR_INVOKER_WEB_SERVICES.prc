CREATE OR REPLACE PROCEDURE pr_invoker_web_services(v_url_wsdl             in varchar2,
                                  v_mensaje_soap_request in varchar2,
                                  v_SOAPAction           in varchar2,
                                  v_t_errores            OUT VARCHAR2) IS

  soap_request varchar2(30000);
  soap_respond varchar2(30000);
  http_req     utl_http.req;
  http_resp    utl_http.resp;

BEGIN
  if v_mensaje_soap_request is not null then
  
    soap_request := v_mensaje_soap_request;
  
    if v_url_wsdl is not null then
    
      http_req := utl_http.begin_request(v_url_wsdl, 'POST', 'HTTP/1.1');

      utl_http.set_header(http_req, 'User-Agent', 'Mozilla/4.0');
      utl_http.set_header(http_req, 'Content-Type', 'text/xml'); -- since we are dealing with plain text in XML documents 
    
      -- Calcular la longitud si el método http es POST
      utl_http.set_header(http_req, 'Content-Length', length(soap_request));
      utl_http.set_header(http_req, 'SOAPAction', v_SOAPAction); -- required to specify this is a SOAP communication 
      utl_http.write_text(http_req, soap_request);
      http_resp := utl_http.get_response(http_req);
      utl_http.read_text(http_resp, soap_respond);
      utl_http.end_response(http_resp);
    
    else
      v_t_errores   := 'La URL del WSDL  no puede venir nulo';
    end if;
  else
    v_t_errores        := 'El mensaje SOAP no puede venir nulo';
  end if;

EXCEPTION
  WHEN Utl_Http.Request_Failed THEN
    Dbms_Output.Put_Line('Request_Failed: ' ||
                         Utl_Http.Get_Detailed_Sqlerrm);
  WHEN Utl_Http.Http_Server_Error THEN
    Dbms_Output.Put_Line('Http_Server_Error: ' ||
                         Utl_Http.Get_Detailed_Sqlerrm);
  WHEN Utl_Http.Http_Client_Error THEN
    Dbms_Output.Put_Line('Http_Client_Error: ' ||
                         Utl_Http.Get_Detailed_Sqlerrm);
  WHEN OTHERS THEN
    Dbms_Output.Put_Line(SQLERRM);
END pr_invoker_web_services;
/


