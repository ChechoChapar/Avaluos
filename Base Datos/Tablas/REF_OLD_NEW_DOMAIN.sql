-- Create table
create table REF_OLD_NEW_DOMAIN
(
  OLD_DOMAIN      VARCHAR2(100) not null,
  OLD_VALUE       VARCHAR2(240) not null,
  SF_DOMAIN       VARCHAR2(240),
  SF_VALUE        VARCHAR2(240),
  SF_DESCR        VARCHAR2(240),
  BUA_DOMAIN      VARCHAR2(240),
  BUA_VALUE       VARCHAR2(240),
  BUA_DESCR       VARCHAR2(240)
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
-- Add comments to the table 
comment on table REF_OLD_NEW_DOMAIN
  is 'Almacena los dominios propios del aplicativo y su equivalencia con los dominios SF y BUA';
-- Add comments to the columns 
comment on column REF_OLD_NEW_DOMAIN.OLD_DOMAIN
  is 'Nombre del dominio del sistema';
comment on column REF_OLD_NEW_DOMAIN.OLD_VALUE
  is 'Valor del dominio del sistema';
comment on column REF_OLD_NEW_DOMAIN.SF_DOMAIN
  is 'Nombre del dominio de SF ';
comment on column REF_OLD_NEW_DOMAIN.SF_VALUE
  is 'Valor del dominio de SF ';
comment on column REF_OLD_NEW_DOMAIN.SF_DESCR
  is 'Descripción del dominio de BUA';
comment on column REF_OLD_NEW_DOMAIN.BUA_DOMAIN
  is 'Nombre del dominio de BUA ';
comment on column REF_OLD_NEW_DOMAIN.BUA_VALUE
  is 'Valor del dominio de BUA ';
comment on column REF_OLD_NEW_DOMAIN.BUA_DESCR
  is 'Descripción del dominio de BUA';
