CREATE OR REPLACE TRIGGER TR_AI_AU_INFINMUEBLE
AFTER INSERT  OR UPDATE ON PGB_INFINMUEBLE
   for each row
DECLARE
	registros_upd NUMBER:=0;
  BEGIN

    IF  UPDATING THEN

         UPDATE PGB_HIST_INFINMUEBLE
         SET

            --ID_HIST_INFINMUEBLE 	 =:NEW.ID_HIST_INFINMUEBLE,
            --ID_INFINMUEBLE 	 =:NEW.ID_INFINMUEBLE,
            --ID_AVALUO 		 =:NEW.ID_AVALUO,
            C_TIPOVIVIENDA 	 =:NEW.C_TIPOVIVIENDA,
            IDCATEGORIA 		 =:NEW.IDCATEGORIA,
            C_UBICACION2 		 =:NEW.C_UBICACION2,
            T_CHIP 		 =:NEW.T_CHIP,
            C_USOINMUEBLE 	 =:NEW.C_USOINMUEBLE,
            T_OTROUSOINM 		 =:NEW.T_OTROUSOINM,
            C_CLASEINMUEBLE 	 =:NEW.C_CLASEINMUEBLE,
            T_OTROCLASE 		 =:NEW.T_OTROCLASE,
            T_MINMBPPAL1 		 =:NEW.T_MINMBPPAL1,
            T_MINMBPPAL2 		 =:NEW.T_MINMBPPAL2,
            T_MINMOBGJ1 		 =:NEW.T_MINMOBGJ1,
            T_MINMOBGJ2 		 =:NEW.T_MINMOBGJ2,
            T_MINMOBGJ3 		 =:NEW.T_MINMOBGJ3,
            T_MINMOBGJ4 		 =:NEW.T_MINMOBGJ4,
            T_MINMOBGJ5 		 =:NEW.T_MINMOBGJ5,
            T_MINMOBDP1 		 =:NEW.T_MINMOBDP1,
            T_MINMOBDP2 		 =:NEW.T_MINMOBDP2,
            T_NUMESCRITURA 	 =:NEW.T_NUMESCRITURA,
            T_NOTARIA 		 =:NEW.T_NOTARIA,
            F_FECHAESCRITURA 	 =:NEW.F_FECHAESCRITURA,
            C_DEPTOESCRITURA 	 =:NEW.C_DEPTOESCRITURA,
            C_CIUDADESCRITURA 	 =:NEW.C_CIUDADESCRITURA,
            C_UBICACION3 		 =:NEW.C_UBICACION3,
            USUARIO_CREACION 	 =:NEW.USUARIO_CREACION,
            FECHA_CREACION 	 =:NEW.FECHA_CREACION,
            USUARIO_TRANSACCION 	 =:NEW.USUARIO_TRANSACCION,
            FECHA_TRANSACCION 	 =:NEW.FECHA_TRANSACCION,
            A_EDICONSTUSO		 =:NEW.A_EDICONSTUSO

       WHERE  ID_INFINMUEBLE=:OLD.ID_INFINMUEBLE AND ID_AVALUO =:OLD.ID_AVALUO;

         registros_upd:= sql%rowcount;
	END IF;

     IF INSERTING OR registros_upd=0 THEN

          INSERT INTO PGB_HIST_INFINMUEBLE
           (
              ID_HIST_INFINMUEBLE,
              ID_INFINMUEBLE,
              ID_AVALUO,
              C_TIPOVIVIENDA,
              IDCATEGORIA,
              C_UBICACION2,
              T_CHIP,
              C_USOINMUEBLE,
              T_OTROUSOINM,
              C_CLASEINMUEBLE,
              T_OTROCLASE,
              T_MINMBPPAL1,
              T_MINMBPPAL2,
              T_MINMOBGJ1,
              T_MINMOBGJ2,
              T_MINMOBGJ3,
              T_MINMOBGJ4,
              T_MINMOBGJ5,
              T_MINMOBDP1,
              T_MINMOBDP2,
              T_NUMESCRITURA,
              T_NOTARIA,
              F_FECHAESCRITURA,
              C_DEPTOESCRITURA,
              C_CIUDADESCRITURA,
              C_UBICACION3,
              USUARIO_CREACION,
              FECHA_CREACION,
              USUARIO_TRANSACCION,
              FECHA_TRANSACCION,
              A_EDICONSTUSO
           )VALUES
           (
              SEQ_PGB_HIST_INFINMUEBLE.NEXTVAL,
              --:NEW.ID_HIST_INFINMUEBLE,
              :NEW.ID_INFINMUEBLE,
              :NEW.ID_AVALUO,
              :NEW.C_TIPOVIVIENDA,
              :NEW.IDCATEGORIA,
              :NEW.C_UBICACION2,
              :NEW.T_CHIP,
              :NEW.C_USOINMUEBLE,
              :NEW.T_OTROUSOINM,
              :NEW.C_CLASEINMUEBLE,
              :NEW.T_OTROCLASE,
              :NEW.T_MINMBPPAL1,
              :NEW.T_MINMBPPAL2,
              :NEW.T_MINMOBGJ1,
              :NEW.T_MINMOBGJ2,
              :NEW.T_MINMOBGJ3,
              :NEW.T_MINMOBGJ4,
              :NEW.T_MINMOBGJ5,
              :NEW.T_MINMOBDP1,
              :NEW.T_MINMOBDP2,
              :NEW.T_NUMESCRITURA,
              :NEW.T_NOTARIA,
              :NEW.F_FECHAESCRITURA,
              :NEW.C_DEPTOESCRITURA,
              :NEW.C_CIUDADESCRITURA,
              :NEW.C_UBICACION3,
              :NEW.USUARIO_CREACION,
              :NEW.FECHA_CREACION,
              :NEW.USUARIO_TRANSACCION,
              :NEW.FECHA_TRANSACCION,
              :NEW.A_EDICONSTUSO
           );



    END IF;

  EXCEPTION

  WHEN OTHERS THEN
       NULL;

END TR_AI_AU_INFINMUEBLE;
/