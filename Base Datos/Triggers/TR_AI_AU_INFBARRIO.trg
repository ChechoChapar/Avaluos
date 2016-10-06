CREATE OR REPLACE TRIGGER TR_AI_AU_INFBARRIO
AFTER INSERT  OR UPDATE ON PGB_INFBARRIO
   for each row
DECLARE
   --CUENTA_BARRIO NUMBER;
   registros_upd NUMBER:=0;
  BEGIN

  /*
    SELECT COUNT(ID_INFBARRIO)
      INTO CUENTA_BARRIO
     FROM PGB_INFBARRIO
    WHERE ID_INFBARRIO=:OLD.ID_INFBARRIO;
  */

    --IF  CUENTA_BARRIO > 0 THEN
    IF  UPDATING THEN

         UPDATE PGB_HIST_INFBARRIO
         SET
              --ID_INFBARRIO 	     =:NEW.ID_INFBARRIO,
              --ID_AVALUO 	     =:NEW.ID_AVALUO,
              C_ESTRATO 	     =:NEW.C_ESTRATO,
              C_LEGALIDAD 	     =:NEW.C_LEGALIDAD,
              C_TOPOGRAFIA 	     =:NEW.C_TOPOGRAFIA,
              C_TRANSPORTE 	     =:NEW.C_TRANSPORTE,
              K_ACUEDUCTOSECTOR      =:NEW.K_ACUEDUCTOSECTOR,
              K_ACUEDUCTOPREDIO      =:NEW.K_ACUEDUCTOPREDIO,
              K_ALCANTAPREDIO 	     =:NEW.K_ALCANTAPREDIO,
              K_ALCANTASECTOR 	     =:NEW.K_ALCANTASECTOR,
              K_ELECTRICAPREDIO      =:NEW.K_ELECTRICAPREDIO,
              K_ELECTRICASECTOR      =:NEW.K_ELECTRICASECTOR,
              K_GASSECTOR 	     =:NEW.K_GASSECTOR,
              K_GASPREDIO 	     =:NEW.K_GASPREDIO,
              K_TELSECTOR 	     =:NEW.K_TELSECTOR,
              K_TELPREDIO 	     =:NEW.K_TELPREDIO,
              K_INDUSTRIA 	     =:NEW.K_INDUSTRIA,
              K_VIVIENDA 	     =:NEW.K_VIVIENDA,
              K_COMERCIO 	     =:NEW.K_COMERCIO,
              K_OTROSUSOS 	     =:NEW.K_OTROSUSOS,
              T_OTROSUSOS 	     =:NEW.T_OTROSUSOS,
              C_ESTVIAACCESO 	     =:NEW.C_ESTVIAACCESO,
              C_PAVIMENTADA 	     =:NEW.C_PAVIMENTADA,
              C_SARDENELES 	     =:NEW.C_SARDENELES,
              C_ANDENES 	     =:NEW.C_ANDENES,
              K_PARQUES 	     =:NEW.K_PARQUES,
              K_ARBORIZACION 	     =:NEW.K_ARBORIZACION,
              K_PARADERO 	     =:NEW.K_PARADERO,
              K_ALAMEDAS 	     =:NEW.K_ALAMEDAS,
              K_ALUMBRADO 	     =:NEW.K_ALUMBRADO,
              K_ZONASVERDES 	     =:NEW.K_ZONASVERDES,
              K_CICLORUTAS 	     =:NEW.K_CICLORUTAS,
              T_PERSPECTIVAS 	     =:NEW.T_PERSPECTIVAS,
              A_EDIIGUALES 	     =:NEW.A_EDIIGUALES,
              USUARIO_CREACION 	     =:NEW.USUARIO_CREACION,
              FECHA_CREACION 	     =:NEW.FECHA_CREACION,
              USUARIO_TRANSACCION    =:NEW.USUARIO_TRANSACCION,
              FECHA_TRANSACCION	     =:NEW.FECHA_TRANSACCION

       WHERE  ID_INFBARRIO=:OLD.ID_INFBARRIO AND ID_AVALUO =:OLD.ID_AVALUO;
         registros_upd:= sql%rowcount;
	 END IF;
     --ELSE
     IF INSERTING  OR registros_upd=0 THEN

          INSERT INTO PGB_HIST_INFBARRIO
           (
              ID_HIST_INFBARRIO,
              ID_INFBARRIO,
              ID_AVALUO,
              C_ESTRATO,
              C_LEGALIDAD,
              C_TOPOGRAFIA,
              C_TRANSPORTE,
              K_ACUEDUCTOSECTOR,
              K_ACUEDUCTOPREDIO,
              K_ALCANTAPREDIO,
              K_ALCANTASECTOR,
              K_ELECTRICAPREDIO,
              K_ELECTRICASECTOR,
              K_GASSECTOR,
              K_GASPREDIO,
              K_TELSECTOR,
              K_TELPREDIO,
              K_INDUSTRIA,
              K_VIVIENDA,
              K_COMERCIO,
              K_OTROSUSOS,
              T_OTROSUSOS,
              C_ESTVIAACCESO,
              C_PAVIMENTADA,
              C_SARDENELES,
              C_ANDENES,
              K_PARQUES,
              K_ARBORIZACION,
              K_PARADERO,
              K_ALAMEDAS,
              K_ALUMBRADO,
              K_ZONASVERDES,
              K_CICLORUTAS,
              T_PERSPECTIVAS,
              A_EDIIGUALES,
              USUARIO_CREACION,
              FECHA_CREACION,
              USUARIO_TRANSACCION,
              FECHA_TRANSACCION
           )VALUES
           (
              SEQ_PGB_HIST_INFBARRIO.NEXTVAL,
              --:NEW.ID_HIST_INFBARRIO,
              :NEW.ID_INFBARRIO,
              :NEW.ID_AVALUO,
              :NEW.C_ESTRATO,
              :NEW.C_LEGALIDAD,
              :NEW.C_TOPOGRAFIA,
              :NEW.C_TRANSPORTE,
              :NEW.K_ACUEDUCTOSECTOR,
              :NEW.K_ACUEDUCTOPREDIO,
              :NEW.K_ALCANTAPREDIO,
              :NEW.K_ALCANTASECTOR,
              :NEW.K_ELECTRICAPREDIO,
              :NEW.K_ELECTRICASECTOR,
              :NEW.K_GASSECTOR,
              :NEW.K_GASPREDIO,
              :NEW.K_TELSECTOR,
              :NEW.K_TELPREDIO,
              :NEW.K_INDUSTRIA,
              :NEW.K_VIVIENDA,
              :NEW.K_COMERCIO,
              :NEW.K_OTROSUSOS,
              :NEW.T_OTROSUSOS,
              :NEW.C_ESTVIAACCESO,
              :NEW.C_PAVIMENTADA,
              :NEW.C_SARDENELES,
              :NEW.C_ANDENES,
              :NEW.K_PARQUES,
              :NEW.K_ARBORIZACION,
              :NEW.K_PARADERO,
              :NEW.K_ALAMEDAS,
              :NEW.K_ALUMBRADO,
              :NEW.K_ZONASVERDES,
              :NEW.K_CICLORUTAS,
              :NEW.T_PERSPECTIVAS,
              :NEW.A_EDIIGUALES,
              :NEW.USUARIO_CREACION,
              :NEW.FECHA_CREACION,
              :NEW.USUARIO_TRANSACCION,
              :NEW.FECHA_TRANSACCION

           );



    END IF;

  EXCEPTION

  WHEN OTHERS THEN
       NULL;
  --END;

END TR_AI_AU_INFBARRIO;
/