CREATE OR REPLACE TRIGGER TR_BIU_pgb_infconstruccion
 before insert or update on pgb_infconstruccion
 for each row
declare

  v_fechaconstr DATE;   
  v_fechaaval DATE;  
  
  BEGIN                 
   

    IF :NEW.n_vetustez  IS NOT  NULL THEN    
         
        select
          pgb_avaluos.f_fechaavaluo
        into
          v_fechaaval
        from
          pgb_avaluos
        where
           pgb_avaluos.id_avaluo = :NEW.id_avaluo;
    
                  
          v_fechaconstr := pck_migracion_avaluos.fnc_fechaconst(v_fechaaval,:NEW.n_vetustez);
          
          :NEW.n_anoconstruccion := to_char(v_fechaconstr,'yyyy');
          
          :NEW.A_RCONS_SF := pck_migracion_avaluos.fnc_rcons(v_fechaconstr);
          
    END IF; 
    
    IF :NEW.C_REPARADOS  IS NOT  NULL THEN
      
      :NEW.A_DANOREPARADO_SF:=pck_migracion_avaluos.fnc_parametros_sf_from_bua(:NEW.C_REPARADOS,'REPARADOS_BUA');
       
    END IF;
    
    IF :NEW.C_IRRALTURA  IS NOT  NULL THEN
      
       :NEW.SIMETRIA_ALT_SF:=pck_migracion_avaluos.fnc_parametros_sf_from_bua(:NEW.C_IRRALTURA,'IRREGULARIDAD_ALT_BUA');
       :NEW.A_EDISIMALT := pck_migracion_avaluos.fnc_param_old_bua_from_new_bua(:NEW.C_IRRALTURA,'IRREGULARIDAD_ALT_BUA');
       
    END IF;

    IF :NEW.C_IRRPLANTA  IS NOT  NULL THEN
      
       :NEW.SIMETRIA_PLANT_SF:=pck_migracion_avaluos.fnc_parametros_sf_from_bua(:NEW.C_IRRPLANTA,'IRREGULARIDAD_PLAN_BUA');
       :NEW.A_EDISIMPLANTA := pck_migracion_avaluos.fnc_param_old_bua_from_new_bua(:NEW.C_IRRPLANTA,'IRREGULARIDAD_PLAN_BUA');
       
    END IF;

    IF :NEW.C_DANOPREVIO  IS NOT  NULL THEN
      
       :NEW.A_DANOPREVIO_SF:=pck_migracion_avaluos.fnc_parametros_sf_from_bua(:NEW.C_DANOPREVIO,'DANOSPREVIOS_BUA');
       :NEW.A_DANOPREVIO := pck_migracion_avaluos.fnc_param_old_bua_from_new_bua(:NEW.C_DANOPREVIO,'DANOSPREVIOS_BUA');
       
    END IF;
    
    IF :NEW.C_ESTRUCTURAREFORZADA  IS NOT  NULL THEN
      
       :NEW.C_ESTREFORZADA_SF:=pck_migracion_avaluos.fnc_parametros_sf_from_bua(:NEW.C_ESTRUCTURAREFORZADA,'ESTRUCTURAREFORZADA_BUA');
       
    END IF;

    IF :NEW.C_MATERIAL  IS NOT  NULL THEN
      
       :NEW.C_MATERIAL_SF:=pck_migracion_avaluos.fnc_parametros_sf_from_bua(:NEW.C_MATERIAL,'ESTRUCTURA2_BUA');
       :NEW.A_EDIMAT := pck_migracion_avaluos.fnc_param_old_bua_from_new_bua(:NEW.C_MATERIAL,'ESTRUCTURA2_BUA');
       
    END IF;    


EXCEPTION WHEN OTHERS THEN
 RAISE_APPLICATION_ERROR(-20547,'Error inserta info construccion '||sqlerrm);
END
;
/