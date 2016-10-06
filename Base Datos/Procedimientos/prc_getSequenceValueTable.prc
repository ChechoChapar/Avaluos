create or replace procedure prc_getSequenceValueTable
(nomTabla VARCHAR,campoId VARCHAR,nomSequenceFTable VARCHAR
) 
is
  Result NUMBER;
  seq NUMBER;
  id NUMBER;
  newId NUMBER;
  resta NUMBER;
begin

   EXECUTE IMMEDIATE 'select t.seq_count from sequence t where t.seq_name ='||CHR(39)||nomSequenceFTable||CHR(39) into seq;

   EXECUTE IMMEDIATE 'SELECT max('||campoId||')   FROM '||nomTabla||'' into id;

   if seq <= id THEN
      
      resta:=id-seq;
      IF resta<>0 AND resta > 0 then
         newId:=id + 1;
         EXECUTE IMMEDIATE 'UPDATE SEQUENCE SET seq_count = '||newId||' WHERE seq_name ='||CHR(39)||nomSequenceFTable||CHR(39);commit;
         seq := id + 1;
      END IF;
   END IF;

EXCEPTION
  WHEN OTHERS THEN
       DBMS_OUTPUT.put_line(SQLERRM);
end prc_getSequenceValueTable;
/
