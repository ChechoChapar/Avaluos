create or replace package pkg_estado_mutating
 as
          type ridArray is table of rowid index by binary_integer;

          newRows ridArray;
          empty   ridArray;
end;
/
