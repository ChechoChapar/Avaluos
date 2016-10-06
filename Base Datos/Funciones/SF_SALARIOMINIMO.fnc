CREATE OR REPLACE FUNCTION Sf_Salariominimo RETURN NUMBER AS
salario NUMBER;
retorno Pkg_Package_Operacion.row_type;
BEGIN
  OPEN retorno FOR
  SELECT valor_salario
  FROM
    ( SELECT 1 opcion, anho, valor_salario
      FROM SALARIO_MINIMO
      WHERE anho = TO_CHAR(SYSDATE,'rrrr')
    UNION
      SELECT 2, anho, valor_salario
      FROM SALARIO_MINIMO
      WHERE anho = ( SELECT MAX(anho)
  	     	         FROM SALARIO_MINIMO
                   )
    )
  ORDER BY 1;

  FETCH retorno INTO salario;

  CLOSE retorno;

  RETURN salario;

END;
/


