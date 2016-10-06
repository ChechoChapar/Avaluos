-- Script was generated by Devart dbForge Data Compare Express for Oracle, Version 3.0.127.0
-- Product Home Page: http://www.devart.com/dbforge/oracle/datacompare
-- Script date 28/01/2015 04:11:16 p.m.
-- Source server version: Oracle Database 10g Enterprise Edition Release 10.2.0.4.0 - 64bit Production With the Partitioning, OLAP, Data Mining and Real Application Testing options
-- Source connection string: User Id=AVALUOS;Server=AVALUOS;Unicode=True;
-- Source database characterset: WE8ISO8859P1
-- Target server version: Oracle Database 10g Enterprise Edition Release 10.2.0.4.0 - 64bit Production With the Partitioning, OLAP, Data Mining and Real Application Testing options
-- Target connection string: User Id=AVALUOS;Server=PERITO;Unicode=True;
-- Target database characterset: WE8ISO8859P1
-- Please backup your target schemas before running this script

SET SQLBLANKLINES ON;
SET DEFINE OFF;
ALTER SESSION SET NLS_DATE_FORMAT = 'MM/DD/SYYYY HH24:MI:SS';
ALTER SESSION SET NLS_TIMESTAMP_TZ_FORMAT = 'MM/DD/SYYYY HH24:MI:SS.FF TZH:TZM';
ALTER SESSION SET NLS_TIMESTAMP_FORMAT = 'MM/DD/SYYYY HH24:MI:SS.FF';
ALTER SESSION SET NLS_NUMERIC_CHARACTERS = '.,';
ALTER SESSION SET NLS_NCHAR_CONV_EXCP = FALSE;
ALTER SESSION SET TIME_ZONE = '-05:00';

--
-- Deleting data from table AVALUOS.REF_OLD_NEW_DOMAIN
--
DELETE FROM AVALUOS.REF_OLD_NEW_DOMAIN WHERE OLD_DOMAIN = 'A_DANOPREVIO' AND OLD_VALUE = '1' AND SF_DOMAIN = 'DANOSPREVIOS_SF' AND SF_VALUE = '0' AND SF_DESCR = 'No Disponible' AND BUA_DOMAIN = 'DANOSPREVIOS_BUA' AND BUA_VALUE = '1' AND BUA_DESCR = 'No Disponible';
DELETE FROM AVALUOS.REF_OLD_NEW_DOMAIN WHERE OLD_DOMAIN = 'A_EDISIMALT' AND OLD_VALUE = '1' AND SF_DOMAIN = 'SIMETRIA_ALT_SF'||CHR(10)
 AND SF_VALUE = '0' AND SF_DESCR = 'No Disponible' AND BUA_DOMAIN = 'IRREGULARIDAD_ALT_BUA' AND BUA_VALUE = '1' AND BUA_DESCR = 'No Disponible';
DELETE FROM AVALUOS.REF_OLD_NEW_DOMAIN WHERE OLD_DOMAIN = 'A_EDISIMPLANTA' AND OLD_VALUE = '1' AND SF_DOMAIN = 'SIMETRIA_PLANT_SF'||CHR(10)
 AND SF_VALUE = '0' AND SF_DESCR = 'No Disponible' AND BUA_DOMAIN = 'IRREGULARIDAD_PLAN_BUA' AND BUA_VALUE = '1' AND BUA_DESCR = 'No Disponible';
DELETE FROM AVALUOS.REF_OLD_NEW_DOMAIN WHERE OLD_DOMAIN = 'A_EDISIMPLANTA' AND OLD_VALUE = '1' AND SF_DOMAIN = 'SIMETRIA_PLANT_SF'||CHR(10)
 AND SF_VALUE = '2' AND SF_DESCR = 'Sin irregularidad' AND BUA_DOMAIN = 'IRREGULARIDAD_PLAN_BUA' AND BUA_VALUE = '3' AND BUA_DESCR = 'Sin irregularidad';
DELETE FROM AVALUOS.REF_OLD_NEW_DOMAIN WHERE OLD_DOMAIN = 'NO_APLICA' AND OLD_VALUE = '0' AND SF_DOMAIN = 'A_DANOREPARADO_SF' AND SF_VALUE = '0' AND SF_DESCR = 'No disponible' AND BUA_DOMAIN = 'REPARADOS_BUA' AND BUA_VALUE = '1' AND BUA_DESCR = 'No Disponible';
DELETE FROM AVALUOS.REF_OLD_NEW_DOMAIN WHERE OLD_DOMAIN = 'NO_APLICA' AND OLD_VALUE = '0' AND SF_DOMAIN = 'C_ESTREFORZADA_SF' AND SF_VALUE = '0' AND SF_DESCR = 'No disponible' AND BUA_DOMAIN = 'ESTRUCTURAREFORZADA_BUA' AND BUA_VALUE = '1' AND BUA_DESCR = 'No disponible';
DELETE FROM AVALUOS.REF_OLD_NEW_DOMAIN WHERE OLD_DOMAIN = 'NO_APLICA' AND OLD_VALUE = '1' AND SF_DOMAIN = 'A_DANOREPARADO_SF' AND SF_VALUE = '1' AND SF_DESCR = 'Reparados' AND BUA_DOMAIN = 'REPARADOS_BUA' AND BUA_VALUE = '2' AND BUA_DESCR = 'Reparados';
DELETE FROM AVALUOS.REF_OLD_NEW_DOMAIN WHERE OLD_DOMAIN = 'NO_APLICA' AND OLD_VALUE = '1' AND SF_DOMAIN = 'C_ESTREFORZADA_SF' AND SF_VALUE = '1' AND SF_DESCR = 'Trabes coladas en sitio' AND BUA_DOMAIN = 'ESTRUCTURAREFORZADA_BUA' AND BUA_VALUE = '2' AND BUA_DESCR = 'Trabes coladas en sitio';
DELETE FROM AVALUOS.REF_OLD_NEW_DOMAIN WHERE OLD_DOMAIN = 'NO_APLICA' AND OLD_VALUE = '2' AND SF_DOMAIN = 'A_DANOREPARADO_SF' AND SF_VALUE = '2' AND SF_DESCR = 'No reparados' AND BUA_DOMAIN = 'REPARADOS_BUA' AND BUA_VALUE = '3' AND BUA_DESCR = 'No reparados';
DELETE FROM AVALUOS.REF_OLD_NEW_DOMAIN WHERE OLD_DOMAIN = 'NO_APLICA' AND OLD_VALUE = '2' AND SF_DOMAIN = 'C_ESTREFORZADA_SF' AND SF_VALUE = '2' AND SF_DESCR = 'Trabes prefabricadas' AND BUA_DOMAIN = 'ESTRUCTURAREFORZADA_BUA' AND BUA_VALUE = '3' AND BUA_DESCR = 'Trabes prefabricadas';
DELETE FROM AVALUOS.REF_OLD_NEW_DOMAIN WHERE OLD_DOMAIN = 'NO_APLICA' AND OLD_VALUE = '3' AND SF_DOMAIN = 'C_ESTREFORZADA_SF' AND SF_VALUE = '3' AND SF_DESCR = 'No tiene trabes' AND BUA_DOMAIN = 'ESTRUCTURAREFORZADA_BUA' AND BUA_VALUE = '4' AND BUA_DESCR = 'No tiene trabes';
/

--
-- Inserting data into table AVALUOS.REF_OLD_NEW_DOMAIN
--
INSERT INTO AVALUOS.REF_OLD_NEW_DOMAIN(OLD_DOMAIN, OLD_VALUE, SF_DOMAIN, SF_VALUE, SF_DESCR, BUA_DOMAIN, BUA_VALUE, BUA_DESCR) VALUES
('A_DANOPREVIO', '3', 'DANOSPREVIOS_SF', '1', 'Con da�os Previos', 'DANOSPREVIOS_BUA', '2', 'Con da�os Previos');
INSERT INTO AVALUOS.REF_OLD_NEW_DOMAIN(OLD_DOMAIN, OLD_VALUE, SF_DOMAIN, SF_VALUE, SF_DESCR, BUA_DOMAIN, BUA_VALUE, BUA_DESCR) VALUES
('A_EDISIMALT', '3', 'SIMETRIA_ALT_SF'||CHR(10)
, '1', 'Con Irregularidad'||CHR(10)
, 'IRREGULARIDAD_ALT_BUA', '2', 'Con Irregularidad'||CHR(10)
);
INSERT INTO AVALUOS.REF_OLD_NEW_DOMAIN(OLD_DOMAIN, OLD_VALUE, SF_DOMAIN, SF_VALUE, SF_DESCR, BUA_DOMAIN, BUA_VALUE, BUA_DESCR) VALUES
('A_EDISIMPLANTA', '3', 'SIMETRIA_PLANT_SF'||CHR(10)
, '1', 'Con Irregularidad'||CHR(10)
, 'IRREGULARIDAD_PLAN_BUA', '2', 'Con Irregularidad'||CHR(10)
);
/

--
-- Updating data of table AVALUOS.CG_REF_CODES
--
UPDATE AVALUOS.CG_REF_CODES SET RV_ABBREVIATION = NULL WHERE RV_DOMAIN = 'C_ESTRUCTURA_SF_BUA' AND RV_LOW_VALUE = '1';
UPDATE AVALUOS.CG_REF_CODES SET RV_ABBREVIATION = NULL WHERE RV_DOMAIN = 'C_ESTRUCTURA_SF_BUA' AND RV_LOW_VALUE = '10';
UPDATE AVALUOS.CG_REF_CODES SET RV_ABBREVIATION = NULL WHERE RV_DOMAIN = 'C_ESTRUCTURA_SF_BUA' AND RV_LOW_VALUE = '11';
UPDATE AVALUOS.CG_REF_CODES SET RV_ABBREVIATION = NULL WHERE RV_DOMAIN = 'C_ESTRUCTURA_SF_BUA' AND RV_LOW_VALUE = '12';
UPDATE AVALUOS.CG_REF_CODES SET RV_ABBREVIATION = NULL WHERE RV_DOMAIN = 'C_ESTRUCTURA_SF_BUA' AND RV_LOW_VALUE = '13';
UPDATE AVALUOS.CG_REF_CODES SET RV_ABBREVIATION = NULL WHERE RV_DOMAIN = 'C_ESTRUCTURA_SF_BUA' AND RV_LOW_VALUE = '14';
UPDATE AVALUOS.CG_REF_CODES SET RV_ABBREVIATION = NULL WHERE RV_DOMAIN = 'C_ESTRUCTURA_SF_BUA' AND RV_LOW_VALUE = '15';
UPDATE AVALUOS.CG_REF_CODES SET RV_ABBREVIATION = NULL WHERE RV_DOMAIN = 'C_ESTRUCTURA_SF_BUA' AND RV_LOW_VALUE = '16';
UPDATE AVALUOS.CG_REF_CODES SET RV_ABBREVIATION = NULL WHERE RV_DOMAIN = 'C_ESTRUCTURA_SF_BUA' AND RV_LOW_VALUE = '17';
UPDATE AVALUOS.CG_REF_CODES SET RV_ABBREVIATION = NULL WHERE RV_DOMAIN = 'C_ESTRUCTURA_SF_BUA' AND RV_LOW_VALUE = '18';
UPDATE AVALUOS.CG_REF_CODES SET RV_ABBREVIATION = NULL WHERE RV_DOMAIN = 'C_ESTRUCTURA_SF_BUA' AND RV_LOW_VALUE = '19';
UPDATE AVALUOS.CG_REF_CODES SET RV_ABBREVIATION = NULL WHERE RV_DOMAIN = 'C_ESTRUCTURA_SF_BUA' AND RV_LOW_VALUE = '2';
UPDATE AVALUOS.CG_REF_CODES SET RV_ABBREVIATION = NULL WHERE RV_DOMAIN = 'C_ESTRUCTURA_SF_BUA' AND RV_LOW_VALUE = '20';
UPDATE AVALUOS.CG_REF_CODES SET RV_ABBREVIATION = NULL WHERE RV_DOMAIN = 'C_ESTRUCTURA_SF_BUA' AND RV_LOW_VALUE = '21';
UPDATE AVALUOS.CG_REF_CODES SET RV_ABBREVIATION = NULL WHERE RV_DOMAIN = 'C_ESTRUCTURA_SF_BUA' AND RV_LOW_VALUE = '3';
UPDATE AVALUOS.CG_REF_CODES SET RV_ABBREVIATION = NULL WHERE RV_DOMAIN = 'C_ESTRUCTURA_SF_BUA' AND RV_LOW_VALUE = '4';
UPDATE AVALUOS.CG_REF_CODES SET RV_ABBREVIATION = NULL WHERE RV_DOMAIN = 'C_ESTRUCTURA_SF_BUA' AND RV_LOW_VALUE = '5';
UPDATE AVALUOS.CG_REF_CODES SET RV_ABBREVIATION = NULL WHERE RV_DOMAIN = 'C_ESTRUCTURA_SF_BUA' AND RV_LOW_VALUE = '6';
UPDATE AVALUOS.CG_REF_CODES SET RV_ABBREVIATION = NULL WHERE RV_DOMAIN = 'C_ESTRUCTURA_SF_BUA' AND RV_LOW_VALUE = '7';
UPDATE AVALUOS.CG_REF_CODES SET RV_ABBREVIATION = NULL WHERE RV_DOMAIN = 'C_ESTRUCTURA_SF_BUA' AND RV_LOW_VALUE = '8';
UPDATE AVALUOS.CG_REF_CODES SET RV_ABBREVIATION = NULL WHERE RV_DOMAIN = 'C_ESTRUCTURA_SF_BUA' AND RV_LOW_VALUE = '9';
/

COMMIT;
