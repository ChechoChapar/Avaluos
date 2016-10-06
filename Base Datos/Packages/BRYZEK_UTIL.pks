CREATE OR REPLACE package bryzek_util /*AUTHID CURRENT_USER*/ as
  /**
   * Displays all tables that reference the specified table.
   * 
   * @author Michael Bryzek
   * @creation-date 2001-08-21
   **/
  procedure references_to_table (
        p_table_name user_tables.table_name%TYPE
  );
   /**
   * Returns 1 if a table with the specified name exists
   * (case-insensitive). Returns 0 otherwise
   * 
   * @author Michael Bryzek
   * @creation-date 2001-08-21
   **/
  function table_exists (
        p_table_name user_tables.table_name%TYPE
  ) return integer;

end bryzek_util;
/


