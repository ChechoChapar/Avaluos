package com.segurosbolivar.avaluos.servlet;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.persistence.config.PersistenceUnitProperties;
import org.eclipse.persistence.jpa.PersistenceProvider;
//import org.eclipse.persistence.jpa.osgi.PersistenceProvider;

import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
import com.segurosbolivar.avaluos.entities.Archivo;
import com.segurosbolivar.avaluos.entities.HorasCorteArchivo;
import com.segurosbolivar.avaluos.util.TimerService;
import com.segurosbolivar.avaluos.util.Util;

/**
 * Servlet para iniciar el servicio de temporizado y creación de directorio temporal.
 */
public class TimerServlet extends HttpServlet implements Servlet {

    /**
     * Códio de serialización de la clase
     */
    private static final long serialVersionUID = 1L;

    private ServletConfig config;

    /**
     * Constructor por defecto. crea el directorio temporal tmp si es que este no existe, inicializa el servicio de temporización de quartz,
     * En las líenas comentadas se debe capturar el log de la aplicación con los mensajes entre comillas y el nivel de log indicado
     */
    public TimerServlet() {
	super();

	try {
	    File dir = new File(Util.getProperty("domain") + Util.getProperty("tmp"));
	    if (!dir.exists()) {
		if (dir.mkdir()) {
		    // log.log(Level.INFO, "El directorio tmp ha sido creado exitosamente");
		}
		else {
		    // log.log(Level.WARNING, "El directorio tmp no pudo ser creado, esto puede afectar el normal desempeño del aplicativo");
		}
	    }
	    else {
		// log.log(Level.INFO, "El directorio tmp ya existe");
	    }
	}
	catch (IOException e) {
	    // log.log(Level.SEVERE, "[ERROR] El directorio tmp no pudo ser creado, esto puede afectar el normal desempeño del aplicativo", e);
	}
    }

    /**
     * Recupera de la BD las horas de corte parametrizadas e inicia
     * el servicio de temporizado con los valores recuperados.
     */
    public void iniciaHorasCorte() {
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
	EntityManager em = emf.createEntityManager();

	// Consulta las horas de corte
	StringBuffer sql = new StringBuffer();
	sql.append("SELECT horas FROM HorasCorteArchivo horas WHERE horas.estado = :estado");
	Query query = em.createQuery(sql.toString()).setParameter("estado", ConstantesAvaluos.ESTADO_HORAS_CORTE_ACTIVA);
	List<HorasCorteArchivo> horasCorteList = query.getResultList();

	// Instancia el servicio de temporizado
	TimerService t = new TimerService();
	t.startTimer(horasCorteList);
	
	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
//	try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
	
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    /**
     * @see HttpServlet#init()
     */
    public void init() throws ServletException {
	super.init();
	iniciaHorasCorte();
    }

    /**
     * @see HttpServlet#init(ServletConfig config)
     */
    public void init(ServletConfig config) throws ServletException {
	this.config = config;
	iniciaHorasCorte();
    }

}
