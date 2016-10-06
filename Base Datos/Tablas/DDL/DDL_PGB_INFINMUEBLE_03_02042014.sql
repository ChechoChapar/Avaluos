-- Add/modify columns 

 ALTER TABLE PGB_INFINMUEBLE
 ADD (C_USOINMUEBLE_BUA  NUMBER(3));
 
 
 ALTER TABLE PGB_INFINMUEBLE
 ADD (C_USOINMUEBLE_SF  NUMBER(3));

alter table PGB_INFINMUEBLE add T_CATASTRAL_SF varchar2(20);
-- Add comments to the columns 
comment on column PGB_INFINMUEBLE.T_CATASTRAL_SF
  is 'Número catastral';
