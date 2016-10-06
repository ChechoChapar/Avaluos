create or replace trigger TR_AI_ER_PGB_CARGUE_TMP
   after insert on PGB_CARGUE_TMP for each row
begin
    IF :NEW.ESTADO_CARGUE='CARGADO' AND :NEW.TIPO_CARGUE='CARGUE'   THEN
           pkg_estado_mutating.newRows( pkg_estado_mutating.newRows.count+1 ) := :new.rowid;
    END IF;
   end;
/
