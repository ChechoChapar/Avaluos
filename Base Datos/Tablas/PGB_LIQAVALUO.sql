CREATE TABLE PGB_LIQAVALUO
(
  ID_LIQAVALUO         NUMBER                   NOT NULL,
  ID_AVALUO            NUMBER                   NOT NULL,
  C_DESCRIPLIQ         NUMBER(3),
  A_DESCDEPENDENCIA    VARCHAR2(30 BYTE),
  N_AREALIQ            NUMBER(23,4),
  N_VAL                NUMBER(23,4),
  N_VALTOT             NUMBER(23,4),
  USUARIO_CREACION     VARCHAR2(15 BYTE)        NOT NULL,
  FECHA_CREACION       DATE                     NOT NULL,
  USUARIO_TRANSACCION  VARCHAR2(15 BYTE)        NOT NULL,
  FECHA_TRANSACCION    DATE                     NOT NULL,
  CONSECUTIVO          NUMBER(2)                NOT NULL
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


