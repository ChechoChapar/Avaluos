SET DEFINE OFF;

create or replace package body avaluos.PKG_GENERAL_AVALUOS is
 
  procedure sp_carga_sabado_domingo(panio in number,pusuario in varchar2 default user,pmensaje out varchar2) is
  --El día domingo es el día 1 de la semana; el día sábado es el día 7
  
  var_anio number(4);
  var_fecha date;
  var_dia varchar2(15);
  begin
     if panio is null then
        var_anio := to_char(sysdate,'YYYY');
     else
        var_anio := panio; 
     end if;
     
     var_fecha := to_date('01/01/'||var_anio,'dd/mm/yyyy');
     
     for i in 1..366 loop
      begin   
         
         var_dia := upper(trim(to_char(var_fecha,'DAY','nls_date_language = SPANISH')));
         dbms_output.put_line('Fecha a evaluar '||var_fecha||' dia '||var_dia);
               
         if var_dia = 'SÁBADO' or var_dia = 'DOMINGO' then
            insert into pgb_calendarios(id_calendario,anio,fecha_no_habil,usuario_creacion,fecha_creacion,usuario_transaccion,fecha_transaccion)
                                 values(seq_pgb_calendarios.nextval,to_char(var_fecha,'rrrr'),var_fecha,pusuario,sysdate,pusuario,sysdate);
             
         end if;
         var_fecha := var_fecha + 1;    
       exception when others then
         dbms_output.put_line('Error Fecha'|| var_fecha||' '||sqlcode);
          --Primary key violated 
          if sqlcode = -1 then
             var_fecha := var_fecha + 1;               
          else
            pmensaje := sqlcode||' - '||sqlerrm;
          end if;  
       end;  
     end loop;  
     commit;
  end;
  
  
 PROCEDURE pr_invocar_web_services
 (p_codDep in number,
  p_nivel in varchar2,
  p_Ubicacion in varchar2,
  p_resp out XMLTYPE,
  p_error out varchar2
  ) is
  
    soap_request   varchar2(30000);
    v_url_wsdl_aux varchar2(30000);
    v_pathWSDL varchar2(30000) := 'http://terceros/ServiciosTercerosWS.wsdl';
    v_error varchar2(3000);
    v_ip_WS varchar2(20);
  
  begin
  
    v_url_wsdl_aux := pkg_ws_general.FNC_TRAER_PARAMETROS_WS('PathWebLogicTercerosWS')||'ServiciosGeneralesTercerosWS/ServiciosTercerosWSPort?WSDL';
    v_ip_WS := pkg_ws_general.FNC_TRAER_PARAMETROS_WS('IPWebLogicTercerosWS');
  
      soap_request := 
      '<env:Envelope xmlns:env="http://schemas.xmlsoap.org/soap/envelope/">
       <env:Header />
       <env:Body>
        <target:fncTraerDivPoliticasDepto xmlns:target="http://terceros/ServiciosTercerosWS.wsdl">
          <pCodazziDepto>'||p_CodDep||'</pCodazziDepto>
          <pNivel>'||p_nivel||'</pNivel>
          <pUbicacion>'||p_Ubicacion||'</pUbicacion>
          <pLogin>92515768</pLogin>
          <pPassword>92515768</pPassword>
          <pUsuarioServicio>AVALUOS</pUsuarioServicio>
          <pIpConsume>'||v_ip_WS||'</pIpConsume>
        </target:fncTraerDivPoliticasDepto>
       </env:Body>
      </env:Envelope>';
    
      p_resp := pr_invoker_web_services
              (v_url_wsdl             => v_url_wsdl_aux,
               v_mensaje_soap_request => soap_request,
               v_SOAPAction           => v_pathWSDL ||'/fncTraerDivPoliticasDepto',
               v_t_errores            => v_error      
               );
  
  END pr_invocar_web_services;
  
  FUNCTION pr_invoker_web_services(v_url_wsdl             in varchar2,
                                   v_mensaje_soap_request in varchar2,
                                   v_SOAPAction           in varchar2,
                                   v_t_errores            OUT VARCHAR2
                                   ) 
                                   RETURN XMLTYPE IS

  soap_request varchar2(30000);
  soap_respond varchar2(30000);
  http_req     utl_http.req;
  http_resp    utl_http.resp;
  resp XMLTYPE;
  i number(10);
  var_cadena varchar2(1000);
  var_resultado_codazzi varchar2(100);
  var_resultado_tronador varchar2(100);  
  var_codazzi number(10);
  var_tronador number(10);  

  BEGIN
    begin
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
        resp:= XMLType.createXML(soap_respond);
                              
     /*  dbms_output.put_line('Resp '||resp.getStringVal());
       
        SELECT  t.getStringVal() AS text 
          INTO VAR_RESULTADO_CODAZZI
          FROM  TABLE
          ( 
            XMLSequence( 
              XMLTYPE
              (replace
                (replace
                 (replace
                  ( resp.getStringVal()
                   ,'&gt;','>'
                  )
                  ,'&lt;','<'
                 )
                 ,'<?xml version="1.0" encoding="UTF-8"?>',''
                 )
              ).extract( '//DIV_POLITICA/CODAZZI')      
            ) 
          ) t  ;
           
        SELECT  t.getStringVal() AS text 
          INTO VAR_RESULTADO_TRONADOR
          FROM  TABLE
          ( 
            XMLSequence( 
              XMLTYPE
              (replace
                (replace
                 (replace
                  ( resp.getStringVal()
                   ,'&gt;','>'
                  )
                  ,'&lt;','<'
                 )
                 ,'<?xml version="1.0" encoding="UTF-8"?>',''
                 )
              ).extract( '//DIV_POLITICA/TRONADOR')      
            ) 
          ) t  ;
          
          
          dbms_output.put_line('Resultado '||var_resultado_codazzi||' - '||var_resultado_tronador); 
          
          select substr(var_resultado_codazzi,instr(var_resultado_codazzi,'>',1)+1,instr(var_resultado_codazzi,'<',2)-(instr(var_resultado_codazzi,'>',1)+1)) 
            into var_codazzi
            from dual;
          
          select substr(var_resultado_tronador,instr(var_resultado_tronador,'>',1)+1,instr(var_resultado_tronador,'<',2)-(instr(var_resultado_tronador,'>',1)+1)) 
            into var_tronador
            from dual;

          dbms_output.put_line('Codazzi '||var_codazzi ||' Tronador '||var_tronador);          
          */          
      else
        v_t_errores := 'La URL del WSDL  no puede venir nulo';
      end if;
    else
        v_t_errores := 'El mensaje SOAP no puede venir nulo';
    end if;
  EXCEPTION
  WHEN Utl_Http.Request_Failed THEN
    Dbms_Output.Put_Line('Request_Failed: ' ||Utl_Http.Get_Detailed_Sqlerrm);
  WHEN Utl_Http.Http_Server_Error THEN
    Dbms_Output.Put_Line('Http_Server_Error: ' ||Utl_Http.Get_Detailed_Sqlerrm);
  WHEN Utl_Http.Http_Client_Error THEN
    Dbms_Output.Put_Line('Http_Client_Error: ' ||Utl_Http.Get_Detailed_Sqlerrm);
  WHEN OTHERS THEN
    Dbms_Output.Put_Line(SQLERRM);
  end;
     return(resp);  
  END pr_invoker_web_services;
  
  procedure sp_sincroniza_dane(pusuario in varchar2 default user,pmensaje out varchar2) is
  --Cambio 26/01/2012 se reemplaza la cadena '<?xml version="1.0" encoding="UTF-8"?>'  por '<?xml version="1.0" encoding="ISO-8859-1"?>'
  cursor c_departamentos is
  select *
    from pgb_departamentos pd;
  
  cursor c_ciudades(pcodDep number) is
  select *
    from pgb_ciudades
   where id_departamento = pcodDep; 
  
  p_resp XMLTYPE;
  p_error varchar2(3000);
  var_resultado_codazzi varchar2(100);
  var_resultado_tronador varchar2(100);  
  var_codazzi number(10);
  var_tronador number(10);  
  var_resultado_codazzi_mun varchar2(100);
  var_codazzi_mun number(10);

    
  begin
    for d in c_departamentos loop
    BEGIN   
      var_codazzi := null;
      var_tronador := null;
       --Llamar a servicio Web para departamentos 
      pr_invocar_web_services
      (169,
       'DEP',
       d.departamento,
       p_resp,
       p_error
      );  
      
      dbms_output.put_line('Respuesta sincroniza '||p_resp.getStringVal());
      
         SELECT  t.getStringVal() AS text 
          INTO VAR_RESULTADO_CODAZZI
          FROM  TABLE
          ( 
            XMLSequence( 
              XMLTYPE
              (replace
                (replace
                 (replace
                  ( p_resp.getStringVal()
                   ,'&gt;','>'
                  )
                  ,'&lt;','<'
                 )
                 ,'<?xml version="1.0" encoding="ISO-8859-1"?>',''
                 )
              ).extract( '//DIV_POLITICA[1]/CODAZZI')      
            ) 
          ) t  ;
           
        SELECT  t.getStringVal() AS text 
          INTO VAR_RESULTADO_TRONADOR
          FROM  TABLE
          ( 
            XMLSequence( 
              XMLTYPE
              (replace
                (replace
                 (replace
                  ( p_resp.getStringVal()
                   ,'&gt;','>'
                  )
                  ,'&lt;','<'
                 )
                 --,'<?xml version="1.0" encoding="UTF-8"?>',''
                 ,'<?xml version="1.0" encoding="ISO-8859-1"?>',''
                 )
              ).extract( '//DIV_POLITICA[1]/TRONADOR')      
            ) 
          ) t  ;
          
          
         -- dbms_output.put_line('Resultado '||var_resultado_codazzi||' - '||var_resultado_tronador); 
          
          select substr(var_resultado_codazzi,instr(var_resultado_codazzi,'>',1)+1,instr(var_resultado_codazzi,'<',2)-(instr(var_resultado_codazzi,'>',1)+1)) 
            into var_codazzi
            from dual;
          
          select substr(var_resultado_tronador,instr(var_resultado_tronador,'>',1)+1,instr(var_resultado_tronador,'<',2)-(instr(var_resultado_tronador,'>',1)+1)) 
            into var_tronador
            from dual;
       
         -- dbms_output.put_line('Codigos '||var_codazzi||' - '||var_tronador);
      
      if var_codazzi is not null then
       update pgb_departamentos p
          set p.cod_dane = var_codazzi,
              p.cod_divpol = var_tronador
        where p.id_departamento = d.id_departamento;      

        COMMIT;
        --Sincroniza ciudades del departamento
        for ciu in c_ciudades(d.id_departamento) loop
        BEGIN
            dbms_output.put_line('Entra a municipios '||var_codazzi||' Ciudad '||ciu.ciudad ||' Asoban '||d.cod_Asobancaria);
            var_resultado_codazzi_mun := null;
            var_codazzi_mun := null;
            --Llama a WEBService para municipios 
            pr_invocar_web_services
            (var_codazzi,
             'MUN',
             ciu.ciudad,
             p_resp,
             p_error
            ); 
           
        SELECT  t.getStringVal() AS text 
          INTO VAR_RESULTADO_CODAZZI_MUN
          FROM  TABLE
          ( 
            XMLSequence( 
              XMLTYPE
              (replace
                (replace
                 (replace
                  ( p_resp.getStringVal()
                   ,'&gt;','>'
                  )
                  ,'&lt;','<'
                 )
                 ,'<?xml version="1.0" encoding="ISO-8859-1"?>',''
                 )
              ).extract( '//DIV_POLITICA[1]/CODAZZI')      
            ) 
          ) t  ;
           
           select substr(var_resultado_codazzi_mun,instr(var_resultado_codazzi_mun,'>',1)+1,instr(var_resultado_codazzi_mun,'<',2)-(instr(var_resultado_codazzi_mun,'>',1)+1)) 
            into var_codazzi_mun
            from dual;
        
         
           if var_codazzi_mun is not null then
              update pgb_ciudades c
                 set c.cod_dane = var_codazzi_mun
               where c.cod_asobancaria = ciu.cod_asobancaria;  
           end if;  
          EXCEPTION WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('No se encontró dato municipio');   
          END;
        end loop;     
       end if; 
       COMMIT;
    EXCEPTION WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('No se encontró dato departamento');   
    END;
    end loop;    
  EXCEPTION WHEN OTHERS THEN
    pmensaje:= 'Error sincronizando Dane '||sqlcode ||sqlerrm;
  END;  
  
  
  procedure sp_ejecuta_sincroniza_dane is
   mensaje varchar2(2000);
  begin
    sp_sincroniza_dane(user,mensaje);     
  end;  

  FUNCTION sf_dominios(in_cod VARCHAR2, in_dominio VARCHAR2) RETURN VARCHAR2 IS
	var_descripcion VARCHAR2(60) := '';
	BEGIN
	 BEGIN
	  SELECT rv_meaning
	    INTO var_descripcion
	    FROM CG_REF_CODES
	   WHERE upper(rv_low_value) = upper(in_cod)
	     AND rv_domain = in_dominio;
	 EXCEPTION WHEN NO_DATA_FOUND THEN
	  NULL;
	 END;
	 RETURN var_descripcion;
	END;
  
  FUNCTION sf_ciudades(in_cod NUMBER) RETURN VARCHAR2 IS
	var_descripcion VARCHAR2(60) := '';
	BEGIN
	 BEGIN
	  SELECT ciudad
	    INTO var_descripcion
	    FROM pgb_ciudades
	   WHERE cod_asobancaria = in_cod;
	 EXCEPTION WHEN NO_DATA_FOUND THEN
	  NULL;
	 END;
	 RETURN var_descripcion;
	END;  

 FUNCTION sf_departamentos(in_cod NUMBER) RETURN VARCHAR2 IS
	var_descripcion VARCHAR2(60) := '';
	BEGIN
	 BEGIN
	  SELECT departamento
	    INTO var_descripcion
	    FROM pgb_departamentos      
	   WHERE cod_asobancaria = in_cod;
	 EXCEPTION WHEN NO_DATA_FOUND THEN
	  NULL;
	 END;
	 RETURN var_descripcion;
	END;    

  FUNCTION sf_descrip_avaluo(in_avaluo number, in_consecutivo VARCHAR2) RETURN VARCHAR2 is
   var_descrip_liqui varchar2(50);
   var_dominio varchar2(60);
  BEGIN
   BEGIN
    SELECT C_DESCRIPLIQ 
      INTO var_descrip_liqui
      FROM PGB_LIQAVALUO 
     WHERE ID_AVALUO = in_avaluo 
       AND CONSECUTIVO = in_consecutivo;
     
     IF var_descrip_liqui is not null THEN
        var_dominio := sf_dominios(var_descrip_liqui, 'DESCLIQUIDACION');  
     END IF;        
     
     EXCEPTION WHEN NO_DATA_FOUND THEN
        var_dominio := '';
     END;

     RETURN var_dominio;
   
  EXCEPTION WHEN OTHERS THEN
     RAISE_APPLICATION_ERROR(-20587, 'Error en descrip liqui '||sqlerrm);   
  END;  
  
  
  FUNCTION sf_cod_descrip_avaluo(in_avaluo number, in_consecutivo VARCHAR2) RETURN NUMBER is
   var_descrip_liqui number;
  BEGIN
   BEGIN
    SELECT C_DESCRIPLIQ 
      INTO var_descrip_liqui
      FROM PGB_LIQAVALUO 
     WHERE ID_AVALUO = in_avaluo 
       AND CONSECUTIVO = in_consecutivo;
     
     
     EXCEPTION WHEN NO_DATA_FOUND THEN
        var_descrip_liqui := null;
     END;

     RETURN var_descrip_liqui;
   
  EXCEPTION WHEN OTHERS THEN
     RAISE_APPLICATION_ERROR(-20587, 'Error en descrip liqui '||sqlerrm);   
  END;  
  
  FUNCTION sf_descrip_dependencia(in_avaluo number, in_consecutivo VARCHAR2) RETURN VARCHAR2 is
   var_descrip_liqui varchar2(30);
  BEGIN
   BEGIN
    SELECT A_DESCDEPENDENCIA 
      INTO var_descrip_liqui
      FROM PGB_LIQAVALUO 
     WHERE ID_AVALUO = in_avaluo 
       AND CONSECUTIVO = in_consecutivo;
     
     
     EXCEPTION WHEN NO_DATA_FOUND THEN
        var_descrip_liqui := '';
     END;

     RETURN var_descrip_liqui;
   
  EXCEPTION WHEN OTHERS THEN
     RAISE_APPLICATION_ERROR(-20587, 'Error en descrip liqui '||sqlerrm);   
  END;  



  FUNCTION sf_area_avaluo(in_avaluo number, in_consecutivo VARCHAR2) RETURN NUMBER is
   var_numero NUMBER(18,4);
  BEGIN
   BEGIN
    SELECT N_AREALIQ
      INTO var_numero
      FROM PGB_LIQAVALUO 
     WHERE ID_AVALUO = in_avaluo 
       AND CONSECUTIVO = in_consecutivo;
    
     EXCEPTION WHEN NO_DATA_FOUND THEN
        var_numero := null;
     END;

     RETURN var_numero;
   
  EXCEPTION WHEN OTHERS THEN
     RAISE_APPLICATION_ERROR(-20587, 'Error en area liqui '||sqlerrm);   
  END;  
  
  FUNCTION sf_valor_unitario(in_avaluo number, in_consecutivo VARCHAR2) RETURN NUMBER is
   var_numero NUMBER(18,4);
  BEGIN
   BEGIN
    SELECT N_VAL
      INTO var_numero
      FROM PGB_LIQAVALUO 
     WHERE ID_AVALUO = in_avaluo 
       AND CONSECUTIVO = in_consecutivo;
    
     EXCEPTION WHEN NO_DATA_FOUND THEN
        var_numero := null;
     END;

     RETURN var_numero;
   
  EXCEPTION WHEN OTHERS THEN
     RAISE_APPLICATION_ERROR(-20587, 'Error en unitario liqui '||sqlerrm);   
  END;  
  
  FUNCTION sf_valor_total(in_avaluo number, in_consecutivo VARCHAR2) RETURN NUMBER is
   var_numero NUMBER(18,4);
  BEGIN
   BEGIN
    SELECT N_VALTOT
      INTO var_numero
      FROM PGB_LIQAVALUO 
     WHERE ID_AVALUO = in_avaluo 
       AND CONSECUTIVO = in_consecutivo;
    
     EXCEPTION WHEN NO_DATA_FOUND THEN
        var_numero := null;
     END;

     RETURN var_numero;
   
  EXCEPTION WHEN OTHERS THEN
     RAISE_APPLICATION_ERROR(-20587, 'Error en total liqui '||sqlerrm);   
  END;  
  
  --Permite duplicar un Avaluo
	PROCEDURE prc_copiar_avaluo (
	   par_id_avaluo   IN   NUMBER,
	   par_usuario     IN   VARCHAR2
	)
	IS

	/**
	*procedimiento para ejecutar copia de un avaluo en otro registro
	*@param id_Avaluo id del Avaluo a copiar
	*@param usuario Usuario que efectua la copia.
	**/

	   var_found_avaluo_act   NUMBER;
	   var_id_avaluo_nuevo    NUMBER;
	   var_id_fach_nuevo      NUMBER;
	   var_id_anex_nuevo      NUMBER;
	   var_fecha_avaluo       DATE;
	   var_estado_avaluo      NUMBER;
	   var_nuevoconsecutivo   NUMBER;
	   var_count_nvoconsec    NUMBER;
     var_uvrdia             NUMBER;  

	BEGIN
	   BEGIN
	      SELECT 
		     COUNT (*)
		INTO var_found_avaluo_act
		FROM pgb_avaluos
	       WHERE pgb_avaluos.id_avaluo = par_id_avaluo;
	   EXCEPTION
	      WHEN OTHERS
	      THEN
		 raise_application_error
				     (-20599,
					 'Pos:100 Error consultando avaluo a copiar '
				      || SQLERRM
				     );
	   END;

	   IF var_found_avaluo_act < 0
	   THEN
	      raise_application_error
				(-20599,
				 'Pos:200 Error, no se encuentra avaluo con este ID '
				);
	   END IF;

      --Arreglo Secuencias
     prc_getSequenceValue('PGB_ANEXO_FOTOGRAFICO',
                           'ID_ANEXO_FOTOGRAFICO',
                           'avaluos.SEQ_PGB_ANEXO_FOTOGRAFICO');
      prc_getSequenceValue('ARCHIVOS', 'ID_ARCHIVO', 'avaluos.SEQ_ARCHIVOS');
      prc_getSequenceValue('PGB_AVALUOS', 'ID_AVALUO', 'avaluos.SEQ_PGB_AVALUOS');
      prc_getSequenceValue('PGB_COMP_OFERTA_DEMANDA',
                           'ID_COMPOFERTADEMANDA',
                           'avaluos.SEQ_PGB_COMP_OFERTA_DEMANDA');
      prc_getSequenceValue('PGB_CONDSALUBRIDAD',
                           'ID_CONDSALUBRIDAD',
                           'avaluos.SEQ_PGB_CONDSALUBRIDAD');
      prc_getSequenceValue('PGB_INFBARRIO',
                           'ID_INFBARRIO',
                           'avaluos.SEQ_PGB_INFBARRIO');
      prc_getSequenceValue('PGB_INFCONSTRUCCION',
                           'ID_INFCONSTRUCCION',
                           'avaluos.SEQ_PGB_INFCONSTRUCCION');
      prc_getSequenceValue('PGB_OBSERVACIONES',
                           'ID_OBSERVACION',
                           'avaluos.SEQ_PGB_OBSERVACIONES');
      prc_getSequenceValue('PGB_INFINMUEBLE',
                           'ID_INFINMUEBLE',
                           'avaluos.SEQ_PGB_INFINMUEBLE');

	   SELECT f_fechaavaluo, a_estadoavaluo
	     INTO var_fecha_avaluo, var_estado_avaluo
	     FROM pgb_avaluos
	    WHERE pgb_avaluos.id_avaluo = par_id_avaluo;

	    EXECUTE IMMEDIATE 'alter session set NLS_DATE_FORMAT ='||chr(39)||'DDMMYYYY'||chr(39)||''; 

	   BEGIN
	      IF TRUNC(var_fecha_avaluo) < TRUNC(TO_DATE (SYSDATE))

	      THEN
		begin 
		 SELECT TO_NUMBER
			       (REPLACE
				   (TRIM
				       (TO_CHAR
					   (n_consecutivobanco,
					    '999999999999999999999999999999999999'                                    
					   )
				       ),
				    TO_NUMBER(TO_CHAR (f_fechaavaluo, 'DDMMYYYY')),
				    TO_NUMBER(TO_CHAR (SYSDATE, 'DDMMYYYY'))
				   )
			       ) AS n_consecutivobanco
	      INTO var_nuevoconsecutivo                       
           FROM pgb_avaluos
          WHERE id_avaluo = par_id_avaluo;
    exception
      when others then
         raise_application_error
              (-20599,
               'Pos:190 Error trayendo el nuevo consecutivo '||SQLERRM
              );
    end;

     select count (*) 
     INTO var_count_nvoconsec
     from pgb_avaluos
     where n_consecutivobanco=var_nuevoconsecutivo;

     IF var_count_nvoconsec > 0
      THEN
         raise_application_error
              (-20599,
               'Pos:200 Error, Este avaluo con el nuevo consecutivo ya existe '
              );
      END IF;

     SELECT seq_pgb_avaluos.NEXTVAL
       INTO var_id_avaluo_nuevo
       FROM DUAL;

    begin

     begin         
     INSERT INTO pgb_avaluos
        (SELECT var_id_avaluo_nuevo AS id_avaluo,
          TO_NUMBER
             (REPLACE
           (TRIM
               (TO_CHAR
             (n_consecutivobanco,
              '999999999999999999999999999999999999'
             )
               ),
            TO_NUMBER(TO_CHAR (f_fechaavaluo, 'DDMMYYYY')),
            TO_NUMBER(TO_CHAR (SYSDATE, 'DDMMYYYY'))
           )
             ) AS n_consecutivobanco,
          c_idtipoidentificacion, n_identificacion, a_tipodocumento,
          t_nombresolicitante, a_soltel, a_solcel, a_solcorreo,
          TO_CHAR (SYSDATE, 'DDMMYYYY') AS f_fechaavaluo, t_sector,
          c_iddepartamento, c_idciudad, a_coddane_depto,
          a_coddane_ciudad, t_dirinmueble, t_nombconjedif, t_barrio,
          a_nombanco, a_codbanco, c_idmetodologia, c_idobjetoavaluo,
          t_justificacion, a_ubicgps, a_tipo_informe,
          2 AS a_estadoavaluo, t_usuario, usuario_creacion,
          SYSDATE AS fecha_creacion,
          par_usuario AS usuario_transaccion,
          SYSDATE AS fecha_transaccion, NULL AS a_idarchivo,
          NULL AS a_numlinea
          
          ,T_SISTEMA,
 
          C_SISTEMA,

          T_LATITUD,

          T_LONGITUD

          
           FROM pgb_avaluos
          WHERE id_avaluo = par_id_avaluo);
        exception
    when others then

         raise_application_error
              (-20599,
               'Pos:205 Error, insertando avaluo '
              );

        end;        

     SELECT seq_archivos.NEXTVAL
       INTO var_id_fach_nuevo
       FROM DUAL;

     SELECT seq_archivos.NEXTVAL
       INTO var_id_anex_nuevo
       FROM DUAL;

     INSERT INTO archivos
        (SELECT var_id_fach_nuevo, tipo_archivo, nombre_archivo,
          tamanio_archivo, contenido,
          par_usuario AS usuario_creacion,
          SYSDATE AS fecha_creacion,
          par_usuario AS usuario_transaccion,
          SYSDATE AS fecha_transaccion
           FROM archivos a
          WHERE id_archivo IN (SELECT id_img_fachada
               FROM pgb_anexo_fotografico
              WHERE id_avaluo = par_id_avaluo));

     INSERT INTO archivos
        (SELECT var_id_anex_nuevo, tipo_archivo, nombre_archivo,
          tamanio_archivo, contenido,
          par_usuario AS usuario_creacion,
          SYSDATE AS fecha_creacion,
          par_usuario AS usuario_transaccion,
          SYSDATE AS fecha_transaccion
           FROM archivos
          WHERE id_archivo IN (SELECT ID_DOC_ANEXOS
               FROM pgb_anexo_fotografico
              WHERE id_avaluo = par_id_avaluo));

     INSERT INTO pgb_anexo_fotografico
        (SELECT seq_pgb_anexo_fotografico.NEXTVAL AS id_anexo_fotografico,
          var_id_avaluo_nuevo AS id_avaluo, var_id_fach_nuevo,
          var_id_anex_nuevo, par_usuario AS usuario_creacion,
          SYSDATE AS fecha_creacion,
          par_usuario AS usuario_transaccion,
          SYSDATE AS fecha_transaccion
           FROM pgb_anexo_fotografico
          WHERE id_avaluo = par_id_avaluo);

     INSERT INTO pgb_observaciones
        (SELECT seq_pgb_observaciones.NEXTVAL AS id_observacion,
          var_id_avaluo_nuevo AS id_avaluo, t_observavaluo,
          t_otrasdir, t_diranexos, par_usuario AS usuario_creacion,
          SYSDATE AS fecha_creacion,
          par_usuario AS usuario_transaccion,
          SYSDATE AS fecha_transaccion
           FROM pgb_observaciones
          WHERE id_avaluo = par_id_avaluo);

     INSERT INTO pgb_infinmueble
        (SELECT seq_pgb_infinmueble.NEXTVAL AS id_infinmueble,
          var_id_avaluo_nuevo AS id_avaluo, c_tipovivienda,
          idcategoria, c_ubicacion2, t_chip, c_usoinmueble,
          t_otrousoinm, c_claseinmueble, t_otroclase, t_minmbppal1,
          t_minmbppal2, t_minmobgj1, t_minmobgj2, t_minmobgj3,
          t_minmobgj4, t_minmobgj5, t_minmobdp1, t_minmobdp2,
          t_numescritura, t_notaria, f_fechaescritura,
          c_deptoescritura, c_ciudadescritura, c_ubicacion3,
          par_usuario AS usuario_creacion,
          SYSDATE AS fecha_creacion,
          par_usuario AS usuario_transaccion,
          SYSDATE AS fecha_transaccion, a_ediconstuso
		  ,C_USOINMUEBLE_BUA 
          ,C_USOINMUEBLE_SF
          ,T_CATASTRAL_SF
           FROM pgb_infinmueble
          WHERE id_avaluo = par_id_avaluo);

     INSERT INTO pgb_infconstruccion
        (SELECT seq_pgb_infconstruccion.NEXTVAL AS id_infconstruccion,
          var_id_avaluo_nuevo AS id_avaluo, n_pisos, n_sotanos,
          n_vetustez, r_estcons, c_estconservacion, k_estterminado,
          k_sinterminar, k_estremodela, k_estterminada, k_enobra,
          t_avanceobra, c_estructura, t_estructura, c_fachada,
          t_fachada, c_cubierta, t_cubierta, n_sala, n_baniosocial,
          n_banioprivado, n_banioservicio, n_jardin, n_comedor,
          n_estarhab, n_cocina, n_patioint, n_balcon, n_estudio,
          n_habitaciones, n_cuartoserv, n_zverdepriv, n_terraza,
          c_iluminacion, c_ventilacion, n_totalgarajes, n_cubierto,
          n_usoexclusivo, n_sencillo, n_bahiacomunal, n_deposito,
          n_descubierto, n_privado, n_doble, n_servidumbre, n_local,
          n_bodega, n_oficina, c_estpisos, c_estmuros, c_estmetal,
          c_estcocina, c_esttechos, c_estmadera, c_estbanios,
          c_tipofachada, c_pisosbodega, c_calidpiso, c_calidmuro,
          c_calidcmetal, c_calidcocina, c_calidtecho, c_calidcmader,
          c_calidbanio, c_prophorz, c_conjagrupcerr, c_ubicacioninm,
          n_numedif, n_undpiso, n_totalund, k_porteria, k_saloncomn,
          k_aacond, k_clubhouse, k_juegoninos, k_bicicletero,
          k_presion, k_zverdes, k_citofono, k_bomba, k_tanqueagua,
          k_gjvisita, k_canchamult, k_shut, k_squash, k_gimnasio,
          k_golfito, k_piscina, k_planta, k_ascensor,
          n_numascensores, t_otrosdotacion, t_otrosdotacion2,
          a_ubicfuentesh, a_ubicnivelz, a_luces, a_edipiso,
          a_edisimalt, a_edisimplanta, a_edimat, a_otro_material,
          a_ediparapet, a_dcelevtanq, a_otra_ubic_tanque,
          a_sobrepeso, a_golpeteo, a_asentamientos, a_danoprevio,
          par_usuario AS usuario_creacion,
          SYSDATE AS fecha_creacion,
          par_usuario AS usuario_transaccion,
          SYSDATE AS fecha_transaccion, c_altura

            ,
            C_REPARADOS,
            C_IRRALTURA,
            C_IRRPLANTA,
            C_ESTRUCTURAREFORZADA,
            C_DANOPREVIO,
            N_ANOCONSTRUCCION,
            C_MATERIAL,
            C_DETALLEMATERIAL,
            A_RCONS_SF,
            A_DANOREPARADO_SF,
            SIMETRIA_ALT_SF,
            SIMETRIA_PLANT_SF,
            A_DANOPREVIO_SF,
            C_ESTREFORZADA_SF,
            C_MATERIAL_SF
          
           FROM pgb_infconstruccion
          WHERE id_avaluo = par_id_avaluo);

     INSERT INTO pgb_liqavaluo
        (SELECT seq_pgb_liqavaluo.NEXTVAL AS id_liqavaluo,
          var_id_avaluo_nuevo AS id_avaluo, c_descripliq,
          a_descdependencia, n_arealiq, n_val, n_valtot,
          par_usuario AS usuario_creacion,
          SYSDATE AS fecha_creacion,
          par_usuario AS usuario_transaccion,
          SYSDATE AS fecha_transaccion, consecutivo

           FROM pgb_liqavaluo
          WHERE id_avaluo = par_id_avaluo);

          BEGIN
            select /*+ ALL_ROWS */
             tc1 valor_uvr
              into var_uvrdia
              from a1000500
             where cod_mon = 7
               and fecha_tipo_cambio = trunc(SYSDATE);
           exception
           when NO_DATA_FOUND then
            raise_application_error
              (-20598,
               'Pos:240 Error consultando el valor de la UVR para la fecha '||trunc(SYSDATE)||' '||SQLERRM
              );
           END;   

         INSERT INTO pgb_liqavaluo_total
            (SELECT seq_pgb_liqavaluo_total.NEXTVAL AS id_liqavaluo_total,
                    var_id_avaluo_nuevo AS id_avaluo, var_uvrdia as n_valuvrdia,
                    n_totalavaluo, n_totalavaluo/var_uvrdia as n_avaluouvr, n_valorasegurable,
                    r_calificacion, par_usuario AS usuario_creacion,
                    SYSDATE AS fecha_creacion,
                    par_usuario AS usuario_transaccion,
                    SYSDATE AS fecha_transaccion
               FROM pgb_liqavaluo_total
              WHERE id_avaluo = par_id_avaluo);

     INSERT INTO pgb_infbarrio
        (SELECT seq_pgb_infbarrio.NEXTVAL AS id_infbarrio,
          var_id_avaluo_nuevo AS id_avaluo, c_estrato, c_legalidad,
          c_topografia, c_transporte, k_acueductosector,
          k_acueductopredio, k_alcantapredio, k_alcantasector,
          k_electricapredio, k_electricasector, k_gassector,
          k_gaspredio, k_telsector, k_telpredio, k_industria,
          k_vivienda, k_comercio, k_otrosusos, t_otrosusos,
          c_estviaacceso, c_pavimentada, c_sardeneles, c_andenes,
          k_parques, k_arborizacion, k_paradero, k_alamedas,
          k_alumbrado, k_zonasverdes, k_ciclorutas, t_perspectivas,
          a_ediiguales, par_usuario AS usuario_creacion,
          SYSDATE AS fecha_creacion,
          par_usuario AS usuario_transaccion,
          SYSDATE AS fecha_transaccion
           FROM pgb_infbarrio
          WHERE id_avaluo = par_id_avaluo);

     INSERT INTO pgb_condsalubridad
        (SELECT seq_pgb_condsalubridad.NEXTVAL AS id_condsalubridad,
          var_id_avaluo_nuevo AS id_avaluo, a_requiere_cond_salub,
          c_salubridad, k_ambarboriza, k_ambparques, k_ambzverde,
          t_ambotro, k_poraire, k_basura, k_inserguridad, k_ruido,
          k_aguasherv, t_ambnegotro,
          par_usuario AS usuario_creacion,
          SYSDATE AS fecha_creacion,
          par_usuario AS usuario_transaccion,
          SYSDATE AS fecha_transaccion
           FROM pgb_condsalubridad
          WHERE id_avaluo = par_id_avaluo);

     INSERT INTO pgb_comp_oferta_demanda
        (SELECT seq_pgb_comp_oferta_demanda.NEXTVAL
                    AS id_compofertademanda,
          var_id_avaluo_nuevo AS id_avaluo, t_actedificadora,
          t_comportaod, n_tipocomercializa,
          par_usuario AS usuario_creacion,
          SYSDATE AS fecha_creacion,
          par_usuario AS usuario_transaccion,
          SYSDATE AS fecha_transaccion
           FROM pgb_comp_oferta_demanda
          WHERE id_avaluo = par_id_avaluo);
    exception
      when others then
         raise_application_error
              (-20599,
               'Pos:250 Error insertando en las tablas '||SQLERRM
              );
    end;

        ELSIF TO_DATE (var_fecha_avaluo, 'DDMMYYYY') =
               TO_DATE (SYSDATE, 'DDMMYYYY')
        THEN
    begin
     UPDATE pgb_avaluos
        SET a_estadoavaluo = 2,
      usuario_transaccion = par_usuario,
      fecha_transaccion = SYSDATE,
      a_idarchivo = NULL,
      a_numlinea = NULL
      WHERE id_avaluo = par_id_avaluo;
    exception
      when others then
         raise_application_error
              (-20599,
               'Pos:260 Error actualizando el avaluo '||SQLERRM
              );
    end;          
        ELSIF TO_DATE (var_fecha_avaluo, 'DDMMYYYY') >
               TO_DATE (SYSDATE, 'DDMMYYYY')
        THEN
     raise_application_error
       (-20599,
           'Pos:90 La fecha del avaluo es mayor a la fecha actual '
        || SQLERRM
       );
        END IF;
     EXCEPTION
        WHEN OTHERS
        THEN
     raise_application_error
             (-20599,
           'Pos:100 Error consultando avaluo a copiar '
              || SQLERRM
             );
     END;
  END prc_copiar_avaluo;


PROCEDURE prc_copiar_avaluos_constructor (
   par_id_avaluo   IN   NUMBER,
   par_usuario     IN   VARCHAR2,
   par_usuario_creacion_avaluo     IN   VARCHAR2,
   par_tipos_identificaciones   IN   array_number,
   par_numeros_identificaciones IN   array_number,      
   par_nombres_solicitantes    IN   array_varchar,
   par_fecha_avaluo   IN   Date,
   par_iddepartamento   IN   number,
   par_idciudad   	IN   number,
   par_coddane_depto    IN   number,
   par_coddane_ciudad   IN   number,
   par_direcciones_inmuebles   IN   array_varchar,
   par_barrio   IN   varchar2,
   par_mats_inmob_ppals1   IN   array_varchar,
   par_mats_inmob_ppals2   IN   array_varchar,
   par_mats_inmob_gj1      IN   array_varchar,
   par_mats_inmob_gj2      IN   array_varchar,
   par_mats_inmob_dep1     IN   array_varchar   
)
IS
   tmp_tipo_identificacion   number:=0;
   tmp_numero_identificacion number:=0;
   tmp_nombre_solicitante varchar2(4000):='';
   tmp_direccion_inmueble varchar2(4000):='';
   tmp_mat_inmob_ppal1    varchar2(4000):='';
   tmp_mat_inmob_ppal2    varchar2(4000):='';
   tmp_mats_inmob_gj1      varchar2(4000):='';
   tmp_mats_inmob_gj2      varchar2(4000):='';
   tmp_mats_inmob_dep1     varchar2(4000):=''; 
BEGIN
   FOR I IN par_tipos_identificaciones.FIRST .. par_tipos_identificaciones.LAST
  LOOP
        
   tmp_tipo_identificacion   :=par_tipos_identificaciones(I);
   tmp_numero_identificacion :=par_numeros_identificaciones(I);
   tmp_nombre_solicitante :=par_nombres_solicitantes(I);
   tmp_direccion_inmueble :=par_direcciones_inmuebles(I);
   tmp_mat_inmob_ppal1    :=par_mats_inmob_ppals1(I);
   tmp_mat_inmob_ppal2    :=par_mats_inmob_ppals2(I);
   tmp_mats_inmob_gj1     :=par_mats_inmob_gj1(I);
   tmp_mats_inmob_gj2     :=par_mats_inmob_gj2(I);
   tmp_mats_inmob_dep1    :=par_mats_inmob_dep1(I);
   
   --Arreglo Secuencias
   prc_getSequenceValue('PGB_ANEXO_FOTOGRAFICO','ID_ANEXO_FOTOGRAFICO','SEQ_PGB_ANEXO_FOTOGRAFICO');
   prc_getSequenceValue('ARCHIVOS','ID_ARCHIVO','SEQ_ARCHIVOS');
   prc_getSequenceValue('PGB_AVALUOS','ID_AVALUO','SEQ_PGB_AVALUOS');
   prc_getSequenceValue('PGB_COMP_OFERTA_DEMANDA','ID_COMPOFERTADEMANDA','SEQ_PGB_COMP_OFERTA_DEMANDA');
   prc_getSequenceValue('PGB_CONDSALUBRIDAD','ID_CONDSALUBRIDAD','SEQ_PGB_CONDSALUBRIDAD');
   prc_getSequenceValue('PGB_INFBARRIO','ID_INFBARRIO','SEQ_PGB_INFBARRIO');
   prc_getSequenceValue('PGB_INFCONSTRUCCION','ID_INFCONSTRUCCION','SEQ_PGB_INFCONSTRUCCION');
   prc_getSequenceValue('PGB_OBSERVACIONES','ID_OBSERVACION','SEQ_PGB_OBSERVACIONES');
   prc_getSequenceValue('PGB_INFINMUEBLE','ID_INFINMUEBLE','SEQ_PGB_INFINMUEBLE');
   prc_getSequenceValueTable('PGB_INFINMUEBLE','ID_INFINMUEBLE','PGB_INFINMUEBLE_IDINFINMUEBLE_GENERATOR');
   --Arreglo Secuencias
    
       prc_copiar_avaluo_constr_new (
       par_id_avaluo,
       par_usuario,
       par_usuario_creacion_avaluo,
       tmp_tipo_identificacion,
       tmp_numero_identificacion,      
       tmp_nombre_solicitante,
       par_fecha_avaluo,
       par_iddepartamento,
       par_idciudad,
       par_coddane_depto,
       par_coddane_ciudad,
       tmp_direccion_inmueble,
       par_barrio,
       tmp_mat_inmob_ppal1,
       tmp_mat_inmob_ppal2,
       tmp_mats_inmob_gj1,
       tmp_mats_inmob_gj2,
       tmp_mats_inmob_dep1
       );
 END LOOP;       
END prc_copiar_avaluos_constructor;

/**
*procedimiento para ejecutar copia de un avaluo tipo Constructor en un nuevo registro
**/
PROCEDURE prc_copiar_avaluo_constructor (
   par_id_avaluo   IN   NUMBER,
   par_usuario     IN   VARCHAR2,
   par_usuario_creacion_avaluo     IN   VARCHAR2,
   par_tipo_identificacion   IN   number,
   par_numero_identificacion   IN   NUMBER,   
   par_nombre_solicitante   IN   varchar2,
   par_fecha_avaluo   IN   Date,
   par_iddepartamento   IN   number,
   par_idciudad   	IN   number,
   par_coddane_depto    IN   number,
   par_coddane_ciudad   IN   number,
   par_direccion_inmueble   IN   varchar2,
   par_barrio   IN   varchar2,
   par_mat_inmob_ppal1   IN   varchar2,
   par_mat_inmob_ppal2   IN   varchar2
)
IS
BEGIN
  prc_copiar_avaluo_constr_new (
     par_id_avaluo,
     par_usuario,
     par_usuario_creacion_avaluo,
     par_tipo_identificacion,
     par_numero_identificacion,   
     par_nombre_solicitante,
     par_fecha_avaluo,
     par_iddepartamento,
     par_idciudad,
     par_coddane_depto,
     par_coddane_ciudad,
     par_direccion_inmueble,
     par_barrio,
     par_mat_inmob_ppal1,
     par_mat_inmob_ppal2,
     null,
     null,
     null      
  );
END prc_copiar_avaluo_constructor;

PROCEDURE prc_copiar_avaluo_constr_new (
   par_id_avaluo   IN   NUMBER,
   par_usuario     IN   VARCHAR2,
   par_usuario_creacion_avaluo     IN   VARCHAR2,
   par_tipo_identificacion   IN   number,
   par_numero_identificacion   IN   NUMBER,   
   par_nombre_solicitante   IN   varchar2,
   par_fecha_avaluo   IN   Date,
   par_iddepartamento   IN   number,
   par_idciudad   	IN   number,
   par_coddane_depto    IN   number,
   par_coddane_ciudad   IN   number,
   par_direccion_inmueble   IN   varchar2,
   par_barrio   IN   varchar2,
   par_mat_inmob_ppal1   IN   varchar2,
   par_mat_inmob_ppal2   IN   varchar2,
   par_mats_inmob_gj1      IN   varchar2,
   par_mats_inmob_gj2      IN   varchar2,
   par_mats_inmob_dep1     IN   varchar2 
)
IS

   var_found_avaluo_act   NUMBER;
   var_id_avaluo_nuevo    NUMBER;
   var_id_fach_nuevo      NUMBER;
   var_id_anex_nuevo      NUMBER;
   var_fecha_avaluo       DATE;
   var_estado_avaluo      NUMBER;
   var_nuevoconsecutivo   NUMBER;
   var_consecutivo_ant   NUMBER;
   var_count_nvoconsec    NUMBER;
   
   var_uvrdia        number;

BEGIN

prc_cp_avaluo_constr_new_estd
(
   par_id_avaluo,
   par_usuario,
   par_usuario_creacion_avaluo,
   par_tipo_identificacion,
   par_numero_identificacion,
   par_nombre_solicitante,
   par_fecha_avaluo,
   par_iddepartamento,
   par_idciudad,
   par_coddane_depto,
   par_coddane_ciudad,
   par_direccion_inmueble,
   par_barrio,
   par_mat_inmob_ppal1,
   par_mat_inmob_ppal2,
   par_mats_inmob_gj1,
   par_mats_inmob_gj2,
   par_mats_inmob_dep1,
   3
);
END prc_copiar_avaluo_constr_new;

PROCEDURE prc_cp_avaluo_constr_new_estd (
   par_id_avaluo   IN   NUMBER,
   par_usuario     IN   VARCHAR2,
   par_usuario_creacion_avaluo     IN   VARCHAR2,
   par_tipo_identificacion   IN   number,
   par_numero_identificacion   IN   NUMBER,
   par_nombre_solicitante   IN   varchar2,
   par_fecha_avaluo   IN   Date,
   par_iddepartamento   IN   number,
   par_idciudad   	IN   number,
   par_coddane_depto    IN   number,
   par_coddane_ciudad   IN   number,
   par_direccion_inmueble   IN   varchar2,
   par_barrio   IN   varchar2,
   par_mat_inmob_ppal1   IN   varchar2,
   par_mat_inmob_ppal2   IN   varchar2,
   par_mats_inmob_gj1      IN   varchar2,
   par_mats_inmob_gj2      IN   varchar2,
   par_mats_inmob_dep1     IN   varchar2,
   par_estado              IN   NUMBER
)
IS

   var_found_avaluo_act   NUMBER;
   var_id_avaluo_nuevo    NUMBER;
   var_id_fach_nuevo      NUMBER;
   var_id_anex_nuevo      NUMBER;
   var_fecha_avaluo       DATE;
   var_estado_avaluo      NUMBER;
   var_nuevoconsecutivo   NUMBER;
   var_consecutivo_ant   NUMBER;
   var_count_nvoconsec    NUMBER;

   var_uvrdia        number;

BEGIN

  execute immediate 'ALTER SESSION SET NLS_DATE_FORMAT = ''DDMMYYYY''';

   BEGIN
      SELECT /*+ PARALLEL(PGB_CARGUE_TMP, 2) */
             COUNT (*)
        INTO var_found_avaluo_act
        FROM pgb_avaluos
       WHERE pgb_avaluos.id_avaluo = par_id_avaluo;
   EXCEPTION
      WHEN OTHERS
      THEN
         raise_application_error
                             (-20599,
                                 'Pos:100 Error consultando avaluo a copiar '
                              || SQLERRM
                             );
   END;

   IF var_found_avaluo_act < 0
   THEN
      raise_application_error
                        (-20599,
                         'Pos:200 Error, no se encuentra avaluo con este ID '
                        );
   END IF;

      --Arreglo Secuencias
     prc_getSequenceValue('PGB_ANEXO_FOTOGRAFICO',
                           'ID_ANEXO_FOTOGRAFICO',
                           'avaluos.SEQ_PGB_ANEXO_FOTOGRAFICO');
      prc_getSequenceValue('ARCHIVOS', 'ID_ARCHIVO', 'avaluos.SEQ_ARCHIVOS');
      prc_getSequenceValue('PGB_AVALUOS', 'ID_AVALUO', 'avaluos.SEQ_PGB_AVALUOS');
      prc_getSequenceValue('PGB_COMP_OFERTA_DEMANDA',
                           'ID_COMPOFERTADEMANDA',
                           'avaluos.SEQ_PGB_COMP_OFERTA_DEMANDA');
      prc_getSequenceValue('PGB_CONDSALUBRIDAD',
                           'ID_CONDSALUBRIDAD',
                           'avaluos.SEQ_PGB_CONDSALUBRIDAD');
      prc_getSequenceValue('PGB_INFBARRIO',
                           'ID_INFBARRIO',
                           'avaluos.SEQ_PGB_INFBARRIO');
      prc_getSequenceValue('PGB_INFCONSTRUCCION',
                           'ID_INFCONSTRUCCION',
                           'avaluos.SEQ_PGB_INFCONSTRUCCION');
      prc_getSequenceValue('PGB_OBSERVACIONES',
                           'ID_OBSERVACION',
                           'avaluos.SEQ_PGB_OBSERVACIONES');
      prc_getSequenceValue('PGB_INFINMUEBLE',
                           'ID_INFINMUEBLE',
                           'avaluos.SEQ_PGB_INFINMUEBLE');

   SELECT f_fechaavaluo, a_estadoavaluo,n_consecutivobanco
     INTO var_fecha_avaluo, var_estado_avaluo,var_consecutivo_ant
     FROM pgb_avaluos
    WHERE pgb_avaluos.id_avaluo = par_id_avaluo;

   BEGIN
         var_nuevoconsecutivo:=TO_NUMBER(TO_CHAR (par_fecha_avaluo, 'DDMMYYYY'))||par_numero_identificacion;

         select count (*)
         INTO var_count_nvoconsec
         from pgb_avaluos
         where n_consecutivobanco=var_nuevoconsecutivo;

         IF var_count_nvoconsec > 0
          THEN
             raise_application_error
                              (-20599,
                               'Pos:200 Error, Este avaluo con el nuevo consecutivo ya existe '
                              );
          END IF;

         SELECT seq_pgb_avaluos.NEXTVAL
           INTO var_id_avaluo_nuevo
           FROM DUAL;

        BEGIN

          select /*+ ALL_ROWS */
           tc1 valor_uvr
            into var_uvrdia
            from a1000500
           where cod_mon = 7
             and fecha_tipo_cambio = trunc(par_fecha_avaluo);

        EXCEPTION
          WHEN OTHERS THEN
             raise_application_error
                              (-20599,
                               'Pos:210 Error, Error validando el valor del UVR '||SQLERRM
                              );
        END;


       Begin

         INSERT INTO pgb_avaluos
            (SELECT var_id_avaluo_nuevo AS id_avaluo,
                    var_nuevoconsecutivo AS n_consecutivobanco,
                    par_tipo_identificacion as c_idtipoidentificacion,
                    par_numero_identificacion as n_identificacion,
                    a_tipodocumento,
                    par_nombre_solicitante as t_nombresolicitante,
                    a_soltel, a_solcel, a_solcorreo,
                    TO_CHAR(par_fecha_avaluo,'DDMMYYYY') as f_fechaavaluo,
                    t_sector,
                    par_iddepartamento as c_iddepartamento,
                    par_idciudad as c_idciudad,
                    par_coddane_depto as a_coddane_depto,
                    par_coddane_ciudad as a_coddane_ciudad,
                    par_direccion_inmueble as t_dirinmueble,
                    t_nombconjedif,
                    par_barrio as t_barrio,
                    a_nombanco, a_codbanco, c_idmetodologia, c_idobjetoavaluo,
                    t_justificacion, a_ubicgps, 2 as a_tipo_informe,
                    par_estado AS a_estadoavaluo,
                    t_usuario,
                    par_usuario_creacion_avaluo as usuario_creacion,
                    SYSDATE AS fecha_creacion,
                    par_usuario AS usuario_transaccion,
                    SYSDATE AS fecha_transaccion, NULL AS a_idarchivo,
                    NULL AS a_numlinea

                    ,T_SISTEMA,
                    C_SISTEMA,
                    T_LATITUD,
                    T_LONGITUD

               FROM pgb_avaluos
              WHERE id_avaluo = par_id_avaluo);
        EXCEPTION
          WHEN OTHERS
          THEN
             raise_application_error
                                 (-20599,
                                     'Pos:101 Error insertando avaluo '
                                  || SQLERRM
                                 );

       End;
       IF SQL%NOTFOUND
        THEN
             raise_application_error
                         (-20599,
                             'Pos:102 no se inserto ningun registro en la tabla Avaluos '
                          || SQLERRM
                         );
       END IF;


         SELECT seq_archivos.NEXTVAL
           INTO var_id_fach_nuevo
           FROM DUAL;

         SELECT seq_archivos.NEXTVAL
           INTO var_id_anex_nuevo
           FROM DUAL;

         INSERT INTO archivos
            (SELECT var_id_fach_nuevo, tipo_archivo, replace(nombre_archivo,var_consecutivo_ant,var_nuevoconsecutivo)as nombre_archivo,--nombre_archivo,
                    tamanio_archivo, contenido,
                    par_usuario AS usuario_creacion,
                    SYSDATE AS fecha_creacion,
                    par_usuario AS usuario_transaccion,
                    SYSDATE AS fecha_transaccion
               FROM archivos a
              WHERE id_archivo IN (SELECT id_img_fachada
                                     FROM pgb_anexo_fotografico
                                    WHERE id_avaluo = par_id_avaluo));
       IF SQL%NOTFOUND
        THEN
             raise_application_error
                         (-20599,
                             'Pos:103 no se inserto ningun registro de fachada en la tabla Archivos '
                          || SQLERRM
                         );
       END IF;

         INSERT INTO archivos
            (SELECT var_id_anex_nuevo, tipo_archivo, replace(nombre_archivo,var_consecutivo_ant,var_nuevoconsecutivo)as nombre_archivo,--nombre_archivo,
                    tamanio_archivo, contenido,
                    par_usuario AS usuario_creacion,
                    SYSDATE AS fecha_creacion,
                    par_usuario AS usuario_transaccion,
                    SYSDATE AS fecha_transaccion
               FROM archivos
              WHERE id_archivo IN (SELECT id_doc_anexos
                                     FROM pgb_anexo_fotografico
                                    WHERE id_avaluo = par_id_avaluo));

       IF SQL%NOTFOUND
        THEN
             raise_application_error
                         (-20599,
                             'Pos:104 no se inserto ningun registro de anexo en la tabla Archivos '
                          || SQLERRM
                         );
       END IF;

         INSERT INTO pgb_anexo_fotografico
            (SELECT seq_pgb_anexo_fotografico.NEXTVAL AS id_anexo_fotografico,
                    var_id_avaluo_nuevo AS id_avaluo, var_id_fach_nuevo,
                    var_id_anex_nuevo, par_usuario AS usuario_creacion,
                    SYSDATE AS fecha_creacion,
                    par_usuario AS usuario_transaccion,
                    SYSDATE AS fecha_transaccion
               FROM pgb_anexo_fotografico
              WHERE id_avaluo = par_id_avaluo);

       IF SQL%NOTFOUND
        THEN
             raise_application_error
                         (-20599,
                             'Pos:105 no se inserto ningun registro de anexo en la tabla Anexos '
                          || SQLERRM
                         );
       END IF;


         INSERT INTO pgb_observaciones
            (SELECT seq_pgb_observaciones.NEXTVAL AS id_observacion,
                    var_id_avaluo_nuevo AS id_avaluo, t_observavaluo,
                    t_otrasdir, t_diranexos, par_usuario AS usuario_creacion,
                    SYSDATE AS fecha_creacion,
                    par_usuario AS usuario_transaccion,
                    SYSDATE AS fecha_transaccion
               FROM pgb_observaciones
              WHERE id_avaluo = par_id_avaluo);

       IF SQL%NOTFOUND
        THEN
             raise_application_error
                         (-20599,
                             'Pos:106 no se inserto ningun registro en la tabla Observaciones '
                          || SQLERRM
                         );
       END IF;

         INSERT INTO pgb_infinmueble
            (SELECT seq_pgb_infinmueble.NEXTVAL AS id_infinmueble,
                    var_id_avaluo_nuevo AS id_avaluo, c_tipovivienda,
                    idcategoria, c_ubicacion2, t_chip, c_usoinmueble,
                    t_otrousoinm, c_claseinmueble, t_otroclase,
                    par_mat_inmob_ppal1 as t_minmbppal1,
                    --t_minmbppal1 as t_minmbppal1,
                    par_mat_inmob_ppal2 as t_minmbppal2,
                    DECODE(par_mats_inmob_gj1, null, t_minmobgj1,par_mats_inmob_gj1) as t_minmobgj1,
                    DECODE(par_mats_inmob_gj2, null, t_minmobgj2,par_mats_inmob_gj2) as t_minmobgj2,
                    t_minmobgj3,
                    t_minmobgj4, t_minmobgj5,
                    DECODE(par_mats_inmob_dep1, null, t_minmobdp1,par_mats_inmob_dep1) as t_minmobdp1,
                    t_minmobdp2,
                    t_numescritura, t_notaria, f_fechaescritura,
                    c_deptoescritura, c_ciudadescritura, c_ubicacion3,
                    par_usuario AS usuario_creacion,
                    SYSDATE AS fecha_creacion,
                    par_usuario AS usuario_transaccion,
                    SYSDATE AS fecha_transaccion, a_ediconstuso
                    ,C_USOINMUEBLE_BUA,
                    C_USOINMUEBLE_SF
                    ,T_CATASTRAL_SF
               FROM pgb_infinmueble
              WHERE id_avaluo = par_id_avaluo);

       IF SQL%NOTFOUND
        THEN
             raise_application_error
                         (-20599,
                             'Pos:107 no se inserto ningun registro en la tabla Info Inmueble '
                          || SQLERRM
                         );
       END IF;

         INSERT INTO pgb_infconstruccion
            (SELECT seq_pgb_infconstruccion.NEXTVAL AS id_infconstruccion,
                    var_id_avaluo_nuevo AS id_avaluo, n_pisos, n_sotanos,
                    n_vetustez, r_estcons, c_estconservacion, k_estterminado,
                    k_sinterminar, k_estremodela, k_estterminada, k_enobra,
                    t_avanceobra, c_estructura, t_estructura, c_fachada,
                    t_fachada, c_cubierta, t_cubierta, n_sala, n_baniosocial,
                    n_banioprivado, n_banioservicio, n_jardin, n_comedor,
                    n_estarhab, n_cocina, n_patioint, n_balcon, n_estudio,
                    n_habitaciones, n_cuartoserv, n_zverdepriv, n_terraza,
                    c_iluminacion, c_ventilacion, n_totalgarajes, n_cubierto,
                    n_usoexclusivo, n_sencillo, n_bahiacomunal, n_deposito,
                    n_descubierto, n_privado, n_doble, n_servidumbre, n_local,
                    n_bodega, n_oficina, c_estpisos, c_estmuros, c_estmetal,
                    c_estcocina, c_esttechos, c_estmadera, c_estbanios,
                    c_tipofachada, c_pisosbodega, c_calidpiso, c_calidmuro,
                    c_calidcmetal, c_calidcocina, c_calidtecho, c_calidcmader,
                    c_calidbanio, c_prophorz, c_conjagrupcerr, c_ubicacioninm,
                    n_numedif, n_undpiso, n_totalund, k_porteria, k_saloncomn,
                    k_aacond, k_clubhouse, k_juegoninos, k_bicicletero,
                    k_presion, k_zverdes, k_citofono, k_bomba, k_tanqueagua,
                    k_gjvisita, k_canchamult, k_shut, k_squash, k_gimnasio,
                    k_golfito, k_piscina, k_planta, k_ascensor,
                    n_numascensores, t_otrosdotacion, t_otrosdotacion2,
                    a_ubicfuentesh, a_ubicnivelz, a_luces, a_edipiso,
                    a_edisimalt, a_edisimplanta, a_edimat, a_otro_material,
                    a_ediparapet, a_dcelevtanq, a_otra_ubic_tanque,
                    a_sobrepeso, a_golpeteo, a_asentamientos, a_danoprevio,
                    par_usuario AS usuario_creacion,
                    SYSDATE AS fecha_creacion,
                    par_usuario AS usuario_transaccion,
                    SYSDATE AS fecha_transaccion, c_altura

                    C_ALTURA,
                    C_REPARADOS,
                    C_IRRALTURA,
                    C_IRRPLANTA,
                    C_ESTRUCTURAREFORZADA,
                    C_DANOPREVIO,
                    N_ANOCONSTRUCCION,
                    C_MATERIAL,
                    C_DETALLEMATERIAL,
                    A_RCONS_SF,
                    A_DANOREPARADO_SF,
                    SIMETRIA_ALT_SF,
                    SIMETRIA_PLANT_SF,
                    A_DANOPREVIO_SF,
                    C_ESTREFORZADA_SF,
                    C_MATERIAL_SF

               FROM pgb_infconstruccion
              WHERE id_avaluo = par_id_avaluo);

       IF SQL%NOTFOUND
        THEN
             raise_application_error
                         (-20599,
                             'Pos:108 no se inserto ningun registro en la tabla Info Construccion '
                          || SQLERRM
                         );
       END IF;

         INSERT INTO pgb_liqavaluo
            (SELECT seq_pgb_liqavaluo.NEXTVAL AS id_liqavaluo,
                    var_id_avaluo_nuevo AS id_avaluo, c_descripliq,
                    a_descdependencia, n_arealiq, n_val, n_valtot,
                    par_usuario AS usuario_creacion,
                    SYSDATE AS fecha_creacion,
                    par_usuario AS usuario_transaccion,
                    SYSDATE AS fecha_transaccion, consecutivo
               FROM pgb_liqavaluo
              WHERE id_avaluo = par_id_avaluo);

       IF SQL%NOTFOUND
        THEN
             raise_application_error
                         (-20599,
                             'Pos:109 no se inserto ningun registro en la tabla Liq avaluo '
                          || SQLERRM
                         );
       END IF;

         INSERT INTO pgb_liqavaluo_total
            (SELECT seq_pgb_liqavaluo_total.NEXTVAL AS id_liqavaluo_total,
                    var_id_avaluo_nuevo AS id_avaluo,
                    var_uvrdia as n_valuvrdia,--n_valuvrdia,
                    n_totalavaluo,
                    round((n_totalavaluo / var_uvrdia)*10000)/10000 as n_avaluouvr,--n_avaluouvr,
                    n_valorasegurable,
                    r_calificacion, par_usuario AS usuario_creacion,
                    SYSDATE AS fecha_creacion,
                    par_usuario AS usuario_transaccion,
                    SYSDATE AS fecha_transaccion
               FROM pgb_liqavaluo_total
              WHERE id_avaluo = par_id_avaluo);

       IF SQL%NOTFOUND
        THEN
             raise_application_error
                         (-20599,
                             'Pos:110 no se inserto ningun registro en la tabla Liq avaluo Total '
                          || SQLERRM
                         );
       END IF;

         INSERT INTO pgb_infbarrio
            (SELECT seq_pgb_infbarrio.NEXTVAL AS id_infbarrio,
                    var_id_avaluo_nuevo AS id_avaluo, c_estrato, c_legalidad,
                    c_topografia, c_transporte, k_acueductosector,
                    k_acueductopredio, k_alcantapredio, k_alcantasector,
                    k_electricapredio, k_electricasector, k_gassector,
                    k_gaspredio, k_telsector, k_telpredio, k_industria,
                    k_vivienda, k_comercio, k_otrosusos, t_otrosusos,
                    c_estviaacceso, c_pavimentada, c_sardeneles, c_andenes,
                    k_parques, k_arborizacion, k_paradero, k_alamedas,
                    k_alumbrado, k_zonasverdes, k_ciclorutas, t_perspectivas,
                    a_ediiguales, par_usuario AS usuario_creacion,
                    SYSDATE AS fecha_creacion,
                    par_usuario AS usuario_transaccion,
                    SYSDATE AS fecha_transaccion
               FROM pgb_infbarrio
              WHERE id_avaluo = par_id_avaluo);

       IF SQL%NOTFOUND
        THEN
             raise_application_error
                         (-20599,
                             'Pos:111 no se inserto ningun registro en la tabla Inf Barrio '
                          || SQLERRM
                         );
       END IF;

         INSERT INTO pgb_condsalubridad
            (SELECT seq_pgb_condsalubridad.NEXTVAL AS id_condsalubridad,
                    var_id_avaluo_nuevo AS id_avaluo, a_requiere_cond_salub,
                    c_salubridad, k_ambarboriza, k_ambparques, k_ambzverde,
                    t_ambotro, k_poraire, k_basura, k_inserguridad, k_ruido,
                    k_aguasherv, t_ambnegotro,
                    par_usuario AS usuario_creacion,
                    SYSDATE AS fecha_creacion,
                    par_usuario AS usuario_transaccion,
                    SYSDATE AS fecha_transaccion
               FROM pgb_condsalubridad
              WHERE id_avaluo = par_id_avaluo);

       IF SQL%NOTFOUND
        THEN
             raise_application_error
                         (-20599,
                             'Pos:105 no se inserto ningun registro en la tabla Cond Salubridad '
                          || SQLERRM
                         );
       END IF;

         INSERT INTO pgb_comp_oferta_demanda
            (SELECT seq_pgb_comp_oferta_demanda.NEXTVAL
                                                      AS id_compofertademanda,
                    var_id_avaluo_nuevo AS id_avaluo, t_actedificadora,
                    t_comportaod, n_tipocomercializa,
                    par_usuario AS usuario_creacion,
                    SYSDATE AS fecha_creacion,
                    par_usuario AS usuario_transaccion,
                    SYSDATE AS fecha_transaccion
               FROM pgb_comp_oferta_demanda
              WHERE id_avaluo = par_id_avaluo);


       IF SQL%NOTFOUND
        THEN
             raise_application_error
                         (-20599,
                             'Pos:112 no se inserto ningun registro en la tabla Comp Oferta Demanda '
                          || SQLERRM
                         );
       END IF;

   EXCEPTION
      WHEN OTHERS
      THEN
         raise_application_error
                             (-20599,
                                 'Pos:200 Error consultando avaluo a copiar '
                              || SQLERRM
                             );
   END;
END prc_cp_avaluo_constr_new_estd;

FUNCTION sf_existe_consecutivo(in_consecutivo VARCHAR) return NUMBER is
    var_consecutivo NUMBER(19);
  BEGIN
                                                 
      BEGIN
          var_consecutivo := 0;
          SELECT A.N_CONSECUTIVOBANCO
            INTO var_consecutivo
            FROM PGB_AVALUOS A
           WHERE TRIM(to_char(A.n_consecutivobanco, '9999999999999999999'))=TRIM(to_char(TO_NUMBER(in_consecutivo), '9999999999999999999'));
      
      EXCEPTION
        WHEN NO_DATA_FOUND THEN
          return 0;
        WHEN OTHERS THEN
          raise_application_error(-20599,
                                  'Pos:100 Error Consultando Consecutivo' ||
                                  SQLERRM);
      END;
    IF var_consecutivo = 0 THEN
          return 0;
    END IF;

    return 1;
 END sf_existe_consecutivo;
end PKG_GENERAL_AVALUOS;  
/