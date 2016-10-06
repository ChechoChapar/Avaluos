CREATE OR REPLACE FUNCTION Sf_Servletalterno(alterna IN VARCHAR2, bloque IN NUMBER) RETURN VARCHAR2 AS

   MODULO  TAREA_PROCESO.TRANSACCION%TYPE := '';
   retorno Pkg_Package_Operacion.row_type;
BEGIN

IF alterna IS NOT NULL THEN
  OPEN retorno FOR
  SELECT transaccion
  FROM TAREA_PROCESO
  WHERE codigo_tarea = alterna
  AND id_bloque = bloque
  AND transaccion IS NOT NULL;

  FETCH retorno INTO MODULO;

  CLOSE retorno;

END IF;

RETURN MODULO;

EXCEPTION
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20000, SQLERRM || CHR(13) || ' Tarea Alterna = ' || alterna || ' Bloque = ' || Bloque);

END;
/


