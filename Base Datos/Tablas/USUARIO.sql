CREATE TABLE USUARIO
(
  CODIGO_USUARIO               VARCHAR2(13 BYTE),
  CODIGO_PERFIL                VARCHAR2(15 BYTE) NOT NULL,
  CLAVE_USUARIO                VARCHAR2(100 BYTE),
  CODIGO_LOCALIDAD             NUMBER(4)        NOT NULL,
  CONTADOR_ACCESOS             NUMBER(10)       NOT NULL,
  FECHA_ACTIVACION             DATE,
  INDICADOR_NIVEL_SUPERVISION  NUMBER(2)        NOT NULL,
  FECHA_VENCIMIENTO            DATE,
  ESTADO_USUARIO               VARCHAR2(1 BYTE) NOT NULL,
  CEDULA_EMPLEADO              NUMBER(16)       NOT NULL,
  CODIGO_EMPLEADO              VARCHAR2(16 BYTE),
  NOMBRE_EMPLEADO              VARCHAR2(60 BYTE) NOT NULL,
  TELEFONO_EMPLEADO            VARCHAR2(15 BYTE),
  COD_CIA                      NUMBER(2)        DEFAULT 1,
  FECHA_CREACION               DATE             NOT NULL,
  FECHA_TRANSACCION            DATE             NOT NULL,
  USUARIO_TRANSACCION          VARCHAR2(13 BYTE) NOT NULL
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


