CREATE OR REPLACE TRIGGER TR_AI_LIQUI_AVALUO
  after insert on pgb_liqavaluo
-- Trigger que elimina las filas vacías de liquidación de avalúos
DECLARE

cursor c_avaluos_borrar is
 select table_name,mensaje
  from ava_mutating;

BEGIN
   for a in c_avaluos_borrar loop
    begin
       DELETE FROM PGB_LIQAVALUO
        WHERE ID_AVALUO = a.table_name
          AND CONSECUTIVO = a.mensaje;

       DELETE FROM AVA_MUTATING
        WHERE TABLE_NAME = a.table_name
          and MENSAJE = a.mensaje;
    exception when others then
      raise_application_error(-25874,'Borrando '||a.table_name||' '||a.mensaje);
    end;
  end loop;
 EXCEPTION WHEN OTHERS THEN
   RAISE_APPLICATION_ERROR(-20547,'Error borrando liqui '||sqlerrm);
 END;
/


