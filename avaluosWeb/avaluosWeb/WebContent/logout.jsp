<%
/***
* pagina jsp llamada asincrinicamente al cerrar la ventana de avaluos para invalidar la session
* FIXME: Invalida la sesion jsp pero el acelerador de LDAP posee su propia session que no se invalida
* con este comando
*/
if(session!=null)
{
session.invalidate();
session=null;
}
%>