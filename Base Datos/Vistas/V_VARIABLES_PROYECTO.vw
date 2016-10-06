CREATE OR REPLACE VIEW V_VARIABLES_PROYECTO
AS 
SELECT
TO_CHAR(SYSDATE, 'dd/mm/yyyy') FECHA,
trim(TO_CHAR(SYSDATE, 'day','nls_date_language=spanish')) || ', '|| TO_CHAR(SYSDATE, 'dd/mm/yyyy')  FECHA_completa,
codigo_usuario,
u.codigo_perfil,
codigo_localidad,
contador_accesos,
fecha_activacion,
indicador_nivel_supervision,
u.fecha_vencimiento,
estado_usuario,
cedula_empleado,
codigo_empleado,
nombre_empleado,
telefono_empleado,
fecha_creacion,
u.fecha_transaccion,
u.usuario_transaccion,
NULL codigo_asesor_prevencion,
NULL codigo_asesor_plan,
NULL codigo_proveedor,
NULL nit_proveedor,
NULL nit_empresa
FROM USUARIO u, PERFIL p
WHERE u.codigo_perfil = p.codigo_perfil
UNION
SELECT
TO_CHAR(SYSDATE, 'dd/mm/yyyy') FECHA,
trim(TO_CHAR(SYSDATE, 'day','nls_date_language=spanish')) || ', '|| TO_CHAR(SYSDATE, 'dd/mm/yyyy')  FECHA_completa,
USER,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
NULL,
USER,
NULL,
SYSDATE,
SYSDATE,
USER,
NULL codigo_asesor_prevencion,
NULL codigo_asesor_plan,
NULL codigo_proveedor,
NULL nit_proveedor,
NULL nit_empresa
FROM dual;


