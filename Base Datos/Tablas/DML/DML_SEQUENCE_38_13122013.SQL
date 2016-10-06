
delete from sequence where seq_name='PGB_INFINMUEBLE_IDINFINMUEBLE_GENERATOR';
COMMIT;

insert into sequence (SEQ_COUNT, SEQ_NAME)
values ((select max(id_infinmueble)+2 from pgb_infinmueble), 'PGB_INFINMUEBLE_IDINFINMUEBLE_GENERATOR');

COMMIT;
