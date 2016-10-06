create or replace trigger TR_BI_INSERTA_LOG_ENCRIPTA
  before insert on x  
  for each row
declare
  var_secuencia number;
begin
  select seq_logs_x.nextval 
    into var_secuencia
    from dual;
    
  :NEW.SECUENCIA := var_secuencia;
  
end TR_BI_INSERTA_LOG_ENCRIPTA;
/
