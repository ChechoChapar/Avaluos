CREATE OR REPLACE TRIGGER TR_BIU_pgb_infinmueble
 before insert or update on pgb_infinmueble
 for each row
declare

  registros_upd NUMBER:=0;
  CURSOR cur_campos_infinmSfBua IS
  select /*+ INDEX_JOIN(PGB_ARCHIVO_PLANO) */
       cg_ref_codes.rv_low_value,
       cg_ref_codes.rv_high_value,
       cg_ref_codes.rv_domain,
       pgb_archivo_plano.dominio,
       pgb_archivo_plano.columna_bd
    from pgb_archivo_plano,
         cg_ref_codes
   where pgb_archivo_plano.dominio = cg_ref_codes.rv_domain
     and (
     (pgb_archivo_plano.columna_bd='C_USOINMUEBLE_BUA' AND cg_ref_codes.rv_low_value = :NEW.C_USOINMUEBLE)
     or
     (pgb_archivo_plano.columna_bd='C_USOINMUEBLE_SF' AND cg_ref_codes.rv_low_value = :NEW.C_USOINMUEBLE)
     );

  reg_campos_infinmSfBua cur_campos_infinmSfBua%ROWTYPE;

  BEGIN

    OPEN cur_campos_infinmSfBua;
     LOOP
      FETCH cur_campos_infinmSfBua
       INTO reg_campos_infinmSfBua;

        EXIT WHEN cur_campos_infinmSfBua%NOTFOUND;

             IF(reg_campos_infinmSfBua.columna_bd = 'C_USOINMUEBLE_BUA') THEN
               :NEW.C_USOINMUEBLE_BUA := reg_campos_infinmSfBua.rv_high_value;
             END IF;

             IF(reg_campos_infinmSfBua.columna_bd = 'C_USOINMUEBLE_SF') THEN
               :NEW.C_USOINMUEBLE_SF := reg_campos_infinmSfBua.rv_high_value;
             END IF;

     END LOOP;
    CLOSE cur_campos_infinmSfBua;

EXCEPTION WHEN OTHERS THEN
 RAISE_APPLICATION_ERROR(-20547,'Error inserta inmueble '||sqlerrm);
END;
/
