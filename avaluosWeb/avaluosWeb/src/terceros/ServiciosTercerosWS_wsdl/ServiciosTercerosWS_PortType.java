/**
 * ServiciosTercerosWS_PortType.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package terceros.ServiciosTercerosWS_wsdl;

public interface ServiciosTercerosWS_PortType extends java.rmi.Remote {
    public java.lang.String fncTraerDatosBasicosTercer(java.math.BigDecimal pNumDocumento, java.lang.String pCodTipoDocumento, java.math.BigDecimal pSecuencia, java.lang.String pLogin, java.lang.String pPassword, java.lang.String pUsuarioServicio, java.lang.String pIpConsume) throws java.rmi.RemoteException;
    public java.lang.String fncConvertirDireccionDane(java.lang.String pDireccionOrigen, java.lang.String pLogin, java.lang.String pPassword, java.lang.String pUsuarioServicio, java.lang.String pIpConsume) throws java.rmi.RemoteException;
    public java.lang.String fncTraerDivPoliticasDepto(java.math.BigDecimal pCodazziDepto, java.lang.String pNivel, java.lang.String pUbicacion, java.lang.String pLogin, java.lang.String pPassword, java.lang.String pUsuarioServicio, java.lang.String pIpConsume) throws java.rmi.RemoteException;
    public java.lang.String fncTraerTiposDocumenTercer(java.lang.String pCodigoTipoTercero, java.lang.String pLogin, java.lang.String pPassword, java.lang.String pUsuarioServicio, java.lang.String pIpConsume) throws java.rmi.RemoteException;
    public java.lang.String fncTraerDivPoliticas(java.lang.String pUbicacion, java.lang.String pNivel, java.lang.String pLogin, java.lang.String pPassword, java.lang.String pUsuarioServicio, java.lang.String pIpConsume) throws java.rmi.RemoteException;
}
