CREATE OR REPLACE PACKAGE AVALUOS.Pkg_Seguridad IS
  PROCEDURE PRC_MODULO(W_OPERACION IN NUMBER,
                       IN_CODIGO   IN OUT VARCHAR2,
                       IN_MODULO   IN OUT VARCHAR2,
                       IN_ORDEN    IN OUT NUMBER,
                       IN_MODULO_PADRE IN OUT VARCHAR2,
                       IN_USUARIO  IN OUT VARCHAR2);

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
                      IN_USUARIO               IN OUT VARCHAR2);

  PROCEDURE PRC_PERFIL(W_OPERACION          IN NUMBER,
                       IN_PERFIL            IN OUT VARCHAR2,
                       IN_DESCRIPCION       IN OUT VARCHAR2,
                       IN_ACCESOS           IN OUT NUMBER,
                       IN_VENCIMIENTO       IN OUT DATE,
                       IN_DETALLE_FUNCIONAL IN OUT VARCHAR2,
                       IN_CARGO_FUNCIONARIO IN OUT VARCHAR2,
                       IN_USUARIO           IN OUT VARCHAR2);

  PROCEDURE PRC_TAREA_PERFIL(W_OPERACION      IN NUMBER,
                             IN_TAREA         IN OUT VARCHAR2,
                             IN_PERFIL        IN OUT VARCHAR2,
                             IN_EJECUTAR      IN OUT VARCHAR2,
                             IN_IMPRIMIR      IN OUT VARCHAR2,
                             IN_ACTUALIZACION IN OUT VARCHAR2,
                             IN_ADICIONAR     IN OUT VARCHAR2,
                             IN_BORRAR        IN OUT VARCHAR2,
                             IN_CONSULTAR     IN OUT VARCHAR2,
                             IN_USUARIO       IN OUT VARCHAR2);

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
                        IN_USUARIO           IN OUT VARCHAR2);
  --
  PROCEDURE PRC_ACT_FECHA_USU(IN_USUARIO  IN OUT VARCHAR2);                      
  --
END;
/
