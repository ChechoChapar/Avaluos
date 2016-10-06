alter table avaluos.pgb_liqavaluo add constraint ck_val_positivo check (n_val >= 0 and N_VALTOT >= 0);
/
