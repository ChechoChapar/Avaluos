ALTER TABLE TAREA_PROCESO ADD (
  CONSTRAINT FK_TAREAPROCESO_TAREAALT 
 FOREIGN KEY (TRANSACCION_ALTERNA) 
 REFERENCES TAREA (CODIGO_TAREA),
  CONSTRAINT TAREA_PROCESO_FK 
 FOREIGN KEY (CODIGO_TAREA) 
 REFERENCES TAREA (CODIGO_TAREA));
