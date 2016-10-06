create or replace package PKG_GENERAL_AVALUOS is

  -- Author  : 40046225
  -- Created : 09/09/2010 8:59:33
  -- Purpose : Contener los procedimientos generales del sistema

    /* A type to represent a SOAP RPC response */
   TYPE response IS RECORD (
    doc XMLTYPE
   );

   -- Carga los días sábados y domingos en el sistema
   procedure sp_carga_sabado_domingo(panio in number,pusuario in varchar2 default user,pmensaje out varchar2);
   --Llama al servicio web que se encarga de sincronizar las ciudades y departamentos con el código DANE
   procedure sp_sincroniza_dane(pusuario in varchar2 default user,pmensaje out varchar2);
   --Se encarga de invocar el procedimiento de sincronización
   procedure sp_ejecuta_sincroniza_dane;
   --Retorna el XML resultado del servicio
   FUNCTION pr_invoker_web_services(v_url_wsdl             in varchar2,
                                   v_mensaje_soap_request in varchar2,
                                   v_SOAPAction           in varchar2,
                                   v_t_errores            OUT VARCHAR2)
                                   RETURN XMLTYPE;
    --Retorna el XML resultado del servicio
    PROCEDURE pr_invocar_web_services
   (p_codDep in number,
    p_nivel in varchar2,
    p_Ubicacion in varchar2,
    p_resp out XMLTYPE,
    p_error out varchar2
    );


    --Retorna el valor de un dominio
    FUNCTION sf_dominios(in_cod VARCHAR2, in_dominio VARCHAR2) RETURN VARCHAR2;
    --Retorna la descripción de una ciudad a partir del código Asobancaria
    FUNCTION sf_ciudades(in_cod number) return VARCHAR2;
    --Retorna la descripción de un departamento a partir del código Asobancaria
    FUNCTION sf_departamentos(in_cod number) return VARCHAR2;
    --Retorna la descripción del área de una liquidación de avalúo
    FUNCTION sf_descrip_avaluo(in_avaluo number, in_consecutivo VARCHAR2) RETURN VARCHAR2;
    --Retorna el código del área de una liquidación de avalúo
    FUNCTION sf_cod_descrip_avaluo(in_avaluo number, in_consecutivo VARCHAR2) RETURN NUMBER;
    --Retorna el área de una liquidación de avalúo
    FUNCTION sf_area_avaluo(in_avaluo number, in_consecutivo VARCHAR2) RETURN NUMBER;
    --Retorna la descripción de liquidación de una liquidación de avalúo
    FUNCTION sf_descrip_dependencia(in_avaluo number, in_consecutivo VARCHAR2) RETURN VARCHAR2;
    --Retorna el valor unitario de una liquidación de avalúo
    FUNCTION sf_valor_unitario(in_avaluo number, in_consecutivo VARCHAR2) RETURN NUMBER;
    --Retorna el valor total de una liquidación de avalúo
    FUNCTION sf_valor_total(in_avaluo number, in_consecutivo VARCHAR2) RETURN NUMBER;
    --Permite duplicar un Avaluo
PROCEDURE prc_copiar_avaluo (
   par_id_avaluo   IN   NUMBER,
   par_usuario     IN   VARCHAR2
);

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
);

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
);

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
);


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
);


FUNCTION sf_existe_consecutivo(in_consecutivo VARCHAR/*FLOAT*//*NUMBER*/) return /*BOOLEAN*/NUMBER;

end PKG_GENERAL_AVALUOS;
/


