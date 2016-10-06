-- Create table
create table PGB_CARGUE_TMP
(
  CONSECUTIVO_TMP          NUMBER not null,
  NUMERO_REF_CARGUE        NUMBER,
  LINEA_PLANO              NUMBER,
  TIPO_CARGUE              VARCHAR2(10),
  ESTADO_CARGUE            VARCHAR2(10),
  FECHA_TRANSACCION        DATE,
  USUARIO_TRANSACCION      VARCHAR2(13),
  MENSAJE_ERROR            VARCHAR2(4000),
  CONSECUTIVO_BATCH        NUMBER,
  NOMBRE_ARCHIVO           VARCHAR2(200),
  CONTENIDO_LINEA_PLANO    CLOB,
  CONTENIDO_LINEA_PLANO_CP VARCHAR2(4000),
  TIPO_PROYECTO            NUMBER
)
tablespace DATOS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 192K
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table PGB_CARGUE_TMP
  is 'Se ingresa la línea del plano para procesar la malla validadora de Asobancaria en cargue o generación de archivos';
-- Add comments to the columns 
comment on column PGB_CARGUE_TMP.CONSECUTIVO_TMP
  is 'Identificador único del registro en la tabla';
comment on column PGB_CARGUE_TMP.NUMERO_REF_CARGUE
  is 'Identificador del archivo origen .txt';
comment on column PGB_CARGUE_TMP.LINEA_PLANO
  is 'Contenido separado por pipes de la línea del plano analizada';
comment on column PGB_CARGUE_TMP.TIPO_CARGUE
  is 'Si es CARGUE es un registro de un cargue masivo. Si es DESCARGA es un registro generado para transmisión a Asobancaria';
comment on column PGB_CARGUE_TMP.ESTADO_CARGUE
  is 'APLICADO significa procesamiento y guardado exitoso.  CARGADO se encuentra pendiente de procesamiento por la malla validadora. RECHAZADO cuando existen errores.';
comment on column PGB_CARGUE_TMP.FECHA_TRANSACCION
  is 'Fecha de modificaciones en el sistema';
comment on column PGB_CARGUE_TMP.USUARIO_TRANSACCION
  is 'Usuario que realiza modificaciones en el sistema';
comment on column PGB_CARGUE_TMP.MENSAJE_ERROR
  is 'Descripción de errores resultado del procesamiento de la malla validadora';
comment on column PGB_CARGUE_TMP.CONSECUTIVO_BATCH
  is 'Consecutivo compartido por todos los archivos .txt de un mismo cargue y por los archivos de imagen';
comment on column PGB_CARGUE_TMP.NOMBRE_ARCHIVO
  is 'Nombre del archivo .txt ingresado en el cargue';
comment on column PGB_CARGUE_TMP.CONTENIDO_LINEA_PLANO
  is 'Registro separado por pipes de la línea del plano';
comment on column PGB_CARGUE_TMP.CONTENIDO_LINEA_PLANO_CP
  is 'Versión antigua de Contenido_Linea_Plano. No es utilizada';
comment on column PGB_CARGUE_TMP.TIPO_PROYECTO
  is 'Identifica si el proyecto es de tipo constructor (2) o tipo cargue individual (1)';
-- Create/Recreate primary, unique and foreign key constraints 
alter table PGB_CARGUE_TMP
  add primary key (CONSECUTIVO_TMP)
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
-- Create/Recreate check constraints 
alter table PGB_CARGUE_TMP
  add constraint ESTADO_CARGUE
  check (ESTADO_CARGUE = 'CARGADO' OR (ESTADO_CARGUE = 'APLICADO' OR ESTADO_CARGUE = 'RECHAZADO'));
alter table PGB_CARGUE_TMP
  add constraint TIPO_CARGUE
  check (TIPO_CARGUE = 'CARGUE' OR TIPO_CARGUE = 'DESCARGA');
