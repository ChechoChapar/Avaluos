CREATE OR REPLACE TRIGGER TR_AI_AU_LIQAVALUO
AFTER INSERT  OR UPDATE ON PGB_LIQAVALUO
   for each row
DECLARE
	registros_upd NUMBER:=0;
  BEGIN

    IF  UPDATING THEN

         UPDATE PGB_HIST_LIQAVALUO
         SET

          --ID_HIST_LIQAVALUO    =:NEW.ID_HIST_LIQAVALUO,
          --ID_LIQAVALUO 	       =:NEW.ID_LIQAVALUO,
          --ID_AVALUO 	       =:NEW.ID_AVALUO,
          C_DESCRIPLIQ 	       =:NEW.C_DESCRIPLIQ,
          A_DESCDEPENDENCIA    =:NEW.A_DESCDEPENDENCIA,
          N_AREALIQ 	       =:NEW.N_AREALIQ,
          N_VAL 	       =:NEW.N_VAL,
          N_VALTOT 	       =:NEW.N_VALTOT,
          USUARIO_CREACION     =:NEW.USUARIO_CREACION,
          FECHA_CREACION       =:NEW.FECHA_CREACION,
          USUARIO_TRANSACCION  =:NEW.USUARIO_TRANSACCION,
          FECHA_TRANSACCION    =:NEW.FECHA_TRANSACCION,
          CONSECUTIVO	       =:NEW.CONSECUTIVO

       WHERE  ID_LIQAVALUO=:OLD.ID_LIQAVALUO AND ID_AVALUO =:OLD.ID_AVALUO;

         registros_upd:= sql%rowcount;
	END IF;

     IF INSERTING OR registros_upd=0 THEN

          INSERT INTO PGB_HIST_LIQAVALUO
           (
              ID_HIST_LIQAVALUO,
              ID_LIQAVALUO,
              ID_AVALUO,
              C_DESCRIPLIQ,
              A_DESCDEPENDENCIA,
              N_AREALIQ,
              N_VAL,
              N_VALTOT,
              USUARIO_CREACION,
              FECHA_CREACION,
              USUARIO_TRANSACCION,
              FECHA_TRANSACCION,
              CONSECUTIVO
           )VALUES
           (
              SEQ_PGB_HIST_LIQAVALUO.NEXTVAL,
              --:NEW.ID_HIST_LIQAVALUO,
              :NEW.ID_LIQAVALUO,
              :NEW.ID_AVALUO,
              :NEW.C_DESCRIPLIQ,
              :NEW.A_DESCDEPENDENCIA,
              :NEW.N_AREALIQ,
              :NEW.N_VAL,
              :NEW.N_VALTOT,
              :NEW.USUARIO_CREACION,
              :NEW.FECHA_CREACION,
              :NEW.USUARIO_TRANSACCION,
              :NEW.FECHA_TRANSACCION,
              :NEW.CONSECUTIVO
           );



    END IF;

  EXCEPTION

  WHEN OTHERS THEN
       NULL;

END TR_AI_AU_PGB_LIQAVALUO;
/