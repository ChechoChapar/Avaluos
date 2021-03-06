CREATE TABLE HISTORICO_TAREA_PERFIL
(
  SECUENCIA_HISTORICO    NUMBER(10)             DEFAULT 0,
  CODIGO_TAREA           VARCHAR2(15 BYTE),
  CODIGO_PERFIL          VARCHAR2(15 BYTE),
  PERMISO_EJECUTAR       VARCHAR2(1 BYTE)       NOT NULL,
  PERMISO_IMPRIMIR       VARCHAR2(1 BYTE)       NOT NULL,
  PERMISO_ACTUALIZACION  VARCHAR2(1 BYTE)       NOT NULL,
  PERMISO_ADICIONAR      VARCHAR2(1 BYTE)       NOT NULL,
  PERMISO_BORRAR         VARCHAR2(1 BYTE)       NOT NULL,
  PERMISO_CONSULTAR      VARCHAR2(1 BYTE)       NOT NULL,
  FECHA_TRANSACCION      DATE                   NOT NULL,
  USUARIO_TRANSACCION    VARCHAR2(13 BYTE)      NOT NULL
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


