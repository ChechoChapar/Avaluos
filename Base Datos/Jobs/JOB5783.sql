DECLARE
  X NUMBER;
BEGIN
  SYS.DBMS_JOB.SUBMIT
  ( job       => X 
   ,what      => 'Pkg_procesos_avaluos.sp_verifica_avaluos;'
   ,next_date => to_date('03/09/2011 00:00:00','dd/mm/yyyy hh24:mi:ss')
   ,interval  => 'TRUNC(SYSDATE)+1'
   ,no_parse  => FALSE
  );
COMMIT;
END;
/



