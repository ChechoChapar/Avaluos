create or replace trigger TR_BI_PGB_CARGUE_TMP
  before insert or update on PGB_CARGUE_TMP
begin
          pkg_estado_mutating.newRows := pkg_estado_mutating.empty;
  end;
/
