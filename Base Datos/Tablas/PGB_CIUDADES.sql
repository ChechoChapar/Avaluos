CREATE TABLE PGB_CIUDADES
(
  ID_CIUDAD            NUMBER                   NOT NULL,
  ID_DEPARTAMENTO      NUMBER                   NOT NULL,
  CIUDAD               VARCHAR2(60 BYTE)        NOT NULL,
  COD_DANE             NUMBER(13),
  USUARIO_CREACION     VARCHAR2(15 BYTE)        NOT NULL,
  FECHA_CREACION       DATE                     NOT NULL,
  USUARIO_TRANSACCION  VARCHAR2(15 BYTE)        NOT NULL,
  FECHA_TRANSACCION    DATE                     NOT NULL,
  COD_ASOBANCARIA      NUMBER                   NOT NULL
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


