ALTER TABLE PGB_PERITOS_EMPRESAS ADD (
  CONSTRAINT FK_PERITO_EMPRESA 
 FOREIGN KEY (ID_EMPRESA_AVALUO) 
 REFERENCES PGB_EMPRESAS_AVALUOS (ID_EMPRESA_AVALUO));
