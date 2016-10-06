CREATE OR REPLACE VIEW V_TAREAS_PERFIL
AS 
select ROWNUM id_tareas_perfil
      ,tp.codigo_perfil
      ,mp.codigo_modulo
      ,t.orden orden_tarea
      ,t.codigo_tarea
      ,t.descripcion_tarea
      ,t.contenido
      ,tp.permiso_ejecutar
      ,tp.permiso_imprimir
      ,tp.permiso_actualizacion
      ,tp.permiso_adicionar
      ,tp.permiso_borrar
      ,tp.permiso_consultar
  from modulo_aplicacion mp, tarea_perfil tp, tarea t
 where mp.codigo_modulo = t.codigo_modulo
   and tp.codigo_tarea = t.codigo_tarea
 order by  mp.orden,t.orden;


