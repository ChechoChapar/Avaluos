package terceros.ServiciosTercerosWS_wsdl;

public class ServiciosTercerosWSProxy implements terceros.ServiciosTercerosWS_wsdl.ServiciosTercerosWS_PortType {
  private String _endpoint = null;
  private terceros.ServiciosTercerosWS_wsdl.ServiciosTercerosWS_PortType serviciosTercerosWS_PortType = null;
  
  public ServiciosTercerosWSProxy() {
    _initServiciosTercerosWSProxy();
  }
  
  public ServiciosTercerosWSProxy(String endpoint) {
    _endpoint = endpoint;
    _initServiciosTercerosWSProxy();
  }
  
  private void _initServiciosTercerosWSProxy() {
    try {
      serviciosTercerosWS_PortType = (new terceros.ServiciosTercerosWS_wsdl.ServiciosTercerosWS_ServiceLocator()).getServiciosTercerosWSPort();
      if (serviciosTercerosWS_PortType != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)serviciosTercerosWS_PortType)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)serviciosTercerosWS_PortType)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {serviceException.printStackTrace();}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (serviciosTercerosWS_PortType != null)
      ((javax.xml.rpc.Stub)serviciosTercerosWS_PortType)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public terceros.ServiciosTercerosWS_wsdl.ServiciosTercerosWS_PortType getServiciosTercerosWS_PortType() {
    if (serviciosTercerosWS_PortType == null)
      _initServiciosTercerosWSProxy();
    return serviciosTercerosWS_PortType;
  }
  
  public java.lang.String fncTraerDatosBasicosTercer(java.math.BigDecimal pNumDocumento, java.lang.String pCodTipoDocumento, java.math.BigDecimal pSecuencia, java.lang.String pLogin, java.lang.String pPassword, java.lang.String pUsuarioServicio, java.lang.String pIpConsume) throws java.rmi.RemoteException{
    if (serviciosTercerosWS_PortType == null)
      _initServiciosTercerosWSProxy();
    return serviciosTercerosWS_PortType.fncTraerDatosBasicosTercer(pNumDocumento, pCodTipoDocumento, pSecuencia, pLogin, pPassword, pUsuarioServicio, pIpConsume);
  }
  
  public java.lang.String fncConvertirDireccionDane(java.lang.String pDireccionOrigen, java.lang.String pLogin, java.lang.String pPassword, java.lang.String pUsuarioServicio, java.lang.String pIpConsume) throws java.rmi.RemoteException{
    if (serviciosTercerosWS_PortType == null)
      _initServiciosTercerosWSProxy();
    return serviciosTercerosWS_PortType.fncConvertirDireccionDane(pDireccionOrigen, pLogin, pPassword, pUsuarioServicio, pIpConsume);
  }
  
  public java.lang.String fncTraerDivPoliticasDepto(java.math.BigDecimal pCodazziDepto, java.lang.String pNivel, java.lang.String pUbicacion, java.lang.String pLogin, java.lang.String pPassword, java.lang.String pUsuarioServicio, java.lang.String pIpConsume) throws java.rmi.RemoteException{
    if (serviciosTercerosWS_PortType == null)
      _initServiciosTercerosWSProxy();
    return serviciosTercerosWS_PortType.fncTraerDivPoliticasDepto(pCodazziDepto, pNivel, pUbicacion, pLogin, pPassword, pUsuarioServicio, pIpConsume);
  }
  
  public java.lang.String fncTraerTiposDocumenTercer(java.lang.String pCodigoTipoTercero, java.lang.String pLogin, java.lang.String pPassword, java.lang.String pUsuarioServicio, java.lang.String pIpConsume) throws java.rmi.RemoteException{
    if (serviciosTercerosWS_PortType == null)
      _initServiciosTercerosWSProxy();
    return serviciosTercerosWS_PortType.fncTraerTiposDocumenTercer(pCodigoTipoTercero, pLogin, pPassword, pUsuarioServicio, pIpConsume);
  }
  
  public java.lang.String fncTraerDivPoliticas(java.lang.String pUbicacion, java.lang.String pNivel, java.lang.String pLogin, java.lang.String pPassword, java.lang.String pUsuarioServicio, java.lang.String pIpConsume) throws java.rmi.RemoteException{
    if (serviciosTercerosWS_PortType == null)
      _initServiciosTercerosWSProxy();
    return serviciosTercerosWS_PortType.fncTraerDivPoliticas(pUbicacion, pNivel, pLogin, pPassword, pUsuarioServicio, pIpConsume);
  }
  
  
}