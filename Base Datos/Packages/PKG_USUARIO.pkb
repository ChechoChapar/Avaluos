CREATE OR REPLACE PACKAGE BODY Pkg_Usuario AS
  PROCEDURE PRC_CAMBIaPASSWORD(opcion    NUMBER,
                               p_clave   VARCHAR2,
                               p_nueva   VARCHAR2,
                               p_repita  VARCHAR2,
                               p_usuario VARCHAR2,
                               msg       OUT VARCHAR2) AS
    v_clave USUARIO.clave_usuario%TYPE;
    regs    NUMBER;
  BEGIN
    msg := 'Cambio Correcto de Clave para el Usuario ' || p_usuario;
  
    SELECT NVL(clave_usuario, p_clave)
      INTO v_clave
      FROM USUARIO
     WHERE codigo_usuario = p_usuario;
  
    IF rawtohex(asegura(upper(p_clave))) = v_clave THEN
    
      SELECT COUNT(*) INTO regs FROM ALL_USERS WHERE username = p_usuario;
    
      BEGIN
        IF NOT verify_function_password(p_usuario, p_nueva, p_clave) THEN
          msg := 'Fallo en la Validacion de la Nueva Contrase?a.';
          RETURN;
        END IF;
      EXCEPTION
        WHEN OTHERS THEN
          msg := replace(REPLACE(SQLERRM, '/', ' '), '\', ' ');
          RETURN;
      END;
    
      IF regs != 0 THEN
        EXECUTE IMMEDIATE 'ALTER USER "' || p_usuario ||
                          '" IDENTIFIED  by "' || p_nueva || '"';
      END IF;
    
      UPDATE USUARIO
         SET CLAVE_USUARIO     = rawtohex(asegura(upper(P_NUEVA))),
             fecha_vencimiento = SYSDATE + 30
       WHERE codigo_usuario = p_usuario;
    
    ELSE
      msg := 'Su Password es Incorrecto.';
    END IF;
  END;
END;
/


