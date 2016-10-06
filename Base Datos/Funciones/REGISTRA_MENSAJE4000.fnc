CREATE OR REPLACE function REGISTRA_MENSAJE4000(variable VARCHAR2,mensaje VARCHAR2)
return VARCHAR2
 As
  var VARCHAR2(4000);
begin

var:= variable;

    BEGIN
        IF (LENGTH(variable)+LENGTH(mensaje))+1 >=4000 THEN

            var := SUBSTR(variable,LENGTH(mensaje)+1,LENGTH(variable));
            var := var || mensaje;

        ELSE

            var := variable || CHR(13) ||mensaje;

        END IF;
    EXCEPTION
    WHEN OTHERS THEN
        NULL;
    END;

return var;

end REGISTRA_MENSAJE4000;
/


