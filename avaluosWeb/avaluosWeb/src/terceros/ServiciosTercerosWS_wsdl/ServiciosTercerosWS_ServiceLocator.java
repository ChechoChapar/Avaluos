/**
 * ServiciosTercerosWS_ServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package terceros.ServiciosTercerosWS_wsdl;

import java.io.IOException;

import com.segurosbolivar.avaluos.util.Util;

/**
 * Clase con el service locator generada por el IDE para el acceso
 * al webservice de terceros. Aqui se encuentran los datos de la conexion (URL)
 */
public class ServiciosTercerosWS_ServiceLocator extends org.apache.axis.client.Service implements terceros.ServiciosTercerosWS_wsdl.ServiciosTercerosWS_Service {

	private java.lang.String ServiciosTercerosWSPort_address;
	
	public ServiciosTercerosWS_ServiceLocator() {
    	try{
    		System.setProperty("javax.net.ssl.trustStore", Util.getProperty("url.keystore"));
    		//System.setProperty("javax.net.ssl.trustStorePassword", Util.getProperty("pass.keystore"));
    		ServiciosTercerosWSPort_address = Util.getProperty("url.webservice.terceros");
        	System.out.println("Dirección URL "+ServiciosTercerosWSPort_address);
        }catch(IOException io)
        {
          io.printStackTrace();	
        }
    }

    public ServiciosTercerosWS_ServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public ServiciosTercerosWS_ServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for ServiciosTercerosWSPort
    //private java.lang.String ServiciosTercerosWSPort_address = "http://10.1.0.184:6010/ServiciosGeneralesTercerosWS/ServiciosTercerosWSPort";

    public java.lang.String getServiciosTercerosWSPortAddress() {
    	return ServiciosTercerosWSPort_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String ServiciosTercerosWSPortWSDDServiceName = "ServiciosTercerosWSPort";

    public java.lang.String getServiciosTercerosWSPortWSDDServiceName() {
        return ServiciosTercerosWSPortWSDDServiceName;
    }

    public void setServiciosTercerosWSPortWSDDServiceName(java.lang.String name) {
        ServiciosTercerosWSPortWSDDServiceName = name;
    }

    public terceros.ServiciosTercerosWS_wsdl.ServiciosTercerosWS_PortType getServiciosTercerosWSPort() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(ServiciosTercerosWSPort_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getServiciosTercerosWSPort(endpoint);
    }

    public terceros.ServiciosTercerosWS_wsdl.ServiciosTercerosWS_PortType getServiciosTercerosWSPort(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            terceros.ServiciosTercerosWS_wsdl.ServiciosTercerosWS_BindingStub _stub = new terceros.ServiciosTercerosWS_wsdl.ServiciosTercerosWS_BindingStub(portAddress, this);
            _stub.setPortName(getServiciosTercerosWSPortWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setServiciosTercerosWSPortEndpointAddress(java.lang.String address) {
        ServiciosTercerosWSPort_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (terceros.ServiciosTercerosWS_wsdl.ServiciosTercerosWS_PortType.class.isAssignableFrom(serviceEndpointInterface)) {
                terceros.ServiciosTercerosWS_wsdl.ServiciosTercerosWS_BindingStub _stub = new terceros.ServiciosTercerosWS_wsdl.ServiciosTercerosWS_BindingStub(new java.net.URL(ServiciosTercerosWSPort_address), this);
                _stub.setPortName(getServiciosTercerosWSPortWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("ServiciosTercerosWSPort".equals(inputPortName)) {
            return getServiciosTercerosWSPort();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://terceros/ServiciosTercerosWS.wsdl", "ServiciosTercerosWS");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://terceros/ServiciosTercerosWS.wsdl", "ServiciosTercerosWSPort"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("ServiciosTercerosWSPort".equals(portName)) {
            setServiciosTercerosWSPortEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
