 alter table PGB_LOGS_GENERA_ARCHIVOS add USUARIO_TRANSACCION VARCHAR2(15);

 alter table PGB_LOGS_GENERA_ARCHIVOS add FECHA_TRANSACCION date;

 comment on column PGB_LOGS_GENERA_ARCHIVOS.USUARIO_TRANSACCION
   is 'Usuario que realizo la ultima Modificacion al registro.';

 comment on column PGB_LOGS_GENERA_ARCHIVOS.FECHA_TRANSACCION
   is 'Fecha de la ultima Modificacion al registro.';
