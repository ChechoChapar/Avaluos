CREATE TABLE TAREA_PROCESO
(
  CODIGO_TAREA         VARCHAR2(20 BYTE)        NOT NULL,
  TRANSACCION          VARCHAR2(400 BYTE),
  INSTRUCCION          VARCHAR2(4000 BYTE),
  PROCESO              VARCHAR2(500 BYTE),
  ID_BLOQUE            NUMBER(2)                NOT NULL,
  TRANSACCION_ALTERNA  VARCHAR2(15 BYTE),
  JOIN                 VARCHAR2(500 BYTE),
  REFERENCES           VARCHAR2(200 BYTE),
  TAB_TITLE            VARCHAR2(30 BYTE),
  VALIDATE_FORM        VARCHAR2(1 BYTE),
  FILE_OUTPUT          VARCHAR2(25 BYTE),
  INITIAL_PARAMS       VARCHAR2(200 BYTE),
  TITLE_DATA           VARCHAR2(50 BYTE),
  DATASOURCE           VARCHAR2(30 BYTE),
  NUM_COLUMN           NUMBER(2)                DEFAULT 2,
  INITIAL_STATED       NUMBER(2)                DEFAULT 2
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;

