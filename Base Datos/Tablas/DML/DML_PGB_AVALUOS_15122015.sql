
SET SQLBLANKLINES ON;
SET DEFINE OFF;

--
-- Circular 11 complemento migracion datos antiguos
--

ALTER TRIGGER AVALUOS.TR_AI_AU_INFCONSTRUCCION DISABLE;
ALTER TRIGGER AVALUOS.TR_AI_AU_INFINMUEBLE DISABLE;
ALTER TRIGGER AVALUOS.TR_AID_AVALUO DISABLE;
ALTER TRIGGER AVALUOS.TR_AU_ESTADO_AVALUO DISABLE;
ALTER TRIGGER AVALUOS.TR_BIU_PGB_AVALUOS DISABLE;

call AVALUOS.pck_migracion_avaluos.prc_migracion_avaluos(TO_DATE('01/04/2014','DD/MM/YYYY'),TO_DATE('05/01/2016','DD/MM/YYYY'));


ALTER TRIGGER AVALUOS.TR_AI_AU_INFCONSTRUCCION ENABLE;
ALTER TRIGGER AVALUOS.TR_AI_AU_INFINMUEBLE ENABLE;
ALTER TRIGGER AVALUOS.TR_AID_AVALUO ENABLE;
ALTER TRIGGER AVALUOS.TR_AU_ESTADO_AVALUO ENABLE;

ALTER TRIGGER AVALUOS.TR_BIU_PGB_AVALUOS ENABLE;


COMMIT;

/