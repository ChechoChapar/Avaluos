/**
 * 
 */
package com.segurosbolivar.avaluos.util;

import java.text.ParseException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.quartz.CronTrigger;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.SchedulerFactory;
import org.quartz.SimpleTrigger;
import org.quartz.Trigger;
import org.quartz.TriggerUtils;
import org.quartz.impl.StdSchedulerFactory;

import com.segurosbolivar.avaluos.archivo.JobTimer;
import com.segurosbolivar.avaluos.entities.HorasCorteArchivo;
import com.segurosbolivar.avaluos.servlet.TimerServlet;

/**
 * Configuración y ejecución de servicios temporizados
 * 
 * @author Seguros Bolivar
 * @version 1.0
 */
public class TimerService {

    /**
     * Configura y arranca un grupo de tareas temporizadas, 
     * el nombre de la tarea es job + un secuencial y del grupo de tareas es group1.
     * @param horasCorteList Lista con cada una de las horas, en formato horas minutos, 
     * a las cuales se debe ejecutar la tarea.
     * @throws RuntimeException
     */
    public void startTimer(List<HorasCorteArchivo> horasCorteList) throws RuntimeException/* ,ClassNotFoundException */{
	try {
				
	    String minutos = null;
	    String horas = null;
	    String cronExpression = null;
	    int i = 0;

	    SchedulerFactory sf = new StdSchedulerFactory();
	    Scheduler sched = sf.getScheduler();
	    
	    sched.shutdown();
	    
	    sched = sf.getScheduler();
	    
	    //Se obtienen los jobs actuales que se estan ejecutando en el servidor
	    //para eliminarlos y refrescarlos
	    sched.getTriggerNames("group1");
	    String[] trg = sched.getTriggerNames("group1");
	    String[] jb = sched.getJobNames("group1");

	    for (String job : jb) {
		sched.deleteJob(job, "group1");
	    }

	    Iterator<HorasCorteArchivo> it = horasCorteList.iterator();

	    while (it.hasNext()) {
		HorasCorteArchivo hora = new HorasCorteArchivo();
		Object horalista = it.next();
		ClassLoader loader1 = hora.getClass().getClassLoader();
		ClassLoader loader2 = horalista.getClass().getClassLoader();

		hora = (HorasCorteArchivo) horalista;

		minutos = hora.getMinutosCorte().toString();
		horas = hora.getHoraCorte().toString();
		
		/*
		Las expresiones del cron de Quartz se componen de 7 campos en los cuales se puede especificar valores fijos o subexpresiones (rangos, intervalos) 

		1.Segundos. Acepta números enteros del 0 al 59.
		2.Minutos. Acepta números enteros del 0 al 59.
		3.Horas. Acepta números enteros del 0 al 23.
		4.Días del mes. Acepta números enteros del 0 al 31.
		5.Meses. Acepta números enteros del 0 al 11 o las cadenas JAN, FEB, MAR, APR, MAY, JUN, JUL, AUG, SEP, OCT, NOV y DEC.
		6.Días de la semana. Acepta números enteros del 1 al 7 o las cadenas SUN, MON, TUE, WED, THU, FRI y SAT
		7.Años (opcional)

		Ejemplo:
		 30 30 15 15 3 MON 2010
		 
		 MON - FRI Lunes a Viernes
		 2   - 6   Lunes a Viernes 
		 
		 El caracter * es usado para especificar todos los valores.  
         El caracter ? permitido para día del mes o día de la semana. Es usado para un valor no específico
		*/
		
		cronExpression = "0 " + minutos + " " + horas + " ? * * *";
		System.out.println("Expresion Quartz: "+cronExpression);
		i++;

		//Aquí se define la tarea que se va a realizar
		JobDetail job = new JobDetail("job" + i, "group1", JobTimer.class);
		CronTrigger trigger = new CronTrigger("trigger" + i, "group1", "job" + i, "group1", cronExpression);

		sched.scheduleJob(job, trigger);
		sched.start();
		//sched.shutdown()
	    }

	}
	catch (SchedulerException e) {
	    e.printStackTrace();
	    throw new RuntimeException(e);
	}
	catch (ParseException e) {
	    e.printStackTrace();
	    throw new RuntimeException(e);
	}

    }
}
