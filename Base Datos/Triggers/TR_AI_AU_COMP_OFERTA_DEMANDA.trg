CREATE OR REPLACE TRIGGER TR_AI_AU_COMP_OFERTA_DEMANDA
AFTER INSERT  OR UPDATE ON PGB_COMP_OFERTA_DEMANDA
   for each row
DECLARE
   registros_upd NUMBER:=0;
  BEGIN

    IF  UPDATING THEN

         UPDATE PGB_HIST_COMP_OFERTA_DEMANDA
         SET
              --ID_HIST_COMPOFERTADEMANDA   =:NEW.ID_HIST_COMPOFERTADEMANDA,
              --ID_COMPOFERTADEMANDA 	  =:NEW.ID_COMPOFERTADEMANDA,
              --ID_AVALUO 		  =:NEW.ID_AVALUO,
              T_ACTEDIFICADORA 		  =:NEW.T_ACTEDIFICADORA,
              T_COMPORTAOD 		  =:NEW.T_COMPORTAOD,
              N_TIPOCOMERCIALIZA 	  =:NEW.N_TIPOCOMERCIALIZA,
              USUARIO_CREACION 		  =:NEW.USUARIO_CREACION,
              FECHA_CREACION 		  =:NEW.FECHA_CREACION,
              USUARIO_TRANSACCION 	  =:NEW.USUARIO_TRANSACCION,
              FECHA_TRANSACCION		  =:NEW.FECHA_TRANSACCION

       WHERE  ID_COMPOFERTADEMANDA=:OLD.ID_COMPOFERTADEMANDA AND ID_AVALUO =:OLD.ID_AVALUO;

         registros_upd:= sql%rowcount;

         /*IF registros_upd=0 THEN
           GOTO insercion;
         END IF;*/
     
     END IF;
         
     /*ELS*/IF INSERTING OR registros_upd=0 THEN
           
          <<insercion>>                 
     
          INSERT INTO PGB_HIST_COMP_OFERTA_DEMANDA
           (
              ID_HIST_COMPOFERTADEMANDA,
              ID_COMPOFERTADEMANDA,
              ID_AVALUO,
              T_ACTEDIFICADORA,
              T_COMPORTAOD,
              N_TIPOCOMERCIALIZA,
              USUARIO_CREACION,
              FECHA_CREACION,
              USUARIO_TRANSACCION,
              FECHA_TRANSACCION
           )VALUES
           (
              SEQ_PGB_HIST_COMPOFERTADEMANDA.NEXTVAL,
              --:NEW.ID_HIST_COMPOFERTADEMANDA,
              :NEW.ID_COMPOFERTADEMANDA,
              :NEW.ID_AVALUO,
              :NEW.T_ACTEDIFICADORA,
              :NEW.T_COMPORTAOD,
              :NEW.N_TIPOCOMERCIALIZA,
              :NEW.USUARIO_CREACION,
              :NEW.FECHA_CREACION,
              :NEW.USUARIO_TRANSACCION,
              :NEW.FECHA_TRANSACCION
           );



    END IF;

  EXCEPTION

  WHEN OTHERS THEN
       NULL;

END TR_AI_AU_COMP_OFERTA_DEMANDA;
/