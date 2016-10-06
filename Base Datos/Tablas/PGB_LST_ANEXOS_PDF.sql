-- Create table
create table PGB_LST_ANEXOS_PDF
(
  ID_LST_ANEXOS_PDF   NUMBER not null,
  ID_AVALUO           NUMBER not null,
  ID_ARCHIVO          NUMBER not null,
  CONSECUTIVO_ANEXO   NUMBER not null,
  COLUMN1             VARCHAR2(20),
  USUARIO_CREACION    VARCHAR2(15) not null,
  FECHA_CREACION      DATE not null,
  USUARIO_TRANSACCION VARCHAR2(15),
  FECHA_TRANSACCION   DATE
)
tablespace DATOS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate primary, unique and foreign key constraints 
alter table PGB_LST_ANEXOS_PDF
  add constraint PK_ANEXOS_PDF primary key (ID_LST_ANEXOS_PDF)
  using index 
  tablespace DATOS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table PGB_LST_ANEXOS_PDF
  add constraint FK_LST_ANX_ARCHIVOS foreign key (ID_ARCHIVO)
  references ARCHIVOS (ID_ARCHIVO);
alter table PGB_LST_ANEXOS_PDF
  add constraint FK_LST_ANX_AVALUO foreign key (ID_AVALUO)
  references PGB_AVALUOS (ID_AVALUO);
