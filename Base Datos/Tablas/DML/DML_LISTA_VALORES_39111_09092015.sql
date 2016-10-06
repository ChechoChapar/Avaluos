--INSERT LISTA_VALORES

INSERT INTO AVALUOS.LISTA_VALORES (LV_NOMBRE, INSTRUCCION_SQL, FILTER, ESQUEMA, DESCRIPCION)
VALUES ('LV_CLASIFICACION_INFORMACION', 'SELECT  A.LOW_VALUE VALOR, MEANING AS DESCRIPCION
FROM   V_CG_REF_CODES A
WHERE A.NAME LIKE ''CLASIFICACION_INFORMACION''
ORDER BY 2', '', '', '');

INSERT INTO AVALUOS.LISTA_VALORES (LV_NOMBRE, INSTRUCCION_SQL, FILTER, ESQUEMA, DESCRIPCION)
VALUES ('LV_CRITICIDAD_INFORMACION', 'SELECT  A.LOW_VALUE VALOR, MEANING AS DESCRIPCION
FROM   V_CG_REF_CODES A
WHERE A.NAME LIKE ''CRITICIDAD_INFORMACION''
ORDER BY 2', '', '', '');

COMMIT;
/
