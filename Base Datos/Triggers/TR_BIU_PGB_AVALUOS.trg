create or replace trigger avaluos.TR_BIU_PGB_AVALUOS
 before insert or update on PGB_AVALUOS
 for each row

declare
 registros_upd NUMBER:=0;
 


  BEGIN

     :NEW.T_LATITUD  := pck_migracion_avaluos.fnc_ubic_gpslat(:NEW.A_UBICGPS);
     :NEW.T_LONGITUD := pck_migracion_avaluos.fnc_ubic_gpslong(:NEW.A_UBICGPS);
     :NEW.t_sistema := 0;
     :NEW.c_sistema := 3;
     :NEW.C_IDOBJETOAVALUO := 1;
     

  

EXCEPTION WHEN OTHERS THEN
 RAISE_APPLICATION_ERROR(-20547,'Error inserta latitud y longitud '||sqlerrm);

END
;
/
