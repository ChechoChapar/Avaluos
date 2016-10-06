create or replace trigger TR_BIU_PGB_INFCONSTR
  before insert or update on Pgb_Infconstruccion
  for each row

declare
  var_contador number(2);
  VAR_TOTAL PGB_LIQAVALUO_TOTAL.N_TOTALAVALUO%TYPE;
BEGIN

  IF :NEW.C_PROPHORZ = 1 THEN
    --Si está sometido a propiedad horizontal
    SELECT COUNT(*)
      INTO var_contador
      FROM PGB_LIQAVALUO
     WHERE C_DESCRIPLIQ IN (21, 22)
       AND ID_AVALUO = :NEW.ID_AVALUO;

    IF VAR_CONTADOR > 0 THEN
      UPDATE PGB_LIQAVALUO P
         SET P.C_DESCRIPLIQ      = NULL,
             P.A_DESCDEPENDENCIA = NULL,
             P.N_AREALIQ         = 0,
             P.N_VAL             = 0,
             P.N_VALTOT          = 0
       WHERE C_DESCRIPLIQ IN (21, 22)
         AND ID_AVALUO = :NEW.ID_AVALUO;
    END IF;
  ELSIF :NEW.C_PROPHORZ = 2 THEN
    --Si no está sometido a propiedad horizontal
    SELECT COUNT(*)
      INTO var_contador
      FROM PGB_LIQAVALUO
     WHERE C_DESCRIPLIQ NOT IN (21, 22)
       AND ID_AVALUO = :NEW.ID_AVALUO;

    IF VAR_CONTADOR > 0 THEN
      UPDATE PGB_LIQAVALUO P
         SET P.C_DESCRIPLIQ      = NULL,
             P.A_DESCDEPENDENCIA = NULL,
             P.N_AREALIQ         = 0,
             P.N_VAL             = 0,
             P.N_VALTOT          = 0
       WHERE C_DESCRIPLIQ NOT IN (21, 22)
         AND ID_AVALUO = :NEW.ID_AVALUO;
    END IF;
  END IF;

  IF VAR_CONTADOR > 0 THEN
      SELECT SUM(Q.N_VALTOT)
        INTO VAR_TOTAL
        FROM PGB_LIQAVALUO Q
       WHERE Q.ID_AVALUO = :NEW.ID_AVALUO;

     UPDATE PGB_LIQAVALUO_TOTAL T
        SET T.N_TOTALAVALUO = VAR_TOTAL,
            T.N_AVALUOUVR = TRUNC(VAR_TOTAL/T.N_VALUVRDIA,4)
       WHERE T.ID_AVALUO = :NEW.ID_AVALUO;

  END IF;

EXCEPTION
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20547,
                            'Error inserta construcción ' || sqlerrm);
END;
/
