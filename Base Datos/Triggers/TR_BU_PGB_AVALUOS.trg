create or replace trigger TR_BU_PGB_AVALUOS
  before update on pgb_avaluos  
  for each row
declare
 nombre_archivo          VARCHAR2(200)  ;
 fecha_desde             DATE           ;  
 fecha_hasta             DATE           ; 
 estado                  VARCHAR2(1)    ; 
 enviado                 VARCHAR2(1)    ; 
 link_descarga           VARCHAR2(500)  ; 
 codigo_error            NUMBER         ;
 desc_error              VARCHAR2(4000) ;
 usuario_creacion        VARCHAR2(15)   ;
 fecha_inicio_creacion   DATE           ;
 fecha_fin_creacion      DATE           ;
 nombre_plano            VARCHAR2(200)  ;
 usuario_transaccion     VARCHAR2(15)   ;
 fecha_transaccion       DATE           ;
  
begin
   
    Dbms_Output.put_line('new: '||:NEW.a_Idarchivo);
    Dbms_Output.put_line('old: '||:OLD.a_Idarchivo);
    
    IF (:OLD.a_Idarchivo IS NULL) OR (:NEW.a_Idarchivo <> :OLD.a_Idarchivo)   THEN
      select
        t.nombre_archivo,
        t.fecha_desde,
        t.fecha_hasta,
        t.estado,
        t.enviado,
        t.link_descarga,
        t.codigo_error,
        t.desc_error,
        t.usuario_creacion,
        t.fecha_inicio_creacion,
        t.fecha_fin_creacion,
        t.nombre_plano,
        t.usuario_transaccion,
        t.fecha_transaccion
      into
        nombre_archivo,
        fecha_desde,
        fecha_hasta,
        estado,
        enviado,
        link_descarga,
        codigo_error,
        desc_error,
        usuario_creacion,
        fecha_inicio_creacion,
        fecha_fin_creacion,
        nombre_plano,  
        usuario_transaccion,
        fecha_transaccion
      from PGB_LOGS_GENERA_ARCHIVOS t
      where
        t.id_log_archivos = :NEW.a_idarchivo;
      
      IF 
        nombre_archivo        IS NULL AND 
        fecha_desde           IS NULL AND 
        fecha_hasta           IS NULL AND 
        estado                IS NULL AND 
        enviado               IS NULL AND 
        link_descarga         IS NULL AND 
        codigo_error          IS NULL AND 
        desc_error            IS NULL AND 
        usuario_creacion      IS NULL AND 
        fecha_inicio_creacion IS NULL AND 
        fecha_fin_creacion    IS NULL AND 
        nombre_plano          IS NULL AND   
        usuario_transaccion   IS NULL AND 
        fecha_transaccion     IS NULL 
      THEN
         IF :OLD.a_Idarchivo IS NULL THEN 
            :NEW.a_Idarchivo := NULL;
         ELSE
            :NEW.a_Idarchivo := :OLD.a_Idarchivo;
         END IF;          
      END IF;
   END IF;   
 EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.put_line(SQLERRM); 
end TR_BU_PGB_AVALUOS;
/
