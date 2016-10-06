CREATE OR REPLACE TRIGGER TR_BU_USUARIO_CLAVE
BEFORE UPDATE OF CLAVE_USUARIO
ON USUARIO
FOR EACH ROW
-- Trigger que valida que la clave de un usuario no sea igual a las �ltimas tres utilizadas
DECLARE
  REGS NUMBER;
BEGIN

  IF :OLD.CLAVE_USUARIO != :NEW.CLAVE_USUARIO AND
     :NEW.CLAVE_USUARIO != :NEW.codigo_usuario THEN
    SELECT COUNT(*)
      INTO REGS
      FROM (SELECT *
              FROM (SELECT CLAVE_USUARIO, MAX(FECHA_TRANSACCION) FECHA
                      FROM HISTORICO_USUARIO
                     WHERE CODIGO_USUARIO = :NEW.codigo_USUARIO
                     GROUP BY CLAVE_USUARIO
                     ORDER BY 2 DESC)
             WHERE ROWNUM <= 3)
     WHERE CLAVE_USUARIO = :NEW.CLAVE_USUARIO;

    IF REGS != 0 THEN
      RAISE_APPLICATION_ERROR(-20000,
                              'La Clave No Puede Ser Igual a Ninguna de las 3 Anteriores');
    END IF;
  END IF;

END;
/


