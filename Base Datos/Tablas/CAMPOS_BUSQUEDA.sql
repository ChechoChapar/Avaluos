CREATE TABLE CAMPOS_BUSQUEDA
(
  CODIGO_TAREA  VARCHAR2(15 BYTE)               NOT NULL,
  ID_BLOQUE     NUMBER(2)                       NOT NULL,
  CAMPO         VARCHAR2(50 BYTE)               NOT NULL,
  KEY           VARCHAR2(2000 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


