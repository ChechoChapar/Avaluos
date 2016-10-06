create or replace trigger TR_AI_PGB_LOGS_GENERA_ARCHIVOS 
after insert OR update on PGB_LOGS_GENERA_ARCHIVOS 
   for each row

DECLARE
var_cont number(3);     

begin
    --Cambio 26/04/2012  Man 5936 para evitar doble inserción del registro de Generación del archivo
    --Luisa Leguizamón
    SELECT COUNT(*)
      into var_cont
      from pgb_hist_logs_genera_arch p
     where p.id_log_archivos = :new.id_log_archivos
       and p.estado = :new.estado
       and p.fecha_transaccion = :new.fecha_transaccion;
    
    IF var_cont = 0 THEN
    
    INSERT INTO PGB_HIST_LOGS_GENERA_ARCH
    (
      ID_HIST_LOGS_GENERA_ARCH,
      ID_LOG_ARCHIVOS,
      NOMBRE_ARCHIVO,
      FECHA_DESDE,
      FECHA_HASTA,
      ESTADO,
      ENVIADO,
      LINK_DESCARGA,
      CODIGO_ERROR,
      DESC_ERROR,
      USUARIO_CREACION,
      FECHA_INICIO_CREACION,
      FECHA_FIN_CREACION,
      NOMBRE_PLANO,
      USUARIO_TRANSACCION,
      FECHA_TRANSACCION
    )
    VALUES
    (
      SEQ_PGB_HIST_LOGS_GENERA_ARCH.Nextval,
      :new.ID_LOG_ARCHIVOS,
      :new.NOMBRE_ARCHIVO,
      :new.FECHA_DESDE,
      :new.FECHA_HASTA,
      :new.ESTADO,
      :new.ENVIADO,
      :new.LINK_DESCARGA,
      :new.CODIGO_ERROR,
      :new.DESC_ERROR,
      :new.USUARIO_CREACION,
      :new.FECHA_INICIO_CREACION,
      :new.FECHA_FIN_CREACION,
      :new.NOMBRE_PLANO,
      :new.USUARIO_TRANSACCION,
      :new.FECHA_TRANSACCION
    );
   END IF; 
end;
/
