CREATE OR REPLACE procedure generarDocumentacion(v_cadena out clob) is

cursor c_tablas is
       select distinct u.OBJECT_NAME, u.OBJECT_TYPE, REPLACE(T.comments,CHR(10),' ') COMEN --MOD CLAUDIA M PEÑA
        from user_objects u,user_tab_comments t
        where u.OBJECT_TYPE in ('TABLE','VIEW')
          AND u.OBJECT_NAME  = t.TABLE_NAME (+)   -- MOD WILSON SACRISTAN
        ORDER BY U.OBJECT_TYPE,u.OBJECT_NAME;

cursor c_columns (v_nombre_tabla varchar2) is
        SELECT  T.table_name, T.column_name, REPLACE(T.comments,CHR(10),' ') COMEN,C.DATA_TYPE,DECODE(C.DATA_TYPE, --MOD CLAUDIA M PEÑA
                'DATE',NULL,NVL(DATA_PRECISION,C.DATA_LENGTH)) LOGITUD
         FROM USER_COL_COMMENTS T, USER_TAB_COLS C
         WHERE C.TABLE_NAME = T.table_name
           AND C.COLUMN_NAME = T.column_name
           AND T.TABLE_NAME LIKE v_nombre_tabla
         ORDER BY 1;

cursor c_package is
       SELECT distinct package_name
        FROM (SELECT t.package_name,
               t.object_name,
               decode(MIN(t.POSITION), 0, 'FUNCTION', 'PROCEDURE') tipo --MOD
                FROM user_arguments t
                WHERE package_name IS NOT NULL
                GROUP BY package_name, object_name);


cursor c_package_objects (v_package_name varchar2) is
       SELECT  package_name, object_name, tipo
        FROM (SELECT t.package_name,
               t.object_name,
               decode(MIN(t.POSITION), 0, 'FUNCTION', 'PROCEDURE') tipo  --MOD
               FROM user_arguments t
               where  package_name like v_package_name
               GROUP BY package_name, object_name)
        ORDER BY 1,3;

cursor c_objects is
       select distinct u.OBJECT_TYPE
        from user_objects u
        where u.OBJECT_TYPE NOT in ('PACKAGE','TABLE','VIEW','PACKAGE BODY','LOB')
        ORDER BY U.OBJECT_TYPE;

cursor c_objects_desc (V_OBJECT_TYPE VARCHAR2) is
       select DECODE(U.OBJECT_TYPE,'FUNCTION',124,'INDEX',121,'MATERIALIZED VIEW',501,'PROCEDURE',123,'SEQUENCE',125,'TRIGGER',122,'TYPE',222,
             'SYNONYM',126,'DATABASE LINK','521') AS CODIGO --MOD CLAUDIA M P
             ,U.OBJECT_NAME
             ,U.OBJECT_TYPE
        from user_objects u
        where u.OBJECT_TYPE like V_OBJECT_TYPE
          and u.OBJECT_NAME not like 'GENERARDOCUMENTACION'
        ORDER BY U.OBJECT_TYPE, U.OBJECT_NAME;


V_secuencia number;

aux clob :=null;

begin

  v_cadena := 'CONSECUTIVO ASOCIADO AL TIPO OBJETO; CONSECUTIVO; NOMBRE OBJETO; ; TIPO OBJETO; DESCRIPCION; TIPO CAMPO; LONGITUD;'||chr(13)||chr(10);

  v_secuencia := 1;

  for tabla in c_tablas loop

        aux :=
           '25;'
           ||v_secuencia||';'
           ||tabla.object_name||';'
           ||' ;'
           ||tabla.object_type||';'
           ||tabla.COMEN||';' --MOD CLAUDIA M PEÑA
           ||chr(10);


         v_cadena := v_cadena || TRIM(aux);


      for columna in c_columns(tabla.object_name) loop

      aux:=
           '25;'
           ||v_secuencia||';'
           ||columna.table_name||';'
           ||columna.column_name||';'
           ||tabla.object_type||';'
           ||columna.COMEN ||';' --MOD CLAUDIA M PEÑA
           ||columna.data_type||';'
           ||columna.logitud||';'
           ||chr(13)||chr(10);

         v_cadena := v_cadena || TRIM(aux);


      end loop;

      v_secuencia := v_secuencia + 1;

  end loop;

  for pack in c_package loop

        aux :=
           '24;'
           ||v_secuencia||';'
           ||pack.package_name||';'
           ||' ;'
           ||'PACKAGE;'
           ||chr(13)||chr(10);


     v_cadena := v_cadena || TRIM(aux);


      for obj in c_package_objects(pack.package_name) loop

      aux:=
           '24;'
           ||v_secuencia||';'
           ||obj.package_name||';'
           ||obj.object_name||';'
           ||obj.tipo||';'
           ||chr(13)||chr(10);

       v_cadena := v_cadena || TRIM(aux);


      end loop;

      v_secuencia := v_secuencia + 1;

  end loop;

  for OBJ in c_objects loop

      for DES in c_objects_desc(OBJ.OBJECT_TYPE) loop

      aux:=
           DES.CODIGO ||';'
           ||v_secuencia||';'
           ||DES.OBJECT_NAME||';'
           ||' ;'
           ||DES.OBJECT_TYPE||';'
           ||chr(13)||chr(10);

       v_cadena := v_cadena || TRIM(aux);

       v_secuencia := v_secuencia + 1;

      end loop;

  end loop;

    SELECT REPLACE(v_cadena,':',' ') into v_cadena FROM DUAL; --MOD CLAUDIA M PEÑA
    SELECT REPLACE(v_cadena,'''',' ') into v_cadena FROM DUAL; --MOD CLAUDIA M PEÑA


end generarDocumentacion;
/


