create or replace
PACKAGE BODY AVALUOS.pck_migracion_avaluos IS
  -- Author  : 80853656
  -- Created : 11/03/2014
  -- Purpose : Transformación y cargue migración avaluos por medio de funciones reutilizables.

  vg_msj_error VARCHAR2(800);
  vg_id_avaluo  pgb_avaluos.id_avaluo%TYPE;
  vg_consebanco pgb_avaluos.n_consecutivobanco%TYPE;
  vg_respuesta  NUMBER(2);

  --Esta función retorna la fecha de construcción.
  FUNCTION fnc_fechaconst(v_fechaavaluo IN DATE, v_vetustez IN pgb_infconstruccion.n_vetustez%TYPE) RETURN DATE IS
    v_fecha_const DATE;

  BEGIN
    SELECT add_months(v_fechaavaluo, -(v_vetustez * 12))
    INTO v_fecha_const
    FROM dual;

    RETURN(v_fecha_const);

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN NULL;
    WHEN OTHERS THEN
      vg_msj_error:= 'Fecha construcción '||SQLERRM;
      vg_respuesta:=pck_migracion_avaluos.fnc_almacenar_error ( vg_id_avaluo,
                                                                vg_consebanco,
                                                                vg_msj_error);
      RETURN NULL;
  END fnc_fechaconst;

  --Función de extracción de la latitud en coordenadas gps
  FUNCTION fnc_ubic_gpslat (v_ubicgps IN VARCHAR2) RETURN VARCHAR2 IS
    var_latitud  VARCHAR2(20);
    --val_latitud  VARCHAR2(4);

  BEGIN

  IF v_ubicgps LIKE ('%;%')
    THEN
      SELECT SUBSTR ( v_ubicgps,0,INSTR (v_ubicgps,';')-1)
      INTO var_latitud
      FROM DUAL;
  ELSIF v_ubicgps LIKE ('%,%') THEN
      SELECT SUBSTR ( v_ubicgps,0,INSTR (v_ubicgps,',')-1)
      INTO var_latitud
      FROM DUAL;
  END IF;

    IF var_latitud IS NOT NULL
      THEN
        IF TO_NUMBER (var_latitud,'99.99999999') >= -4.400000 AND TO_NUMBER (var_latitud,'99.99999999') <= 13.500000
          THEN
            RETURN (var_latitud);
        ELSE
          RETURN NULL;
        END IF;
    ELSE
      RETURN NULL;
    END IF;

/*  Segun conversacion telefonica con Jason Rincon se quita esta validacion de la vista
  IF var_latitud IS NOT NULL
    THEN
      SELECT REGEXP_INSTR( var_latitud,
                           '([-])*([0-9]*.[0-9][0-9][0-9][0-9][0-9][0-9])$')
      INTO val_latitud
      FROM DUAL;
  ELSE
    RETURN NULL;
  END IF;

  IF val_latitud = 1
    THEN
      IF TO_NUMBER (var_latitud,'99.999999') >= -4.400000 AND TO_NUMBER (var_latitud,'99.999999') <= 13.500000
        THEN
        RETURN (var_latitud);
      ELSE
        RETURN NULL;
      END IF;
  ELSE
    vg_msj_error:= 'Latitud inconsistente ';
    vg_respuesta:=pck_migracion_avaluos.fnc_almacenar_error( vg_id_avaluo,
                                                             vg_consebanco,
                                                             vg_msj_error);
    RETURN NULL;
  END IF;*/
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN NULL;
    WHEN OTHERS THEN
      vg_msj_error:= 'Latitud inconsistente '||SQLERRM;
      --vg_respuesta:=pck_migracion_avaluos.fnc_almacenar_error( vg_id_avaluo,
      --                                                          vg_consebanco,
      --                                                          vg_msj_error);
      RETURN NULL;

  END fnc_ubic_gpslat;


  --Función de extracción de la longitud en coordenadas gps
  FUNCTION fnc_ubic_gpslong (v_ubicgps IN VARCHAR2) RETURN VARCHAR2 IS
    var_longitud  VARCHAR2 (20);
    --val_longitud  VARCHAR2(4);

  BEGIN
    IF v_ubicgps LIKE ('%;%')
      THEN
        SELECT SUBSTR ( v_ubicgps,INSTR (v_ubicgps,';')+1)
        INTO var_longitud
        FROM DUAL;
    ELSE
        SELECT SUBSTR ( v_ubicgps,INSTR (v_ubicgps,',')+1)
        INTO var_longitud
        FROM DUAL;
    END IF;

    IF var_longitud IS NOT NULL
      THEN
        IF TO_NUMBER (var_longitud,'99.99999999') >= -82.500000 AND TO_NUMBER (var_longitud,'99.99999999') <= -66.000000
          THEN
            RETURN (var_longitud);
        ELSE
          RETURN NULL;
        END IF;
    ELSE
      RETURN NULL;
    END IF;
/*  Segun conversacion telefonica con Jason Rincon se quita esta validacion de la vista
    IF var_longitud IS NOT NULL
      THEN
        SELECT REGEXP_INSTR( var_longitud,
                             '([-])*([0-9]*.[0-9][0-9][0-9][0-9][0-9][0-9])$')
        INTO val_longitud
        FROM DUAL;
    ELSE
      RETURN NULL;
    END IF;

    IF val_longitud = 1
      THEN
      IF TO_NUMBER (var_longitud,'99.999999') >= -82.500000 AND TO_NUMBER (var_longitud,'99.999999') <= -66.000000
        THEN
          RETURN (var_longitud);
      ELSE
        RETURN NULL;
      END IF;
    ELSE
      vg_msj_error:= 'Longitud inconsistente ';
      vg_respuesta:=pck_migracion_avaluos.fnc_almacenar_error( vg_id_avaluo,
                                                               vg_consebanco,
                                                               vg_msj_error);
      RETURN NULL;
    END IF;
    RETURN (var_longitud);*/

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN NULL;
    WHEN OTHERS THEN
      vg_msj_error:= 'Longitud inconsistente '||SQLERRM;
      --vg_respuesta:=pck_migracion_avaluos.fnc_almacenar_error( vg_id_avaluo,
      --                                                         vg_consebanco,
      --                                                         vg_msj_error);
      RETURN NULL;

  END fnc_ubic_gpslong;

  --esta función realiza asigna a la fecha de construcción un código SF
  FUNCTION fnc_rcons(v_fechaconstru IN DATE) RETURN VARCHAR2 IS
    v_rcons pgb_infconstruccion.a_rcons_sf%TYPE;

  BEGIN
   IF to_char( v_fechaconstru , 'yyyy') >= 2011
      THEN v_rcons := 7;
   ELSE
     IF to_char( v_fechaconstru , 'yyyy') BETWEEN 1998 AND 2010
       THEN v_rcons := 6;
     ELSE
       IF to_char( v_fechaconstru , 'yyyy') BETWEEN 1985 AND 1997
          THEN v_rcons := 5;
       ELSE
         IF to_char( v_fechaconstru , 'yyyy') BETWEEN 1978 AND 1984
            THEN v_rcons := 4;
         ELSE
           IF to_char( v_fechaconstru , 'yyyy') BETWEEN 1963 AND 1977
              THEN v_rcons := 3;
           ELSE
             IF to_char( v_fechaconstru , 'yyyy') < 1963
               THEN v_rcons := 2;
               ELSE
                 IF to_char( v_fechaconstru , 'yyyy') IS NOT NULL
                    THEN v_rcons := 1;
                 END IF;
             END IF;
           END IF;
         END IF;
       END IF;
     END IF;
   END IF;

   RETURN v_rcons;

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN NULL;
    WHEN OTHERS THEN
      vg_msj_error:= 'Inconsistente rango construcción '||SQLERRM;
      vg_respuesta:=pck_migracion_avaluos.fnc_almacenar_error( vg_id_avaluo,
                                                               vg_consebanco,
                                                               vg_msj_error);
      RETURN NULL;
  END fnc_rcons;


  --Daños irregularidad altura y planta SF
  FUNCTION fnc_parametros_sf( v_irraltura_sf IN VARCHAR2) RETURN VARCHAR2 IS
  v_irraltura pgb_infconstruccion.a_edisimalt%TYPE;
  v_old_dom VARCHAR2(20);

  BEGIN
    v_old_dom:= 'A_EDISIMALT';

    SELECT sf_value
    INTO   v_irraltura
    FROM   ref_old_new_domain
    WHERE  old_domain = v_old_dom
    AND    old_value = v_irraltura_sf;

    RETURN(v_irraltura);

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN NULL;
    WHEN OTHERS THEN
      vg_msj_error:= 'Irregularidad altura SF inconsistente '||SQLERRM;
      vg_respuesta:=pck_migracion_avaluos.fnc_almacenar_error( vg_id_avaluo,
                                                               vg_consebanco,
                                                               vg_msj_error);
      RETURN NULL;
  END fnc_parametros_sf;

  --Daños irregularidad altura y planta BUA
  FUNCTION fnc_parametros_bua(v_irraltura_bua IN VARCHAR2) RETURN VARCHAR2 IS
  v_irraltura pgb_infconstruccion.a_edisimalt%TYPE;
  v_old_dom VARCHAR2(20);

  BEGIN
    v_old_dom:= 'A_EDISIMALT';

    SELECT bua_value
    INTO   v_irraltura
    FROM   ref_old_new_domain
    WHERE  old_domain = v_old_dom
    AND    old_value = v_irraltura_bua;

    RETURN(v_irraltura);

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN NULL;
    WHEN OTHERS THEN
      vg_msj_error:= 'Irregularidad altura BUA inconsistente '||SQLERRM;
      vg_respuesta:=pck_migracion_avaluos.fnc_almacenar_error( vg_id_avaluo,
                                                               vg_consebanco,
                                                               vg_msj_error);
      RETURN NULL;
  END fnc_parametros_bua;

  -- Modificado: Leonardo Galan. 
  -- Fecha: 16-jun-2016
  -- Razon: Se modifica el nombre de los parametros de entrada
  FUNCTION fnc_parametros_sf_from_bua( p_valor IN VARCHAR2,p_bua_domain IN VARCHAR2) RETURN VARCHAR2 IS

	  v_new_sf_value VARCHAR2(20);

	  BEGIN

	    SELECT sf_value
	    INTO   v_new_sf_value
	    FROM   ref_old_new_domain
	    WHERE  bua_domain = p_bua_domain
	    AND    bua_value = p_valor
	    AND ROWNUM <2;

	    RETURN(v_new_sf_value);

	  EXCEPTION
	    WHEN NO_DATA_FOUND THEN
	      RETURN NULL;
	    WHEN OTHERS THEN
	      vg_msj_error:= 'Irregularidad ||bua_domain|| inconsistente '||SQLERRM;
	      RETURN NULL;
  END fnc_parametros_sf_from_bua;

  -- Modificado: Leonardo Galan. 
  -- Fecha: 16-jun-2016
  -- Razon: Se modifica el nombre de los parametros de entrada
  FUNCTION fnc_param_old_bua_from_new_bua( p_valor IN VARCHAR2,p_bua_domain IN VARCHAR2) RETURN VARCHAR2 IS

  	  v_old_bua_value VARCHAR2(20);

  	  BEGIN

  	    SELECT old_value
  	    INTO   v_old_bua_value
  	    FROM   ref_old_new_domain
  	    WHERE  bua_domain = p_bua_domain
  	    AND    bua_value = p_valor
        AND ROWNUM <2;

  	    RETURN(v_old_bua_value);

  	  EXCEPTION
  	    WHEN NO_DATA_FOUND THEN
  	      RETURN NULL;
  	    WHEN OTHERS THEN
  	      vg_msj_error:= 'Irregularidad ||bua_domain|| inconsistente '||SQLERRM;
  	      RETURN NULL;
  END fnc_param_old_bua_from_new_bua;

  --Segun el material de construcción asigna un código SF
  FUNCTION fnc_matest_sf(v_matest_sf IN pgb_infconstruccion.a_edimat%TYPE) RETURN VARCHAR2 IS
  v_matest pgb_infconstruccion.a_edimat%TYPE;
  v_old_dom VARCHAR2(20);

  BEGIN
    v_old_dom:= 'MATEST';

    SELECT sf_value
    INTO   v_matest
    FROM   ref_old_new_domain
    WHERE  old_domain = v_old_dom
    AND    old_value = v_matest_sf;

    RETURN(v_matest);

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN NULL;
    WHEN OTHERS THEN
      vg_msj_error:= 'Inconsistencia material estructura '||SQLERRM;
      vg_respuesta:=pck_migracion_avaluos.fnc_almacenar_error( vg_id_avaluo,
                                                               vg_consebanco,
                                                               vg_msj_error);
      RETURN NULL;
  END fnc_matest_sf;

  --Segun el material de construcción asigna un código BUA
  FUNCTION fnc_matest_bua(v_matest_bua IN pgb_infconstruccion.a_edimat%TYPE) RETURN VARCHAR2 IS
  v_matest pgb_infconstruccion.a_edimat%TYPE;
  v_old_dom VARCHAR2(20);

  BEGIN
    v_old_dom:= 'MATEST';

    SELECT bua_value
    INTO   v_matest
    FROM   ref_old_new_domain
    WHERE  old_domain = v_old_dom
    AND    old_value = v_matest_bua;

    RETURN(v_matest);

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN NULL;
    WHEN OTHERS THEN
      vg_msj_error:= 'Inconsistencia material estructura '||SQLERRM;
      vg_respuesta:=pck_migracion_avaluos.fnc_almacenar_error( vg_id_avaluo,
                                                               vg_consebanco,
                                                               vg_msj_error);
      RETURN NULL;
  END fnc_matest_bua;

  --Asigna un código SF al uso de inmueble.
  FUNCTION fnc_usoinmu_sf(v_usoinmu_sf IN pgb_infinmueble.c_usoinmueble%TYPE) RETURN VARCHAR2 IS
  v_usoinmu pgb_infinmueble.c_usoinmueble%TYPE;
  v_old_dom VARCHAR2(20);

  BEGIN
    v_old_dom:= 'C_USOINMUEBLE';

    SELECT sf_value
    INTO   v_usoinmu
    FROM   ref_old_new_domain
    WHERE  old_domain = v_old_dom
    AND    old_value = v_usoinmu_sf;

    RETURN(v_usoinmu);

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN NULL;
    WHEN OTHERS THEN
      vg_msj_error:= 'Inconsistencia uso inmueble SF '||SQLERRM;
      vg_respuesta:=pck_migracion_avaluos.fnc_almacenar_error( vg_id_avaluo,
                                                               vg_consebanco,
                                                               vg_msj_error);
      RETURN NULL;
  END fnc_usoinmu_sf;

  --Asigna un código BUA al uso de inmueble.
  FUNCTION fnc_usoinmu_bua(v_usoinmu_bua IN pgb_infinmueble.c_usoinmueble%TYPE) RETURN VARCHAR2 IS
  v_usoinmu pgb_infinmueble.c_usoinmueble%TYPE;
  v_old_dom VARCHAR2(20);

  BEGIN
    v_old_dom:= 'C_USOINMUEBLE';

    SELECT bua_value
    INTO   v_usoinmu
    FROM   ref_old_new_domain
    WHERE  old_domain = v_old_dom
    AND    old_value = v_usoinmu_bua;

    RETURN(v_usoinmu);

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN NULL;
    WHEN OTHERS THEN
      vg_msj_error:= 'Inconsistencia uso inmueble BUA '||SQLERRM;
      vg_respuesta:=pck_migracion_avaluos.fnc_almacenar_error( vg_id_avaluo,
                                                               vg_consebanco,
                                                               vg_msj_error);
      RETURN NULL;
  END fnc_usoinmu_bua;

  -- función que extrae los valores de estructura acorde a la formulación de validación.
  FUNCTION fnc_det_mat( v_fechacontr IN DATE,
                        v_npisos     IN pgb_infconstruccion.n_pisos%TYPE,
                        v_edimat     IN pgb_infconstruccion.a_edimat%TYPE
                           ) RETURN VARCHAR2 IS
    v_estructura VARCHAR2(3);

  BEGIN
    --Reglas generales
    IF v_edimat = 6
      THEN v_estructura := 20;
    --Generales con pisos
    ELSE
      IF v_edimat = 5 AND  v_npisos BETWEEN 1 and 2
        THEN v_estructura := 16;
      ELSE
        IF v_edimat = 4 and v_npisos >=8
          THEN v_estructura := 15;
        ELSE
          IF v_edimat = 3 and v_npisos >=8
            THEN v_estructura := 11;
          ELSE
            IF v_edimat = 2 and v_npisos >=13
              THEN v_estructura := 3;
            ELSE
              IF v_edimat = 2 and v_npisos between 8 and 12
                THEN v_estructura := 1;
              ELSE
                IF v_edimat = 1 and v_npisos between 1 and 7
                    THEN v_estructura := 1;
                ELSE
                  IF v_edimat = 1 and v_npisos >=13
                    THEN v_estructura := 3;
                  ELSE
                    --reglas compartidas entre varios con varios rangos de fechas
                    IF (v_edimat = 1 and to_char( v_fechacontr , 'yyyy') <= 1997 AND  v_npisos BETWEEN 8 and 12)
                      THEN  v_estructura := 1;
                    ELSE
                      IF (v_edimat = 2 and to_char( v_fechacontr , 'yyyy') <= 1997 AND  v_npisos BETWEEN 3 and 7)
                        THEN  v_estructura := 7;
                      ELSE
                        IF (v_edimat = 3 and to_char( v_fechacontr , 'yyyy') <= 1997 AND  v_npisos BETWEEN 1 and 2)
                          THEN  v_estructura := 12;
                        ELSE
                          IF (v_edimat = 3 and to_char( v_fechacontr , 'yyyy') >= 1985 AND  v_npisos BETWEEN 3 and 7)
                            THEN  v_estructura := 11;
                          ELSE
                            IF (v_edimat = 4 and to_char( v_fechacontr , 'yyyy') >= 1985 AND  v_npisos BETWEEN 1 and 7)
                              THEN v_estructura := 14;
                            ELSE
                              IF (v_edimat = 5 and to_char( v_fechacontr , 'yyyy') <= 1997 AND  v_npisos>=3)
                                THEN v_estructura := 16;
                              ELSE
                                --Reglas correspondientes a un unico periodo de fechas
                                IF (v_edimat = 1 and to_char( v_fechacontr , 'yyyy') >= 1998 AND  v_npisos BETWEEN 8 and 12)
                                  THEN v_estructura := 3;
                                ELSE
                                  IF (v_edimat = 2 and to_char( v_fechacontr , 'yyyy') <= 1984 AND  v_npisos BETWEEN 1 and 2)
                                    THEN v_estructura := 9;
                                  ELSE
                                    IF (v_edimat = 2 and to_char( v_fechacontr , 'yyyy') BETWEEN 1985 AND 1997 AND  v_npisos BETWEEN 1 and 2)
                                      THEN v_estructura := 7;
                                    ELSE
                                      IF (v_edimat = 2 and to_char( v_fechacontr , 'yyyy') >= 1998 AND  v_npisos BETWEEN 1 and 7)
                                        THEN v_estructura := 8;
                                      ELSE
                                        IF (v_edimat = 3 and to_char( v_fechacontr , 'yyyy') <= 1984 AND  v_npisos BETWEEN 3 and 7)
                                          THEN v_estructura := 12;
                                        ELSE
                                          IF (v_edimat = 3 and to_char( v_fechacontr , 'yyyy') >= 1998 AND  v_npisos BETWEEN 1 and 2)
                                            THEN v_estructura := 11;
                                          ELSE
                                            IF (v_edimat = 4 and to_char( v_fechacontr , 'yyyy') <= 1998 AND  v_npisos BETWEEN 1 and 7)
                                              THEN v_estructura := 15;
                                            END IF;
                                          END IF;
                                        END IF;
                                      END IF;
                                    END IF;
                                  END IF;
                                END IF;
                              END IF;
                            END IF;
                          END IF;
                        END IF;
                      END IF;
                    END IF;
                  END IF;
                END IF;
              END IF;
            END IF;
          END IF;
        END IF;
      END IF;
     END IF;

  RETURN v_estructura;

    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        RETURN NULL;
      WHEN OTHERS THEN
        vg_msj_error:= 'Inconsistencia definición del detalle estructura '||SQLERRM;
        vg_respuesta:=pck_migracion_avaluos.fnc_almacenar_error( vg_id_avaluo,
                                                                 vg_consebanco,
                                                                 vg_msj_error);
        RETURN NULL;
  END fnc_det_mat;

  FUNCTION fnc_almacenar_error( v_id_avaluo        IN pgb_avaluos.id_avaluo%TYPE,
                                v_consecutivobanco IN pgb_avaluos.n_consecutivobanco%TYPE,
                                c_mensaje          IN VARCHAR2)
    RETURN NUMBER IS
    v_resultado NUMBER(6) := 0;
  BEGIN
    INSERT INTO DATOS_MIGRA_AVALUOS
      (id_avaluo,
       consecutivobanco,
       Fecha,
       usuario,
       mensaje)
    VALUES
      (v_id_avaluo,
       v_consecutivobanco,
       SYSDATE,
       USER,
       c_mensaje);

    COMMIT;
    v_resultado := 0;
    RETURN v_resultado;
  EXCEPTION
    WHEN OTHERS THEN
    v_resultado:= pck_migracion_avaluos.fnc_almacenar_error( 1,
                                                             1,
                                                             'Tipo o cantidad de datos incorrecto para insertar'||SQLERRM);

      RETURN v_resultado;

  END fnc_almacenar_error;

  PROCEDURE prc_migracion_avaluos ( v_fechaava_ini IN DATE,
                                    v_fechaava_fin IN DATE)
    AS

    v_fechaconstr DATE;
    v_rcons       VARCHAR2(3);
    v_longitud    VARCHAR2(15);
    v_latitud     VARCHAR2(15);
    v_danos_sf    VARCHAR2(3);
    v_irrealt_sf  VARCHAR2(3);
    v_irrepla_sf  VARCHAR2(3);
    v_danos_bua   VARCHAR2(3);
    v_irrealt_bua VARCHAR2(3);
    v_irrepla_bua VARCHAR2(3);
    v_matest_sf   VARCHAR2(3);
    v_matest_bua  VARCHAR2(3);
    v_usoinmu_sf  VARCHAR2(3);
    v_usoinmu_bua VARCHAR2(3);
    v_estructura  VARCHAR2(3);

    CURSOR c_migracion IS (
      SELECT a.id_avaluo,
             a.n_consecutivobanco,
             a.a_ubicgps,
             a.f_fechaavaluo,
             c.n_vetustez,
             c.a_edisimalt,
             c.a_edisimplanta,
             c.a_danoprevio,
             c.n_pisos,
             c.a_edimat,
             i.c_usoinmueble,
             a.t_sistema,
             a.c_sistema
             ,C.C_MATERIAL_SF
      FROM pgb_avaluos a
      LEFT JOIN pgb_infconstruccion c
      ON a.id_avaluo = c.id_avaluo
      LEFT JOIN pgb_infinmueble i
      ON a.id_avaluo = i.id_avaluo
      WHERE a.f_Fechaavaluo BETWEEN v_fechaava_ini AND v_fechaava_fin);


  BEGIN

      FOR reg_migracion IN c_migracion LOOP
        v_fechaconstr := pck_migracion_avaluos.fnc_fechaconst(reg_migracion.f_fechaavaluo,reg_migracion.n_vetustez);
        v_rcons       := pck_migracion_avaluos.fnc_rcons(v_fechaconstr);
        v_longitud    := pck_migracion_avaluos.fnc_ubic_gpslong(reg_migracion.a_ubicgps);
        v_latitud     := pck_migracion_avaluos.fnc_ubic_gpslat(reg_migracion.a_ubicgps);
        v_danos_sf    := pck_migracion_avaluos.fnc_parametros_sf(reg_migracion.a_danoprevio);
        v_irrealt_sf  := pck_migracion_avaluos.fnc_parametros_sf(reg_migracion.a_edisimalt);
        v_irrepla_sf  := pck_migracion_avaluos.fnc_parametros_sf(reg_migracion.a_edisimplanta);
        v_danos_bua   := pck_migracion_avaluos.fnc_parametros_bua(reg_migracion.a_danoprevio);
        v_irrealt_bua := pck_migracion_avaluos.fnc_parametros_bua(reg_migracion.a_edisimalt);
        v_irrepla_bua := pck_migracion_avaluos.fnc_parametros_bua(reg_migracion.a_edisimplanta);
        v_matest_sf   := pck_migracion_avaluos.fnc_matest_sf(reg_migracion.a_edimat);
        v_matest_bua  := pck_migracion_avaluos.fnc_matest_bua(reg_migracion.a_edimat);
        v_usoinmu_sf  := pck_migracion_avaluos.fnc_usoinmu_sf(reg_migracion.c_usoinmueble);
        v_usoinmu_bua := pck_migracion_avaluos.fnc_usoinmu_bua(reg_migracion.c_usoinmueble);
        v_estructura  := pck_migracion_avaluos.fnc_det_mat(v_fechaconstr,reg_migracion.n_pisos,v_matest_sf);
        --v_estructura  := pck_migracion_avaluos.fnc_det_mat(v_fechaconstr,reg_migracion.n_pisos,reg_migracion.C_MATERIAL_SF);


        IF reg_migracion.id_avaluo IS NOT NULL
          THEN
            vg_id_avaluo  := reg_migracion.id_avaluo;
            vg_consebanco := reg_migracion.n_consecutivobanco;
            --Actualiza tabla avaluos
            IF v_longitud IS NOT NULL AND v_latitud IS NOT NULL
              THEN
              --dbms_output.put_line( 'GPS: '||reg_migracion.id_avaluo||':'||reg_migracion.a_ubicgps||v_longitud||v_latitud);

              UPDATE pgb_avaluos
              SET    pgb_avaluos.t_latitud = v_latitud,
                     pgb_avaluos.t_longitud = v_longitud
              WHERE  pgb_avaluos.id_avaluo = reg_migracion.id_avaluo
                AND  pgb_avaluos.n_consecutivobanco= reg_migracion.n_consecutivobanco;

            END IF;

            --Actualiza tabla infinmueble campo c_usoinmueble_sf
            IF v_usoinmu_sf IS NOT NULL
              THEN
              --dbms_output.put_line( 'USOINMUEBLE: '||reg_migracion.c_usoinmueble||':'||v_usoinmu_sf);

              UPDATE pgb_infinmueble
              SET    pgb_infinmueble.c_usoinmueble_sf = v_usoinmu_sf
              WHERE  pgb_infinmueble.id_avaluo = reg_migracion.id_avaluo;
            END IF;
            --Actualiza tabla infinmueble campo c_usoinmueble_bua
            IF v_usoinmu_bua IS NOT NULL
              THEN
              --dbms_output.put_line( 'USOINMUEBLE: '||reg_migracion.c_usoinmueble||':'||v_usoinmu_bua);

              UPDATE pgb_infinmueble
              SET    pgb_infinmueble.c_usoinmueble_bua = v_usoinmu_bua
              WHERE  pgb_infinmueble.id_avaluo = reg_migracion.id_avaluo;
            END IF;

            --Actualiza tabla pgb_infconstruccion campo a_rcons_sf
            IF v_rcons IS NOT NULL
              THEN
              --dbms_output.put_line( 'FechaConstRango: '||v_fechaconstr||':'||v_rcons);

              UPDATE pgb_infconstruccion
              SET    pgb_infconstruccion.a_rcons_sf = v_rcons
              WHERE  pgb_infconstruccion.id_avaluo = reg_migracion.id_avaluo;
            END IF;

            --Actualiza tabla pgb_infconstruccion campo c_material_sf
            IF v_matest_sf IS NOT NULL
              THEN
              --dbms_output.put_line( 'Material: '||reg_migracion.a_edimat||':'||v_matest_sf);

              UPDATE pgb_infconstruccion
              SET    pgb_infconstruccion.c_material_sf = v_matest_sf,
                     pgb_infconstruccion.c_material= v_matest_bua
              WHERE  pgb_infconstruccion.id_avaluo = reg_migracion.id_avaluo;
            END IF;

            --Actualiza tabla pgb_infconstruccion campo c_irraltura y simetria_alt_sf
            IF v_irrealt_sf IS NOT NULL AND v_irrealt_bua IS NOT NULL
              THEN
              --dbms_output.put_line( 'Irralt: '||reg_migracion.a_edisimalt||':'||v_irrealt_sf);

              UPDATE pgb_infconstruccion
              SET    pgb_infconstruccion.simetria_alt_sf = v_irrealt_sf,
                     pgb_infconstruccion.c_irraltura= v_irrealt_bua
              WHERE  pgb_infconstruccion.id_avaluo = reg_migracion.id_avaluo;
            END IF;

            --Actualiza tabla pgb_infconstruccion campo simetria_plant_sf y c_irrplanta
            IF v_irrepla_sf IS NOT NULL AND v_irrepla_bua IS NOT NULL
              THEN
              --dbms_output.put_line( 'Irrplan: '||reg_migracion.a_edisimplanta||':'||v_irrepla_sf);

              UPDATE pgb_infconstruccion
              SET    pgb_infconstruccion.simetria_plant_sf = v_irrepla_sf,
                     pgb_infconstruccion.c_irrplanta= v_irrepla_bua
              WHERE  pgb_infconstruccion.id_avaluo = reg_migracion.id_avaluo;
            END IF;

            --Actualiza tabla pgb_infconstruccion campo simetria_plant_sf y c_irrplanta
            IF v_danos_sf IS NOT NULL AND v_danos_bua IS NOT NULL
              THEN
              --dbms_output.put_line( 'Daño: '||reg_migracion.a_edisimplanta||':'||v_danos_sf);

              UPDATE pgb_infconstruccion
              SET    pgb_infconstruccion.a_danoprevio_sf = v_danos_sf,
                     pgb_infconstruccion.c_danoprevio= v_danos_bua
              WHERE  pgb_infconstruccion.id_avaluo = reg_migracion.id_avaluo;
            END IF;

            --Actualiza tabla pgb_infconstruccion campo c_material_sf
            IF v_estructura IS NOT NULL
              THEN
              --dbms_output.put_line( 'Material: '||reg_migracion.a_edisimplanta||':'||v_estructura);

              UPDATE pgb_infconstruccion
              SET    pgb_infconstruccion.c_detallematerial = v_estructura
              WHERE  pgb_infconstruccion.id_avaluo = reg_migracion.id_avaluo;
            END IF;

            --Actualiza tabla pgb_infconstruccion campo simetria_plant_sf y c_irrplanta
            IF v_usoinmu_sf IS NOT NULL AND v_usoinmu_bua IS NOT NULL
              THEN
              --dbms_output.put_line( 'Daño: '||reg_migracion.c_usoinmueble||':'||v_usoinmu_sf||':'||v_usoinmu_bua);
              UPDATE pgb_infinmueble
              SET    pgb_infinmueble.c_usoinmueble_sf= v_usoinmu_sf,
                     pgb_infinmueble.c_usoinmueble_bua= v_usoinmu_bua
              WHERE  pgb_infinmueble.id_avaluo = reg_migracion.id_avaluo;
            END IF;

            UPDATE pgb_infconstruccion
            SET    pgb_infconstruccion.a_danoreparado_sf= 0,
                   pgb_infconstruccion.c_reparados= 1,
                   pgb_infconstruccion.c_estreforzada_sf= 0,
                   pgb_infconstruccion.c_estructurareforzada= 1,
                   pgb_infconstruccion.n_anoconstruccion = to_char( v_fechaconstr, 'yyyy')
            WHERE  pgb_infconstruccion.id_avaluo = reg_migracion.id_avaluo;

            UPDATE pgb_avaluos
            SET    pgb_avaluos.t_sistema= 0,
                   pgb_avaluos.c_sistema= 3
            WHERE  pgb_avaluos.id_avaluo = reg_migracion.id_avaluo;

        END IF;

      END LOOP;

  END prc_migracion_avaluos;

END pck_migracion_avaluos;
/