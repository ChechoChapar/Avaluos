CREATE TABLE T_TAREAS_PERFIL
(
  ID_TAREAS_PERFIL         NUMBER(20),
  PERFIL                   VARCHAR2(15 BYTE)    NOT NULL,
  MODULO                   VARCHAR2(60 BYTE)    NOT NULL,
  DESCRIPCION_MODULO       VARCHAR2(60 BYTE)    NOT NULL,
  MODULO_PADRE             VARCHAR2(60 BYTE),
  ES_SUBMODULO             VARCHAR2(2 BYTE),
  ORDEN_TRANSACCION        NUMBER(3),
  CODIGO_TRANSACCION       VARCHAR2(20 BYTE)    NOT NULL,
  DESCRIPCION_TRANSACCION  VARCHAR2(120 BYTE)   NOT NULL,
  NOMBRE_PELICULA          VARCHAR2(200 BYTE),
  EJECUTA                  VARCHAR2(1 BYTE)     NOT NULL,
  IMPRIME                  VARCHAR2(1 BYTE)     NOT NULL,
  ACTUALIZA                VARCHAR2(1 BYTE)     NOT NULL,
  ADICIONA                 VARCHAR2(1 BYTE)     NOT NULL,
  ELIMINA                  VARCHAR2(1 BYTE)     NOT NULL,
  CONSULTA                 VARCHAR2(1 BYTE)     NOT NULL
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


