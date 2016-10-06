CREATE OR REPLACE TRIGGER TR_AIU_MATRICULAINMOB
  after insert or update of T_MINMBPPAL1 on pgb_infinmueble
  for each row
-- Trigger que actualiza en el histórico de avalúos cuando se ingresa o actualiza la matrícula inmobiliaria
declare
  -- local variables here
  var_secuencia_historico number;
begin
  BEGIN
   select max(h.secuencia_historico)
     into var_secuencia_historico
     from pgb_hist_avaluos h
    where h.id_avaluo = :NEW.id_avaluo;
  EXCEPTION WHEN NO_DATA_FOUND THEN
    var_secuencia_historico := null;
  END;

  IF var_secuencia_historico is not null THEN
      UPDATE pgb_hist_avaluos h1
         set T_MINMBPPAL1 = :NEW.T_MINMBPPAL1
       WHERE h1.secuencia_historico = var_secuencia_historico;
  END IF;

exception when others then
   raise_application_error(-20158,'Error insertando histórico de matrícula '||sqlerrm);
end TR_AIU_MATRICULAINMOB;
/


