ALTER TABLE PGB_CONDSALUBRIDAD ADD (
  CONSTRAINT FK_SALUBRIDAD_AVALUO 
 FOREIGN KEY (ID_AVALUO) 
 REFERENCES PGB_AVALUOS (ID_AVALUO));
