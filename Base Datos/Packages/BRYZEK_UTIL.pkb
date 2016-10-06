CREATE OR REPLACE package body bryzek_util as
  --------------------------------------------------------------------
  -- PRIVATE METHODS
  --------------------------------------------------------------------

  -- Returns 1 if an object with the specified name and type exists
  function object_exists (
        p_object_type user_objects.object_type%TYPE,
        p_object_name  user_objects.object_name%TYPE
  ) 
  return integer
  is
    v_result integer;
  begin
    select count(*) into v_result
      from user_objects
     where object_name = upper(trim(p_object_name))
       and object_type = upper(trim(p_object_type));
    
    return v_result;
  end;

  procedure output (
        p_message VARCHAR,
        p_sql     VARCHAR
  )
  is
     p_display integer := 0;
  begin 
     if (p_display = 1) then
       dbms_output.put_line('----------------------------------------------------------------------');
       dbms_output.put_line(p_message);
       dbms_output.put_line(p_sql);
     end if;
  end;

  --------------------------------------------------------------------
  -- PUBLIC API
  --------------------------------------------------------------------
  procedure references_to_table (
        p_table_name user_tables.table_name%TYPE
  )
  is
     v_found INTEGER := 0;
  begin
     if object_exists('table', p_table_name) = 0 then
        raise_application_error(-20000, 'There is no table named: ' || p_table_name);
     end if;
     dbms_output.put_line('References to ' || p_table_name);
     for row in ( select distinct b.constraint_name, b.table_name,a.column_name
                  /*select constraint_name, table_name
                   from user_constraints 
                  where r_constraint_name in (select constraint_name
                                                from user_constraints
                                               where table_name = upper(trim(p_table_name))))*/
                      FROM SYS.user_cons_columns a,
                           SYS.user_cons_columns c,
                           SYS.user_constraints b
                     WHERE ( a.constraint_name = b.constraint_name
                            AND a.table_name = b.table_name
                            AND b.constraint_type = 'R'
                            AND b.r_constraint_name in 
                                              (select constraint_name
                                                from user_constraints
                                               where table_name = upper(trim(p_table_name)))))                                               
                                                loop
        dbms_output.put_line('  - ' || row.table_name || ' (' || row.constraint_name || ')(' || row.column_name || ')');
        if v_found = 0 then 
           v_found := 1;
        end if;
     end loop;

     if v_found = 0 then
        dbms_output.put_line('  - No references found');
     end if;
  end;

  function table_exists (
        p_table_name user_tables.table_name%TYPE
  ) 
  return integer
  is
  begin
    return object_exists('table', p_table_name);
  end;

end bryzek_util;
/


