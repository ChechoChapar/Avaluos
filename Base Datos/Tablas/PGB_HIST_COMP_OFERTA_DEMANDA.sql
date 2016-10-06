CREATE TABLE PGB_HIST_COMP_OFERTA_DEMANDA
(
  ID_HIST_COMPOFERTADEMANDA  NUMBER(10),
  ID_COMPOFERTADEMANDA       NUMBER,
  ID_AVALUO                  NUMBER,
  T_ACTEDIFICADORA           VARCHAR2(500 BYTE),
  T_COMPORTAOD               VARCHAR2(500 BYTE),
  N_TIPOCOMERCIALIZA         NUMBER(3),
  USUARIO_CREACION           VARCHAR2(15 BYTE),
  FECHA_CREACION             DATE,
  USUARIO_TRANSACCION        VARCHAR2(15 BYTE),
  FECHA_TRANSACCION          DATE
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;















































