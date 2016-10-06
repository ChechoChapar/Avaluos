-- Add/modify columns 
alter table PGB_INFCONSTRUCCION add C_REPARADOS number;
alter table PGB_INFCONSTRUCCION add C_IRRALTURA number;
alter table PGB_INFCONSTRUCCION add C_IRRPLANTA number;
alter table PGB_INFCONSTRUCCION add C_ESTRUCTURAREFORZADA number;
alter table PGB_INFCONSTRUCCION add C_DANOPREVIO number;
alter table PGB_INFCONSTRUCCION add N_ANOCONSTRUCCION number(4);
alter table PGB_INFCONSTRUCCION add C_MATERIAL number;
alter table PGB_INFCONSTRUCCION add C_DETALLEMATERIAL number;
alter table PGB_INFCONSTRUCCION add A_RCONS_SF number;


alter table PGB_INFCONSTRUCCION add A_DANOREPARADO_SF number;

alter table PGB_INFCONSTRUCCION add SIMETRIA_ALT_SF number;
alter table PGB_INFCONSTRUCCION add SIMETRIA_PLANT_SF number;

alter table PGB_INFCONSTRUCCION add A_DANOPREVIO_SF number;


alter table PGB_INFCONSTRUCCION add C_ESTREFORZADA_SF number;
alter table PGB_INFCONSTRUCCION add C_MATERIAL_SF number;


-- Add comments to the columns 
comment on column PGB_INFCONSTRUCCION.C_REPARADOS  is 'Reparados';
comment on column PGB_INFCONSTRUCCION.C_IRRALTURA  is 'Irregularidad Altura';
comment on column PGB_INFCONSTRUCCION.C_IRRPLANTA  is 'Irregularidad Planta';
comment on column PGB_INFCONSTRUCCION.C_ESTRUCTURAREFORZADA  is 'Estructura Reforzada';
comment on column PGB_INFCONSTRUCCION.C_DANOPREVIO  is 'Daños Previos';
comment on column PGB_INFCONSTRUCCION.N_ANOCONSTRUCCION  is 'Año Construcción';
comment on column PGB_INFCONSTRUCCION.C_MATERIAL  is 'Material de Construcción';
comment on column PGB_INFCONSTRUCCION.C_DETALLEMATERIAL  is 'ESTRUCTURA';
comment on column PGB_INFCONSTRUCCION.A_RCONS_SF  is 'Rango de la construccion';

comment on column PGB_INFCONSTRUCCION.A_DANOREPARADO_SF  is 'Reparados SF';

comment on column PGB_INFCONSTRUCCION.SIMETRIA_ALT_SF  is 'Simetria Altura SF';

comment on column PGB_INFCONSTRUCCION.SIMETRIA_PLANT_SF  is 'Simetria Planta SF';

comment on column PGB_INFCONSTRUCCION.A_DANOPREVIO_SF   is 'Daños Previos SF';
  
  comment on column PGB_INFCONSTRUCCION.C_ESTREFORZADA_SF    is 'Estructura Reforzada SF';
  comment on column PGB_INFCONSTRUCCION.C_MATERIAL_SF  is 'Material de Construcción SF';
