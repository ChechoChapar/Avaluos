CREATE OR REPLACE VIEW V_MODULOS_PERFIL
AS 
select unique tp.codigo_perfil
      ,mp.codigo_modulo
      ,mp.orden
      ,mp.descripcion_modulo
      ,mp.codigo_modulo_padre
      ,tp.codigo_perfil codigo_perfil_padre
      ,decode(mp.codigo_modulo_padre,null,'N','S')es_submodulo
  from modulo_aplicacion mp, tarea_perfil tp, tarea t
 where mp.codigo_modulo = t.codigo_modulo
   and tp.codigo_tarea = t.codigo_tarea
 order by  mp.orden;


