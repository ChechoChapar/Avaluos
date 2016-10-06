CREATE OR REPLACE PACKAGE pkg_seguridad_terceros  IS

  TYPE T_PERMISOS IS RECORD (
    codtar     VARCHAR2(20),
    codper     VARCHAR2(15),
    pereje     VARCHAR2(1),
    perimp     VARCHAR2(1),
    perupd     VARCHAR2(1),
    perins     VARCHAR2(1),
    perbor     VARCHAR2(1),
    percon     VARCHAR2(1)
  );
  w_fechamax   DATE;
  w_existe     VARCHAR2(1);

PROCEDURE pter_carga_permisos(
  p_usuario    IN     VARCHAR2,
  p_tarea      IN     VARCHAR2,
  p_permisos   IN OUT T_PERMISOS
);

FUNCTION fter_valida_usuario(
  p_usuario    IN VARCHAR2
) RETURN VARCHAR2;

END pkg_seguridad_terceros;
/


