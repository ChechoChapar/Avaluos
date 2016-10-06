create or replace procedure Prc_limpia_archivos_huerfanos(fecha_desde in DATE,fecha_hasta in DATE) is

  CURSOR cur_avaluos_ids IS
    Select a.A_IDARCHIVO,
           a.F_FECHAAVALUO,
           a.ID_AVALUO,
           a.C_IDTIPOIDENTIFICACION,
           a.N_CONSECUTIVOBANCO,
           a.N_IDENTIFICACION,
           a.A_TIPODOCUMENTO,
           a.T_NOMBRESOLICITANTE,
           a.A_SOLTEL,
           a.A_SOLCEL,
           a.A_SOLCORREO,
           a.T_SECTOR,
           a.C_IDDEPARTAMENTO,
           a.C_IDCIUDAD,
           a.A_CODDANE_DEPTO,
           a.A_CODDANE_CIUDAD,
           a.T_DIRINMUEBLE,
           a.T_NOMBCONJEDIF,
           a.T_BARRIO,
           a.A_NOMBANCO,
           a.A_CODBANCO,
           a.C_IDMETODOLOGIA,
           a.C_IDOBJETOAVALUO,
           a.T_JUSTIFICACION,
           a.A_UBICGPS,
           a.A_TIPO_INFORME,
           a.A_ESTADOAVALUO,
           a.T_USUARIO,
           a.USUARIO_CREACION,
           a.FECHA_CREACION,
           a.USUARIO_TRANSACCION,
           a.FECHA_TRANSACCION,
           a.A_NUMLINEA,
           a.T_SISTEMA,
           a.C_SISTEMA,
           a.T_LATITUD,
           a.T_LONGITUD
      From PGB_AVALUOS a
     Where a.A_IDARCHIVO In
           (Select PGB_LOGS_GENERA_ARCHIVOS.ID_LOG_ARCHIVOS
              From PGB_LOGS_GENERA_ARCHIVOS
             Where PGB_LOGS_GENERA_ARCHIVOS.NOMBRE_ARCHIVO Is Null
               And PGB_LOGS_GENERA_ARCHIVOS.FECHA_DESDE Is Null
               And PGB_LOGS_GENERA_ARCHIVOS.FECHA_HASTA Is Null
               And PGB_LOGS_GENERA_ARCHIVOS.ESTADO Is Null
               And PGB_LOGS_GENERA_ARCHIVOS.ENVIADO Is Null
               And PGB_LOGS_GENERA_ARCHIVOS.LINK_DESCARGA Is Null
               And PGB_LOGS_GENERA_ARCHIVOS.CODIGO_ERROR Is Null
               And PGB_LOGS_GENERA_ARCHIVOS.DESC_ERROR Is Null
               And PGB_LOGS_GENERA_ARCHIVOS.USUARIO_CREACION Is Null
               And PGB_LOGS_GENERA_ARCHIVOS.FECHA_INICIO_CREACION Is Null
               And PGB_LOGS_GENERA_ARCHIVOS.FECHA_FIN_CREACION Is Null
               And PGB_LOGS_GENERA_ARCHIVOS.NOMBRE_PLANO Is Null
               And PGB_LOGS_GENERA_ARCHIVOS.USUARIO_TRANSACCION Is Null
               And PGB_LOGS_GENERA_ARCHIVOS.FECHA_TRANSACCION Is Null)
       And a.F_FECHAAVALUO Between fecha_desde And fecha_hasta
    ;
  reg_avaluos_ids cur_avaluos_ids%ROWTYPE;

begin

  open cur_avaluos_ids;
  loop
    fetch cur_avaluos_ids into reg_avaluos_ids;
    exit when cur_avaluos_ids%notfound;
    
       Update PGB_AVALUOS set A_IDARCHIVO=NULL where ID_AVALUO=reg_avaluos_ids.id_avaluo;
    
  end loop;
  close cur_avaluos_ids;

end Prc_limpia_archivos_huerfanos;
/


