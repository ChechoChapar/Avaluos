CREATE OR REPLACE TRIGGER TR_BU_USUARIO
BEFORE UPDATE
ON USUARIO
FOR EACH ROW
-- Trigger que asigna la fecha de transacci�n antes de actualizar un usuario
BEGIN

    :NEW.FECHA_TRANSACCION := SYSDATE;

END;
/


