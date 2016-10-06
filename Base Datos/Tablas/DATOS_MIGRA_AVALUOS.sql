-- Create table
create table DATOS_MIGRA_AVALUOS
(
id_avaluo         VARCHAR2(50) not null,
consecutivobanco  VARCHAR2(50) not null, 
fecha             DATE,
usuario           VARCHAR2 (50),
mensaje           VARCHAR2 (800)
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
comment on table DATOS_MIGRA_AVALUOS
  is 'Almacena los registros de la trazabilidad de inconsistencias durante la migración';
-- Add comments to the columns 
comment on column DATOS_MIGRA_AVALUOS.id_avaluo
  is 'Identificador del avaluo';
comment on column DATOS_MIGRA_AVALUOS.consecutivobanco
  is 'Identificador del consecutivo de banco acopla fecha con id de cliente';
comment on column DATOS_MIGRA_AVALUOS.fecha
  is 'Fecha del procesamiento ';
comment on column DATOS_MIGRA_AVALUOS.usuario
  is 'Usuario que ejecuto el procedimiento ';
comment on column DATOS_MIGRA_AVALUOS.mensaje
  is 'Mensaje descriptivo del error';
