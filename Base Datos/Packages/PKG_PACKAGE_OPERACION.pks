CREATE OR REPLACE PACKAGE Pkg_Package_Operacion IS
   /* CREADO POR: EDGAR A. SOTO G.
      EL 28/04/2005
   */

   WP_INSERT NUMBER := 1;
   WP_QUERY  NUMBER := 2;
   WP_UPDATE NUMBER := 3;
   WP_SAVE   NUMBER := 4;
   WP_DELETE NUMBER := 5;
   WP_UPDATE_NOTNULL NUMBER := 6;
   WP_UPDATE_PARAMS  NUMBER := 100;

    TYPE row_type IS REF  CURSOR;


   /*Determina si el parametro de OPeracion equivale a Operacion de Inserccion*/
   FUNCTION isUpdate(w_operacion IN NUMBER ) RETURN BOOLEAN;

   FUNCTION isUpdate_NotNull(w_operacion IN NUMBER ) RETURN BOOLEAN;

   /*Determina si el parametro de OPeracion equivale a Operacion de Actualizacion*/
   FUNCTION isInsert(w_operacion IN NUMBER ) RETURN BOOLEAN;

   /*Determina si el parametro de OPeracion equivale a Operacion de Borrado*/
   FUNCTION isDelete(w_operacion IN NUMBER ) RETURN BOOLEAN;

   FUNCTION isQuery(w_operacion IN NUMBER ) RETURN BOOLEAN;

   FUNCTION isUpdateParams(w_operacion IN NUMBER ) RETURN BOOLEAN;

   /*Retorna el Valor de la Opereacion de Actualizacion  */
   FUNCTION w_update RETURN NUMBER;

   /*Retorna el Valor de la Opereacion de Insercccion */
   FUNCTION w_insert RETURN NUMBER;

   /*Retorna el Valor de la Opereacion de Borrado  */
   FUNCTION w_delete RETURN NUMBER;

   FUNCTION w_updateNotNull RETURN NUMBER;

   FUNCTION w_query RETURN NUMBER ;

   FUNCTION w_update_params RETURN NUMBER;


END;
/


