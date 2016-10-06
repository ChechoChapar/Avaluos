create or replace trigger TR_BI_LIQUI_AVALUO
 before insert on pgb_liqavaluo
 for each row

declare
   var_prophorizontal number(2); 
BEGIN

   IF :NEW.C_DESCRIPLIQ IS NULL
      AND :NEW.A_DESCDEPENDENCIA IS NULL
      AND :NEW.N_AREALIQ IS NULL
      AND :NEW.N_VAL IS NULL
      AND :NEW.N_VALTOT IS NULL
   THEN
     INSERT INTO AVA_MUTATING(num_rowid,table_name,mensaje)VALUES(:NEW.ROWID,:NEW.ID_AVALUO,:NEW.CONSECUTIVO);
   ELSE
      SELECT C.C_PROPHORZ
        INTO var_prophorizontal
        FROM PGB_INFCONSTRUCCION C
       WHERE id_avaluo = :NEW.ID_AVALUO; 

       --Si está sometido a propiedad horizontal
       IF :NEW.C_DESCRIPLIQ IN(21,22) and var_prophorizontal  = 1 THEN
          RAISE_APPLICATION_ERROR(-20158,'La descripción de la liquidación no tiene un valor permitido para propiedad horizontal');
       END IF;  
       
       IF :NEW.C_DESCRIPLIQ NOT IN(21,22) and var_prophorizontal  = 2 THEN
          RAISE_APPLICATION_ERROR(-20159,'Para predios no sometidos a propiedad horizontal la descripción de la liquidación no tiene un valor permitido');
       END IF;  

   END IF;
EXCEPTION WHEN OTHERS THEN
 RAISE_APPLICATION_ERROR(-20547,'Error inserta liquidación '||sqlerrm);
END;
/
