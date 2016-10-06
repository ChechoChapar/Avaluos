create or replace trigger TR_AI_PGB_CARGUE_TMP
   after insert on PGB_CARGUE_TMP
DECLARE
     --pragma autonomous_transaction;
     v_numero_ref_cargue NUMBER;
     v_tipo_proyecto NUMBER;
     v_tipo_proy VARCHAR2(100);
     V_ERROR VARCHAR2(100);
   begin
            for i in 1 .. pkg_estado_mutating.newRows.count loop
                 SELECT DISTINCT pgb_cargue_tmp.numero_ref_cargue
                 INTO  v_numero_ref_cargue
                  FROM pgb_cargue_tmp
                 WHERE rowid = pkg_estado_mutating.newRows(i);

                 SELECT DISTINCT pgb_cargue_tmp.tipo_proyecto
                 INTO  v_tipo_proyecto
                  FROM pgb_cargue_tmp
                 WHERE rowid = pkg_estado_mutating.newRows(i);
            end loop;
            pkg_estado_mutating.newRows := pkg_estado_mutating.empty;
            
            IF v_tipo_proyecto = 1 THEN
               v_tipo_proy:='false';
            ELSIF v_tipo_proyecto = 2 THEN
               v_tipo_proy:='true';                
            END IF;  
            
    BEGIN
       --PRC_CARGA_AVALUO_CONSTRUCTOR(v_numero_ref_cargue,'CARGUE',v_tipo_proyecto);
       PRC_CARGA_AVALUO_CONSTRUCTOR(v_numero_ref_cargue,'CARGUE',v_tipo_proy);
       --COMMIT;
    EXCEPTION
      WHEN OTHERS THEN
        /*:NEW.ESTADO_CARGUE:='RECHAZADO';
        :NEW.MENSAJE_ERROR:='El formato del archivo no es correcto: '||SQLERRM;*/
        V_ERROR:=SQLERRM||SQLCODE;
        UPDATE PGB_CARGUE_TMP
          SET ESTADO_CARGUE='RECHAZADO',MENSAJE_ERROR='El formato del archivo no es correcto: '||V_ERROR
        WHERE
          NUMERO_REF_CARGUE = v_numero_ref_cargue
         AND TIPO_CARGUE       = 'CARGUE'
         AND TIPO_PROYECTO     = v_tipo_proyecto;
         --COMMIT;
     END;

END TR_AI_PGB_CARGUE_TMP;
/
