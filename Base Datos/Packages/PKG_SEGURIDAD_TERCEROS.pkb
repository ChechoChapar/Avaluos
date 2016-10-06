CREATE OR REPLACE PACKAGE BODY PKG_SEGURIDAD_TERCEROS  IS

FUNCTION fter_valida_usuario(
  p_usuario  IN VARCHAR2
) RETURN VARCHAR2 IS
BEGIN
  BEGIN
    SELECT u.fecha_vencimiento
    INTO   pkg_seguridad_terceros.w_fechamax
    FROM   usuario u
    WHERE  REPLACE(u.codigo_usuario,'"','') = p_usuario;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RAISE_APPLICATION_ERROR(
        -20541,'** ATENCION: Usuario '||p_usuario||' NO habilitado para esta aplicacion'
      );
    WHEN OTHERS THEN
      RAISE_APPLICATION_ERROR(
        -20543,'*** ERROR: Ejecutando fter_valida_usuario. Mensaje:'||SQLERRM
      );
  END;
  IF pkg_seguridad_terceros.w_fechamax < SYSDATE THEN
    RAISE_APPLICATION_ERROR(
      -20542,'Usuario '||p_usuario||' vencido en '||pkg_seguridad_terceros.w_fechamax
    );
  ELSE
    RETURN ('S');
  END IF;
END fter_valida_usuario;

PROCEDURE pter_carga_permisos(
  p_usuario    IN     VARCHAR2,
  p_tarea      IN     VARCHAR2,
  p_permisos   IN OUT T_PERMISOS
)  IS
  vcMensaje               VARCHAR2(4000);
  exError_interno         EXCEPTION;
  exError_interno1        EXCEPTION;
  exError_interno2        EXCEPTION;
BEGIN
  BEGIN
    SELECT t.codigo_tarea,
           t.codigo_perfil,
           t.permiso_ejecutar,
           t.permiso_imprimir,
           t.permiso_actualizacion,
           t.permiso_adicionar,
           t.permiso_borrar,
           t.permiso_consultar,
           NVL(u.fecha_vencimiento,SYSDATE)
    INTO   p_permisos.codtar,
           p_permisos.codper,
           p_permisos.pereje,
           p_permisos.perimp,
           p_permisos.perupd,
           p_permisos.perins,
           p_permisos.perbor,
           p_permisos.percon,
           pkg_seguridad_terceros.w_fechamax
    FROM   tarea_perfil t,
           usuario u
    WHERE  REPLACE(u.codigo_usuario,'"','') = p_usuario
    AND    t.codigo_tarea   = p_tarea
    AND    u.codigo_perfil = t.codigo_perfil;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      IF p_usuario = USER THEN
        p_permisos.codtar := 'S';
        p_permisos.codper := 'S';
        p_permisos.pereje := 'S';
        p_permisos.perimp := 'S';
        p_permisos.perupd := 'S';
        p_permisos.perins := 'S';
        p_permisos.perbor := 'S';
        p_permisos.percon := 'S';
        pkg_seguridad_terceros.w_fechamax := SYSDATE + 1;
      ELSE
        vcMensaje := '** ATENCION : El Usuario '||p_usuario||' NO esta habilitado para utilizar esta forma';
        RAISE exError_interno;
      END IF;
    WHEN OTHERS THEN
      vcMensaje := '*** ERROR: Falla al validar permisos para el Usuario '||p_usuario||'. Proc: PKG_SEGURIDAD_TERCEROS.PTER_CARGA_PERMISOS'||'. Mensaje:'||SQLERRM;
      RAISE exError_interno2;
  END;
  IF pkg_seguridad_terceros.w_fechamax < SYSDATE THEN
    vcMensaje := '** ATENCION: El Usuario '||p_usuario||' vencido en '||pkg_seguridad_terceros.w_fechamax;
    RAISE exError_interno1;
  END IF;
  vcMensaje := 'OK';
EXCEPTION
  WHEN exError_interno THEN
    RAISE_APPLICATION_ERROR(
      -20543, vcMensaje
    );
  WHEN exError_interno1 THEN
    RAISE_APPLICATION_ERROR(
      -20544, vcMensaje
    );
  WHEN exError_interno2 THEN
    RAISE_APPLICATION_ERROR(
      -20545, vcMensaje
    );
END pter_carga_permisos;

END pkg_seguridad_terceros;
/


