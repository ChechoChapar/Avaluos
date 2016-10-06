CREATE TABLE PGB_CONDSALUBRIDAD
(
  ID_CONDSALUBRIDAD      NUMBER(10)             NOT NULL,
  ID_AVALUO              NUMBER                 NOT NULL,
  A_REQUIERE_COND_SALUB  NUMBER,
  C_SALUBRIDAD           NUMBER(3),
  K_AMBARBORIZA          NUMBER(3),
  K_AMBPARQUES           NUMBER(3),
  K_AMBZVERDE            NUMBER(3),
  T_AMBOTRO              VARCHAR2(100 BYTE),
  K_PORAIRE              NUMBER(3),
  K_BASURA               NUMBER(3),
  K_INSERGURIDAD         NUMBER(3),
  K_RUIDO                NUMBER(3),
  K_AGUASHERV            NUMBER(3),
  T_AMBNEGOTRO           VARCHAR2(100 BYTE),
  USUARIO_CREACION       VARCHAR2(15 BYTE)      NOT NULL,
  FECHA_CREACION         DATE                   NOT NULL,
  USUARIO_TRANSACCION    VARCHAR2(15 BYTE)      NOT NULL,
  FECHA_TRANSACCION      DATE                   NOT NULL
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


