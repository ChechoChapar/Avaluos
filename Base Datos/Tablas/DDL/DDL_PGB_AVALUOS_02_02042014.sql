-- Add/modify columns 
alter table PGB_AVALUOS add T_SISTEMA varchar2(20);
alter table PGB_AVALUOS add C_SISTEMA number;
alter table PGB_AVALUOS add T_LATITUD varchar2(10);
alter table PGB_AVALUOS add T_LONGITUD varchar2(10);
-- Add comments to the columns 
comment on column PGB_AVALUOS.T_SISTEMA
  is 'Otro Sistema de Coordenadas
';
comment on column PGB_AVALUOS.C_SISTEMA
  is 'Sistema de Coordenadas
';
comment on column PGB_AVALUOS.T_LATITUD
  is 'Latitud
';
comment on column PGB_AVALUOS.T_LONGITUD
  is 'Longitud
';
