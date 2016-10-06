CREATE OR REPLACE TRIGGER TR_BI_HISTO_TAREA_PERFIL
BEFORE INSERT
ON HISTORICO_TAREA_PERFIL
FOR EACH ROW
-- Trigger que asigna una secuencia de hist�rico a partir de una secuencia de Base de Datos
BEGIN
  SELECT seq_hist_tarea_perfil.NEXTVAL
 INTO :NEW.secuencia_historico FROM dual;
END;
/


