ALTER TABLE CAMPOS_BUSQUEDA ADD (
  CONSTRAINT CAMPBUS_FK 
 FOREIGN KEY (CODIGO_TAREA, ID_BLOQUE) 
 REFERENCES TAREA_PROCESO (CODIGO_TAREA,ID_BLOQUE));
