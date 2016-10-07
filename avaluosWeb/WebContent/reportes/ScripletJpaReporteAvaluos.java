package reportes;

import java.io.ByteArrayInputStream;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.apache.commons.lang3.time.DateUtils;

import com.segurosbolivar.avaluos.daos.EntityManagerImp;
import com.segurosbolivar.avaluos.entities.Archivo;
import com.segurosbolivar.avaluos.entities.LiquidacionAvaluo;

import net.sf.jasperreports.engine.JRDefaultScriptlet;

/**
 * Clase Scriptlet para retornar dominios  y campos de ubicacion geografica
 * requeridos en el reporte de Avaluos.
 * Esta clase no es llamada directamente por el aplicativo sino por
 * la libreria Jasper Reports al momento de generar la salida del reporte 
 * es llamada en el reportem mediante el siguiente nombre $P{REPORT_SCRIPTLET}.nombreMetodo
 */
public class ScripletJpaReporteAvaluos extends JRDefaultScriptlet {

	/**
	 * Ejecuta un query nativo mediante el Entitymanager de JPA para mostrar su resultado
	 * en el reporte
	 * @param sql Sentencia Sql nativa a ejecutar
	 * @return cadena con el resultado del Query o '_' si no se encuentran resultados
	 * o se genera una excepcion.Esto para impedir que detenga la ejecucion del reporte 
	 */
	public String retornarQueryReporte(String sql)
	{
		
		String retorno="_";
		
		EntityManager em =null;
		try{
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
		em = emf.createEntityManager();

		Query query = em.createNativeQuery(""+sql);			
		
		retorno= (String)query.getSingleResult();
		
    	}
    	catch(Exception ex)
    	{
    		ex.printStackTrace();
    	}finally
    	{
    		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
    		
    		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
    		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
    		
    	}
		return retorno;
	}
	
	/**
	 * Retorna el significado de un dominio desde la tabla de la base de datos cg_ref_codes
	 * para mostrar su resultado en el reporte. 
	 * @param dominio nombre del dominio a consultar
	 * @param valor valor para el cual se debe hallar el domino
	 * @param abreviado true: se debe mostrar el valor abreviado de la tabla cg_ref_codes
	 * o el valor no abreviado: false
	 * @return cadena con el resultado del Query o '_' si no se encuentran resultados
	 * o se genera una excepcion.Esto para impedir que detenga la ejecucion del reporte 
	 */
	public String retornarDominioReporte(String dominio,String valor,boolean abreviado)
	{
		String retorno="_";
		String campo="rv_meaning";
		
		if(abreviado)
			campo="rv_abbreviation";
		
		String query="" +
				" SELECT cg_ref_codes."+campo+""+
				" FROM cg_ref_codes" +
				" where cg_ref_codes.rv_domain='"+dominio+"'" +
				"  AND cg_ref_codes.rv_low_value='"+valor+"'"+
				"";			
		
		return retornarQueryReporte(query);
	}	

	/**
 	* Enumeracion para almacenar las tablas de ubicaciones 
 	*  PGB_CIUDADES,PGB_DEPARTAMENTOS y sus respectivos campos de ID
 	*  en la base de datos 
	*/
	public enum Ubicaciones {
		
		   CIUDADES ("id_Ciudad","PGB_CIUDADES"),
		   DEPARTAMENTOS("id_Departamento","PGB_DEPARTAMENTOS");
		   
		private final String campoIdTabla;
		private final String nombreTabla;
		Ubicaciones(String campo,String tabla) {
        this.campoIdTabla = campo;
        this.nombreTabla = tabla;
		}
		public String campoIdTabla(){
			return campoIdTabla; 
		}
		public String nombreTabla(){
			return nombreTabla; 
		}
	}
	
	/*public String retornarUbicacionGeograficaReporte(String idUbicacion,String Campo,String tipoUbicacion,String tipoUbicacionBusqueda)*/
	/**
 	*  Retorna el valor correspondiente a una ubicacion geografica  desde la BD
 	*  @param idUbicacion Valor a consultar equivalente al id de la tabla de ubicacion
 	*  geografica
 	*  @param campo Campo a consultar para traer de la tabla
 	*  @param tipoUbicacion Definir si se requiere consultar la tabla de "Ciudades" o la
 	*  de  "Departamentos"
	* @return cadena con el resultado del Query o '_' si no se encuentran resultados
	* o se genera una excepcion.Esto para impedir que detenga la ejecucion del reporte  
	*/
	public String retornarUbicacionGeograficaReporte(String idUbicacion,String campo,String tipoUbicacion)
	{
		
		
		String retorno="_";
		//String campo="";
		String tabla="";
		String idCampo="";
		/*String idCampoBusqueda="";
		String tablaBusqueda="";*/

		if(tipoUbicacion.equals("Ciudades"))
		{
			idCampo = Ubicaciones.CIUDADES.campoIdTabla;
			tabla   = Ubicaciones.CIUDADES.nombreTabla;
			
		}else if(tipoUbicacion.equals("Departamentos"))
		{
			idCampo = Ubicaciones.DEPARTAMENTOS.campoIdTabla;
			tabla   = Ubicaciones.DEPARTAMENTOS.nombreTabla;
		}
		else
		{
			return "_";
		}
		
		String query="" +		
				"SELECT "+tabla+"."+campo+""+
				"  FROM "+tabla+""+
				" Where "+tabla+"."+idCampo+" = "+idUbicacion+""+				
				/*" SELECT cg_ref_codes."+campo+""+
				" FROM cg_ref_codes" +
				" where cg_ref_codes.rv_domain='"+dominio+"'" +
				"  AND cg_ref_codes.rv_low_value='"+valor+"'"+*/
				"";			
		
		return retornarQueryReporte(query);
		
	}	

	/**
 	*  Retorna valor del id correspondiente a un codigo Dane determinado para una ubicacion geografica.
 	*  @param codDane Valor del codigo Dane a consultar
 	*  @param tipoUbicacion Definir si se requiere consultar la tabla de "Ciudades" o la
 	*  de "Departamentos"
	* @return cadena con el resultado del Query o '_' si no se encuentran resultados
	* o se genera una excepcion.Esto para impedir que detenga la ejecucion del reporte
	* @deprecadted actualmente se utiliza en el reporte {@link retornaridCodDane(String,String)}  
	*/
	public String retornaridCodAsobancaria(String codDane,String tipoUbicacion)
	{
		
		
		String retorno="_";
		//String campo="";
		String tabla="";
		String idCampo="";
		/*String idCampoBusqueda="";
		String tablaBusqueda="";*/

		if(tipoUbicacion.equals("Ciudades"))
		{
			idCampo = Ubicaciones.CIUDADES.campoIdTabla;
			tabla   = Ubicaciones.CIUDADES.nombreTabla;
			
		}else if(tipoUbicacion.equals("Departamentos"))
		{
			idCampo = Ubicaciones.DEPARTAMENTOS.campoIdTabla;
			tabla   = Ubicaciones.DEPARTAMENTOS.nombreTabla;
		}
		else
		{
			return "_";
		}
		
		String query="" +		
				"SELECT "+tabla+"."+idCampo+""+
				"  FROM "+tabla+""+
				" Where "+tabla+".COD_ASOBANCARIA = "+codDane+""+				
				/*" SELECT cg_ref_codes."+campo+""+
				" FROM cg_ref_codes" +
				" where cg_ref_codes.rv_domain='"+dominio+"'" +
				"  AND cg_ref_codes.rv_low_value='"+valor+"'"+*/
				"";			
		
		//return retornarQueryReporte(query);
		
    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
    	EntityManager em =null;
		
		try {
			
			/*EntityManager em=null;*/
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
			em = emf.createEntityManager();
			Query query1 = em.createNativeQuery(""+query);						
			retorno= ((java.math.BigDecimal)query1.getSingleResult()).toString();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
			//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
		}
		return retorno;
	}	

	/**
 	*  Retorna valor del id correspondiente a un codigo Asobancaria determinado para una ubicacion geografica.
 	*  @param codDane Valor del codigo Dane a consultar
 	*  @param tipoUbicacion Definir si se requiere consultar la tabla de "Ciudades" o la
 	*  de "Departamentos"
	*  @return cadena con el resultado del Query o '_' si no se encuentran resultados
	*  o se genera una excepcion.Esto para impedir que detenga la ejecucion del reporte  
	*/
	public String retornaridCodDane(String codDane,String tipoUbicacion)
	{
		
		
		String retorno="_";
		//String campo="";
		String tabla="";
		String idCampo="";
		/*String idCampoBusqueda="";
		String tablaBusqueda="";*/

		if(tipoUbicacion.equals("Ciudades"))
		{
			idCampo = Ubicaciones.CIUDADES.campoIdTabla;
			tabla   = Ubicaciones.CIUDADES.nombreTabla;
			
		}else if(tipoUbicacion.equals("Departamentos"))
		{
			idCampo = Ubicaciones.DEPARTAMENTOS.campoIdTabla;
			tabla   = Ubicaciones.DEPARTAMENTOS.nombreTabla;
		}
		else
		{
			return "_";
		}
		
		String query="" +		
				"SELECT "+tabla+"."+idCampo+""+
				"  FROM "+tabla+""+
				" Where "+tabla+".COD_DANE = "+codDane+""+				
				/*" SELECT cg_ref_codes."+campo+""+
				" FROM cg_ref_codes" +
				" where cg_ref_codes.rv_domain='"+dominio+"'" +
				"  AND cg_ref_codes.rv_low_value='"+valor+"'"+*/
				"";			
		
		//return retornarQueryReporte(query);
		
    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
    	EntityManager em =null;
		
		try {
			
			/*EntityManager em=null;*/
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
			em = emf.createEntityManager();
			Query query1 = em.createNativeQuery(""+query);						
			retorno= ((java.math.BigDecimal)query1.getSingleResult()).toString();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
			//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
		}
		return retorno;
	}	
	
	/**
 	*  Retorna el valor del domino "MBR" para el campo estadoVias
 	*  @deprecated Ahora para cada campo se usa {@link retornarDominioReporte(String,String,boolean)}  
	*/
	public String estadoVias(String parametro)
	{
		return retornarDominioReporte("MBR",parametro,false);
	}

	/**
	 * recibe el listado de LiquidacionAvaluo perteneciente al Entity Avaluo y si 
	 * su tamaño es inferior a 10 Retorna esta lista con las 10 liquidaciones del avaluo
	 * esto es requerido porque para la visualizacion del reporte simpre se despliegan los
	 * 10 registros aunque no todas tengan valores
	 * @param liquidaciones lista de LiquidacionAvaluo a procesar.
	 * @return lista procesada.
	 */
	public List<LiquidacionAvaluo> llenarLiquidacionesAvaluo(List<LiquidacionAvaluo> liquidaciones)
	{
		//return null;
	    if (liquidaciones.size() < 10) {
			for (int i = liquidaciones.size(); i < 10; i++) {
				liquidaciones.add(new LiquidacionAvaluo());
			}
		}
	    return liquidaciones;
	}
	
	/**
	 * retorna el valor del dominio TIPOIDENTIFICACION  
 	 *  @deprecated Ahora para cada campo se usa {@link retornarDominioReporte(String,String,boolean)}
	 */
	public String tipoDocALetras(String parametro)
	{
		String valor="_";
		EntityManager em =null;
		try{
		System.out.println(parametro);
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
		em = emf.createEntityManager();

		Query query = em.createNativeQuery("" +
				" SELECT cg_ref_codes.rv_abbreviation" +
				/*"," +
				"  cg_ref_codes.rv_meaning" +*/
				" FROM cg_ref_codes" +
				" where cg_ref_codes.rv_domain='TIPOIDENTIFICACION'" +
				"  AND cg_ref_codes.rv_low_value='"+parametro+"'"+
				"");			
		
		valor = (String)query.getSingleResult();
		
		//em.close();
    	}
    	catch(Exception ex)
    	{
    		ex.printStackTrace();
    	}finally
    	{
    		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
    		

    		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
    		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
    		
    	}
		return valor;
	}
	
	/**
	 * Retorna la imagen correspondiente a una empresa de avaluos como 
	 * un objeto ByteArrayInputStream
	 * @param tUsuario numero de identificacion de la empresa de avaluos a 
	 * consultar
	 * @return la imagen registrada como logotipo de la empresa avaluadora como un campo
	 * ByteArrayInputStream o null si no hay resultados.
	 */
	public ByteArrayInputStream retornarImagenAvaluo(String tUsuario)
	{
		//ByteArrayInputStream	
		EntityManager em =null;
		try{
		//System.out.println(valor);
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
		em = emf.createEntityManager();

		String sql=" select e.logo from EmpresasAvaluos e where e.numeroDocumento="+tUsuario;
		
		Query query = em.createQuery(""+sql);			
		 
		Archivo logo= (Archivo)query.getSingleResult();
		
		//logo.getContenidoArchivo() es el byte[]
		ByteArrayInputStream byteArray = new ByteArrayInputStream(logo.getContenidoArchivo());
		
		return byteArray;
		
    	}
    	catch(Exception ex)
    	{
    		ex.printStackTrace();
    	}finally
    	{
    		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}

    		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
    		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
    	}
		return null ;
	}
	
	/**
	 * Retorna la imagen correspondiente a una empresa de avaluos como 
	 * un objeto ByteArrayInputStream
	 * @param tUsuario numero de identificacion de la empresa de avaluos a 
	 * consultar
	 * @return la imagen registrada como logotipo de la empresa avaluadora como un campo
	 * ByteArrayInputStream o null si no hay resultados.
	 */
	public String retornarPerito(String tUsuario)
	{
//		//ByteArrayInputStream	
//		EntityManager em =null;
//		try{
//		//System.out.println(valor);
//		
//		EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
//		em = emf.createEntityManager();
//
//		String sql=" select e.logo from EmpresasAvaluos e where e.numeroDocumento="+tUsuario;
//		
//		Query query = em.createQuery(""+sql);			
//		 
//		Archivo logo= (Archivo)query.getSingleResult();
//		
//		//logo.getContenidoArchivo() es el byte[]
//		ByteArrayInputStream byteArray = new ByteArrayInputStream(logo.getContenidoArchivo());
//		
//		return byteArray;
//		
//    	}
//    	catch(Exception ex)
//    	{
//    		ex.printStackTrace();
//    	}finally
//    	{
//    		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
//    	}
//		return null ;
		
		EntityManager em = EntityManagerImp.getManager();
		String resultado = new String("");
		try {
			Query query = em.createQuery("select e.descEmpresa "+ 
					                     "  from EmpresasAvaluos e, PeritosEmpresa p "+ 
					                     " where e.idEmpresaAvaluo = p.EmpresasAvaluo.idEmpresaAvaluo "+
					                     "   and p.numeroDocumento = :id "+
					                     "   and p.estadoAsociacion = 'A'");		
			/*select e.desc_empresa
			 from PGB_Empresas_Avaluos e, pgb_peritos_empresas p
			where e.id_empresa_avaluo = p.id_empresa_avaluo
			 and p.numero_documento = &id
			 and p.estado_asociacion = 'A'*/
			query.setParameter("id",new BigDecimal(tUsuario));
			resultado = (String) query.getSingleResult();
		} catch (Exception e) {
			System.out.println("Error consultando perito: " + e);
		}finally{	
			em.close();
		}
		return resultado;
		
	}	
	
	/**
	 * Retorna la imagen correspondiente a una empresa de avaluos como 
	 * un objeto ByteArrayInputStream
	 * @param tUsuario numero de identificacion de la empresa de avaluos a 
	 * consultar
	 * @return la imagen registrada como logotipo de la empresa avaluadora como un campo
	 * ByteArrayInputStream o null si no hay resultados.
	 */
	public String retornarRegistroPeritos(String tUsuario,String tiporegistro)
	{
		String valor="_";
		//registroPrivado
		//registroSic
		EntityManager em =null;
		try{
		//System.out.println(valor);
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
		em = emf.createEntityManager();

		String sql=" select e."+tiporegistro+" from EmpresasAvaluos e where e.numeroDocumento="+tUsuario;
		
		Query query = em.createQuery(""+sql);			
		 
		valor = (String)query.getSingleResult();
	
		return valor;
		
    	}
    	catch(Exception ex)
    	{
    		ex.printStackTrace();
    	}finally
    	{
    		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}

    		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
    		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
    	}
		return valor ;
	}

	public Date truncarFecha(Date fecha,int truncado){
		
		return DateUtils.truncate(fecha, Calendar.MONTH);
		
	}
	
	public Date truncarMes(Date fecha){
		
		return truncarFecha(fecha, Calendar.MONTH);
		
	}
	
	public Date truncarAnio(Date fecha){
		
		return truncarFecha(fecha, Calendar.YEAR);
		
	}
	
	/**
	 * Pruebas 
	 */
	public static void main(String[] args) {
		ScripletJpaReporteAvaluos scrl = new ScripletJpaReporteAvaluos();
		//String valor = scrl.tipoDocALetras("23");
		//String valor = scrl.retornarUbicacionGeograficaReporte("1","Ciudad","Ciudades");
		String valor = scrl.retornaridCodDane("11001","Ciudades");
		System.out.println(valor);
		
	}
	
}