CREATE OR REPLACE function menu_XML(codigo_usuario VARCHAR2)
return XMLType
 As
  var XMLType;
begin
  
        SELECT XMLELEMENT ("root",DBMS_XMLGEN.getxmltype (
          DBMS_XMLGEN.newcontextfromhierarchy
           ('
           select level,
                  XMLElement("menuitem",
                            XMLATTRIBUTES(
                            mo.descripcion_modulo as "label",
                            t.perfil as "data",
                            T.ES_SUBMODULO as "submodulo",
                            t.NOMBRE_PELICULA as "transaccion",
                            t.EJECUTA as "ejecuta",
                            t.IMPRIME as "imprime",
                            t.ACTUALIZA as "actualiza",
                            t.ADICIONA as "adiciona",
                            t.ELIMINA as "elimina",
                            t.CONSULTA as "consulta"
                            ))
           from v_Modulos_Perfil mo,v_tareas_perfil t,v_usuario u
             where mo.perfil = t.perfil and mo.modulo = t.modulo
                  and u.codigo_perfil = t.perfil
                  and u.codigo_usuario='||codigo_usuario||'
           connect by prior mo.modulo = mo.modulo_padre start with mo.modulo
           in (select codigo_modulo from MODULO_APLICACION where codigo_modulo_padre is null)                  
           '))
           )                   
           INTO var
          FROM DUAL;



return var;
end menu_XML;
/


