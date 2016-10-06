CREATE OR REPLACE FUNCTION AVALUOS.Sf_empresa_perito( IN_USUARIO IN VARCHAR2 )RETURN VARCHAR2 IS
--Retorna la empresa del perito
EMPRESA_PERITO VARCHAR2(250);
BEGIN
    BEGIN
    IF IN_USUARIO IS NOT NULL OR IN_USUARIO <> '' THEN
      
    select /*+ INDEX(PGB_PERITOS_EMPRESAS) */pgb_empresas_avaluos.numero_documento
    into   EMPRESA_PERITO
      from pgb_empresas_avaluos,
           pgb_peritos_empresas
     where pgb_empresas_avaluos.id_empresa_avaluo = pgb_peritos_empresas.id_empresa_avaluo
           and pgb_peritos_empresas.estado_asociacion='A'
           and pgb_peritos_empresas.numero_documento= IN_USUARIO;
    ELSE
           EMPRESA_PERITO:='';
    END IF;
    END;
  RETURN(EMPRESA_PERITO);
  END;
/