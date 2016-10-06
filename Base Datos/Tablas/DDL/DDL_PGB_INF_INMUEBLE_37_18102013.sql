alter sequence seq_pgb_infinmueble increment by 360000;

select seq_pgb_infinmueble.nextval from dual;

alter sequence seq_pgb_infinmueble increment by 1;

