ALTER TABLE PGB_INFINMUEBLE ADD (
  CONSTRAINT FK_INMUEBLE_AVALUO 
 FOREIGN KEY (ID_AVALUO) 
 REFERENCES PGB_AVALUOS (ID_AVALUO));
