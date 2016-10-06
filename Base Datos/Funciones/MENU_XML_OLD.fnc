CREATE OR REPLACE function menu_XML_old(codigo_usuario VARCHAR2)
return XMLType

 As
  var XMLType;
begin

        SELECT XMLELEMENT ("root", DBMS_XMLGEN.getxmltype (
        /*DBMS_XMLGEN.newcontextfromhierarchy
           ('
           select
                level,
                XMLElement("modulo",
                           XMLElement("descripcion_modulo", m.descripcion_modulo),
                           XMLElement("modulo_padre",m.modulo_padre),
                           XMLElement("es_submodulo",m.es_submodulo),
                           XMLElement("ejecuta",t.ejecuta),
                           XMLElement("actualiza",t.actualiza),
                           XMLElement("adiciona",t.adiciona),
                           XMLElement("elimina",t.elimina),
                           XMLElement("consulta",t.consulta)
                           )
           from v_Modulos_Perfil m,v_tareas_perfil t
           where m.perfil = t.perfil and m.modulo = t.modulo
           connect by prior m.modulo = m.modulo_padre start with m.modulo
           in (select codigo_modulo from MODULO_APLICACION where codigo_modulo_padre is null)
           ')))*/
          DBMS_XMLGEN.newcontextfromhierarchy
           ('
           select
                level,
                XMLElement("menuitem",XMLElement("descripcion_modulo", m.descripcion_modulo))
           from v_Modulos_Perfil m,v_tareas_perfil t
           where m.perfil = t.perfil and m.modulo = t.modulo
           connect by prior m.modulo = m.modulo_padre start with m.modulo
           in (select codigo_modulo from MODULO_APLICACION where codigo_modulo_padre is null)
           ')))                              
           INTO var
          FROM DUAL;
return var;
end menu_XML_old;
/


