CREATE OR REPLACE PACKAGE Pkg_Usuario AS
  PROCEDURE PRC_CAMBIaPASSWORD( opcion NUMBER
                    , p_clave   VARCHAR2
					, p_nueva   VARCHAR2
					, p_repita  VARCHAR2
					, p_usuario VARCHAR2
					, msg 		OUT VARCHAR2
					);
END;
/


