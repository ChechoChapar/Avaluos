CREATE OR REPLACE TRIGGER TR_AI_AU_CONDSALUBRIDAD
AFTER INSERT  OR UPDATE ON PGB_CONDSALUBRIDAD
   for each row
DECLARE
   registros_upd NUMBER:=0;
  BEGIN

    IF  UPDATING THEN

         UPDATE PGB_HIST_CONDSALUBRIDAD
         SET

            --ID_HIST_CONDSALUBRIDAD  =:NEW.ID_HIST_CONDSALUBRIDAD,
            --ID_CONDSALUBRIDAD 	  =:NEW.ID_CONDSALUBRIDAD,
            --ID_AVALUO 	  =:NEW.ID_AVALUO ,
            A_REQUIERE_COND_SALUB   =:NEW.A_REQUIERE_COND_SALUB,
            C_SALUBRIDAD 		  =:NEW.C_SALUBRIDAD,
            K_AMBARBORIZA 	  =:NEW.K_AMBARBORIZA,
            K_AMBPARQUES 		  =:NEW.K_AMBPARQUES,
            K_AMBZVERDE 		  =:NEW.K_AMBZVERDE,
            T_AMBOTRO 		  =:NEW.T_AMBOTRO,
            K_PORAIRE 		  =:NEW.K_PORAIRE,
            K_BASURA 		  =:NEW.K_BASURA,
            K_INSERGURIDAD 	  =:NEW.K_INSERGURIDAD,
            K_RUIDO 		  =:NEW.K_RUIDO,
            K_AGUASHERV 		  =:NEW.K_AGUASHERV,
            T_AMBNEGOTRO 		  =:NEW.T_AMBNEGOTRO,
            USUARIO_CREACION 	  =:NEW.USUARIO_CREACION,
            FECHA_CREACION 	  =:NEW.FECHA_CREACION,
            USUARIO_TRANSACCION 	  =:NEW.USUARIO_TRANSACCION,
            FECHA_TRANSACCION	  =:NEW.FECHA_TRANSACCION

       WHERE  ID_CONDSALUBRIDAD=:OLD.ID_CONDSALUBRIDAD AND ID_AVALUO =:OLD.ID_AVALUO;

         registros_upd:= sql%rowcount;
         
  	END IF;

    IF INSERTING OR registros_upd=0 THEN

          INSERT INTO PGB_HIST_CONDSALUBRIDAD
           (
              ID_HIST_CONDSALUBRIDAD,
              ID_CONDSALUBRIDAD,
              ID_AVALUO,
              A_REQUIERE_COND_SALUB,
              C_SALUBRIDAD,
              K_AMBARBORIZA,
              K_AMBPARQUES,
              K_AMBZVERDE,
              T_AMBOTRO,
              K_PORAIRE,
              K_BASURA,
              K_INSERGURIDAD,
              K_RUIDO,
              K_AGUASHERV,
              T_AMBNEGOTRO,
              USUARIO_CREACION,
              FECHA_CREACION,
              USUARIO_TRANSACCION,
              FECHA_TRANSACCION
           )VALUES
           (
              SEQ_PGB_HIST_CONDSALUBRIDAD.NEXTVAL,
              --:NEW.ID_HIST_CONDSALUBRIDAD,
              :NEW.ID_CONDSALUBRIDAD,
              :NEW.ID_AVALUO,
              :NEW.A_REQUIERE_COND_SALUB,
              :NEW.C_SALUBRIDAD,
              :NEW.K_AMBARBORIZA,
              :NEW.K_AMBPARQUES,
              :NEW.K_AMBZVERDE,
              :NEW.T_AMBOTRO,
              :NEW.K_PORAIRE,
              :NEW.K_BASURA,
              :NEW.K_INSERGURIDAD,
              :NEW.K_RUIDO,
              :NEW.K_AGUASHERV,
              :NEW.T_AMBNEGOTRO,
              :NEW.USUARIO_CREACION,
              :NEW.FECHA_CREACION,
              :NEW.USUARIO_TRANSACCION,
              :NEW.FECHA_TRANSACCION

           );



    END IF;

  EXCEPTION

  WHEN OTHERS THEN
       NULL;

END TR_AI_AU_INFINMUEBLE;
/