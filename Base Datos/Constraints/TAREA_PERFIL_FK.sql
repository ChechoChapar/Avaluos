ALTER TABLE TAREA_PERFIL ADD (
  CONSTRAINT TAR_PER_TAR_FK 
 FOREIGN KEY (CODIGO_TAREA) 
 REFERENCES TAREA (CODIGO_TAREA),
  CONSTRAINT TAR_PER_PER_FK 
 FOREIGN KEY (CODIGO_PERFIL) 
 REFERENCES PERFIL (CODIGO_PERFIL));
