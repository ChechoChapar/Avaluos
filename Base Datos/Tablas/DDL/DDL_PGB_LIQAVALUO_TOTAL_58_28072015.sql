alter table avaluos.pgb_liqavaluo_total add constraint ck_val_positivo_total check (N_TOTALAVALUO >= 0 and N_VALORASEGURABLE >= 0);
/
