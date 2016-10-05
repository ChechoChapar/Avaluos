package com.segurosbolivar.avaluos.ws;

import java.io.IOException;
import java.rmi.RemoteException;

import javax.xml.rpc.ServiceException;

import com.segurosbolivar.avaluos.util.Util;

import terceros.ServiciosTercerosWS_wsdl.*;
import tratarXML.UtilidadesXML;

/**
 * Cliente para el consumo del webservice de terceros
 * 
 * @author Seguros Bolivar
 * @version 1.0
 */
public class WSTerceros {

    /**
     * Consume en el webservice de terceros,el servicio que convierte una dirección al formato de direcciones del dane 
     * @param direccion dirección a transformar
     * @return Dirección en formato del dane si fue posible transformarla, si no una cadena vacia.
     * @throws RuntimeException
     */
    public String convierteDireccionDane(String direccion) throws RuntimeException {

	String[] resul = null;
	try {
	    ServiciosTercerosWS_ServiceLocator servicio = new ServiciosTercerosWS_ServiceLocator();
	    ServiciosTercerosWS_PortType port = servicio.getServiciosTercerosWSPort();
	    String resultado = "";
	    String servidor = Util.getProperty("dirservidor.weblogic");
	  //resultado = port.fncConvertirDireccionDane(direccion, "40046225", "zxcvbnm", "user", "10.1.0.184");
	    resultado = port.fncConvertirDireccionDane(direccion, "92515768", "92515768", "AVALUOS", servidor);
	    UtilidadesXML xml = new UtilidadesXML();
	    String[] atributos = { "DIRECCION" };
	    resul = xml.sacarAtributosDireccion(resultado, atributos);

	    if (resul == null) {
		throw new RuntimeException("Error en Web Service de Direccion");
	    }
	}
	catch (ServiceException se) {
	    se.printStackTrace();
	    throw new RuntimeException(se);
	}
	catch (RemoteException re) {
	    re.printStackTrace();
	    throw new RuntimeException(re);
	}
	catch(IOException io)
	{ io.printStackTrace();
	}
	return resul[0];

    }

    public static void main(String[] args) {
	WSTerceros d = new WSTerceros();
    }
}
