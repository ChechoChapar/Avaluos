ALTER TABLE PGB_CIUDADES ADD (
  CONSTRAINT FK_DEPTO_CIUDAD 
 FOREIGN KEY (ID_DEPARTAMENTO) 
 REFERENCES PGB_DEPARTAMENTOS (ID_DEPARTAMENTO));