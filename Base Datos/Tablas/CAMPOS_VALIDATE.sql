CREATE TABLE CAMPOS_VALIDATE
(
  CODIGO_TAREA  VARCHAR2(15 BYTE)               NOT NULL,
  ID_BLOQUE     NUMBER(2)                       NOT NULL,
  CAMPO         VARCHAR2(32 BYTE)               NOT NULL,
  VALIDATES     VARCHAR2(2000 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;

