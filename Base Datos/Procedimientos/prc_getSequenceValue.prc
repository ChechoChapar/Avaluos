create or replace procedure 
prc_getSequenceValue(nomTabla VARCHAR,campoId VARCHAR,nomSequence VARCHAR
)
is
  Result NUMBER;
  seq NUMBER;
  id NUMBER;
  resta NUMBER;
begin
   EXECUTE IMMEDIATE 'SELECT '||nomSequence||'.nextval FROM DUAL' into seq ;

   EXECUTE IMMEDIATE 'SELECT max('||campoId||')   FROM '||nomTabla||'' into id;

   if seq <= id THEN

      resta:=id-seq;
      IF resta<>0 AND resta > 0  then
        EXECUTE IMMEDIATE 'ALTER SEQUENCE '||nomSequence||'  increment by '||resta;
        EXECUTE IMMEDIATE 'SELECT '||nomSequence||'.nextval FROM DUAL' into seq ;
        EXECUTE IMMEDIATE 'ALTER SEQUENCE '||nomSequence||' increment by 1';
      ELSE
        NULL;
      END IF;
   END IF;
EXCEPTION
  WHEN OTHERS THEN
   BEGIN
     EXECUTE IMMEDIATE 'ALTER SEQUENCE '||nomSequence||' increment by 1';
   EXCEPTION
   WHEN OTHERS THEN
     DBMS_OUTPUT.put_line(SQLERRM);
   END;
end prc_getSequenceValue;
/
