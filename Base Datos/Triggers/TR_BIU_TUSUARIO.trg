CREATE OR REPLACE TRIGGER tr_biu_tusuario before insert or update of t_usuario ON PGB_AVALUOS for each row
DECLARE
contador number(3);

-- Trigger que valida que el perito que ingresa exista en la tabla de empresas y sea numérico
BEGIN

  IF LENGTH(TRIM(TRANSLATE(:NEW.T_USUARIO, ' +-.0123456789', ' '))) <> 0 THEN
    RAISE_APPLICATION_ERROR(-20589,'Error, El Id de quien aprueba debe ser numerico'||:NEW.T_USUARIO);
  END IF;

  select count(*)
    into contador
    from pgb_empresas_avaluos
   where numero_documento = :NEW.T_USUARIO;

  IF contador = 0 THEN
     RAISE_APPLICATION_ERROR(-20589,'Error, No existe el Id de quien aprueba '||:NEW.T_USUARIO||' en empresas');
  END IF;
END;
/


