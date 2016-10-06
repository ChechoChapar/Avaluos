CREATE OR REPLACE VIEW V_CG_REF_CODES
AS 
SELECT rv_domain name,
rv_low_value low_value,
rv_high_value high_value,
rv_abbreviation abbreviation,
rv_meaning meaning,
rv_create_by created_by
FROM CG_REF_CODES;


