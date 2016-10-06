CREATE OR REPLACE PACKAGE BODY Pkg_Package_Operacion AS




   FUNCTION isUpdate(w_operacion IN NUMBER ) RETURN BOOLEAN
   IS
   BEGIN
     RETURN (w_operacion = w_update);
   END;

   FUNCTION isUpdate_NotNull(w_operacion IN NUMBER ) RETURN BOOLEAN
   IS
   BEGIN
     RETURN (w_operacion = w_updateNotnull);
   END;

   FUNCTION isInsert(w_operacion IN NUMBER ) RETURN BOOLEAN
   IS
   BEGIN
     RETURN (w_operacion = w_insert);
   END;

   FUNCTION isDelete(w_operacion IN NUMBER ) RETURN BOOLEAN
   IS
   BEGIN
     RETURN (w_operacion = w_delete);
   END;

   FUNCTION isQuery(w_operacion IN NUMBER ) RETURN BOOLEAN
   IS
   BEGIN
     RETURN (w_operacion = w_query);
   END;

   FUNCTION isUpdateParams(w_operacion IN NUMBER ) RETURN BOOLEAN
   IS
   BEGIN
     RETURN (w_operacion = wp_update_params);
   END;


   FUNCTION w_update RETURN NUMBER IS
   BEGIN
     RETURN wp_update;
   END;

   FUNCTION w_updateNotNull RETURN NUMBER IS
   BEGIN
     RETURN wp_update_NotNull;
   END;

   FUNCTION w_insert RETURN NUMBER IS
   BEGIN
     RETURN wp_insert;
   END;

   FUNCTION w_delete RETURN NUMBER IS
   BEGIN
     RETURN wp_delete;
   END;

   FUNCTION w_query RETURN NUMBER IS
   BEGIN
     RETURN wp_query;
   END;

   FUNCTION w_update_params RETURN NUMBER IS
   BEGIN
     RETURN WP_UPDATE_PARAMS;
   END;


END;
/


