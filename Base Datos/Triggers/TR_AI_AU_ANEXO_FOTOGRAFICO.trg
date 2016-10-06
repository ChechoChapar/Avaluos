CREATE OR REPLACE TRIGGER TR_AI_AU_ANEXO_FOTOGRAFICO
AFTER INSERT  OR UPDATE ON PGB_ANEXO_FOTOGRAFICO
   for each row
DECLARE
  registros_upd NUMBER:=0;
  registros_hijos_upd NUMBER:=0;
  
  --ID_ARCHIVO_anx NUMBER;
  
  tipo_archivo_anx NUMBER; 
	nombre_archivo_anx  VARCHAR2(60);
	tamanio_archivo_anx NUMBER;
	contenido_anx BLOB;
  
  BEGIN

    IF  UPDATING THEN

         UPDATE PGB_HIST_ANEXO_FOTOGRAFICO
         SET
              --ID_HIST_ANEXO_FOTOGRAFICO =:NEW.ID_HIST_ANEXO_FOTOGRAFICO,
              --ID_ANEXO_FOTOGRAFICO 	=:NEW.ID_ANEXO_FOTOGRAFICO,
              ID_ANEXO_FOTOGRAFICO 	=:NEW.ID_ANEXO_FOTOGRAFICO,              
              ID_AVALUO   		=:NEW.ID_AVALUO,
              ID_IMG_FACHADA 	=:NEW.ID_IMG_FACHADA,
              ID_DOC_ANEXOS  	=:NEW.ID_DOC_ANEXOS,
              USUARIO_CREACION 		=:NEW.USUARIO_CREACION,
              FECHA_CREACION 		=:NEW.FECHA_CREACION,
              USUARIO_TRANSACCION 	=:NEW.USUARIO_TRANSACCION,
              FECHA_TRANSACCION		=:NEW.FECHA_TRANSACCION


       WHERE  ID_ANEXO_FOTOGRAFICO=:OLD.ID_ANEXO_FOTOGRAFICO AND ID_AVALUO =:OLD.ID_AVALUO;
         registros_upd:= sql%rowcount;

                  
              IF :NEW.ID_IMG_FACHADA IS NOT NULL AND registros_upd>0 THEN

               SELECT 
                 --ID_ARCHIVO,
                 tipo_archivo, 
                 nombre_archivo,
                 tamanio_archivo,
                 contenido
                INTO
                 --ID_ARCHIVO_anx,           
                 tipo_archivo_anx, 
                 nombre_archivo_anx,
                 tamanio_archivo_anx,
                 contenido_anx
               FROM ARCHIVOS
                WHERE 
                  ID_ARCHIVO = :NEW.ID_IMG_FACHADA;
                  
                 UPDATE HIST_ARCHIVOS
                   SET  
                    --ID_HIST_ARCHIVO, 
                    ID_ARCHIVO =:NEW.ID_IMG_FACHADA,
                    --ID_ARCHIVO =: id_archivo_anx,
                    TIPO_ARCHIVO =tipo_archivo_anx, 
                    NOMBRE_ARCHIVO =nombre_archivo_anx, 
                    TAMANIO_ARCHIVO =tamanio_archivo_anx, 
                    CONTENIDO=contenido_anx, 
                    USUARIO_CREACION 		=:NEW.USUARIO_CREACION,
                    FECHA_CREACION 		=:NEW.FECHA_CREACION,
                    USUARIO_TRANSACCION 	=:NEW.USUARIO_TRANSACCION,
                    FECHA_TRANSACCION		=:NEW.FECHA_TRANSACCION

                 WHERE  ID_ARCHIVO=:OLD.ID_IMG_FACHADA;
                  registros_hijos_upd:= sql%rowcount;
                  
                  IF registros_hijos_upd < 1 THEN
                   
                    INSERT INTO HIST_ARCHIVOS
                     (
                      ID_HIST_ARCHIVO, 
                      ID_ARCHIVO, 
                      TIPO_ARCHIVO, 
                      NOMBRE_ARCHIVO, 
                      TAMANIO_ARCHIVO, 
                      CONTENIDO, 
                      USUARIO_CREACION, 
                      FECHA_CREACION, 
                      USUARIO_TRANSACCION, 
                      FECHA_TRANSACCION      
                     )
                     VALUES
                     (
                      SEQ_PGB_HIST_ARCHIVOS.NEXTVAL,
                      :NEW.ID_IMG_FACHADA,
                      tipo_archivo_anx, 
                      nombre_archivo_anx,
                      tamanio_archivo_anx, 
                      contenido_anx, 
                      :NEW.USUARIO_CREACION, 
                      :NEW.FECHA_CREACION, 
                      :NEW.USUARIO_TRANSACCION,
                      :NEW.FECHA_TRANSACCION  
                     );
                     
                  END IF; 

              END IF;     
               
              IF :NEW.ID_DOC_ANEXOS IS NOT NULL  AND registros_upd>0 THEN

               SELECT 
                 --ID_ARCHIVO
                 tipo_archivo, 
                 nombre_archivo,
                 tamanio_archivo,
                 contenido
                INTO           
                 --ID_ARCHIVO_anx,
                 tipo_archivo_anx, 
                 nombre_archivo_anx,
                 tamanio_archivo_anx,
                 contenido_anx
               FROM ARCHIVOS
                WHERE 
                  ID_ARCHIVO = :NEW.ID_DOC_ANEXOS;
                                  
                 UPDATE HIST_ARCHIVOS
                   SET  
                    --ID_HIST_ARCHIVO, 
                    ID_ARCHIVO=:NEW.ID_DOC_ANEXOS,
                    --ID_ARCHIVO=id_archivo_anx, 
                    TIPO_ARCHIVO =tipo_archivo_anx, 
                    NOMBRE_ARCHIVO =nombre_archivo_anx, 
                    TAMANIO_ARCHIVO =tamanio_archivo_anx, 
                    CONTENIDO=contenido_anx, 
                    USUARIO_CREACION 		=:NEW.USUARIO_CREACION,
                    FECHA_CREACION 		=:NEW.FECHA_CREACION,
                    USUARIO_TRANSACCION 	=:NEW.USUARIO_TRANSACCION,
                    FECHA_TRANSACCION		=:NEW.FECHA_TRANSACCION

                 WHERE  ID_ARCHIVO=:OLD.ID_DOC_ANEXOS;
                  registros_hijos_upd:= 0;
                  registros_hijos_upd:= sql%rowcount;
                
                 IF registros_hijos_upd < 1 THEN
                   
                  INSERT INTO HIST_ARCHIVOS
                   (
                    ID_HIST_ARCHIVO, 
                    ID_ARCHIVO, 
                    TIPO_ARCHIVO, 
                    NOMBRE_ARCHIVO, 
                    TAMANIO_ARCHIVO, 
                    CONTENIDO, 
                    USUARIO_CREACION, 
                    FECHA_CREACION, 
                    USUARIO_TRANSACCION, 
                    FECHA_TRANSACCION      
                   )
                   VALUES
                   (
                    SEQ_PGB_HIST_ARCHIVOS.NEXTVAL,
                    :NEW.ID_DOC_ANEXOS,
                    tipo_archivo_anx,
                    nombre_archivo_anx,
                    tamanio_archivo_anx, 
                    contenido_anx, 
                    :NEW.USUARIO_CREACION, 
                    :NEW.FECHA_CREACION, 
                    :NEW.USUARIO_TRANSACCION,
                    :NEW.FECHA_TRANSACCION  
                   );
                
                END IF;   

              END IF;
         
  END IF;

     IF INSERTING OR registros_upd=0 THEN

          INSERT INTO PGB_HIST_ANEXO_FOTOGRAFICO
           (
              ID_HIST_ANEXO_FOTOGRAFICO,
              ID_ANEXO_FOTOGRAFICO,
              ID_AVALUO,
              ID_IMG_FACHADA,
              ID_DOC_ANEXOS,
              USUARIO_CREACION,
              FECHA_CREACION,
              USUARIO_TRANSACCION,
              FECHA_TRANSACCION
           )VALUES
           (
              SEQ_PGB_HIST_ANEXO_FOTOGRAFICO.NEXTVAL,
              :NEW.ID_ANEXO_FOTOGRAFICO,
              :NEW.ID_AVALUO,
              :NEW.ID_IMG_FACHADA,
              :NEW.ID_DOC_ANEXOS,
              :NEW.USUARIO_CREACION,
              :NEW.FECHA_CREACION,
              :NEW.USUARIO_TRANSACCION,
              :NEW.FECHA_TRANSACCION
           );
           
              IF :NEW.ID_IMG_FACHADA IS NOT NULL THEN
               SELECT 
                 tipo_archivo, 
                 nombre_archivo,
                 tamanio_archivo,
                 contenido
                INTO           
                 tipo_archivo_anx, 
                 nombre_archivo_anx,
                 tamanio_archivo_anx,
                 contenido_anx
               FROM ARCHIVOS
                WHERE 
                  ID_ARCHIVO = :NEW.ID_IMG_FACHADA;
                   
                  INSERT INTO HIST_ARCHIVOS
                   (
                    ID_HIST_ARCHIVO, 
                    ID_ARCHIVO, 
                    TIPO_ARCHIVO, 
                    NOMBRE_ARCHIVO, 
                    TAMANIO_ARCHIVO, 
                    CONTENIDO, 
                    USUARIO_CREACION, 
                    FECHA_CREACION, 
                    USUARIO_TRANSACCION, 
                    FECHA_TRANSACCION      
                   )
                   VALUES
                   (
                    SEQ_PGB_HIST_ARCHIVOS.NEXTVAL,
                    :NEW.ID_IMG_FACHADA,
                    tipo_archivo_anx,
                    nombre_archivo_anx,
                    tamanio_archivo_anx, 
                    contenido_anx, 
                    :NEW.USUARIO_CREACION, 
                    :NEW.FECHA_CREACION, 
                    :NEW.USUARIO_TRANSACCION,
                    :NEW.FECHA_TRANSACCION  
                   );
              END IF;     
               
              IF :NEW.ID_DOC_ANEXOS IS NOT NULL THEN
               SELECT 
                 tipo_archivo, 
                 nombre_archivo,
                 tamanio_archivo,
                 contenido
                INTO           
                 tipo_archivo_anx, 
                 nombre_archivo_anx,
                 tamanio_archivo_anx,
                 contenido_anx
               FROM ARCHIVOS
                WHERE 
                  ID_ARCHIVO = :NEW.ID_DOC_ANEXOS;
                   
                  INSERT INTO HIST_ARCHIVOS
                   (
                    ID_HIST_ARCHIVO, 
                    ID_ARCHIVO, 
                    TIPO_ARCHIVO, 
                    NOMBRE_ARCHIVO, 
                    TAMANIO_ARCHIVO, 
                    CONTENIDO, 
                    USUARIO_CREACION, 
                    FECHA_CREACION, 
                    USUARIO_TRANSACCION, 
                    FECHA_TRANSACCION      
                   )
                   VALUES
                   (
                    SEQ_PGB_HIST_ARCHIVOS.NEXTVAL, 
                    :NEW.ID_DOC_ANEXOS,
                    tipo_archivo_anx,
                    nombre_archivo_anx,
                    tamanio_archivo_anx, 
                    contenido_anx, 
                    :NEW.USUARIO_CREACION, 
                    :NEW.FECHA_CREACION, 
                    :NEW.USUARIO_TRANSACCION,
                    :NEW.FECHA_TRANSACCION  
                   );
              END IF;


    END IF;

  EXCEPTION

  WHEN OTHERS THEN
       --NULL;
       DBMS_OUTPUT.put_line(SQLERRM);

END TR_AI_AU_ANEXO_FOTOGRAFICO;
/


