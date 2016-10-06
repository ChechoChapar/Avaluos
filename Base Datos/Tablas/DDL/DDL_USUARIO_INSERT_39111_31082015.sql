-- Add/modify USUARIO columns 
ALTER TABLE AVALUOS.USUARIO ADD FECHA_ULTIMO_INGRESO DATE;
COMMENT ON COLUMN USUARIO.FECHA_ULTIMO_INGRESO IS 'Fecha para registrar el último ingreso del usuario al sistema';

/
