ALTER TABLE RECARGA_LISTA_VALORES ADD (
  CONSTRAINT FK_RECARGA_LISTA_TAREA 
 FOREIGN KEY (TAREA, BLOQUE) 
 REFERENCES TAREA_PROCESO (CODIGO_TAREA,ID_BLOQUE),
  CONSTRAINT ARAGA_LISTA_VALORES 
 FOREIGN KEY (LV_NOMBRE) 
 REFERENCES LISTA_VALORES (LV_NOMBRE));
