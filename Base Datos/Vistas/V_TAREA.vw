CREATE OR REPLACE VIEW V_TAREA
AS 
SELECT CODIGO_TAREA, DESCRIPCION_TAREA,
    CODIGO_MODULO,
    DECODE(TIPO_TAREA, 'FO', 'FORMA','RE','REPORTE','PR','PROCESO') TIPO
FROM TAREA;


