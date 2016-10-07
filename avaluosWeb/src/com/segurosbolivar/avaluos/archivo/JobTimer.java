package com.segurosbolivar.avaluos.archivo;

import java.util.Date;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.quartz.StatefulJob;

/**
 * Clase que ejecuta, mediante el servicio TimerService, la tarea que permite generar 
 * el achivo que se debe enviar a Asobancaria CIFIN
 * 
 * @author Seguros Bolivar
 * @version 1.0
 */
public class JobTimer implements StatefulJob/*Job*/ {

    /**
     * Ejecuta el servicio de generación del archivo para Asobacaria CIFIN
     */
    public void execute(JobExecutionContext context) throws JobExecutionException {
	    String jobName = context.getJobDetail().getFullName();
	    ArchivoService  archivoService = new ArchivoService();
	    archivoService.setUsuarioTransaccion("AVALUOS");
	    //archivoService.getAvaluos(null);
	    System.out.println("Usuario Automatico "+System.getProperty("user.name"));
	    System.out.println("Directorio Job "+ System.getProperty("user.dir"));
	    archivoService.getAvaluos(new Date());
	}
}
