ALTER TABLE PGB_FORMATO_AVALUO ADD (
  CONSTRAINT FK_FORMATO_ARCHIVO 
 FOREIGN KEY (ID_ARCHIVO) 
 REFERENCES ARCHIVOS (ID_ARCHIVO));
