--
-- Updating data of table AVALUOS.REF_OLD_NEW_DOMAIN
--
UPDATE AVALUOS.REF_OLD_NEW_DOMAIN SET SF_VALUE = '1', SF_DESCR = 'Concreto Reforzado', BUA_VALUE = '27', BUA_DESCR = 'Concreto Reforzado' WHERE OLD_DOMAIN = 'MATEST' AND OLD_VALUE = '7';
/

COMMIT;