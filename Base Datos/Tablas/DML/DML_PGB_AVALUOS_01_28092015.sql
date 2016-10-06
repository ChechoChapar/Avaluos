
SET SQLBLANKLINES ON;
SET DEFINE OFF;

--
-- Circular 11 complemento migracion datos antiguos
--

ALTER TRIGGER TR_AI_AU_INFCONSTRUCCION DISABLE;
ALTER TRIGGER TR_AI_AU_INFINMUEBLE DISABLE;
ALTER TRIGGER TR_AID_AVALUO DISABLE;
ALTER TRIGGER TR_AU_ESTADO_AVALUO DISABLE;
ALTER TRIGGER TR_BIU_PGB_AVALUOS DISABLE;

call pck_migracion_avaluos.prc_migracion_avaluos(TO_DATE('01/07/2015','DD/MM/YYYY'),TO_DATE('01/10/2015','DD/MM/YYYY'));


ALTER TRIGGER TR_AI_AU_INFCONSTRUCCION ENABLE;
ALTER TRIGGER TR_AI_AU_INFINMUEBLE ENABLE;
ALTER TRIGGER TR_AID_AVALUO ENABLE;
ALTER TRIGGER TR_AU_ESTADO_AVALUO ENABLE;

ALTER TRIGGER TR_BIU_PGB_AVALUOS ENABLE;


COMMIT;

/
