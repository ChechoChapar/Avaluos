create or replace
PACKAGE AVALUOS.pck_migracion_avaluos IS
  -- Author  : 80853656
  -- Created : 11/03/2014
  -- Purpose : Transformación y cargue migración avaluos por medio de funciones reutilizables.

  FUNCTION fnc_fechaconst( v_fechaavaluo IN DATE,
                           v_vetustez    IN pgb_infconstruccion.n_vetustez%TYPE)
  RETURN DATE;

  FUNCTION fnc_ubic_gpslat (v_ubicgps IN VARCHAR2)
  RETURN VARCHAR2;

  FUNCTION fnc_ubic_gpslong (v_ubicgps IN VARCHAR2)
  RETURN VARCHAR2;

  FUNCTION fnc_rcons(v_fechaconstru IN DATE)
  RETURN VARCHAR2 ;

  FUNCTION fnc_parametros_sf(v_irraltura_sf IN VARCHAR2)
  RETURN VARCHAR2;

  FUNCTION fnc_parametros_bua(v_irraltura_bua IN VARCHAR2)
  RETURN VARCHAR2;

  -- Modificado: Leonardo Galan. 
  -- Fecha: 16-jun-2016
  -- Razon: Se modifica el nombre de los parametros de entrada
  FUNCTION fnc_parametros_sf_from_bua(p_valor IN VARCHAR2, p_bua_domain IN VARCHAR2)
    RETURN VARCHAR2;

  -- Modificado: Leonardo Galan. 
  -- Fecha: 16-jun-2016
  -- Razon: Se modifica el nombre de los parametros de entrada
  FUNCTION fnc_param_old_bua_from_new_bua( p_valor IN VARCHAR2,p_bua_domain IN VARCHAR2)
     RETURN VARCHAR2;

  FUNCTION fnc_matest_sf(v_matest_sf IN pgb_infconstruccion.a_edimat%TYPE)
  RETURN VARCHAR2;

  FUNCTION fnc_matest_bua(v_matest_bua IN pgb_infconstruccion.a_edimat%TYPE)
  RETURN VARCHAR2;

  FUNCTION fnc_usoinmu_sf(v_usoinmu_sf IN pgb_infinmueble.c_usoinmueble%TYPE)
  RETURN VARCHAR2;

  FUNCTION fnc_usoinmu_bua(v_usoinmu_bua IN pgb_infinmueble.c_usoinmueble%TYPE)
  RETURN VARCHAR2;

  FUNCTION fnc_det_mat( v_fechacontr IN DATE,
                        v_npisos     IN pgb_infconstruccion.n_pisos%TYPE,
                        v_edimat     IN pgb_infconstruccion.a_edimat%TYPE)
  RETURN VARCHAR2;

  FUNCTION fnc_almacenar_error( v_id_avaluo        IN pgb_avaluos.id_avaluo%TYPE,
                            v_consecutivobanco IN pgb_avaluos.n_consecutivobanco%TYPE,
                            c_mensaje          IN VARCHAR2)
  RETURN NUMBER;

  PROCEDURE prc_migracion_avaluos ( v_fechaava_ini IN DATE,
                                    v_fechaava_fin IN DATE);

END pck_migracion_avaluos;

/