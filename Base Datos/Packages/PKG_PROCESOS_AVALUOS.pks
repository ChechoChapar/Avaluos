create or replace package PKG_PROCESOS_AVALUOS is

-- Author  : 40046225
-- Created : 09/09/2010 8:59:33
-- Purpose : Contener los procedimientos generales del sistema

--Elimina los avalúos en estado nuevo que lleven más de dos semanas en este estado  
PROCEDURE sp_elimina_avaluos_nuevos;
--Elimina avalúos aprobados que no tengan anexos
PROCEDURE sp_elimina_avaluos_sin_anexos;
--Se encarga de invocar los procedimientos automáticos
PROCEDURE sp_verifica_avaluos;
--Se encarga de eliminar los archivos temporales del cargue masivo.
PROCEDURE sp_elimina_archivos_tmp;

END;
/