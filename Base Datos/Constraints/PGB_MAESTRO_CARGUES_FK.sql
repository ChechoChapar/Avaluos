ALTER TABLE PGB_MAESTRO_CARGUES ADD (
  CONSTRAINT FK_USUARIO_CARGUE 
 FOREIGN KEY (USUARIO_TRANSACCION) 
 REFERENCES USUARIO (CODIGO_USUARIO));
