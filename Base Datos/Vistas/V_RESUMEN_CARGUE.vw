CREATE OR REPLACE VIEW V_RESUMEN_CARGUE
(NUMERO_REF_CARGUE, TIPO_CARGUE, FECHA_TRANSACCION, NOMBRE_ARCHIVO, CONSECUTIVO_BATCH, 
 USUARIO_TRANSACCION,EMPRESA_AVALUOS,TOTAL, APLICADOS, RECHAZADOS, SIN_ESTADO)
 AS
SELECT /*+ PARALLEL(PGB_CARGUE_TMP, 2) */ DISTINCT pgb_cargue_tmp.numero_ref_cargue,
                   pgb_cargue_tmp.tipo_cargue,
                   --TRUNC(pgb_cargue_tmp.fecha_transaccion,'DD'),
                   /*Se cambia para evitar imprecisiones con las fechas*/
                   TRUNC(MAX(pgb_cargue_tmp.fecha_transaccion)) fecha_transaccion,
                   pgb_cargue_tmp.nombre_archivo,
                   pgb_cargue_tmp.consecutivo_batch,
                   pgb_cargue_tmp.usuario_transaccion,
                   Sf_empresa_perito(pgb_cargue_tmp.usuario_transaccion) as empresa_avaluos,
                   (SELECT /*+ PARALLEL(TOTAL, 2) */ COUNT(consecutivo_tmp)
                      FROM pgb_cargue_tmp total
                     WHERE total.numero_ref_cargue =
                                       pgb_cargue_tmp.numero_ref_cargue)
                                                                       total,
                   (SELECT /*+ PARALLEL(APLICADOS, 2) */ COUNT(estado_cargue)
                      FROM pgb_cargue_tmp aplicados
                     WHERE ((aplicados.estado_cargue = 'APLICADO')
                           )
                       AND aplicados.numero_ref_cargue =
                                              pgb_cargue_tmp.numero_ref_cargue)
                                                                    aplicados,
                   (SELECT /*+ PARALLEL(RECHAZADOS, 2) */ COUNT(estado_cargue)
                      FROM pgb_cargue_tmp rechazados
                     WHERE ((rechazados.estado_cargue = 'RECHAZADO')
                           )
                       AND rechazados.numero_ref_cargue =
                                              pgb_cargue_tmp.numero_ref_cargue)
                                                                   rechazados,
                   (SELECT /*+ PARALLEL(SIN_ESTADO, 2) */ COUNT(estado_cargue)
                      FROM pgb_cargue_tmp sin_estado
                     WHERE ((sin_estado.estado_cargue = 'CARGADO')
                           )
                       AND sin_estado.numero_ref_cargue =
                                              pgb_cargue_tmp.numero_ref_cargue)
                                                                   sin_estado
              FROM pgb_cargue_tmp
          GROUP BY

               pgb_cargue_tmp.numero_ref_cargue,
               pgb_cargue_tmp.tipo_cargue,
               pgb_cargue_tmp.nombre_archivo,
               pgb_cargue_tmp.usuario_transaccion,
               pgb_cargue_tmp.consecutivo_batch

          ORDER BY pgb_cargue_tmp.numero_ref_cargue

/*Vista para resumen del cargue*/;
comment on column V_RESUMEN_CARGUE.NUMERO_REF_CARGUE is 'Identificador del archivo plano';
comment on column V_RESUMEN_CARGUE.TIPO_CARGUE is 'CARGA o DESCARGUE';
comment on column V_RESUMEN_CARGUE.FECHA_TRANSACCION is 'Día, Mes y Año de realización del cargue';
comment on column V_RESUMEN_CARGUE.NOMBRE_ARCHIVO is 'Nombre del Plano';
comment on column V_RESUMEN_CARGUE.CONSECUTIVO_BATCH is 'Identificador del grupo de archivos de un cargue';
comment on column V_RESUMEN_CARGUE.USUARIO_TRANSACCION is 'Usuario que carga el archivo';
comment on column V_RESUMEN_CARGUE.EMPRESA_AVALUOS is 'Empresa Avaluadora';
comment on column V_RESUMEN_CARGUE.TOTAL is 'Número total de registros del plano';
comment on column V_RESUMEN_CARGUE.APLICADOS is 'Número de registros aplicados';
comment on column V_RESUMEN_CARGUE.RECHAZADOS is 'Número de registros rechazados';
comment on column V_RESUMEN_CARGUE.SIN_ESTADO is 'identifica los registros en estado CARGADO';