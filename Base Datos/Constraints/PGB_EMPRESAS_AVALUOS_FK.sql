ALTER TABLE PGB_EMPRESAS_AVALUOS ADD (
  CONSTRAINT FK_FIRMA_ARCHIVO 
 FOREIGN KEY (FIRMA) 
 REFERENCES ARCHIVOS (ID_ARCHIVO),
  CONSTRAINT FK_LOGO_ARCHIVO 
 FOREIGN KEY (LOGO) 
 REFERENCES ARCHIVOS (ID_ARCHIVO));
