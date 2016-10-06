CREATE OR REPLACE procedure        sp_longitud_registro is

--Autor:  Luisa Leguizamón
--Fecha: 20/08/2010
--Calcula el tamaño del registro de cada tabla asociada al usuario del esquema de la base de datos 
 
cursor c_tablas is
select unique table_name
  from user_tab_columns
order by table_name;  


cursor c_tab_columns(ptablename varchar2) is
select table_name, data_type, data_length, data_precision, data_scale  
  from user_tab_columns 
 where table_name = ptablename 
 order by table_name;

total number(10);
tam_rowid number(1) := 6;
tam_fecha number(1) := 7;
 

begin
  for a in c_tablas loop
    total := 0;
    for b in c_tab_columns(a.table_name) loop
      if b.data_type = 'VARCHAR2' OR b.data_type = 'CHAR' or b.data_type = 'VARCHAR' or b.data_type = 'BLOB' or b.data_type = 'CLOB' then         
         total := total + b.data_length;            
      elsif b.data_type = 'DATE' then
         total := total + tam_fecha;
      elsif b.data_type = 'NUMBER' then
         total := total + floor((b.data_length+1)/2) + 1;                
      end if; 
      total := total + tam_rowid;       
    end loop;
    
    insert into long_reg_tabla(NOM_TABLA,LONGITUD) values(a.table_name,total);    
    commit;
  end loop;   
end;
/


