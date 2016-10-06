CREATE OR REPLACE PROCEDURE prc_carga_avaluo(pREFERENCIA_CARGUE number,
                                             pTIPO_CARGUE       varchar2) is
/**
*procedimiento para ejecutar el cargue masivo de avaluos y la validacion de la estructura del
*archivo plano.

*@param pREFERENCIA_CARGUE numero de referencia del cargue para consultar en la tabla PGB_CARGUE_TMP
*@param pTIPO_CARGUE 'CARGUE' o 'DESCARGA'
*/
  var_mensaje_usuario      varchar2(4000);
  var_mensaje_tecnico      varchar2(4000);
  var_linea_actual         number;
  /*Variables para almacenar los de error o exito de la ejecucion*/
  /*variable para almacenar el id del avaluo en caso que la insercion detecte que el avaluo ya existe*/
  var_count_archivo        number;
  /*variables para validar los diferentes tipos de datos en el cargue*/
  var_tipo_date            date;
  var_tipo_numerico        number;
  var_nombre_tabla         varchar2(100);
  /*almacena la lista de columnas de bd a insertar a medida que va armando el query de insercion*/
  var_columnas_insert      varchar2(4000);
  /*almacena los valores de las columnas a insertar a medida que va armando el query de insercion*/
  var_valores_insert       varchar2(4000);
  var_col_val_update       varchar2(4000);
  /*almacena la sentencia wher para realizar una actualizacion en vez de una insercion en caso de que el avaluo ya exista*/
  where_val_update         varchar2(4000);
  /*almacena la sentencia para realizar la insercion*/
  var_sql_insert           varchar2(4000);
  /*almacena el contenido de la lina actual del plano cargada en la tabla tabla PGB_CARGUE_TMP para procesarlo*/
  var_linea_plano          clob; --varchar2(4001);
  /*separador de caracteres del archivo plano*/
  var_separador            varchar2(1);
  /*almacena el valor de un campo del plano despues de validarlo del archivo plano*/
  var_dato_validar         varchar2(4000);
  /*almacenan las poscifiones y longitudes de la linea para ir extrayendo el contenido de los campos*/
  var_posicion_actual      number;
  var_posicion_final       number;
  var_longitud             number;
  /*contador para validar si las observaciones del avaluo contienen caracteres especiales*/
  var_caracteres           number;
  /*almacena la cantidad total de registros a cargar en el plano*/
  var_tot_reg_cargar       number;
  /*variable a incrementar a medida que encuentre errores en la validacion del plano, si es >0 el cargue sera rechazado*/
  var_cant_errores         number;
  /*se utiliza para ejecutar sentencias sql auxiliares (alter session, etc ) para las validaciones del plano*/
  var_sql_tmp              varchar2(4000);
  /*Variables para: validar la cantidad de separadores del plano y compararlo contra los de la linea*/
  /*Adicionalmente se usan para validar las formulas de obligatoriedad de los campos*/
  var_cont_tmp             number;
  var_cont_tmp1            number;
  /*variable para validar que un campo del cargue cumpla con la longitud parametrizada*/
  var_tmp_number           number;
  /*variables para: Armar sentencias de insercion en la tabla DATOS_INSERCION para ser procesadas*/
  /*Adicionalmente se usan para validar las formulas de obligatoriedad de los campos*/
  var_str_tmp              varchar2(4000);
  var_str_tmp1             varchar2(4000);
  /*variables para almacenar el nombre y el valor del campo id para relacionar los diferentes tablas*/
  /*verificar si se usa linea 2507*/
  var_campo_id_insert      varchar2(200);
  var_valor_id_insert      varchar2(200);
  /*aqui se almacena el valor final despues de realizar una funcion de conversion sobre un registro (si el registro tiene asociada una sentencia para transformar su valor antes de ser insertado en las tablas)*/
  var_parametro_select     varchar2(4000);
  /*se utiliza para determinar a que categoria inmobiliaria pertenece el inmueble y validar su obligatoriedad o sus formulas de obligatoriedad*/
  var_categoria_inmb       varchar2(100);
  /*se utiliza para almacenar el consecutivo batch(grupo de archivos de un cargue) para validar las imagenes del avaluo contra el avaluo a ser procesado*/
  var_consecut_batch       number;
  /*se utilizan para almacenar el id de la imagen cargada en la tabla PGB_ARCHIVOS_TMP para ser insertada despues en la tabla ARCHIVOS si se logra sociar a un avaluo*/
  var_id_arch_fachada      number;
  var_id_arch_anexos       number;
  /*almacenan las secuencias para inserar en la tabla ARCHIVOS si se logra sociar a un avaluo*/
  var_id_arch_fachada1     number;
  var_id_arch_anexos1      number;
  /*Aqui se selecciona un id_avaluo a actualizar en caso de que este exista*/
  var_id_avaluo_update     number;
  /*se almacena el valor del campo N_CONSECUTIVO_BANCO del avaluo*/
  var_consec_avaluo        number;
  /*Se utilizan para: Almacenar la fecha del avaluo, el valor de UVR equivalente a esa fecha*/
  /*y el valor del UVR en el archivo plano para realizar esta validacion*/
  var_tmp_fechaaval        date;
  var_uvrdia               number;
  var_uvrtmp               number;
  /*variable para validar que el tamaño del PDF no exceda 1MB*/
  var_tamanioarchtmp       number;
  /*se utilizan para validar el usuario que realiza la operacion y si este esta asociado como perito a la empresa de avaluos y esta autorizado para realizar el cargue*/
  var_usuario_trans        number;
  var_usr_tmp              number;
  /*se utiliza para validar el estado de obligatoriedad de estadocontruccion*/
  var_tmp_estcons          varchar2(50);
  var_tmp_esterminada      varchar2(50);
  /*Objeto TYPE para validar cuantos parametros tiene una formula de obligatoriedad para un avaluo*/
  TYPE variables_formula_t IS TABLE OF VARCHAR2(100) INDEX BY VARCHAR2(100);

  variables_formula variables_formula_t;










  /*Cursor para recorrerr los registros cargados de un plano*/
  CURSOR cur_registros_tmp IS
    SELECT /*+ PARALLEL(PGB_CARGUE_TMP, 2) */ pgb_cargue_tmp.consecutivo_tmp,
           pgb_cargue_tmp.numero_ref_cargue,
           pgb_cargue_tmp.linea_plano,
           pgb_cargue_tmp.contenido_linea_plano,
           pgb_cargue_tmp.TIPO_CARGUE,
           pgb_cargue_tmp.ESTADO_CARGUE,
           pgb_cargue_tmp.FECHA_TRANSACCION,
           pgb_cargue_tmp.USUARIO_TRANSACCION
      FROM pgb_cargue_tmp
     WHERE pgb_cargue_tmp.numero_ref_cargue = pREFERENCIA_CARGUE
       AND TIPO_CARGUE = pTIPO_CARGUE
       AND ESTADO_CARGUE = 'CARGADO'
    --ORDER BY pgb_cargue_tmp.linea_plano
    ;

  reg_registros_tmp cur_registros_tmp%ROWTYPE;

  -- Cursor con estructura del archivo plano (longitudes,tipos datos,obligatoriedad,conversines) para su validacion
  CURSOR cur_estr_plano
  IS
    SELECT /*+ FIRST_ROWS(30) */ pgb_archivo_plano.consecutivo_plano,
           pgb_archivo_plano.tabla_bd,
           pgb_archivo_plano.columna_bd,
           pgb_archivo_plano.descripcion_campo,
           pgb_archivo_plano.tipo_dato,
           pgb_archivo_plano.formato,
           pgb_archivo_plano.obligatoriedad_apartamento,
           pgb_archivo_plano.dominio,
           pgb_archivo_plano.obligatoriedad_casa,
           pgb_archivo_plano.obligatoriedad_bodega,
           pgb_archivo_plano.obligatoriedad_casarural,
           pgb_archivo_plano.obligatoriedad_local,
           pgb_archivo_plano.obligatoriedad_lote,
           pgb_archivo_plano.obligatoriedad_loteurbano,
           pgb_archivo_plano.obligatoriedad_oficina,
           pgb_archivo_plano.es_id,
           pgb_archivo_plano.funcion_conversion
      FROM pgb_archivo_plano
     WHERE ES_ASOBANCARIA =
           DECODE(pTIPO_CARGUE, 'DESCARGA', 'S', ES_ASOBANCARIA)
    --ORDER BY consecutivo_plano
    ;
  reg_estr_plano cur_estr_plano%ROWTYPE;

  /*cursor para recorrer la tabla temporal en la cual se almacenan los datos para ser insertados en las diferentes tablas parametrizadas*/
  CURSOR cur_tablas_insercion IS
    SELECT distinct datos_insercion.nombre_tabla
      FROM datos_insercion
     WHERE datos_insercion.es_id = 'S'

    UNION

    SELECT distinct datos_insercion.nombre_tabla
      FROM datos_insercion
     WHERE datos_insercion.es_id is null;
  reg_tablas_insercion cur_tablas_insercion%ROWTYPE;

  /*cursor para recorrer la tabla temporal en la cual se almacenan los datos para ser insertados en las diferentes tablas parametrizadas*/
  CURSOR cur_datos_campos_insercion(tabla VARCHAR2) IS

    SELECT distinct inser.nombre_campo nombre_campo,
                    inser.valor valor,
                    inser.es_id es_id,
                    inser.nombre_tabla nombre_tabla,
                    inser.dominio,
                    inser.obligatoriedad_apartamento,
                    inser.obligatoriedad_bodega,
                    inser.obligatoriedad_casa,
                    inser.obligatoriedad_casarural,
                    inser.obligatoriedad_local,
                    inser.obligatoriedad_lote,
                    inser.obligatoriedad_loteurbano,
                    inser.obligatoriedad_oficina,
                    (select arc.consecutivo_plano
                       from pgb_archivo_plano arc
                      where inser.nombre_campo = arc.COLUMNA_BD
                        and inser.nombre_tabla = arc.TABLA_BD) consecutivo_plano,
                    (select arc.funcion_conversion
                       from pgb_archivo_plano arc
                      where inser.nombre_campo = arc.COLUMNA_BD
                        and inser.nombre_tabla = arc.TABLA_BD) funcion_conversion,
                    (select arc.descripcion_campo
                       from pgb_archivo_plano arc
                      where inser.nombre_campo = arc.COLUMNA_BD
                        and inser.nombre_tabla = arc.TABLA_BD) descripcion_campo
      FROM datos_insercion inser
     WHERE inser.nombre_tabla = tabla;

  reg_datos_campos_insercion cur_datos_campos_insercion%ROWTYPE;

  /*recorre la tabla de parametros a insertar en las tablas que no se encuentran en el archivo plano*/
  CURSOR cur_par_campos_insercion(tabla VARCHAR2) IS
    SELECT parametros_insercion.nombre_tabla,
           parametros_insercion.nombre_campo,
           parametros_insercion.valor,
           parametros_insercion.valor_es_query,
           parametros_insercion.tipo_dato,
           es_id,
           es_fk
      FROM parametros_insercion
     WHERE nombre_tabla = tabla;

  reg_par_campos_insercion cur_par_campos_insercion%ROWTYPE;

begin

  var_sql_tmp:='alter session set nls_numeric_characters = '||chr(39)||'.,'||chr(39);
 -- var_sql_tmp:='alter session set nls_numeric_characters = '||chr(39)||',.'||chr(39);
  execute immediate var_sql_tmp;

  /*valida cantidad de registros a cargar*/

  var_tot_reg_cargar := 0;

  --DELETE FROM DATOS_INSERCION;
  EXECUTE IMMEDIATE 'TRUNCATE TABLE DATOS_INSERCION';
  COMMIT;

  BEGIN
    SELECT /*+ PARALLEL(PGB_CARGUE_TMP, 2) */ count(*)
      INTO var_tot_reg_cargar
      FROM pgb_cargue_tmp
     WHERE pgb_cargue_tmp.numero_ref_cargue = pREFERENCIA_CARGUE
     ORDER BY pgb_cargue_tmp.linea_plano;

  EXCEPTION
    WHEN OTHERS THEN
      raise_application_error(-20599,
                              'Pos:47 Error cargando el archivo ' ||
                              sqlerrm);
  END;

  IF var_tot_reg_cargar = 0 THEN
    raise_application_error(-20599,
                            'Pos:47 No existen registros en el archivo ' ||
                            sqlerrm);
  END IF;

  var_mensaje_tecnico := null;
  var_mensaje_usuario := null;
  var_linea_actual    := 0;

  --plano con registros loop

  --if carga

  OPEN cur_registros_tmp;
  LOOP
    FETCH cur_registros_tmp
      INTO reg_registros_tmp;

    EXIT WHEN cur_registros_tmp%NOTFOUND;

    var_cant_errores    := 0;
    var_mensaje_tecnico := NULL;
    var_mensaje_usuario := NULL;
    var_columnas_insert := 0;
    var_valores_insert  := 0;
    var_sql_insert      := NULL;
    var_dato_validar    := NULL;

    var_separador := '|';

    var_linea_plano := var_separador ||
                       reg_registros_tmp.contenido_linea_plano ||
                       var_separador;

    var_linea_actual := reg_registros_tmp.linea_plano;

    --reemplazar caracteres raros
    --var_linea_actual := REPLACE(var_linea_actual,'''','''''');
    --var_linea_actual := REPLACE(var_linea_actual,'''','');

    var_longitud       := null;
    var_posicion_final := null;

    /*valida si la linea esta en blanco para no ejecutar ninguna accion*/

    IF var_linea_plano = '||' THEN
      --TRIM(var_linea_actual) = '' THEN

      var_mensaje_usuario := ' Linea en blanco ';
      var_cant_errores    := var_cant_errores + 1;
      GOTO salta_loop;

    END IF;

    --Validar cantidad de separadores contra estructura del plano para fallar por estructura

      var_cont_tmp := NULL;
      BEGIN
        SELECT /*+ PARALLEL(, 2) */ count(*)
          INTO var_cont_tmp
          FROM (SELECT /*+ PARALLEL(PGB_ARCHIVO_PLANO, 2) */ DISTINCT pgb_archivo_plano.consecutivo_plano
                  FROM pgb_archivo_plano
                 WHERE ES_ASOBANCARIA =
                       DECODE(pTIPO_CARGUE, 'DESCARGA', 'S', ES_ASOBANCARIA)
                 GROUP BY pgb_archivo_plano.consecutivo_plano
                 ORDER BY pgb_archivo_plano.consecutivo_plano);
      EXCEPTION
        WHEN NO_DATA_FOUND THEN
          raise_application_error(-20599,
                                  ' Pos:197 Error trayendo la estructura del plano ');
        WHEN OTHERS THEN
          raise_application_error(-20599,
                                  ' Pos:197 Error trayendo la estructura del plano ');
      END;

      var_cont_tmp1 := NULL;

      BEGIN
        SELECT LENGTH(var_linea_plano) -
               LENGTH(REPLACE(LOWER(var_linea_plano), var_separador)) /
               LENGTH('|')
          INTO var_cont_tmp1
          from dual;
      EXCEPTION
        WHEN NO_DATA_FOUND THEN
          raise_application_error(-20599,
                                  ' Pos:217 Error leyendo el tamaño de la linea ');
        WHEN OTHERS THEN
          raise_application_error(-20599,
                                  ' Pos:217 Error leyendo el tamaño de la linea ');
      END;

      IF var_cont_tmp1 <> var_cont_tmp + 1 THEN
        var_mensaje_usuario := ' La cantidad de separadores de la linea no coincide con la del plano. Hay ' ||
                               TO_CHAR(var_cont_tmp1 - 1) || ' y son ' ||
                               var_cont_tmp;
        var_cant_errores    := var_cant_errores + 1;
        GOTO salta_loop;
      END IF;


    OPEN cur_estr_plano(
                        --pParametro
                        );
    LOOP
      FETCH cur_estr_plano
        INTO reg_estr_plano;

      EXIT WHEN cur_estr_plano%NOTFOUND;

      var_nombre_tabla := reg_estr_plano.tabla_bd;

      --Obiene la posicion actual

      var_posicion_actual := INSTR(var_linea_plano,
                                   var_separador,
                                   1,
                                   reg_estr_plano.consecutivo_plano);
      var_posicion_final  := INSTR(var_linea_plano,
                                   var_separador,
                                   1,
                                   (reg_estr_plano.consecutivo_plano) + 1);

      if var_posicion_final is not null then
        var_longitud := var_posicion_final - var_posicion_actual;
      end if;

      var_dato_validar := SUBSTR(var_linea_plano,
                                 var_posicion_actual,
                                 var_longitud);
      var_dato_validar := REPLACE(var_dato_validar, var_separador, '');

      IF reg_estr_plano.columna_bd = 'N_CONSECUTIVOBANCO' THEN
        var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                    Chr(10) ||
                                                    ' Consecutivo :' ||
                                                    var_dato_validar);
        var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                    var_dato_validar ||
                                                    sqlerrm);
      END IF;

      /*obtiene el usuario que ejecuta el carguepara validarlo posteriormente como perito asociado*/

      BEGIN

        SELECT /*+ PARALLEL(PGB_CARGUE_TMP, 2) */ distinct pgb_cargue_tmp.usuario_transaccion
          INTO var_usuario_trans
          FROM pgb_cargue_tmp
         WHERE pgb_cargue_tmp.numero_ref_cargue = pREFERENCIA_CARGUE
           AND TIPO_CARGUE = pTIPO_CARGUE
           AND ESTADO_CARGUE = 'CARGADO';
      EXCEPTION
        WHEN NO_DATA_FOUND THEN

          var_mensaje_usuario := ' Error tecnico. El registro no tiene USUARIO_TRANSACCION ';
          var_cant_errores    := var_cant_errores + 1;
          --GOTO salta_loop;
        WHEN OTHERS THEN
          var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                      Chr(10) ||
                                                      ' Error al buscar el usuario de la transaccion ' ||
                                                      sqlerrm);
          var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                      sqlerrm);
          var_cant_errores    := var_cant_errores + 1;
      END;

      /*convierte el valor de el campo cargado en caso que tenga sentencia sql de conversion*/

      IF reg_estr_plano.funcion_conversion IS NOT NULL THEN

        BEGIN
          execute immediate reg_estr_plano.funcion_conversion
            into var_dato_validar
            using var_dato_validar;
        EXCEPTION
          WHEN NO_DATA_FOUND THEN
            var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                        Chr(10) ||
                                                        ' La funcion de conversion  no encontro registros equivalentes Campo: ' ||
                                                        reg_estr_plano.consecutivo_plano ||
                                                        ' : ' ||
                                                        reg_estr_plano.descripcion_campo ||
                                                        ' Dato: ' ||
                                                        var_dato_validar ||
                                                        ' Funcion: ' ||
                                                        reg_estr_plano.funcion_conversion);
            var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                        Chr(10) ||
                                                        reg_estr_plano.COLUMNA_BD ||
                                                        var_dato_validar ||
                                                        reg_estr_plano.funcion_conversion ||
                                                        sqlerrm);
            var_cant_errores    := var_cant_errores + 1;
          WHEN OTHERS THEN
            var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                        Chr(10) ||
                                                        ' Error al ejecutar funcion de conversion  Campo: ' ||
                                                        reg_estr_plano.consecutivo_plano ||
                                                        ' : ' ||
                                                        reg_estr_plano.descripcion_campo ||
                                                        ' Dato: ' ||
                                                        var_dato_validar ||
                                                        ' Funcion: ' ||
                                                        reg_estr_plano.funcion_conversion);
            var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                        Chr(10) ||
                                                        reg_estr_plano.COLUMNA_BD ||
                                                        var_dato_validar ||
                                                        reg_estr_plano.funcion_conversion ||
                                                        sqlerrm);
            var_cant_errores    := var_cant_errores + 1;
        END;

      END IF;

       /*Valida que en el ultimo campo del avaluo (Condiciones de Salubridad) no contengan el caracter TAB */
        IF reg_estr_plano.columna_bd = 'A_REQUIERE_COND_SALUB' THEN
           var_dato_validar:=REPLACE(var_dato_validar,CHR(9),'');
        END IF;

      /*valida si los registros cargados en el plano son de el tipo especificado en la parametrizacion*/
      IF reg_estr_plano.tipo_dato = 'DATE' THEN
        IF var_dato_validar IS NOT NULL THEN
          BEGIN
            SELECT TO_DATE(var_dato_validar, reg_estr_plano.formato)
              INTO var_tipo_date
              FROM DUAL;
            var_dato_validar := 'TO_DATE(' || CHR(39) ||
                                TO_CHAR(TO_DATE(var_dato_validar,
                                                reg_estr_plano.formato),
                                        reg_estr_plano.formato) || CHR(39) || ',' ||
                                CHR(39) || reg_estr_plano.formato ||
                                CHR(39) || ')';
          EXCEPTION
            WHEN OTHERS THEN
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' No es una fecha  valida. Campo: ' ||
                                                          reg_estr_plano.consecutivo_plano ||
                                                          ' : ' ||
                                                          reg_estr_plano.descripcion_campo ||
                                                          ' Dato: ' ||
                                                          var_dato_validar);
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          reg_estr_plano.COLUMNA_BD ||
                                                          var_dato_validar ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;
          END;
        ELSE
          var_dato_validar := 'NULL';
        END IF;
      END IF;
      --
      IF reg_estr_plano.tipo_dato like 'NUMBER%' THEN
        IF var_dato_validar IS NOT NULL THEN
          var_dato_validar := REPLACE(var_dato_validar, ',', '.');
          /*var_sql_tmp      := 'alter session set nls_numeric_characters = ' ||
                              chr(39) || '.,' || chr(39);
          --var_sql_tmp:='alter session set nls_numeric_characters = '||chr(39)||',.'||chr(39);
          execute immediate var_sql_tmp;*/
          BEGIN
            SELECT TO_NUMBER(var_dato_validar)
              INTO var_tipo_numerico
              FROM DUAL;
            var_dato_validar := TO_CHAR(var_tipo_numerico);
          EXCEPTION
            WHEN OTHERS THEN
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' No es numerico o un valor valido para este  Campo: ' ||
                                                          reg_estr_plano.consecutivo_plano ||
                                                          ' : ' ||
                                                          reg_estr_plano.descripcion_campo ||
                                                          ' Dato: ' ||
                                                          var_dato_validar);
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          reg_estr_plano.COLUMNA_BD ||
                                                          var_dato_validar ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;
          END;

        ELSE
          var_dato_validar := 'NULL';
        END IF;
      END IF; -- FIN SI reg_columnas_tipo_reg.tipo_dato = 'NUMBER'
      --
      IF reg_estr_plano.tipo_dato like 'VARCHAR2%' THEN
        IF var_dato_validar IS NOT NULL THEN
          var_dato_validar := CHR(39) || TRIM(var_dato_validar) || CHR(39);
          --var_dato_validar := CHR(39) || var_dato_validar|| CHR(39);
        ELSE
          var_dato_validar := 'NULL';
        END IF;
      END IF; -- FIN SI reg_columnas_tipo_reg.tipo_dato = 'VARCHAR2'

      IF reg_estr_plano.tipo_dato like 'CLOB%' THEN

        IF var_dato_validar IS NOT NULL THEN

          var_dato_validar := CHR(39) || var_dato_validar || CHR(39);

        ELSE
          var_dato_validar := 'NULL';
        END IF;
      END IF; -- FIN SI reg_columnas_tipo_reg.tipo_dato = 'VARCHAR2'

      IF reg_estr_plano.tipo_dato like 'VARCHAR2%' OR
         reg_estr_plano.tipo_dato like 'NUMBER%' THEN
        IF var_dato_validar IS NOT NULL AND var_dato_validar != 'NULL' THEN
          IF reg_estr_plano.formato IS NOT NULL THEN
            BEGIN

              Select TO_NUMBER(reg_estr_plano.formato)
                Into var_tmp_number
                from dual;

            EXCEPTION
              WHEN OTHERS THEN
                var_tmp_number := NULL;
            END;

            IF var_tmp_number IS NOT NULL AND
               LENGTH(REPLACE(var_dato_validar, '''', '')) > var_tmp_number THEN
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' la longitud del Campo: ' ||
                                                          reg_estr_plano.consecutivo_plano ||
                                                          ' : ' ||
                                                          reg_estr_plano.descripcion_campo ||
                                                          ' Es superior a la especificada en el formato; Dato: ' ||
                                                          var_dato_validar ||
                                                          ' Formato ' ||
                                                          reg_estr_plano.formato);
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          reg_estr_plano.COLUMNA_BD ||
                                                          var_dato_validar ||
                                                          reg_estr_plano.formato ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;
            END IF;
          END IF;
        END IF;
      END IF;

      /*validacion sobre el valor total del avaluo; este debe ser > 0*/

      IF reg_estr_plano.columna_bd = 'N_TOTALAVALUO' THEN
        IF var_tipo_numerico = 0 THEN
          var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                      Chr(10) ||
                                                      ' El Valor del avaluo no puede se igual a ' ||
                                                      var_dato_validar);
          var_cant_errores    := var_cant_errores + 1;
        END IF;
      END IF;


      /*Valida que el usuario de avaluos que esta cargando un archivo plano este asociado como perito a la empresa*/

      IF reg_estr_plano.columna_bd = 'T_USUARIO' AND
         pTIPO_CARGUE <> 'DESCARGA' THEN

        BEGIN
          SELECT /*+ INDEX(PGB_PERITOS_EMPRESAS) */ pgb_peritos_empresas.numero_documento
            INTO var_usr_tmp
            FROM pgb_empresas_avaluos, pgb_peritos_empresas
           WHERE pgb_empresas_avaluos.id_empresa_avaluo =
                 pgb_peritos_empresas.id_empresa_avaluo
             AND pgb_empresas_avaluos.estado = 'A'
             AND pgb_peritos_empresas.estado_asociacion = 'A'
             AND pgb_empresas_avaluos.numero_documento =
                 TO_NUMBER(REPLACE(var_dato_validar, '''', ''))
             AND pgb_peritos_empresas.numero_documento = var_usuario_trans;
        EXCEPTION
          WHEN NO_DATA_FOUND THEN
            var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                        Chr(10) ||
                                                        ' El usuario de avaluos ' ||
                                                        var_usuario_trans ||
                                                        ' no esta autorizado para cargar este avaluo porque no esta asociado como perito a La Empresa Avaluadora ' ||
                                                        var_dato_validar ||
                                                        ' o esta inactivo');
            var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                        Chr(10) ||
                                                        var_usuario_trans ||
                                                        var_dato_validar ||
                                                        sqlerrm);
            var_cant_errores    := var_cant_errores + 1;
          WHEN OTHERS THEN
            var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                        Chr(10) ||
                                                        ' Error validando asociacion del perito a la empresa avaluadora ' ||
                                                        sqlerrm);
            var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                        Chr(10) || sqlerrm);
            var_cant_errores    := var_cant_errores + 1;
        END;

      END IF;

       /*Almacena el estado de finalizacion del inmueble para la regla de obligatoriedad optima*/
        IF reg_estr_plano.columna_bd = 'K_ESTTERMINADA' THEN
           var_tmp_esterminada := var_dato_validar;
           --insert into x(valor) values ('var_tmp_esterminada.'||var_tmp_esterminada); commit;
        END IF;

       /*Valida que en las observaciones del avaluo no contengan los caracteres especiales '  &  >  < */
        IF reg_estr_plano.columna_bd = 'T_OBSERVAVALUO' THEN
           var_caracteres := 0;
           --var_tmp_esterminada := var_dato_validar;
           --select regexp_instr(var_dato_validar,'&|<|>|''')
           select regexp_instr(var_dato_validar,'''[^'||chr(9)||'<>&'']+''')
           into var_caracteres
            from dual;
           --IF var_caracteres > 0 THEN
           IF var_caracteres = 0 THEN
               var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                      Chr(10) ||
                                                      ' las observaciones del Avaluo contienen algun caracter Especial como '' & > < '
                                                      ||var_dato_validar);
               var_cant_errores := var_cant_errores + 1;
           END IF;
        END IF;













































































































        /*Regla de obligatoriedad optima, el estado de la construccion debe ser optimo si esta terminada*/
        IF reg_estr_plano.columna_bd = 'C_ESTCONSERVACION' AND var_tmp_esterminada = '1'  THEN

            var_tmp_estcons := var_dato_validar;

            IF var_tmp_estcons <> '1' then

               var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                                Chr(10) ||
                                                                ' Columna Estado de Conservación debe tener el valor Optimo si la construccion es terminada'
                                                                );
               var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                                Chr(10) ||
                                                                sqlerrm);
               var_cant_errores    := var_cant_errores + 1;

            END IF;

        END IF;

      /*Almacena la fecha actual del avaluo para ser validada contra su valor UVR*/
      IF reg_estr_plano.columna_bd = 'F_FECHAAVALUO' THEN

        var_tmp_fechaaval := var_tipo_date;

      END IF;

      /*valida el valor UVR de la fecha del dia contra el valor del archivo cargado*/
      IF reg_estr_plano.columna_bd = 'N_VALUVRDIA' THEN

        BEGIN

          var_uvrtmp := TO_NUMBER(REPLACE(var_dato_validar, '''', ''));

          select /*+ ALL_ROWS */ tc1 valor_uvr
            into var_uvrdia
            from a1000500
           where cod_mon = 7
             and fecha_tipo_cambio = var_tmp_fechaaval;

          IF round(var_uvrdia, 4) <> round(var_uvrtmp, 4) then
            /*insert into x
            values
              (round(var_uvrdia, 4) || '' || round(var_uvrtmp, 4));
            commit;*/
            var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                        Chr(10) ||
                                                        ' El valor de UVR para este avaluo no es valido. Valor ' ||
                                                        var_uvrtmp ||
                                                        ' .El valor registrado para la fecha ' ||
                                                        var_tmp_fechaaval ||
                                                        ' es ' || var_uvrdia);
            var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                        Chr(10) ||
                                                        var_tmp_fechaaval ||
                                                        var_uvrdia ||
                                                        sqlerrm);
            var_cant_errores    := var_cant_errores + 1;
          END IF;
        EXCEPTION
          WHEN OTHERS THEN
            var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                        Chr(10) ||
                                                        ' Error validando el valor del UVR ' ||
                                                        sqlerrm);
            var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                        Chr(10) || sqlerrm);
            var_cant_errores    := var_cant_errores + 1;
        END;

      END IF;

      --
      -- Arma sentencia insert
      --

      /*para debug.. no se utiliza*/
      /*var_str_tmp := 'INSERT INTO datos_insercion(nombre_tabla,nombre_campo,valor) values (' ||
                     CHR(39) || reg_estr_plano.tabla_bd || CHR(39) || ',' ||
                     CHR(39) || reg_estr_plano.columna_bd || CHR(39) || ',' ||
                     CHR(39) || var_dato_validar || CHR(39) || ')';*/

      /*valida los campos vacios para guardarlos como 'NULL'*/
      IF reg_estr_plano.dominio IS NOT NULL THEN
        --var_str_tmp := CHR(39) || reg_estr_plano.dominio||CHR(39);
        var_str_tmp := reg_estr_plano.dominio;
      ELSE
        var_str_tmp := 'NULL';
      END IF;

      /*valida los campos vacios para guardarlos como 'NULL'*/
      IF var_dato_validar = CHR(39)||CHR(39) THEN
        var_dato_validar := 'NULL';
      END IF;

      /*inserta los datos en la tabla temporal DATOS_INSERCION para terminar su procesamiento y ser insertados en las tablas respectivas*/
      BEGIN
        IF reg_estr_plano.es_id = 'S' THEN

          INSERT INTO datos_insercion
            (nombre_tabla,
             nombre_campo,
             valor,
             es_id,
             dominio,
             obligatoriedad_apartamento,
             obligatoriedad_bodega,
             obligatoriedad_casa,
             obligatoriedad_casarural,
             obligatoriedad_local,
             obligatoriedad_lote,
             obligatoriedad_loteurbano,
             obligatoriedad_oficina)
          values
            (reg_estr_plano.tabla_bd,
             reg_estr_plano.columna_bd,
             var_dato_validar,
             'S',
             var_str_tmp,
             reg_estr_plano.obligatoriedad_apartamento,
             reg_estr_plano.obligatoriedad_bodega,
             reg_estr_plano.obligatoriedad_casa,
             reg_estr_plano.obligatoriedad_casarural,
             reg_estr_plano.obligatoriedad_local,
             reg_estr_plano.obligatoriedad_lote,
             reg_estr_plano.obligatoriedad_loteurbano,
             reg_estr_plano.obligatoriedad_oficina);

        ELSE
          INSERT INTO datos_insercion
            (nombre_tabla,
             nombre_campo,
             valor,
             dominio,
             obligatoriedad_apartamento,
             obligatoriedad_bodega,
             obligatoriedad_casa,
             obligatoriedad_casarural,
             obligatoriedad_local,
             obligatoriedad_lote,
             obligatoriedad_loteurbano,
             obligatoriedad_oficina)
          values
            (reg_estr_plano.tabla_bd,
             reg_estr_plano.columna_bd,
             var_dato_validar,
             var_str_tmp,
             reg_estr_plano.obligatoriedad_apartamento,
             reg_estr_plano.obligatoriedad_bodega,
             reg_estr_plano.obligatoriedad_casa,
             reg_estr_plano.obligatoriedad_casarural,
             reg_estr_plano.obligatoriedad_local,
             reg_estr_plano.obligatoriedad_lote,
             reg_estr_plano.obligatoriedad_loteurbano,
             reg_estr_plano.obligatoriedad_oficina);

        END IF;

      END;

    END LOOP;

    INSERT INTO datos_insercion
      (nombre_tabla, nombre_campo, valor, es_id)
    values
      ('PGB_AVALUOS', 'ID_AVALUO', SEQ_PGB_AVALUOS.NEXTVAL, 'S');

    CLOSE cur_estr_plano;

    /*Abre el cursor de las tablas a insertar*/
    OPEN cur_tablas_insercion;

    LOOP
      FETCH cur_tablas_insercion
        INTO reg_tablas_insercion;
      EXIT WHEN cur_tablas_insercion%NOTFOUND;

      var_sql_insert      := null;
      var_columnas_insert := null;
      var_valores_insert  := null;
      var_col_val_update  := null;

      var_col_val_update := NULL;
      where_val_update   := NULL;

      OPEN cur_datos_campos_insercion(reg_tablas_insercion.nombre_tabla);
      LOOP
        FETCH cur_datos_campos_insercion
          INTO reg_datos_campos_insercion;
        EXIT WHEN cur_datos_campos_insercion%NOTFOUND;

        IF reg_datos_campos_insercion.nombre_campo <> 'USUARIO_CREACION' AND
           reg_datos_campos_insercion.nombre_campo <> 'FECHA_CREACION' AND
           reg_datos_campos_insercion.nombre_campo <> 'ID_AVALUO' THEN

          var_col_val_update := var_col_val_update ||
                                reg_datos_campos_insercion.nombre_campo || '=' ||
                                reg_datos_campos_insercion.valor || ',';

        END IF;

        IF reg_datos_campos_insercion.es_id = 'S' THEN

          var_campo_id_insert := reg_datos_campos_insercion.nombre_campo;
          var_valor_id_insert := reg_datos_campos_insercion.valor;

          --where_val_update    := where_val_update || var_campo_id_insert||'='||var_valor_id_insert;

        ELSIF reg_datos_campos_insercion.nombre_campo =
              'N_CONSECUTIVOBANCO' THEN

          var_consec_avaluo := reg_datos_campos_insercion.valor;

          BEGIN
            SELECT ID_AVALUO
              INTO var_id_avaluo_update
              FROM PGB_AVALUOS
             WHERE N_CONSECUTIVOBANCO = reg_datos_campos_insercion.valor;
          EXCEPTION
            WHEN NO_DATA_FOUND THEN
              null;
          END;
          /*Validar el elsif *ya que aqui se setea manualmente el id_avaluo*/
          where_val_update := where_val_update || 'ID_AVALUO' || '=' ||
                              var_id_avaluo_update;

        ELSIF (INSTR(var_columnas_insert, var_campo_id_insert) = 0 AND
              var_campo_id_insert IS NOT NULL) THEN

          var_columnas_insert := var_columnas_insert || var_campo_id_insert || ',';
          var_valores_insert  := var_valores_insert || var_valor_id_insert || ',';

          where_val_update := where_val_update || var_campo_id_insert || '=' ||
                              var_valor_id_insert;

        END IF;

        /*validacion de obligatoriedades segun categoria inmobiliaria*/
        BEGIN
          SELECT /*+ FIRST_ROWS */ cg_ref_codes.RV_LOW_VALUE
            INTO var_categoria_inmb
            FROM cg_ref_codes
           WHERE cg_ref_codes.rv_domain = 'CATEGORIA'
             AND cg_ref_codes.rv_low_value IN
                 (SELECT datos_insercion.valor
                    FROM datos_insercion
                   WHERE datos_insercion.nombre_campo = 'IDCATEGORIA');
        EXCEPTION
          WHEN NO_DATA_FOUND THEN
            var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                        Chr(10) ||
                                                        ' No se encontro la categoria de Inmueble ');
            var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                        Chr(10) || sqlerrm);
            var_cant_errores    := var_cant_errores + 1;
          WHEN OTHERS THEN
            raise_application_error(-20599,
                                    ' Pos:405 Error consultando las  categorias  de Inmuebles  ' ||
                                    sqlerrm);
        END;

        --Inicializa tabla
        var_str_tmp := variables_formula.first;
        while var_str_tmp <= variables_formula.last loop
          variables_formula.delete;
          var_str_tmp := variables_formula.next(var_str_tmp);
        end loop;

        case TRIM(UPPER(var_categoria_inmb))
          when '2' then
            --APARTAMENTO
            IF reg_datos_campos_insercion.obligatoriedad_apartamento = 'S' AND
               reg_datos_campos_insercion.valor = 'NULL' THEN
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' Campo: ' ||
                                                          reg_datos_campos_insercion.consecutivo_plano ||
                                                          ' : ' ||
                                                          reg_datos_campos_insercion.descripcion_campo ||
                                                          ' Es requerido en la categoria:APARTAMENTO ');
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          reg_datos_campos_insercion.nombre_campo ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;
            ELSIF (instr(UPPER(reg_datos_campos_insercion.obligatoriedad_apartamento),
                         '=') <> 0 OR instr(UPPER(reg_datos_campos_insercion.obligatoriedad_apartamento),
                                             '<') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_apartamento),
                         '>') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_apartamento),
                         ' AND ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_apartamento),
                         ' BETWEEN ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_apartamento),
                         ' EXISTS ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_apartamento),
                         ' IN ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_apartamento),
                         ' LIKE ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_apartamento),
                         ' NOT ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_apartamento),
                         '!') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_apartamento),
                         'NULL') <> 0) AND
                  (reg_datos_campos_insercion.obligatoriedad_apartamento IS NOT NULL) THEN
              --validar condicion de obligatoriedad
              --dbms_output.put_line(reg_datos_campos_insercion.obligatoriedad_apartamento);

              var_cont_tmp := 1;

              IF reg_datos_campos_insercion.valor IS NULL OR
                 UPPER(reg_datos_campos_insercion.valor) = 'NULL' THEN

                LOOP
                  var_str_tmp := REGEXP_SUBSTR(reg_datos_campos_insercion.obligatoriedad_apartamento,
                                               ':\w+',
                                               1,
                                               var_cont_tmp);
                  IF var_str_tmp IS NOT NULL THEN
                    BEGIN

                      BEGIN
                        select VALOR
                          into var_str_tmp1
                          from datos_insercion
                         where UPPER(datos_insercion.nombre_campo) =
                               UPPER(SUBSTR(var_str_tmp, 2));

                      EXCEPTION
                        WHEN TOO_MANY_ROWS THEN
                          select VALOR
                            into var_str_tmp1
                            from datos_insercion
                           where UPPER(datos_insercion.nombre_campo) =
                                 UPPER(SUBSTR(var_str_tmp, 2))
                             AND datos_insercion.nombre_tabla =
                                 reg_datos_campos_insercion.nombre_tabla;
                      END;

                      variables_formula(var_str_tmp) := var_str_tmp1;

                    EXCEPTION
                      WHEN NO_DATA_FOUND THEN

                        var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                                    Chr(10) ||
                                                                    ' No pude hallar el valor para las variables de la formula ');
                        var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                                    Chr(10) ||
                                                                    sqlerrm);

                    END;
                  END IF;
                  EXIT WHEN var_str_tmp IS NULL;
                  var_cont_tmp := var_cont_tmp + 1;
                END LOOP;

                var_str_tmp1 := reg_datos_campos_insercion.obligatoriedad_apartamento;
                var_str_tmp  := variables_formula.first;
                while var_str_tmp <= variables_formula.last loop
                  var_str_tmp1 := replace(var_str_tmp1,
                                          var_str_tmp,
                                          variables_formula(var_str_tmp));
                  var_str_tmp := variables_formula.next(var_str_tmp);
                end loop;

                var_cont_tmp := 0;

                BEGIN
                  execute immediate 'select case when (' || var_str_tmp1 ||
                                    ') THEN 1 ELSE 0 END from dual'
                    into var_cont_tmp;
                EXCEPTION
                  WHEN OTHERS THEN
                    var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                                Chr(10) ||
                                                                ' No se pudo validar la formula de obligatoriedad ');
                    var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                                Chr(10) ||
                                                                sqlerrm);
                END;

                IF var_cont_tmp = 1 THEN

                  var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                              Chr(10) ||
                                                              ' Campo: ' ||
                                                              reg_datos_campos_insercion.consecutivo_plano ||
                                                              ' : ' ||
                                                              reg_datos_campos_insercion.descripcion_campo ||
                                                              ' Es requerido en la categoria: APARTAMENTO.');
                  var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                              Chr(10) ||
                                                              reg_datos_campos_insercion.nombre_campo ||
                                                              var_categoria_inmb ||
                                                              reg_datos_campos_insercion.obligatoriedad_apartamento ||
                                                              sqlerrm);
                  var_cant_errores    := var_cant_errores + 1;

                END IF;

              END IF;

            END IF;
          when '5' then
            --BODEGA
            IF reg_datos_campos_insercion.obligatoriedad_bodega = 'S' AND
               reg_datos_campos_insercion.valor = 'NULL' THEN
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' Campo: ' ||
                                                          reg_datos_campos_insercion.consecutivo_plano ||
                                                          ' : ' ||
                                                          reg_datos_campos_insercion.descripcion_campo ||
                                                          ' Es requerido en la categoria:BODEGA ');
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          reg_datos_campos_insercion.nombre_campo ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;
            ELSIF (instr(UPPER(reg_datos_campos_insercion.obligatoriedad_bodega),
                         '=') <> 0 OR instr(UPPER(reg_datos_campos_insercion.obligatoriedad_bodega),
                                             '<') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_bodega),
                         '>') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_bodega),
                         ' AND ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_bodega),
                         ' BETWEEN ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_bodega),
                         ' EXISTS ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_bodega),
                         ' IN ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_bodega),
                         ' LIKE ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_bodega),
                         ' NOT ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_bodega),
                         '!') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_bodega),
                         'NULL') <> 0) AND
                  (reg_datos_campos_insercion.obligatoriedad_bodega IS NOT NULL) THEN
              --validar condicion de obligatoriedad
              --dbms_output.put_line(reg_datos_campos_insercion.obligatoriedad_apartamento);

              var_cont_tmp := 1;

              IF reg_datos_campos_insercion.valor IS NULL OR
                 UPPER(reg_datos_campos_insercion.valor) = 'NULL' THEN

                LOOP
                  var_str_tmp := REGEXP_SUBSTR(reg_datos_campos_insercion.obligatoriedad_bodega,
                                               ':\w+',
                                               1,
                                               var_cont_tmp);
                  IF var_str_tmp IS NOT NULL THEN
                    BEGIN

                      BEGIN
                        select VALOR
                          into var_str_tmp1
                          from datos_insercion
                         where UPPER(datos_insercion.nombre_campo) =
                               UPPER(SUBSTR(var_str_tmp, 2));
                      EXCEPTION
                        WHEN TOO_MANY_ROWS THEN
                          select VALOR
                            into var_str_tmp1
                            from datos_insercion
                           where UPPER(datos_insercion.nombre_campo) =
                                 UPPER(SUBSTR(var_str_tmp, 2))
                             AND datos_insercion.nombre_tabla =
                                 reg_datos_campos_insercion.nombre_tabla;
                      END;

                      variables_formula(var_str_tmp) := var_str_tmp1;

                    EXCEPTION
                      WHEN NO_DATA_FOUND THEN

                        var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                                    Chr(10) ||
                                                                    ' No pude hallar el valor para las variables de la formula ');
                        var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                                    Chr(10) ||
                                                                    sqlerrm);

                    END;
                  END IF;
                  EXIT WHEN var_str_tmp IS NULL;
                  var_cont_tmp := var_cont_tmp + 1;
                END LOOP;

                var_str_tmp1 := reg_datos_campos_insercion.obligatoriedad_bodega;
                var_str_tmp  := variables_formula.first;
                while var_str_tmp <= variables_formula.last loop
                  var_str_tmp1 := replace(var_str_tmp1,
                                          var_str_tmp,
                                          variables_formula(var_str_tmp));
                  var_str_tmp  := variables_formula.next(var_str_tmp);
                end loop;

                var_cont_tmp := 0;

                BEGIN
                  execute immediate 'select case when (' || var_str_tmp1 ||
                                    ') THEN 1 ELSE 0 END from dual'
                    into var_cont_tmp;
                EXCEPTION
                  WHEN OTHERS THEN
                    var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                                Chr(10) ||
                                                                ' No se pudo validar la formula de obligatoriedad ');
                    var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                                Chr(10) ||
                                                                sqlerrm);
                END;

                IF var_cont_tmp = 1 THEN

                  var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                              Chr(10) ||
                                                              ' Campo: ' ||
                                                              reg_datos_campos_insercion.consecutivo_plano ||
                                                              ' : ' ||
                                                              reg_datos_campos_insercion.descripcion_campo ||
                                                              ' Es requerido en la categoria: BODEGA. ');
                  var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                              Chr(10) ||
                                                              reg_datos_campos_insercion.nombre_campo ||
                                                              var_categoria_inmb ||
                                                              reg_datos_campos_insercion.obligatoriedad_bodega ||
                                                              sqlerrm);
                  var_cant_errores    := var_cant_errores + 1;

                END IF;

              END IF;

            END IF;
          when '4' then
            --CASA
            IF reg_datos_campos_insercion.obligatoriedad_casa = 'S' AND
               reg_datos_campos_insercion.valor = 'NULL' THEN
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' Campo: ' ||
                                                          reg_datos_campos_insercion.consecutivo_plano ||
                                                          ' : ' ||
                                                          reg_datos_campos_insercion.descripcion_campo ||
                                                          ' Es requerido en la categoria:CASA');
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          reg_datos_campos_insercion.nombre_campo ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;
            ELSIF (instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casa),
                         '=') <> 0 OR instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casa),
                                             '<') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casa),
                         '>') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casa),
                         ' AND ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casa),
                         ' BETWEEN ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casa),
                         ' EXISTS ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casa),
                         ' IN ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casa),
                         ' LIKE ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casa),
                         ' NOT ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casa),
                         '!') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casa),
                         'NULL') <> 0) AND
                  (reg_datos_campos_insercion.obligatoriedad_casa IS NOT NULL) THEN
              --validar condicion de obligatoriedad
              --dbms_output.put_line(reg_datos_campos_insercion.obligatoriedad_apartamento);

              var_cont_tmp := 1;

              IF reg_datos_campos_insercion.valor IS NULL OR
                 UPPER(reg_datos_campos_insercion.valor) = 'NULL' THEN

                LOOP
                  var_str_tmp := REGEXP_SUBSTR(reg_datos_campos_insercion.obligatoriedad_casa,
                                               ':\w+',
                                               1,
                                               var_cont_tmp);
                  IF var_str_tmp IS NOT NULL THEN
                    BEGIN

                      BEGIN
                        select VALOR
                          into var_str_tmp1
                          from datos_insercion
                         where UPPER(datos_insercion.nombre_campo) =
                               UPPER(SUBSTR(var_str_tmp, 2));
                      EXCEPTION
                        WHEN TOO_MANY_ROWS THEN
                          select VALOR
                            into var_str_tmp1
                            from datos_insercion
                           where UPPER(datos_insercion.nombre_campo) =
                                 UPPER(SUBSTR(var_str_tmp, 2))
                             AND datos_insercion.nombre_tabla =
                                 reg_datos_campos_insercion.nombre_tabla;
                      END;

                      variables_formula(var_str_tmp) := var_str_tmp1;

                    EXCEPTION
                      WHEN NO_DATA_FOUND THEN

                        var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                                    Chr(10) ||
                                                                    ' No hallar el valor para las variables de la formula ');
                        var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                                    Chr(10) ||
                                                                    sqlerrm);

                    END;
                  END IF;
                  EXIT WHEN var_str_tmp IS NULL;
                  var_cont_tmp := var_cont_tmp + 1;
                END LOOP;

                var_str_tmp1 := reg_datos_campos_insercion.obligatoriedad_casa;
                var_str_tmp  := variables_formula.first;
                while var_str_tmp <= variables_formula.last loop
                  var_str_tmp1 := replace(var_str_tmp1,
                                          var_str_tmp,
                                          variables_formula(var_str_tmp));
                  var_str_tmp  := variables_formula.next(var_str_tmp);
                end loop;

                var_cont_tmp := 0;

                BEGIN
                  execute immediate 'select case when (' || var_str_tmp1 ||
                                    ') THEN 1 ELSE 0 END from dual'
                    into var_cont_tmp;
                EXCEPTION
                  WHEN OTHERS THEN
                    var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                                Chr(10) ||
                                                                ' No se pudo validar la formula de obligatoriedad ');
                    var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                                Chr(10) ||
                                                                sqlerrm);
                END;

                IF var_cont_tmp = 1 THEN

                  var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                              Chr(10) ||
                                                              ' Campo: ' ||
                                                              reg_datos_campos_insercion.consecutivo_plano ||
                                                              ' : ' ||
                                                              reg_datos_campos_insercion.descripcion_campo ||
                                                              ' Es requerido en la categoria: CASA. ');
                  var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                              Chr(10) ||
                                                              reg_datos_campos_insercion.nombre_campo ||
                                                              var_categoria_inmb ||
                                                              reg_datos_campos_insercion.obligatoriedad_casa ||
                                                              sqlerrm);
                  var_cant_errores    := var_cant_errores + 1;

                END IF;

              END IF;

            END IF;
          when '13' then
            --CASARURAL

            IF reg_datos_campos_insercion.obligatoriedad_casarural = 'S' AND
               reg_datos_campos_insercion.valor = 'NULL' THEN
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' Campo: ' ||
                                                          reg_datos_campos_insercion.consecutivo_plano ||
                                                          ' : ' ||
                                                          reg_datos_campos_insercion.descripcion_campo ||
                                                          ' Es requerido en la categoria:CASA RURAL ');
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          reg_datos_campos_insercion.nombre_campo ||
                                                          var_categoria_inmb ||
                                                          sqlerrm);

              var_cant_errores := var_cant_errores + 1;
            ELSIF (instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casarural),
                         '=') <> 0 OR instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casarural),
                                             '<') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casarural),
                         '>') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casarural),
                         ' AND ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casarural),
                         ' BETWEEN ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casarural),
                         ' EXISTS ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casarural),
                         ' IN ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casarural),
                         ' LIKE ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casarural),
                         ' NOT ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casarural),
                         '!') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_casarural),
                         'NULL') <> 0) AND
                  (reg_datos_campos_insercion.obligatoriedad_casarural IS NOT NULL) THEN
              --validar condicion de obligatoriedad
              --dbms_output.put_line(reg_datos_campos_insercion.obligatoriedad_apartamento);

              var_cont_tmp := 1;

              IF reg_datos_campos_insercion.valor IS NULL OR
                 UPPER(reg_datos_campos_insercion.valor) = 'NULL' THEN

                LOOP
                  var_str_tmp := REGEXP_SUBSTR(reg_datos_campos_insercion.obligatoriedad_casarural,
                                               ':\w+',
                                               1,
                                               var_cont_tmp);
                  IF var_str_tmp IS NOT NULL THEN
                    BEGIN
                      BEGIN
                        select VALOR
                          into var_str_tmp1
                          from datos_insercion
                         where UPPER(datos_insercion.nombre_campo) =
                               UPPER(SUBSTR(var_str_tmp, 2));
                      EXCEPTION
                        WHEN TOO_MANY_ROWS THEN
                          select VALOR
                            into var_str_tmp1
                            from datos_insercion
                           where UPPER(datos_insercion.nombre_campo) =
                                 UPPER(SUBSTR(var_str_tmp, 2))
                             AND datos_insercion.nombre_tabla =
                                 reg_datos_campos_insercion.nombre_tabla;
                      END;
                      variables_formula(var_str_tmp) := var_str_tmp1;

                    EXCEPTION
                      WHEN NO_DATA_FOUND THEN

                        var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                                    Chr(10) ||
                                                                    ' No pude hallar el valor para las variables de la formula ');
                        var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                                    Chr(10) ||
                                                                    sqlerrm);

                    END;
                  END IF;
                  EXIT WHEN var_str_tmp IS NULL;
                  var_cont_tmp := var_cont_tmp + 1;
                END LOOP;

                var_str_tmp1 := reg_datos_campos_insercion.obligatoriedad_casarural;
                var_str_tmp  := variables_formula.first;
                while var_str_tmp <= variables_formula.last loop
                  var_str_tmp1 := replace(var_str_tmp1,
                                          var_str_tmp,
                                          variables_formula(var_str_tmp));
                  var_str_tmp  := variables_formula.next(var_str_tmp);
                end loop;

                var_cont_tmp := 0;

                BEGIN
                  execute immediate 'select case when (' || var_str_tmp1 ||
                                    ') THEN 1 ELSE 0 END from dual'
                    into var_cont_tmp;
                EXCEPTION
                  WHEN OTHERS THEN
                    var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                                Chr(10) ||
                                                                ' No se pudo validar la formula de obligatoriedad ');
                    var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                                Chr(10) ||
                                                                sqlerrm);
                END;

                IF var_cont_tmp = 1 THEN

                  var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                              Chr(10) ||
                                                              ' Campo: ' ||
                                                              reg_datos_campos_insercion.consecutivo_plano ||
                                                              ' : ' ||
                                                              reg_datos_campos_insercion.descripcion_campo ||
                                                              ' Es requerido en la categoria:CASA RURAL. ');
                  var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                              Chr(10) ||
                                                              reg_datos_campos_insercion.nombre_campo ||
                                                              var_categoria_inmb ||
                                                              reg_datos_campos_insercion.obligatoriedad_casarural ||
                                                              sqlerrm);
                  var_cant_errores    := var_cant_errores + 1;

                END IF;

              END IF;

            END IF;
          when '6' then
            --LOCAL
            IF reg_datos_campos_insercion.obligatoriedad_local = 'S' AND
               reg_datos_campos_insercion.valor = 'NULL' THEN
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' Campo: ' ||
                                                          reg_datos_campos_insercion.consecutivo_plano ||
                                                          ' : ' ||
                                                          reg_datos_campos_insercion.descripcion_campo ||
                                                          ' Es requerido en la categoria:LOCAL ');
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          reg_datos_campos_insercion.nombre_campo ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;
            ELSIF (instr(UPPER(reg_datos_campos_insercion.obligatoriedad_local),
                         '=') <> 0 OR instr(UPPER(reg_datos_campos_insercion.obligatoriedad_local),
                                             '<') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_local),
                         '>') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_local),
                         ' AND ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_local),
                         ' BETWEEN ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_local),
                         ' EXISTS ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_local),
                         ' IN ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_local),
                         ' LIKE ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_local),
                         ' NOT ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_local),
                         '!') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_local),
                         'NULL') <> 0) AND
                  (reg_datos_campos_insercion.obligatoriedad_local IS NOT NULL) THEN
              --validar condicion de obligatoriedad
              --dbms_output.put_line(reg_datos_campos_insercion.obligatoriedad_apartamento);

              var_cont_tmp := 1;

              IF reg_datos_campos_insercion.valor IS NULL OR
                 UPPER(reg_datos_campos_insercion.valor) = 'NULL' THEN

                LOOP
                  var_str_tmp := REGEXP_SUBSTR(reg_datos_campos_insercion.obligatoriedad_local,
                                               ':\w+',
                                               1,
                                               var_cont_tmp);
                  IF var_str_tmp IS NOT NULL THEN
                    BEGIN
                      BEGIN
                        select VALOR
                          into var_str_tmp1
                          from datos_insercion
                         where UPPER(datos_insercion.nombre_campo) =
                               UPPER(SUBSTR(var_str_tmp, 2));
                      EXCEPTION
                        WHEN TOO_MANY_ROWS THEN
                          select VALOR
                            into var_str_tmp1
                            from datos_insercion
                           where UPPER(datos_insercion.nombre_campo) =
                                 UPPER(SUBSTR(var_str_tmp, 2))
                             AND datos_insercion.nombre_tabla =
                                 reg_datos_campos_insercion.nombre_tabla;
                      END;
                      variables_formula(var_str_tmp) := var_str_tmp1;

                    EXCEPTION
                      WHEN NO_DATA_FOUND THEN

                        var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                                    Chr(10) ||
                                                                    ' No pude hallar el valor para las variables de la formula ');
                        var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                                    Chr(10) ||
                                                                    sqlerrm);

                    END;
                  END IF;
                  EXIT WHEN var_str_tmp IS NULL;
                  var_cont_tmp := var_cont_tmp + 1;
                END LOOP;

                var_str_tmp1 := reg_datos_campos_insercion.obligatoriedad_local;
                var_str_tmp  := variables_formula.first;
                while var_str_tmp <= variables_formula.last loop
                  var_str_tmp1 := replace(var_str_tmp1,
                                          var_str_tmp,
                                          variables_formula(var_str_tmp));
                  var_str_tmp  := variables_formula.next(var_str_tmp);
                end loop;

                var_cont_tmp := 0;

                BEGIN
                  execute immediate 'select case when (' || var_str_tmp1 ||
                                    ') THEN 1 ELSE 0 END from dual'
                    into var_cont_tmp;
                EXCEPTION
                  WHEN OTHERS THEN
                    var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                                Chr(10) ||
                                                                ' No se pudo validar la formula de obligatoriedad ');
                    var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                                Chr(10) ||
                                                                sqlerrm);
                END;

                IF var_cont_tmp = 1 THEN

                  var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                              Chr(10) ||
                                                              ' Campo: ' ||
                                                              reg_datos_campos_insercion.consecutivo_plano ||
                                                              ' : ' ||
                                                              reg_datos_campos_insercion.descripcion_campo ||
                                                              ' Es requerido en la categoria: LOCAL. ');
                  var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                              Chr(10) ||
                                                              reg_datos_campos_insercion.nombre_campo ||
                                                              var_categoria_inmb ||
                                                              reg_datos_campos_insercion.obligatoriedad_local ||
                                                              sqlerrm);
                  var_cant_errores    := var_cant_errores + 1;

                END IF;

              END IF;

            END IF;
          when '12' then
            --LOTE
            IF reg_datos_campos_insercion.obligatoriedad_lote = 'S' AND
               reg_datos_campos_insercion.valor = 'NULL' THEN
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' Campo: ' ||
                                                          reg_datos_campos_insercion.consecutivo_plano ||
                                                          ' : ' ||
                                                          reg_datos_campos_insercion.descripcion_campo ||
                                                          ' Es requerido en la categoria:LOTE ');
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          reg_datos_campos_insercion.nombre_campo ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;
            ELSIF (instr(UPPER(reg_datos_campos_insercion.obligatoriedad_lote),
                         '=') <> 0 OR instr(UPPER(reg_datos_campos_insercion.obligatoriedad_lote),
                                             '<') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_lote),
                         '>') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_lote),
                         ' AND ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_lote),
                         ' BETWEEN ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_lote),
                         ' EXISTS ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_lote),
                         ' IN ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_lote),
                         ' LIKE ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_lote),
                         ' NOT ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_lote),
                         '!') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_lote),
                         'NULL') <> 0) AND
                  (reg_datos_campos_insercion.obligatoriedad_lote IS NOT NULL) THEN
              --validar condicion de obligatoriedad
              --dbms_output.put_line(reg_datos_campos_insercion.obligatoriedad_apartamento);

              var_cont_tmp := 1;

              IF reg_datos_campos_insercion.valor IS NULL OR
                 UPPER(reg_datos_campos_insercion.valor) = 'NULL' THEN

                LOOP
                  var_str_tmp := REGEXP_SUBSTR(reg_datos_campos_insercion.obligatoriedad_lote,
                                               ':\w+',
                                               1,
                                               var_cont_tmp);
                  IF var_str_tmp IS NOT NULL THEN
                    BEGIN
                      BEGIN
                        select VALOR
                          into var_str_tmp1
                          from datos_insercion
                         where UPPER(datos_insercion.nombre_campo) =
                               UPPER(SUBSTR(var_str_tmp, 2));

                      EXCEPTION
                        WHEN TOO_MANY_ROWS THEN
                          select VALOR
                            into var_str_tmp1
                            from datos_insercion
                           where UPPER(datos_insercion.nombre_campo) =
                                 UPPER(SUBSTR(var_str_tmp, 2))
                             AND datos_insercion.nombre_tabla =
                                 reg_datos_campos_insercion.nombre_tabla;

                      END;
                      variables_formula(var_str_tmp) := var_str_tmp1;

                    EXCEPTION
                      WHEN NO_DATA_FOUND THEN

                        var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                                    Chr(10) ||
                                                                    ' No hallar el valor para las variables de la formula ');
                        var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                                    Chr(10) ||
                                                                    sqlerrm);

                    END;
                  END IF;
                  EXIT WHEN var_str_tmp IS NULL;
                  var_cont_tmp := var_cont_tmp + 1;
                END LOOP;

                var_str_tmp1 := reg_datos_campos_insercion.obligatoriedad_lote;
                var_str_tmp  := variables_formula.first;
                while var_str_tmp <= variables_formula.last loop
                  var_str_tmp1 := replace(var_str_tmp1,
                                          var_str_tmp,
                                          variables_formula(var_str_tmp));
                  var_str_tmp  := variables_formula.next(var_str_tmp);
                end loop;

                var_cont_tmp := 0;

                BEGIN
                  execute immediate 'select case when (' || var_str_tmp1 ||
                                    ') THEN 1 ELSE 0 END from dual'
                    into var_cont_tmp;
                EXCEPTION
                  WHEN OTHERS THEN
                    var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                                Chr(10) ||
                                                                ' No se pudo validar la formula de obligatoriedad ');
                    var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                                Chr(10) ||
                                                                sqlerrm);
                END;

                IF var_cont_tmp = 1 THEN

                  var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                              Chr(10) ||
                                                              ' Campo: ' ||
                                                              reg_datos_campos_insercion.consecutivo_plano ||
                                                              ' : ' ||
                                                              reg_datos_campos_insercion.descripcion_campo ||
                                                              ' Es requerido en la categoria: LOTE. ');
                  var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                              Chr(10) ||
                                                              reg_datos_campos_insercion.nombre_campo ||
                                                              var_categoria_inmb ||
                                                              reg_datos_campos_insercion.obligatoriedad_lote ||
                                                              sqlerrm);
                  var_cant_errores    := var_cant_errores + 1;

                END IF;

              END IF;

            END IF;
          when '15' then
            --LOTEURBANO
            IF reg_datos_campos_insercion.obligatoriedad_loteurbano = 'S' AND
               reg_datos_campos_insercion.valor = 'NULL' THEN
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' Campo: ' ||
                                                          reg_datos_campos_insercion.consecutivo_plano ||
                                                          ' : ' ||
                                                          reg_datos_campos_insercion.descripcion_campo ||
                                                          ' Es requerido en la categoria:LOTE URBANO ');
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          reg_datos_campos_insercion.nombre_campo ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;
            ELSIF (instr(UPPER(reg_datos_campos_insercion.obligatoriedad_loteurbano),
                         '=') <> 0 OR instr(UPPER(reg_datos_campos_insercion.obligatoriedad_loteurbano),
                                             '<') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_loteurbano),
                         '>') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_loteurbano),
                         ' AND ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_loteurbano),
                         ' BETWEEN ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_loteurbano),
                         ' EXISTS ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_loteurbano),
                         ' IN ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_loteurbano),
                         ' LIKE ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_loteurbano),
                         ' NOT ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_loteurbano),
                         '!') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_loteurbano),
                         'NULL') <> 0) AND
                  (reg_datos_campos_insercion.obligatoriedad_loteurbano IS NOT NULL) THEN
              --validar condicion de obligatoriedad
              --dbms_output.put_line(reg_datos_campos_insercion.obligatoriedad_apartamento);

              var_cont_tmp := 1;

              IF reg_datos_campos_insercion.valor IS NULL OR
                 UPPER(reg_datos_campos_insercion.valor) = 'NULL' THEN

                LOOP
                  var_str_tmp := REGEXP_SUBSTR(reg_datos_campos_insercion.obligatoriedad_loteurbano,
                                               ':\w+',
                                               1,
                                               var_cont_tmp);
                  IF var_str_tmp IS NOT NULL THEN
                    BEGIN
                      BEGIN
                        select VALOR
                          into var_str_tmp1
                          from datos_insercion
                         where UPPER(datos_insercion.nombre_campo) =
                               UPPER(SUBSTR(var_str_tmp, 2));
                      EXCEPTION
                        WHEN TOO_MANY_ROWS THEN
                          select VALOR
                            into var_str_tmp1
                            from datos_insercion
                           where UPPER(datos_insercion.nombre_campo) =
                                 UPPER(SUBSTR(var_str_tmp, 2))
                             AND datos_insercion.nombre_tabla =
                                 reg_datos_campos_insercion.nombre_tabla;
                      END;
                      variables_formula(var_str_tmp) := var_str_tmp1;

                    EXCEPTION
                      WHEN NO_DATA_FOUND THEN

                        var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                                    Chr(10) ||
                                                                    ' No hallar el valor para las variables de la formula ');
                        var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                                    Chr(10) ||
                                                                    sqlerrm);

                    END;
                  END IF;
                  EXIT WHEN var_str_tmp IS NULL;
                  var_cont_tmp := var_cont_tmp + 1;
                END LOOP;

                var_str_tmp1 := reg_datos_campos_insercion.obligatoriedad_loteurbano;
                var_str_tmp  := variables_formula.first;
                while var_str_tmp <= variables_formula.last loop
                  var_str_tmp1 := replace(var_str_tmp1,
                                          var_str_tmp,
                                          variables_formula(var_str_tmp));
                  var_str_tmp  := variables_formula.next(var_str_tmp);
                end loop;

                var_cont_tmp := 0;

                BEGIN
                  execute immediate 'select case when (' || var_str_tmp1 ||
                                    ') THEN 1 ELSE 0 END from dual'
                    into var_cont_tmp;
                EXCEPTION
                  WHEN OTHERS THEN
                    var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                                Chr(10) ||
                                                                ' No se pudo validar la formula de obligatoriedad ');
                    var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                                Chr(10) ||
                                                                sqlerrm);
                END;

                IF var_cont_tmp = 1 THEN

                  var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                              Chr(10) ||
                                                              ' Campo: ' ||
                                                              reg_datos_campos_insercion.consecutivo_plano ||
                                                              ' : ' ||
                                                              reg_datos_campos_insercion.descripcion_campo ||
                                                              ' Es requerido en la categoria: LOTE URBANO. ');
                  var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                              Chr(10) ||
                                                              reg_datos_campos_insercion.nombre_campo ||
                                                              var_categoria_inmb ||
                                                              reg_datos_campos_insercion.obligatoriedad_loteurbano ||
                                                              sqlerrm);
                  var_cant_errores    := var_cant_errores + 1;

                END IF;

              END IF;

            END IF;
          when '7' then
            --OFICINA
            IF reg_datos_campos_insercion.obligatoriedad_oficina = 'S' AND
               reg_datos_campos_insercion.valor = 'NULL' THEN
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' Campo: ' ||
                                                          reg_datos_campos_insercion.consecutivo_plano ||
                                                          ' : ' ||
                                                          reg_datos_campos_insercion.descripcion_campo ||
                                                          ' Es requerido en la categoria:OFICINA ');
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          reg_datos_campos_insercion.nombre_campo ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;
            ELSIF (instr(UPPER(reg_datos_campos_insercion.obligatoriedad_oficina),
                         '=') <> 0 OR instr(UPPER(reg_datos_campos_insercion.obligatoriedad_oficina),
                                             '<') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_oficina),
                         '>') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_oficina),
                         ' AND ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_oficina),
                         ' BETWEEN ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_oficina),
                         ' EXISTS ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_oficina),
                         ' IN ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_oficina),
                         ' LIKE ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_oficina),
                         ' NOT ') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_oficina),
                         '!') <> 0 OR
                  instr(UPPER(reg_datos_campos_insercion.obligatoriedad_oficina),
                         'NULL') <> 0) AND
                  (reg_datos_campos_insercion.obligatoriedad_oficina IS NOT NULL) THEN
              --validar condicion de obligatoriedad
              --dbms_output.put_line(reg_datos_campos_insercion.obligatoriedad_apartamento);

              var_cont_tmp := 1;

              IF reg_datos_campos_insercion.valor IS NULL OR
                 UPPER(reg_datos_campos_insercion.valor) = 'NULL' THEN

                LOOP
                  var_str_tmp := REGEXP_SUBSTR(reg_datos_campos_insercion.obligatoriedad_oficina,
                                               ':\w+',
                                               1,
                                               var_cont_tmp);
                  IF var_str_tmp IS NOT NULL THEN
                    BEGIN
                      BEGIN
                        select VALOR
                          into var_str_tmp1
                          from datos_insercion
                         where UPPER(datos_insercion.nombre_campo) =
                               UPPER(SUBSTR(var_str_tmp, 2));
                      EXCEPTION
                        WHEN TOO_MANY_ROWS THEN
                          select VALOR
                            into var_str_tmp1
                            from datos_insercion
                           where UPPER(datos_insercion.nombre_campo) =
                                 UPPER(SUBSTR(var_str_tmp, 2))
                             AND datos_insercion.nombre_tabla =
                                 reg_datos_campos_insercion.nombre_tabla;
                      END;
                      variables_formula(var_str_tmp) := var_str_tmp1;

                    EXCEPTION
                      WHEN NO_DATA_FOUND THEN

                        var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                                    Chr(10) ||
                                                                    ' No hallar el valor para las variables de la formula ');
                        var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                                    Chr(10) ||
                                                                    sqlerrm);

                    END;
                  END IF;
                  EXIT WHEN var_str_tmp IS NULL;
                  var_cont_tmp := var_cont_tmp + 1;
                END LOOP;

                var_str_tmp1 := reg_datos_campos_insercion.obligatoriedad_oficina;
                var_str_tmp  := variables_formula.first;
                while var_str_tmp <= variables_formula.last loop
                  var_str_tmp1 := replace(var_str_tmp1,
                                          var_str_tmp,
                                          variables_formula(var_str_tmp));
                  var_str_tmp  := variables_formula.next(var_str_tmp);
                end loop;

                var_cont_tmp := 0;

                BEGIN
                  execute immediate 'select case when (' || var_str_tmp1 ||
                                    ') THEN 1 ELSE 0 END from dual'
                    into var_cont_tmp;
                EXCEPTION
                  WHEN OTHERS THEN
                    var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                                Chr(10) ||
                                                                ' No se pudo validar la formula de obligatoriedad ');
                    var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                                Chr(10) ||
                                                                sqlerrm);
                END;

                IF var_cont_tmp = 1 THEN

                  var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                              Chr(10) ||
                                                              ' Campo: ' ||
                                                              reg_datos_campos_insercion.consecutivo_plano ||
                                                              ' : ' ||
                                                              reg_datos_campos_insercion.descripcion_campo ||
                                                              ' Es requerido en la categoria: OFICINA. ');
                  var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                              Chr(10) ||
                                                              reg_datos_campos_insercion.nombre_campo ||
                                                              var_categoria_inmb ||
                                                              reg_datos_campos_insercion.obligatoriedad_oficina ||
                                                              sqlerrm);
                  var_cant_errores    := var_cant_errores + 1;

                END IF;

              END IF;

            END IF;
          else
            null; --raise_application_error(-20599,'Pos:418 El campo '||reg_datos_campos_insercion.nombre_campo||'Es requerido en la categoria:'||var_categoria_inmb||sqlerrm);
        end case;

        IF reg_datos_campos_insercion.dominio IS NOT NULL AND
           reg_datos_campos_insercion.dominio <> 'NULL' AND
           reg_datos_campos_insercion.valor <> 'NULL' AND
           reg_datos_campos_insercion.valor IS NOT NULL AND
           reg_datos_campos_insercion.FUNCION_CONVERSION IS NULL AND
           reg_datos_campos_insercion.dominio <> 'CIUDADCOMBO' AND
           reg_datos_campos_insercion.dominio <> 'DEPARTAMENTOCOMBO' THEN
          var_cont_tmp := NULL;
          BEGIN
            SELECT count(cg_ref_codes.rv_low_value)
              INTO var_cont_tmp
              FROM cg_ref_codes
             WHERE cg_ref_codes.rv_domain =
                   reg_datos_campos_insercion.dominio
               AND cg_ref_codes.rv_low_value =
                   reg_datos_campos_insercion.valor;

            IF var_cont_tmp < 1 THEN

              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' Campo: ' ||
                                                          reg_datos_campos_insercion.consecutivo_plano ||
                                                          ' : ' ||
                                                          reg_datos_campos_insercion.descripcion_campo ||
                                                          ' El dato: ' ||
                                                          reg_datos_campos_insercion.valor ||
                                                          ' no coincide con el dominio ' ||
                                                          reg_datos_campos_insercion.dominio ||
                                                          ' o el dominio no esta creado en la tabla cg_ref_codes.');
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          reg_estr_plano.COLUMNA_BD ||
                                                          reg_datos_campos_insercion.dominio ||
                                                          var_dato_validar ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;

            END IF;



          EXCEPTION
            WHEN NO_DATA_FOUND THEN
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' Campo: ' ||
                                                          reg_datos_campos_insercion.consecutivo_plano ||
                                                          ' : ' ||
                                                          reg_datos_campos_insercion.descripcion_campo ||
                                                          ' El dato: ' ||
                                                          reg_datos_campos_insercion.valor ||
                                                          ' no coincide con el dominio ' ||
                                                          reg_datos_campos_insercion.dominio ||
                                                          ' o el dominio no esta creado en la tabla cg_ref_codes.');
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          reg_estr_plano.COLUMNA_BD ||
                                                          reg_datos_campos_insercion.dominio ||
                                                          var_dato_validar ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;
            WHEN OTHERS THEN
              raise_application_error(-20599,
                                      'Pos:455 Error validando contra el dominio' ||
                                      sqlerrm);

          END;

        END IF;

        var_columnas_insert := var_columnas_insert ||
                               reg_datos_campos_insercion.nombre_campo || ',';
        var_valores_insert  := var_valores_insert ||
                               reg_datos_campos_insercion.valor || ',';

      END LOOP;
      CLOSE cur_datos_campos_insercion;

      var_sql_tmp := 'alter session set nls_numeric_characters = ' ||
                           chr(39) || ',.' || chr(39);
            execute immediate var_sql_tmp;

      OPEN cur_par_campos_insercion(reg_tablas_insercion.nombre_tabla);
      LOOP
        FETCH cur_par_campos_insercion
          INTO reg_par_campos_insercion;
        EXIT WHEN cur_par_campos_insercion%NOTFOUND;

        IF reg_par_campos_insercion.valor_es_query = 'S' THEN

          BEGIN

            IF INSTR(reg_par_campos_insercion.valor, ':REFERENCIA_CARGUE') > 0 THEN

              EXECUTE IMMEDIATE reg_par_campos_insercion.valor
                INTO var_parametro_select
                USING pREFERENCIA_CARGUE;


            ELSE

              EXECUTE IMMEDIATE reg_par_campos_insercion.valor
                INTO var_parametro_select;

            END IF;

          EXCEPTION
            WHEN TOO_MANY_ROWS THEN
              --PARAMETROS_INSERCION
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' El valor del parametro para el campo: ' ||
                                                          reg_par_campos_insercion.nombre_campo ||
                                                          ' retorna mas de una fila ');
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          reg_par_campos_insercion.nombre_campo ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;
            WHEN OTHERS THEN
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' Error en el query del parametro para el campo seleccionado: ' ||
                                                          reg_par_campos_insercion.nombre_campo ||
                                                          ' retorna mas de una fila ');
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          reg_par_campos_insercion.nombre_campo ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;
          END;

          var_dato_validar := var_parametro_select;

        ELSE

          var_dato_validar := reg_par_campos_insercion.valor;

        END IF;

        /*valida nuevamente los tipos de dato de los campos. esto para incluir los campos que no vienene en el plano*/
        IF reg_par_campos_insercion.tipo_dato = 'DATE' THEN
          IF var_dato_validar IS NOT NULL THEN
            BEGIN
              SELECT TO_DATE(var_dato_validar, reg_estr_plano.formato)
                INTO var_tipo_date
                FROM DUAL;

              var_dato_validar := 'TO_DATE(' || CHR(39) ||
                                  TO_CHAR(TO_DATE(var_dato_validar,
                                                  reg_estr_plano.formato),
                                          reg_estr_plano.formato) ||
                                  CHR(39) || ',' || CHR(39) ||
                                  reg_estr_plano.formato || CHR(39) || ')';
            EXCEPTION
              WHEN OTHERS THEN
                var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                            Chr(10) ||
                                                            ' No es fecha  Campo: ' ||
                                                            reg_estr_plano.consecutivo_plano || ': ' ||
                                                            reg_estr_plano.descripcion_campo ||
                                                            ' Dato: ' ||
                                                            var_dato_validar);
                var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                            Chr(10) ||
                                                            reg_estr_plano.COLUMNA_BD ||
                                                            var_dato_validar ||
                                                            sqlerrm);
                var_cant_errores    := var_cant_errores + 1;
            END;
          ELSE
            var_dato_validar := 'NULL';
          END IF;
        END IF;

        IF reg_par_campos_insercion.tipo_dato like 'NUMBER%' THEN
          IF var_dato_validar IS NOT NULL THEN
            /*var_sql_tmp := 'alter session set nls_numeric_characters = ' ||
                           chr(39) || ',.' || chr(39);
            execute immediate var_sql_tmp;*/
            BEGIN
              SELECT TO_NUMBER(var_dato_validar)
                INTO var_tipo_numerico
                FROM DUAL;
              var_dato_validar := TO_CHAR(var_tipo_numerico);
            EXCEPTION
              WHEN OTHERS THEN
                --raise_application_error(-20599,'Pos:103 No es Numerico  Campo: ' || reg_estr_plano.COLUMNA_BD ||  ' Dato: ' || var_dato_validar ||sqlerrm);
                var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                            Chr(10) ||
                                                            ' No es Numerico Campo: ' ||
                                                            reg_estr_plano.consecutivo_plano || ': ' ||
                                                            reg_estr_plano.descripcion_campo ||
                                                            ' Dato: ' ||
                                                            var_dato_validar);
                var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                            Chr(10) ||
                                                            reg_estr_plano.COLUMNA_BD ||
                                                            var_dato_validar ||
                                                            sqlerrm);
                var_cant_errores    := var_cant_errores + 1;
            END;
          ELSE
            var_dato_validar := 'NULL';
          END IF;
        END IF; -- FIN SI reg_columnas_tipo_reg.tipo_dato = 'NUMBER'
        --
        IF reg_par_campos_insercion.tipo_dato like 'VARCHAR2%' THEN
          IF var_dato_validar IS NOT NULL THEN
            var_dato_validar := CHR(39) || TRIM(var_dato_validar) ||
                                CHR(39);
          ELSE
            var_dato_validar := 'NULL';
          END IF;
        END IF; -- FIN SI reg_columnas_tipo_reg.tipo_dato = 'VARCHAR2'

        IF reg_par_campos_insercion.tipo_dato like 'CLOB%' THEN
          IF var_dato_validar IS NOT NULL THEN
            var_dato_validar := CHR(39) || TRIM(var_dato_validar) ||
                                CHR(39);
          ELSE
            var_dato_validar := 'NULL';
          END IF;
        END IF; -- FIN SI reg_columnas_tipo_reg.tipo_dato = 'VARCHAR2'

        var_columnas_insert := var_columnas_insert ||
                               reg_par_campos_insercion.nombre_campo || ',';

        var_valores_insert := var_valores_insert || var_dato_validar || ',';

        IF reg_par_campos_insercion.es_fk = 'S' THEN
          null;
        else

          IF reg_par_campos_insercion.nombre_campo <> 'USUARIO_CREACION' AND
             reg_par_campos_insercion.nombre_campo <> 'FECHA_CREACION' AND
             reg_datos_campos_insercion.nombre_campo <> 'ID_AVALUO' THEN
            var_col_val_update := var_col_val_update ||
                                  reg_par_campos_insercion.nombre_campo || '=' ||
                                  var_dato_validar || ',';

          END IF;

          IF reg_par_campos_insercion.nombre_tabla like
             'PGB_LIQAVALUO PGB_LIQAVALUO%' AND
             reg_par_campos_insercion.nombre_campo = 'CONSECUTIVO' THEN
            where_val_update := where_val_update || ' AND ' ||
                                reg_par_campos_insercion.nombre_campo || '=' ||
                                var_dato_validar;
          END IF;

        END IF;

      END LOOP;
      CLOSE cur_par_campos_insercion;

      /*seccion de insercion y actualizacion de datos; solo es ejecutada si el archivo es un cargue masivo y no una descarga*/
      IF reg_registros_tmp.tipo_cargue = 'CARGUE' AND var_cant_errores < 1 THEN

        BEGIN
          var_sql_insert      := 'INSERT INTO ' ||
                                 reg_tablas_insercion.nombre_tabla || '(';
          var_columnas_insert := SUBSTR(var_columnas_insert,
                                        1,
                                        LENGTH(var_columnas_insert) - 1) ||
                                 ') VALUES (';
          var_valores_insert  := SUBSTR(var_valores_insert,
                                        1,
                                        LENGTH(var_valores_insert) - 1) || ')';
          var_sql_insert      := var_sql_insert || var_columnas_insert ||
                                 var_valores_insert;
        EXCEPTION
          WHEN OTHERS THEN
            raise_application_error(-20599,
                                    'Pos:156 Error al crear sql de insercion: ' ||
                                    sqlerrm);
        END;

        BEGIN
          --dbms_output.put_line(var_sql_insert);
          null;
        EXCEPTION
          when others then
            null;
        end;

        BEGIN

          /*IMPORTANTE: Aqui intenta ejecutar la insercion en las tablas parametrizadas. Si falla la insercion hace un update de los registros existentes*/
          EXECUTE IMMEDIATE var_sql_insert;

          /*Inserta la informacion en el historico*/
          IF reg_tablas_insercion.nombre_tabla = 'PGB_AVALUOS' THEN


            INSERT INTO PGB_HIST_AVALUOS
              (SECUENCIA_HISTORICO,
               ID_AVALUO,
               N_CONSECUTIVOBANCO,
               C_IDTIPOIDENTIFICACION,
               N_IDENTIFICACION,
               A_TIPODOCUMENTO,
               T_NOMBRESOLICITANTE,
               A_SOLTEL,
               A_SOLCEL,
               A_SOLCORREO,
               F_FECHAAVALUO,
               T_SECTOR,
               C_IDDEPARTAMENTO,
               C_IDCIUDAD,
               A_CODDANE_DEPTO,
               A_CODDANE_CIUDAD,
               T_DIRINMUEBLE,
               T_NOMBCONJEDIF,
               T_BARRIO,
               A_NOMBANCO,
               A_CODBANCO,
               C_IDMETODOLOGIA,
               C_IDOBJETOAVALUO,
               T_JUSTIFICACION,
               A_UBICGPS,
               A_TIPO_INFORME,
               A_ESTADOAVALUO,
               T_USUARIO,
               FECHA_CREACION,
               USUARIO_TRANSACCION,
               FECHA_TRANSACCION)
              SELECT SEQ_PGB_HIST_AVALUOS.NEXTVAL,
                     pgb_avaluos.id_avaluo,
                     pgb_avaluos.n_consecutivobanco,
                     pgb_avaluos.c_idtipoidentificacion,
                     pgb_avaluos.n_identificacion,
                     pgb_avaluos.a_tipodocumento,
                     pgb_avaluos.t_nombresolicitante,
                     pgb_avaluos.a_soltel,
                     pgb_avaluos.a_solcel,
                     pgb_avaluos.a_solcorreo,
                     pgb_avaluos.f_fechaavaluo,
                     pgb_avaluos.t_sector,
                     pgb_avaluos.c_iddepartamento,
                     pgb_avaluos.c_idciudad,
                     pgb_avaluos.a_coddane_depto,
                     pgb_avaluos.a_coddane_ciudad,
                     pgb_avaluos.t_dirinmueble,
                     pgb_avaluos.t_nombconjedif,
                     pgb_avaluos.t_barrio,
                     pgb_avaluos.a_nombanco,
                     pgb_avaluos.a_codbanco,
                     pgb_avaluos.c_idmetodologia,
                     pgb_avaluos.c_idobjetoavaluo,
                     pgb_avaluos.t_justificacion,
                     pgb_avaluos.a_ubicgps,
                     pgb_avaluos.a_tipo_informe,
                     pgb_avaluos.a_estadoavaluo,
                     pgb_avaluos.t_usuario,
                     pgb_avaluos.fecha_creacion,
                     pgb_avaluos.usuario_transaccion,
                     pgb_avaluos.fecha_transaccion
                FROM pgb_avaluos
               WHERE ID_AVALUO = var_valor_id_insert;

          END IF;


        EXCEPTION
          WHEN OTHERS THEN

            IF (SQLCODE = -942) THEN
              --DBMS_Output.Put_Line (SQLERRM);
              null;
            ELSIF (SQLCODE = -1) THEN

              /*IMPORTANTE: Aqui realiza la actualizacion de los registros existentes*/

              var_count_archivo := null;

              var_valor_id_insert := var_id_avaluo_update;

              /*si el avaluo ya existe verificar que no haya sido enviado aun*/
              BEGIN
                execute immediate 'SELECT A_IDARCHIVO FROM PGB_AVALUOS WHERE ' ||
                                  var_campo_id_insert || ' = ' ||
                                  var_id_avaluo_update
                  INTO var_count_archivo;
              EXCEPTION
                WHEN OTHERS THEN
                  raise_application_error(-20599,
                                          'Error al verificar si el archivo ya ha sido enviado: ' ||
                                          sqlerrm);
              END;

              /*ejecuta update*/
              IF var_count_archivo IS NULL THEN

                var_sql_insert := ' UPDATE ' ||
                                  reg_tablas_insercion.nombre_tabla ||
                                  ' set ';
                var_sql_insert := var_sql_insert ||
                                  SUBSTR(var_col_val_update,
                                         1,
                                         LENGTH(var_col_val_update) - 1);
                var_sql_insert := var_sql_insert || ' WHERE ' ||
                                  where_val_update;

                --var_valor_id_insert:=var_id_avaluo_update;

                BEGIN

                  EXECUTE IMMEDIATE var_sql_insert;

                  var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                              Chr(10) ||
                                                              ' El avaluo actualizara la tabla ' ||
                                                              reg_tablas_insercion.nombre_tabla);
                END;
              ELSE
                var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                            Chr(10) ||
                                                            ' El avaluo ya ha sido enviado y no puede ser actualizado ' ||
                                                            sqlerrm);
                var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                            Chr(10) ||
                                                            var_sql_insert ||
                                                            sqlerrm);
                var_cant_errores    := var_cant_errores + 1;
              END IF;

              --dbms_output.put_line(var_sql_insert);
              null;

            ELSE
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' Error insertando en las tablas parametrizadas ' ||
                                                          sqlerrm);
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          var_sql_insert ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;

            END IF;

        END;

        --VALIDACION DE IMAGENES DE AVALUO
        IF reg_tablas_insercion.nombre_tabla = 'PGB_AVALUOS' THEN

          SELECT /*+ PARALLEL(PGB_CARGUE_TMP, 2) */ DISTINCT CONSECUTIVO_BATCH
            INTO var_consecut_batch
            FROM PGB_CARGUE_TMP
           WHERE NUMERO_REF_CARGUE = pREFERENCIA_CARGUE;

          BEGIN

            EXECUTE IMMEDIATE 'SELECT id_archivo
                      FROM pgb_archivos_tmp
                      WHERE pgb_archivos_tmp.consecutivo_batch=' ||
                              var_consecut_batch || '
                      AND  UPPER(nombre_archivo) like ' ||
                              CHR(39) || '%' || var_consec_avaluo || '%' ||
                              CHR(39) || '
                      AND UPPER(SUBSTR(nombre_archivo,length(nombre_archivo)-3))=' ||
                              CHR(39) || '.JPG' || CHR(39)
              INTO var_id_arch_fachada;

          EXCEPTION
            WHEN TOO_MANY_ROWS THEN
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' Existe mas de una imagen de fachada del avaluo ' ||
                                                          var_valor_id_insert ||
                                                          '.JPG en los archivos.ZIP ' ||
                                                          sqlerrm);
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          var_sql_insert ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;
            WHEN NO_DATA_FOUND THEN
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' No se encontro la imagen de fachada del avaluo ' ||
                                                          var_consec_avaluo ||
                                                          '.JPG');
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          var_sql_insert ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;
            WHEN OTHERS THEN
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' Fallo trayendo imagen de fachada del avaluo ' ||
                                                          var_valor_id_insert ||
                                                          '.JPG ' || sqlerrm);
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          var_sql_insert ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;
          END;

          BEGIN

            EXECUTE IMMEDIATE 'SELECT /*+ INDEX(PGB_ARCHIVOS_TMP) */ id_archivo
                      FROM pgb_archivos_tmp
                      WHERE pgb_archivos_tmp.consecutivo_batch=' ||
                              var_consecut_batch || '
                      AND  UPPER(nombre_archivo) like ' ||
                              CHR(39) || '%' || var_consec_avaluo ||
                              '_FOTOS%' || CHR(39) || '
                      AND UPPER(SUBSTR(nombre_archivo,length(nombre_archivo)-3))=' ||
                              CHR(39) || '.PDF' || CHR(39) || ''
              INTO var_id_arch_anexos;

          EXCEPTION
            WHEN TOO_MANY_ROWS THEN
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' Existe mas de una imagen del avaluo ' ||
                                                          var_valor_id_insert ||
                                                          '_FOTOS.PDF en los archivos.ZIP ' ||
                                                          sqlerrm);
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          var_sql_insert ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;
            WHEN NO_DATA_FOUND THEN
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' No se encontro la imagenes del avaluo ' ||
                                                          var_consec_avaluo ||
                                                          '_FOTOS.PDF');
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          var_sql_insert ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;
            WHEN OTHERS THEN
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' Fallo trayendo imagenes del avaluo ' ||
                                                          var_valor_id_insert ||
                                                          '.JPG ' || sqlerrm);
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          var_sql_insert ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;
          END;

          IF var_cant_errores <= 0 then

          BEGIN

            SELECT pgb_archivos_tmp.tamanio_archivo
             INTO var_tamanioarchtmp
             FROM pgb_archivos_tmp
            WHERE ID_ARCHIVO= var_id_arch_anexos;

            EXCEPTION
            WHEN NO_DATA_FOUND THEN
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' Error: no se encuentra el registro de tamaño del PDF de anexos fotograficos ' ||
                                                          var_consec_avaluo ||
                                                          '_FOTOS.PDF'|| sqlerrm);
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;
            WHEN OTHERS THEN
              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' Error: consultando el tamaño del PDF de anexos fotograficos ' ||
                                                          var_consec_avaluo ||
                                                          '_FOTOS.PDF'|| sqlerrm);
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;

            END;
           IF var_tamanioarchtmp > 1048575 THEN

              var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                          Chr(10) ||
                                                          ' Error: el tamaño del PDF de anexos fotograficos '||var_consec_avaluo|| '_FOTOS.PDF supera 1 MB, este tamaño no es permitido por favor disminuya el tamaño de las fotos contenidas en el PDF. ');
              var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                          Chr(10) ||
                                                          sqlerrm);
              var_cant_errores    := var_cant_errores + 1;

           END IF;

          BEGIN

              SELECT SEQ_ARCHIVOS.NEXTVAL
                INTO var_id_arch_fachada1
                FROM DUAL;
              SELECT SEQ_ARCHIVOS.NEXTVAL
                INTO var_id_arch_anexos1
                FROM DUAL;
              EXECUTE IMMEDIATE '
                     INSERT INTO ARCHIVOS
                      (
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
                        SELECT ' ||
                                var_id_arch_fachada1 ||
                                ',pgb_archivos_tmp.tipo_archivo,pgb_archivos_tmp.nombre_archivo,
                               pgb_archivos_tmp.tamanio_archivo,
                               pgb_archivos_tmp.contenido, pgb_archivos_tmp.usuario_creacion,
                               pgb_archivos_tmp.fecha_creacion, pgb_archivos_tmp.usuario_transaccion,
                               pgb_archivos_tmp.fecha_transaccion
                          FROM pgb_archivos_tmp
                       WHERE ID_ARCHIVO=' ||
                                var_id_arch_fachada || '
                      ';
              EXECUTE IMMEDIATE '
                     INSERT INTO ARCHIVOS
                      (
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
                        SELECT ' ||
                                var_id_arch_anexos1 ||
                                ',pgb_archivos_tmp.tipo_archivo,pgb_archivos_tmp.nombre_archivo,
                               pgb_archivos_tmp.tamanio_archivo,
                               pgb_archivos_tmp.contenido, pgb_archivos_tmp.usuario_creacion,
                               pgb_archivos_tmp.fecha_creacion, pgb_archivos_tmp.usuario_transaccion,
                               pgb_archivos_tmp.fecha_transaccion
                          FROM pgb_archivos_tmp
                       WHERE ID_ARCHIVO=' ||
                                var_id_arch_anexos || '
                      ';
            EXCEPTION
              WHEN OTHERS THEN
                var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                            Chr(10) ||
                                                            ' Fallo insertando imagenes de Fachada y avaluo en la tabla ' ||
                                                            sqlerrm);
                var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                            Chr(10) ||
                                                            var_sql_insert ||
                                                            sqlerrm);
                var_cant_errores    := var_cant_errores + 1;

            END;
            BEGIN
              EXECUTE IMMEDIATE 'INSERT INTO pgb_ANEXO_FOTOGRAFICO (
                          ID_ANEXO_FOTOGRAFICO,
                          ID_AVALUO,
                          ID_IMG_FACHADA,
                          ID_DOC_ANEXOS,
                          USUARIO_CREACION,
                          FECHA_CREACION,
                          USUARIO_TRANSACCION,
                          FECHA_TRANSACCION
                      )
                      VALUES
                      (
                          SEQ_PGB_ANEXO_FOTOGRAFICO.NEXTVAL,
                          ' ||
                                var_valor_id_insert || ',
                          ' ||
                                var_id_arch_fachada1 || ',
                          ' ||
                                var_id_arch_anexos1 || ',
                          (SELECT USUARIO_CREACION FROM PGB_AVALUOS WHERE ID_AVALUO=' ||
                                var_valor_id_insert || '),
                          (SELECT FECHA_CREACION FROM PGB_AVALUOS WHERE ID_AVALUO=' ||
                                var_valor_id_insert || '),
                          (SELECT USUARIO_TRANSACCION FROM PGB_AVALUOS WHERE ID_AVALUO=' ||
                                var_valor_id_insert || '),
                          (SELECT FECHA_TRANSACCION FROM PGB_AVALUOS WHERE ID_AVALUO=' ||
                                var_valor_id_insert || ')
                      )';
            EXCEPTION
              WHEN OTHERS THEN
                IF (SQLCODE = -1) THEN
                  BEGIN

                    EXECUTE IMMEDIATE 'UPDATE pgb_ANEXO_FOTOGRAFICO
                                SET
                                ID_IMG_FACHADA=' ||
                                      var_id_arch_fachada1 || ',
                                ID_DOC_ANEXOS=' ||
                                      var_id_arch_anexos1 || ',
                                USUARIO_TRANSACCION=(SELECT USUARIO_TRANSACCION FROM PGB_AVALUOS WHERE ID_AVALUO=' ||
                                      var_valor_id_insert || '),
                                FECHA_TRANSACCION=(SELECT FECHA_TRANSACCION FROM PGB_AVALUOS WHERE ID_AVALUO=' ||
                                      var_valor_id_insert || ')
                                WHERE pgb_ANEXO_FOTOGRAFICO.ID_AVALUO=' ||
                                      var_valor_id_insert;
                  EXCEPTION
                    WHEN OTHERS THEN
                      var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                                  Chr(10) ||
                                                                  ' Fallo actualizando tabla de imagenes de Fachada y avaluo ' ||
                                                                  sqlerrm);
                      var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                                  Chr(10) ||
                                                                  var_sql_insert ||
                                                                  sqlerrm);
                      var_cant_errores    := var_cant_errores + 1;
                  END;
                ELSE

                  var_mensaje_usuario := REGISTRA_MENSAJE4000(var_mensaje_usuario,
                                                              Chr(10) ||
                                                              ' Fallo enlazando imagenes de Fachada y avaluo en la tabla de Avaluos ' ||
                                                              sqlerrm);
                  var_mensaje_tecnico := REGISTRA_MENSAJE4000(var_mensaje_tecnico,
                                                              Chr(10) ||
                                                              var_sql_insert ||
                                                              sqlerrm);
                  var_cant_errores    := var_cant_errores + 1;

                END IF;
            END;
          END IF;

        END IF;

      END IF;

    END LOOP;
    CLOSE cur_tablas_insercion;

    <<salta_loop>>
    null;
    /*verifica si la linea procesado tiene errores para dejarla en estado 'APLICADO' o'RECHAZADO'*/
    if var_cant_errores >= 1 then

      ROLLBACK;

      UPDATE pgb_cargue_tmp
         set ESTADO_CARGUE = 'RECHAZADO',
             mensaje_error = RTRIM(LTRIM(SUBSTR(var_mensaje_usuario, 2)))
      --,mensaje_tecnico,mensaje usuario
       WHERE pgb_cargue_tmp.numero_ref_cargue = pREFERENCIA_CARGUE
         AND TIPO_CARGUE = pTIPO_CARGUE
         AND ESTADO_CARGUE = 'CARGADO'
         AND pgb_cargue_tmp.linea_plano = reg_registros_tmp.linea_plano;

      COMMIT;
    ELSIF var_cant_errores <= 0 then

      Commit;

      UPDATE pgb_cargue_tmp
         set ESTADO_CARGUE = 'APLICADO',
             mensaje_error = RTRIM(LTRIM(var_mensaje_usuario))
      --,mensaje_tecnico,mensaje usuario
       WHERE pgb_cargue_tmp.numero_ref_cargue = pREFERENCIA_CARGUE
         AND TIPO_CARGUE = pTIPO_CARGUE
         AND ESTADO_CARGUE = 'CARGADO'
         AND pgb_cargue_tmp.linea_plano = reg_registros_tmp.linea_plano;

      COMMIT;

    end if;

    --DELETE FROM DATOS_INSERCION;
    EXECUTE IMMEDIATE 'TRUNCATE TABLE DATOS_INSERCION';
    COMMIT;

  END LOOP;
  CLOSE cur_registros_tmp;
  COMMIT; -- registros en tabla avaluos
end; 
/


