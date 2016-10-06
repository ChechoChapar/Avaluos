CREATE OR REPLACE TRIGGER TR_BI_HISTO_USRIO
BEFORE INSERT
ON HISTORICO_USUARIO
FOR EACH ROW
-- Trigger que asigna una secuencia de histórico a partir de una secuencia de Base de Datos
BEGIN
  SELECT seq_hist_usuario.NEXTVAL
 INTO :NEW.secuencia_historico FROM dual;
END;
/


