package com.segurosbolivar.avaluos.servlet;

import java.io.IOException;
import java.util.logging.FileHandler;
import java.util.logging.Logger;
import java.util.logging.Level;
import java.util.logging.SimpleFormatter;
import com.segurosbolivar.avaluos.util.Util;

/**
 * Clase para Log
 */
public abstract class LogClass<E> {

	/** Mecanismo de log */
	protected static final Logger log = Logger.getLogger("LogClass");
	FileHandler fh;
	
	@SuppressWarnings("unchecked")	
	protected LogClass()
	{
		// Configuracion del log
		try {
			fh = new FileHandler(Util.getProperty("log"), true);
			log.addHandler(fh);
			log.setLevel(Level.ALL);
			SimpleFormatter formatter = new SimpleFormatter();
			fh.setFormatter(formatter);
		}
		catch (SecurityException e) {
			e.printStackTrace();
		}
		catch (IOException e) {
			e.printStackTrace();
		}
	}
}