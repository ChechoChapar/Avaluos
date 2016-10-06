CREATE OR REPLACE PACKAGE BODY AVALUOS.Pkg_Seguridad IS

  PROCEDURE PRC_MODULO(W_OPERACION     IN NUMBER,
                       IN_CODIGO       IN OUT VARCHAR2,
                       IN_MODULO       IN OUT VARCHAR2,
                       IN_ORDEN        IN OUT NUMBER,
                       IN_MODULO_PADRE IN OUT VARCHAR2,
                       IN_USUARIO      IN OUT VARCHAR2) IS
  BEGIN
    IF W_OPERACION = 1 THEN
      /*INSERCION*/
      BEGIN
        INSERT INTO MODULO_APLICACION
          (CODIGO_MODULO,
           DESCRIPCION_MODULO,
           ORDEN,
           CODIGO_MODULO_PADRE,
           USUARIO_TRANSACCION,
           FECHA_TRANSACCION)
        VALUES
          (IN_CODIGO,
           IN_MODULO,
           IN_ORDEN,
           IN_MODULO_PADRE,
           IN_USUARIO,
           SYSDATE);
      EXCEPTION
        WHEN OTHERS THEN
          RAISE_APPLICATION_ERROR(-20001,
                                  'ERROR AL INSERTAR EN MODULO.' || SQLERRM);
          RETURN;
      END;
    END IF;

    IF W_OPERACION = 3 THEN
      /*ACTUALIZACION*/
      BEGIN
        UPDATE MODULO_APLICACION
           SET DESCRIPCION_MODULO  = IN_MODULO,
               ORDEN               = IN_ORDEN,
               CODIGO_MODULO_PADRE = IN_MODULO_PADRE,
               USUARIO_TRANSACCION = IN_USUARIO,
               FECHA_TRANSACCION   = SYSDATE
         WHERE CODIGO_MODULO = IN_CODIGO;
      EXCEPTION
        WHEN OTHERS THEN
          RAISE_APPLICATION_ERROR(-20003,
                                  'ERROR AL ACTUALIZAR EN MODULO.' ||
                                  SQLERRM);
          RETURN;
      END;
    END IF;

    IF W_OPERACION = 5 THEN
      /*BORRADO*/
      BEGIN
        DELETE FROM MODULO_APLICACION WHERE CODIGO_MODULO = IN_CODIGO;
      EXCEPTION
        WHEN OTHERS THEN
          RAISE_APPLICATION_ERROR(-20005,
                                  'ERROR AL BORRAR EN MODULO.' || SQLERRM);
          RETURN;
      END;
    END IF;
    COMMIT;
  END PRC_MODULO;

  PROCEDURE PRC_TAREA(W_OPERACION              IN NUMBER,
                      IN_CODIGO                IN OUT VARCHAR2,
                      IN_MODULO                IN OUT VARCHAR2,
                      IN_DESCRIPCION           IN OUT VARCHAR2,
                      IN_TIPO_TAREA            IN OUT VARCHAR2,
                      IN_MARCA_ACTIVO          IN OUT VARCHAR2,
                      IN_SUBMODULO             IN OUT VARCHAR2,
                      IN_ORDEN                 IN OUT NUMBER,
                      IN_DETALLE_FUNCIONAL     IN OUT VARCHAR2,
                      IN_TIPO_CONTENIDO        IN OUT NUMBER,
                      IN_CONTENIDO             IN OUT VARCHAR2,
                      IN_CLASIFICACION_INF     IN OUT VARCHAR2,
                      IN_CRITICIDAD_INF        IN OUT VARCHAR2,
                      IN_MENSAJE_MANTENIMIENTO IN OUT VARCHAR2,
                      IN_USUARIO               IN OUT VARCHAR2) IS
  BEGIN
    IF W_OPERACION = 1 THEN
      /*INSERCION*/
      BEGIN
        INSERT INTO TAREA
          (CODIGO_TAREA,
           CODIGO_MODULO,
           DESCRIPCION_TAREA,
           TIPO_TAREA,
           MARCA_ACTIVO,
           SUB_MODULO,
           ORDEN,
           DETALLE_FUNCIONAL,
           TIPO_CONTENIDO,
           CONTENIDO,
           CLASIFICACION_INF,
           CRITICIDAD_INF,
           MENSAJE_MANTENIMIENTO,
           USUARIO_TRANSACCION,
           FECHA_TRANSACCION)
        VALUES
          (IN_CODIGO,
           IN_MODULO,
           IN_DESCRIPCION,
           IN_TIPO_TAREA,
           IN_MARCA_ACTIVO,
           IN_SUBMODULO,
           IN_ORDEN,
           IN_DETALLE_FUNCIONAL,
           IN_TIPO_CONTENIDO,
           IN_CONTENIDO,
           NVL(IN_CLASIFICACION_INF,5),
           NVL(IN_CRITICIDAD_INF,6),
           IN_MENSAJE_MANTENIMIENTO,
           IN_USUARIO,
           SYSDATE);
      EXCEPTION
        WHEN OTHERS THEN
          RAISE_APPLICATION_ERROR(-20001,
                                  'ERROR AL INSERTAR EN TAREA.' || SQLERRM);
          RETURN;
      END;
    END IF;

    IF W_OPERACION = 3 THEN
      /*ACTUALIZACION*/
      BEGIN
        UPDATE TAREA
           SET DESCRIPCION_TAREA     = IN_DESCRIPCION,
               TIPO_TAREA            = IN_TIPO_TAREA,
               MARCA_ACTIVO          = IN_MARCA_ACTIVO,
               SUB_MODULO            = IN_SUBMODULO,
               ORDEN                 = IN_ORDEN,
               DETALLE_FUNCIONAL     = IN_DETALLE_FUNCIONAL,
               TIPO_CONTENIDO        = IN_TIPO_CONTENIDO,
               CONTENIDO             = IN_CONTENIDO,
               CLASIFICACION_INF     = IN_CLASIFICACION_INF,
               CRITICIDAD_INF        = IN_CRITICIDAD_INF,
               MENSAJE_MANTENIMIENTO = IN_MENSAJE_MANTENIMIENTO,
               USUARIO_TRANSACCION   = IN_USUARIO,
               FECHA_TRANSACCION     = SYSDATE
         WHERE CODIGO_TAREA = IN_CODIGO
           AND CODIGO_MODULO = IN_MODULO;
      EXCEPTION
        WHEN OTHERS THEN
          RAISE_APPLICATION_ERROR(-20003,
                                  'ERROR AL ACTUALIZAR EN TAREA.' ||
                                  SQLERRM);
          RETURN;
      END;
    END IF;

    IF W_OPERACION = 5 THEN
      /*BORRADO*/
      BEGIN
        DELETE FROM TAREA
         WHERE CODIGO_TAREA = IN_CODIGO
           AND CODIGO_MODULO = IN_MODULO;
      EXCEPTION
        WHEN OTHERS THEN
          RAISE_APPLICATION_ERROR(-20005,
                                  'ERROR AL BORRAR EN TAREA.' || SQLERRM);
          RETURN;
      END;
    END IF;
    COMMIT;
  END PRC_TAREA;

  PROCEDURE PRC_PERFIL(W_OPERACION          IN NUMBER,
                       IN_PERFIL            IN OUT VARCHAR2,
                       IN_DESCRIPCION       IN OUT VARCHAR2,
                       IN_ACCESOS           IN OUT NUMBER,
                       IN_VENCIMIENTO       IN OUT DATE,
                       IN_DETALLE_FUNCIONAL IN OUT VARCHAR2,
                       IN_CARGO_FUNCIONARIO IN OUT VARCHAR2,
                       IN_USUARIO           IN OUT VARCHAR2) IS
  BEGIN
    IF W_OPERACION = 1 THEN
      /*INSERCION*/
      BEGIN
        INSERT INTO PERFIL
          (CODIGO_PERFIL,
           NOMBRE_PERFIL,
           NUMERO_ACCESOS_PERFIL,
           FECHA_VENCIMIENTO,
           DETALLE_FUNCIONAL,
           CARGO_FUNCIONARIO,
           USUARIO_TRANSACCION,
           FECHA_TRANSACCION)
        VALUES
          (IN_PERFIL,
           IN_DESCRIPCION,
           IN_ACCESOS,
           IN_VENCIMIENTO,
           IN_DETALLE_FUNCIONAL,
           IN_CARGO_FUNCIONARIO,
           IN_USUARIO,
           SYSDATE);
      EXCEPTION
        WHEN OTHERS THEN
          RAISE_APPLICATION_ERROR(-20001,
                                  'ERROR AL INSERTAR EN PERFIL.' || SQLERRM);
          RETURN;
      END;
    END IF;

    IF W_OPERACION = 3 THEN
      /*ACTUALIZACION*/
      BEGIN
        UPDATE PERFIL
           SET NOMBRE_PERFIL         = IN_DESCRIPCION,
               NUMERO_ACCESOS_PERFIL = IN_ACCESOS,
               FECHA_VENCIMIENTO     = IN_VENCIMIENTO,
               DETALLE_FUNCIONAL     = IN_DETALLE_FUNCIONAL,
               CARGO_FUNCIONARIO     = IN_CARGO_FUNCIONARIO,
               USUARIO_TRANSACCION   = IN_USUARIO,
               FECHA_TRANSACCION     = SYSDATE
         WHERE CODIGO_PERFIL = IN_PERFIL;
      EXCEPTION
        WHEN OTHERS THEN
          RAISE_APPLICATION_ERROR(-20003,
                                  'ERROR AL ACTUALIZAR EN PERFIL.' ||
                                  SQLERRM);
          RETURN;
      END;
    END IF;

    IF W_OPERACION = 5 THEN
      /*BORRADO*/
      BEGIN
        DELETE FROM PERFIL WHERE CODIGO_PERFIL = IN_PERFIL;
      EXCEPTION
        WHEN OTHERS THEN
          RAISE_APPLICATION_ERROR(-20005,
                                  'ERROR AL BORRAR EN PERFIL.' || SQLERRM);
          RETURN;
      END;
    END IF;
    COMMIT;
  END PRC_PERFIL;

  PROCEDURE PRC_TAREA_PERFIL(W_OPERACION      IN NUMBER,
                             IN_TAREA         IN OUT VARCHAR2,
                             IN_PERFIL        IN OUT VARCHAR2,
                             IN_EJECUTAR      IN OUT VARCHAR2,
                             IN_IMPRIMIR      IN OUT VARCHAR2,
                             IN_ACTUALIZACION IN OUT VARCHAR2,
                             IN_ADICIONAR     IN OUT VARCHAR2,
                             IN_BORRAR        IN OUT VARCHAR2,
                             IN_CONSULTAR     IN OUT VARCHAR2,
                             IN_USUARIO       IN OUT VARCHAR2) IS
  BEGIN
    IF W_OPERACION = 1 THEN
      /*INSERCION*/
      BEGIN
        INSERT INTO TAREA_PERFIL
          (CODIGO_TAREA,
           CODIGO_PERFIL,
           PERMISO_EJECUTAR,
           PERMISO_IMPRIMIR,
           PERMISO_ACTUALIZACION,
           PERMISO_ADICIONAR,
           PERMISO_BORRAR,
           PERMISO_CONSULTAR,
           USUARIO_TRANSACCION,
           FECHA_TRANSACCION)
        VALUES
          (IN_TAREA,
           IN_PERFIL,
           IN_EJECUTAR,
           IN_IMPRIMIR,
           IN_ACTUALIZACION,
           IN_ADICIONAR,
           IN_BORRAR,
           IN_CONSULTAR,
           IN_USUARIO,
           SYSDATE);
      EXCEPTION
        WHEN OTHERS THEN
          RAISE_APPLICATION_ERROR(-20001,
                                  'ERROR AL INSERTAR EN TAREA PERFIL.' ||
                                  SQLERRM);
          RETURN;
      END;
    END IF;

    IF W_OPERACION = 3 THEN
      /*ACTUALIZACION*/
      BEGIN
        UPDATE TAREA_PERFIL
           SET PERMISO_EJECUTAR      = IN_EJECUTAR,
               PERMISO_IMPRIMIR      = IN_IMPRIMIR,
               PERMISO_ACTUALIZACION = IN_ACTUALIZACION,
               PERMISO_ADICIONAR     = IN_ADICIONAR,
               PERMISO_BORRAR        = IN_BORRAR,
               PERMISO_CONSULTAR     = IN_CONSULTAR,
               USUARIO_TRANSACCION   = IN_USUARIO,
               FECHA_TRANSACCION     = SYSDATE
         WHERE CODIGO_PERFIL = IN_PERFIL
           AND CODIGO_TAREA = IN_TAREA;
      EXCEPTION
        WHEN OTHERS THEN
          RAISE_APPLICATION_ERROR(-20003,
                                  'ERROR AL ACTUALIZAR EN PERFIL.' ||
                                  SQLERRM);
          RETURN;
      END;
    END IF;

    IF W_OPERACION = 5 THEN
      /*BORRADO*/
      BEGIN
        DELETE FROM TAREA_PERFIL
         WHERE CODIGO_PERFIL = IN_PERFIL
           AND CODIGO_TAREA = IN_TAREA;
      EXCEPTION
        WHEN OTHERS THEN
          RAISE_APPLICATION_ERROR(-20005,
                                  'ERROR AL BORRAR EN PERFIL.' || SQLERRM);
          RETURN;
      END;
    END IF;
    COMMIT;
  END PRC_TAREA_PERFIL;

  /*Para crear usuarios a nivel WEB*/

  PROCEDURE PRC_USUARIO(W_OPERACION          IN NUMBER,
                        IN_COD_USUARIO       IN OUT VARCHAR2,
                        IN_PERFIL            IN OUT VARCHAR2,
                        IN_CLAVE             IN OUT VARCHAR2,
                        IN_LOCALIDAD         IN OUT NUMBER,
                        IN_ACCESOS           IN OUT NUMBER,
                        IN_FECHA_ACTIVACION  IN OUT DATE,
                        IN_NIVEL_SUPERVISION IN OUT NUMBER,
                        IN_FECHA_VENCIMIENTO IN OUT DATE,
                        IN_ESTADO            IN OUT VARCHAR2,
                        IN_CEDULA            IN OUT NUMBER,
                        IN_EMPLEADO          IN OUT VARCHAR2,
                        IN_NOMBRE            IN OUT VARCHAR2,
                        IN_TELEFONO          IN OUT VARCHAR2,
                        IN_COMPANIA          IN OUT NUMBER,
                        IN_FECHA_CREACION    IN OUT DATE,
                        IN_USUARIO           IN OUT VARCHAR2) IS

    var_long_clave      number(5);
    var_actualiza_clave varchar2(1);

  BEGIN
    IF W_OPERACION = 1 THEN
      /*INSERCION*/
      BEGIN
        INSERT INTO USUARIO
          (CODIGO_USUARIO,
           CODIGO_PERFIL,
           CLAVE_USUARIO,
           CODIGO_LOCALIDAD,
           CONTADOR_ACCESOS,
           FECHA_ACTIVACION,
           INDICADOR_NIVEL_SUPERVISION,
           FECHA_VENCIMIENTO,
           ESTADO_USUARIO,
           CEDULA_EMPLEADO,
           CODIGO_EMPLEADO,
           NOMBRE_EMPLEADO,
           TELEFONO_EMPLEADO,
           COD_CIA,
           FECHA_ULTIMO_INGRESO,
           FECHA_CREACION,
           USUARIO_TRANSACCION,
           FECHA_TRANSACCION)
        VALUES
          (IN_COD_USUARIO,
           IN_PERFIL,
           rawtohex(asegura(upper(IN_CLAVE))),
           IN_LOCALIDAD,
           IN_ACCESOS,
           IN_FECHA_ACTIVACION,
           IN_NIVEL_SUPERVISION,
           IN_FECHA_VENCIMIENTO,
           IN_ESTADO,
           IN_CEDULA,
           IN_EMPLEADO,
           IN_NOMBRE,
           IN_TELEFONO,
           IN_COMPANIA,
           NULL,
           IN_FECHA_CREACION,
           IN_USUARIO,
           SYSDATE);
      EXCEPTION
        WHEN OTHERS THEN
          RAISE_APPLICATION_ERROR(-20001,
                                  'ERROR AL INSERTAR EN USUARIO.' ||
                                  SQLERRM);
          RETURN;
      END;
    END IF;

    IF W_OPERACION = 3 THEN
      /*ACTUALIZACION*/
      BEGIN
        var_long_clave := length(IN_CLAVE);
        if var_long_clave between 8 and 16 then
          var_actualiza_clave := 'S';
        end if;

        UPDATE USUARIO
           SET CODIGO_PERFIL               = IN_PERFIL,
               CLAVE_USUARIO               = decode(var_actualiza_clave,
                                                    'S',
                                                    rawtohex(asegura(upper(IN_CLAVE))),
                                                    IN_CLAVE),
               CODIGO_LOCALIDAD            = IN_LOCALIDAD,
               CONTADOR_ACCESOS            = IN_ACCESOS,
               FECHA_ACTIVACION            = IN_FECHA_ACTIVACION,
               INDICADOR_NIVEL_SUPERVISION = IN_NIVEL_SUPERVISION,
               FECHA_VENCIMIENTO           = IN_FECHA_VENCIMIENTO,
               ESTADO_USUARIO              = IN_ESTADO,
               CEDULA_EMPLEADO             = IN_CEDULA,
               CODIGO_EMPLEADO             = IN_EMPLEADO,
               NOMBRE_EMPLEADO             = IN_NOMBRE,
               TELEFONO_EMPLEADO           = IN_TELEFONO,
               FECHA_CREACION              = IN_FECHA_CREACION,
               USUARIO_TRANSACCION         = IN_USUARIO,
               FECHA_TRANSACCION           = SYSDATE
         WHERE CODIGO_USUARIO = IN_COD_USUARIO;
      EXCEPTION
        WHEN OTHERS THEN
          RAISE_APPLICATION_ERROR(-20003,
                                  'ERROR AL ACTUALIZAR EN USUARIO.' ||
                                  SQLERRM);
          RETURN;
      END;
    END IF;

    IF W_OPERACION = 5 THEN
      /*BORRADO*/
      BEGIN
        DELETE FROM USUARIO WHERE CODIGO_USUARIO = IN_COD_USUARIO;
      EXCEPTION
        WHEN OTHERS THEN
          RAISE_APPLICATION_ERROR(-20005,
                                  'ERROR AL BORRAR EN USUARIO.' || SQLERRM);
          RETURN;
      END;
    END IF;
    COMMIT;
  END PRC_USUARIO;
  --
  PROCEDURE PRC_ACT_FECHA_USU(IN_USUARIO  IN OUT VARCHAR2) IS
     BEGIN
        --
         UPDATE USUARIO
            SET FECHA_ULTIMO_INGRESO = SYSDATE
          WHERE CODIGO_USUARIO = IN_USUARIO;
        --
  END PRC_ACT_FECHA_USU;
  --
END Pkg_Seguridad;
/
