CREATE OR REPLACE package BODY PKG_PROCESOS_AVALUOS is

PROCEDURE sp_elimina_avaluos_nuevos IS

  var_idimgfachada number;
  var_iddocanexos number;

  cursor c_avaluos_nuevos is
  select *
    from pgb_avaluos t
   WHERE t.a_Estadoavaluo = 2
     and trunc(fecha_creacion) < trunc(sysdate)-15;

BEGIN
 FOR a in c_avaluos_nuevos LOOP
   begin
     delete from pgb_liqavaluo_total where id_avaluo = a.id_avaluo;
     delete from pgb_liqavaluo where id_avaluo = a.id_avaluo;
     delete from pgb_observaciones where id_avaluo = a.id_avaluo;
     delete from pgb_infinmueble where id_avaluo = a.id_avaluo;
     delete from pgb_infconstruccion where id_avaluo = a.id_avaluo;
     delete from pgb_condsalubridad  where id_avaluo = a.id_avaluo;
     delete from pgb_comp_oferta_demanda where id_avaluo = a.id_avaluo;

     delete from pgb_infbarrio where id_avaluo = a.id_avaluo;

     begin
       select id_img_fachada, id_doc_anexos
        INTO var_idimgfachada, var_iddocanexos
        from pgb_anexo_fotografico
       where id_avaluo = a.id_avaluo;

       delete from pgb_anexo_fotografico where id_avaluo = a.id_avaluo;
       delete from archivos where id_archivo = var_idimgfachada;
       delete from archivos where id_archivo = var_iddocanexos;

     exception when no_data_found then
        null;
     end;

     delete from pgb_hist_avaluos where id_avaluo = a.id_avaluo;
     delete from pgb_avaluos where id_avaluo = a.id_avaluo;
     commit;
   exception when others then
      rollback;
      raise_application_error(-20001,'Error nuevo ava '||a.id_avaluo||' - '||sqlerrm);
   end;
 END LOOP;
END;


PROCEDURE sp_elimina_avaluos_sin_anexos is

  cursor c_avaluos_sin_anexos is
   select *
    from pgb_avaluos t
   WHERE t.a_Estadoavaluo = 3
     and trunc(fecha_creacion) < trunc(sysdate)-30
     and not exists
     ( select *
         from pgb_anexo_fotografico g
        where g.id_avaluo = t.id_avaluo
     );

  BEGIN
   FOR a in c_avaluos_sin_anexos LOOP
     begin
       delete from pgb_liqavaluo_total where id_avaluo = a.id_avaluo;
       delete from pgb_liqavaluo where id_avaluo = a.id_avaluo;
       delete from pgb_observaciones where id_avaluo = a.id_avaluo;
       delete from pgb_infinmueble where id_avaluo = a.id_avaluo;
       delete from pgb_infconstruccion where id_avaluo = a.id_avaluo;
       delete from pgb_condsalubridad  where id_avaluo = a.id_avaluo;
       delete from pgb_comp_oferta_demanda where id_avaluo = a.id_avaluo;
       delete from pgb_infbarrio where id_avaluo = a.id_avaluo;
       delete from pgb_hist_avaluos where id_avaluo = a.id_avaluo;
       delete from pgb_avaluos where id_avaluo = a.id_avaluo;
       commit;
     exception when others then
        rollback;
        raise_application_error(-20001,'Error eliminando '||a.id_avaluo||' - '||sqlerrm);
     end;
   END LOOP;
 END;
 
 PROCEDURE sp_elimina_archivos_tmp is
 BEGIN
     IF UPPER(TRIM(TO_CHAR(sysdate,'DAY','nls_date_language = SPANISH'))) = 'LUNES' THEN
      EXECUTE IMMEDIATE 'TRUNCATE TABLE PGB_ARCHIVOS_TMP';
     END IF;
  END;

 PROCEDURE sp_verifica_avaluos is
 BEGIN
   sp_elimina_avaluos_nuevos;
   sp_elimina_avaluos_sin_anexos;
   sp_elimina_archivos_tmp;
 END;

END;
/