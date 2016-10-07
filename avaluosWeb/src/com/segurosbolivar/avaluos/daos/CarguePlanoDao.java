package com.segurosbolivar.avaluos.daos;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;

import org.eclipse.persistence.expressions.Expression;
import org.eclipse.persistence.expressions.ExpressionBuilder;
import org.eclipse.persistence.internal.jpa.EntityManagerImpl;
import org.eclipse.persistence.internal.sessions.AbstractSession;
import org.eclipse.persistence.jpa.JpaHelper;
import org.eclipse.persistence.queries.ReadAllQuery;
import org.eclipse.persistence.sessions.Session;
import org.eclipse.persistence.sessions.factories.SessionFactory;
import org.eclipse.persistence.sessions.factories.SessionManager;

import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
import com.segurosbolivar.avaluos.entities.Avaluo;
import com.segurosbolivar.avaluos.entities.EmpresasAvaluos;
import com.segurosbolivar.avaluos.entities.EstructuraArchivoPlano;
import com.segurosbolivar.avaluos.entities.PeritosEmpresa;
import com.segurosbolivar.avaluos.entities.PgbCargueTmp;
import com.segurosbolivar.avaluos.entities.VResumenCargue;
import com.segurosbolivar.avaluos.util.ExcelExportUtil;
import com.segurosbolivar.avaluos.util.ResumenCargue;
import com.segurosbolivar.avaluos.util.Util;

/**
 * Dao para consultar informacion sobre los cargues masivos
 */
public class CarguePlanoDao {
	
	/**
	 * Objetos EntityManager y EntityManagerFactory para la persistencia
	 */
	
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
    private static EntityManager em = emf.createEntityManager();

	 /** Mecanismo de log */
    //private static final Logger log = Logger.getLogger("com.segurosbolivar.avaluos.daos.DominiosDaos");
    //FileHandler fh;
    
    protected static EntityManager getEntityManager() {
		//if(!em.isOpen())	
		//	em = emf.createEntityManager();
	    return em;	
    }
    
    /**
     * Obtiene el numero de referencia para el cargue de un archivo
     * @deprecated ahora se obtiene un numero de batch para todos los archivos
     * y el numero de referencia solo se utiliza en el servlet de cargue masivo
     * @see com.segurosbolivar.avaluos.servlet.MultiUploadServlet
     */
    public BigDecimal obtenerReferenciaCargue()
    {
    	Query query = getEntityManager().createNativeQuery
    	("SELECT SEQ_PGB_REFERENCIA_CARGUE.NEXTVAL FROM DUAL");
    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
    	//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
    	return (BigDecimal)query.getSingleResult();
    	//return (BigDecimal)((List)(query.getResultList().get(0)));    	
    }
    
    /**
     * Obtiene el numero de consecutivo Batch para un grupo de archivos
     */
    public BigDecimal obtenerConsecutivoBatch()
    {
    	Query query = getEntityManager().createNativeQuery
    	("SELECT SEQ_PGB_CONSECUTIVO_BATCH.NEXTVAL FROM DUAL");
    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
    	//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}    	
    	return (BigDecimal)query.getSingleResult();
    	//return (BigDecimal)((List)(query.getResultList().get(0)));
    }    
    
    /**
     * @deprecated no se utiliza; se uttilizo para pruebas previas,el procesamiento del 
     * plano para el cargue se realiza desde 
     * PL/SQL procedimiento PRC_CARGA_AVALUO
     */
    public void cargarAvaluo()
    throws Exception
    {
    	
		int j = 0;   
		String linea = "1|2|2|2|3|2|2|2|1095|1|1|1|41|1||2|3|4||||||1|1|1|1|1|1|1|1|1|1|1|41|1095|41|21|6|23|1|1|1||1|1|1||1|1|1|2|1|1|1|23/05/10 00:00|01/05/10 00:00|0|1|1|0|1|1|1|1|1|1|1|1|1|0|1|0|0|1|1|1|0|1|1|1||0||1|1|1|1|1|0|0|1|0|1|1|1|1|0|1|0|1|1|1|1|0|1|1|1|1|1|1|100||20|10|10||||||1053183,114|1|1|1|1|1|1|1|1|23052010860060060|1|2|1|0|2|1|1|3|860060060|0|0|1|3|0|0|6|0|1|0|0|1|1|6|200000000|2|72|4|0|195000000|150000000||30000000|10000000|10000000||||||189,9005|1500000||1500000|1000000|1000000||||||1|0|1|1|La elaboración de este trabajo, en el que se analiza lo ocurrido con la política de vivienda y el impacto sobre su financiamiento, resultó particularmente compleja en razón a que sobre la misma pesaron una serie de factores que imposibilitan sacar conclusiones definitivas, distintas de las relacionadas con la inestabilidad y complejidad jurídica e institucional que la rodean, las cuales impiden su adecuado y normal funcionamiento. Alrededor de los problemas que dificultan el análisis se destacan|La elaboración de este trabajo, en el que se analiza lo ocurrido con la política de vivienda y el im||15|Colina Campestre||La elaboración de este trabajo, en el que se analiza lo ocurrido con la política de vivienda y el impacto sobre su financiamiento, resultó particularmente compleja en razón a que sobre la misma pesaron una serie de factores que imposibilitan sacar conclusiones definitivas, distintas de las relacionadas con la inestabilidad y complejidad jurídica e institucional que la rodean, las cuales impiden su adecuado y normal funcionamiento. Alrededor de los problemas que dificultan el análisis se destacan|||CL 169 A 56 57 AP 1203|||La elaboración de este trabajo, en el que se analiza lo ocurrido con la política de vivienda y el impacto sobre su financiamiento, resultó particularmente compleja en razón a que sobre la misma pesaron una serie de factores que imposibilitan sacar conclusiones definitivas, distintas de las relacionadas con la inestabilidad y complejidad jurídica e institucional que la rodean, las cuales impiden su adecuado y normal funcionamiento. Alrededor de los problemas que dificultan el análisis se destacan|50S-12345-12345||50S-12345-12345-1||50S-12345-12345-2|||||Palmaria|Constructora Inv. Paralelo|||La elaboración de este trabajo, en el que se analiza lo ocurrido con la política de vivienda y el impacto sobre su financiamiento, resultó particularmente compleja en razón a que sobre la misma pesaron una serie de factores que imposibilitan sacar conclusiones definitivas, distintas de las relacionadas con la inestabilidad y complejidad jurídica e institucional que la rodean, las cuales impiden su adecuado y normal funcionamiento. Alrededor de los problemas que dificultan el análisis se destacan dos aspectos, a cual más de complejos, aunque con distintas implicaciones. En primer término, la dificultad de obtener información oportuna y adecuada respecto del comportamiento sectorial. A causa de ello fue preciso dedicar una enorme disponibilidad de tiempo y paciencia a la obtención de datos y a su organización, de forma que fuese posible inferir conclusiones. Esta situación no deja de sorprender, en primer lugar, por la importancia que parecería que el Ejecutivo le asigna a la vivienda de los estratos de menores ingresos y al desempeño sectorial y, además, porque con una simple lectura de periódicos, revistas o artículos elaborados a nivel internacional, se percibe que uno de los principales indicadores que siguen las autoridades monetarias, financieras y económicas día a día es el comportamiento de los precios y de las transacciones inmobiliarias. En Colombia, la oportunidad y calidad de esa información deja mucho que desear. Fue así como el país cayó en 1998 en una crisis sin precedentes en la que todos los colombianos que poseíamos así fuera un metro de propiedad raíz, perdimos la mitad del patrimonio y vinimos a estar concientes de ello atropellados por las circunstancias. Aún a la fecha no se dispone de estadísticas oportunas que permitan saber qué ocurre en el mercado. En segundo término, y quizás más grave aún, está el desarrollo de los acontecimientos. Tal como éstos se han venido dando la política de vivienda en especial en lo que toca con los aspectos financi|||||||La elaboración de este trabajo, en el que se analiza lo ocurrido con la política de vivienda y el impacto sobre su financiamiento, resultó particularmente compleja en razón a que sobre la misma pesaron una serie de factores que imposibilitan sacar conclusiones definitivas, distintas de las relacionadas con la inestabilidad y complejidad jurídica e institucional que la rodean, las cuales impiden su adecuado y normal funcionamiento. Alrededor de los problemas que dificultan el análisis se destacan|||2|10067442|1|3410077|3008213451|prueba@gmail.com||1|2|1|2|1|0|2|1|1||2|1||2|3|2|1|Area Construida|Area del Lote|||||||||0"; 
		String [] campos = linea.split("|");   

    	Query query = getEntityManager().createQuery("Select p from EstructuraArchivoPlano p order by 1");
		List<EstructuraArchivoPlano> list = query.getResultList();
		
		Iterator it  = list.iterator();
		
		Avaluo avaluo = new Avaluo();
		
		
		while(it.hasNext()) {
			EstructuraArchivoPlano b = (EstructuraArchivoPlano)it.next();
			int posicionLista = b.getConsecutivoPlano().intValue();
			String datos = campos[posicionLista-1];			
			
			if (true)
//			(validaLongitud(datos,b)==true && 
//			  validaTipo(datos,b)==true &&
//			  validaDominio(datos,b)==true
//			)
			{
			 String column = Avaluo.class.getDeclaredFields()[29].getAnnotation(javax.persistence.Column.class).name();
			 EntityManagerImpl impl = (EntityManagerImpl)em; 
			 impl.unwrap(EntityManagerImpl.class).getServerSession().getDescriptor(Avaluo.class).getMappingForAttributeName("idUsuario").getField().getName();
			 impl.unwrap(EntityManagerImpl.class).getServerSession().getDescriptor(Avaluo.class).getMappings().get(1).getFields().get(0).getName();
			}
			
		}
    	//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
    	//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
    }

    /**
     * @deprecated no se utiliza; se uttilizo para pruebas previas,el procesamiento del 
     * plano para el cargue se realiza desde 
     * PL/SQL procedimiento PRC_CARGA_AVALUO
     */
    public boolean validaTipo(String datos,EstructuraArchivoPlano estr)
    throws Exception
    {
    	String tipoDato = estr.getTipoDato();
    	if (tipoDato.contains("NUMBER"))
    	{
    		BigDecimal bd = new BigDecimal(datos);
    	}
    	if (tipoDato.contains("DATE"))
    	{
    		DateFormat format = new SimpleDateFormat(estr.getFormato());
            format.parse(datos);    		
    	}    	
    	if (tipoDato.contains("DATE"))
    	{
    		DateFormat format = new SimpleDateFormat(estr.getFormato());
            format.parse(datos);    		
    	}
    	return true;
    }
    
    /**
     * @deprecated no se utiliza; se uttilizo para pruebas previas,el procesamiento del 
     * plano para el cargue se realiza desde 
     * PL/SQL procedimiento PRC_CARGA_AVALUO
     */
    public boolean validaDominio(String datos,EstructuraArchivoPlano estr)
    {
    	//Entitymanager tabla CG_REF_CODES
    	return true;
    } 

    /**
     * @deprecated no se utiliza; el resumen de un plano se trae por 
     * su consecutivo batch
     * {@link buscarResumenPlanoByConsecutivoBatch(BigDecimal)} 
     */
	@SuppressWarnings("unchecked")
    public List<VResumenCargue> buscarResumenPlano(){

		List<VResumenCargue> lista = null;	
		EntityManager em = emf.createEntityManager();

		try {

//			fh = new FileHandler(Util.getProperty("log"), true);
//		    log.addHandler(fh);
//		    log.setLevel(Level.ALL);
//		    SimpleFormatter formatter = new SimpleFormatter();
//		    fh.setFormatter(formatter);
			
			StringBuilder sql = new StringBuilder("SELECT res FROM VResumenCargue res");

			Query query = em.createQuery(sql.toString());
			lista = query.getResultList();

		} catch (Exception e) {
			//log.log(Level.SEVERE, "--> Excepción Resumen Plano ", e);
			System.out.println("Se presento error en el metodo buscarResumenPlano: " + e.getMessage());
			return lista;
		}
		finally
		{ em.close();
		}
		return lista;		
	}
	
    /**
     * trae el resumen de un cargue de archvos segun su consecutivo Batch
     */
	@SuppressWarnings("unchecked")
    public List<VResumenCargue> buscarResumenPlanoByConsecutivoBatch(BigDecimal consecutvoBatch){

		List<VResumenCargue> lista = null;	
		EntityManager em = emf.createEntityManager();

		try {

//			fh = new FileHandler(Util.getProperty("log"), true);
//		    log.addHandler(fh);
//		    log.setLevel(Level.ALL);
//		    SimpleFormatter formatter = new SimpleFormatter();
//		    fh.setFormatter(formatter);
			
			StringBuilder sql = new StringBuilder("SELECT res FROM VResumenCargue res where res.consecutivoBatch="+consecutvoBatch.toString());

			Query query = em.createQuery(sql.toString());
			lista = query.getResultList();
		
			/*VResumenCargue Criterio = new VResumenCargue();
			Criterio.setConsecutivoBatch(new BigDecimal("1961"));
		
			//Session session = SessionManager.getManager().getSession(ConstantesAvaluos.NOMBRE_SESSION_JPA);
			//Session session = SessionManager.getManager().getDefaultSession();
			
			ReadAllQuery query = new ReadAllQuery(VResumenCargue.class);
			query.setSession((AbstractSession) session);
			query.setExampleObject(Criterio);
			System.out.println(query.getEJBQLString());
			System.out.println(query.getJPQLString());
			System.out.println(query.getSQLString());
			//System.out.println(query.getSQLStatement().toString());
			lista = (List) session.executeQuery(query);
			Query queryJPA = JpaHelper.createQuery(query, em);
			lista = queryJPA.getResultList();
			*/
			
		} catch (Exception e) {
			//log.log(Level.SEVERE, "--> Excepción Resumen Plano ", e);
			e.printStackTrace();
			System.out.println("Se presento error en el metodo buscarResumenPlano: " + e.getMessage());
			return lista;
		}
		finally
		{ em.close();
		}
		return lista;		
	}
	
    /**
     * trae el resumen de un cargue de archvos segun su consecutivo Batch
     */
	@SuppressWarnings("unchecked")
    public List<VResumenCargue> buscarResumenPlanoByCriterio(VResumenCargue Criterio){

		List<VResumenCargue> lista = null;	
		EntityManager em = emf.createEntityManager();

		try {

//			fh = new FileHandler(Util.getProperty("log"), true);
//		    log.addHandler(fh);
//		    log.setLevel(Level.ALL);
//		    SimpleFormatter formatter = new SimpleFormatter();
//		    fh.setFormatter(formatter);
			
			//StringBuilder sql = new StringBuilder("");/*new StringBuilder("SELECT res FROM VResumenCargue res where res.consecutivoBatch="+consecutvoBatch.toString());*/
			//Criterio.*/

			//EntityManager em = ...
			//CriteriaBuilder cb = ((EntityManagerImpl) em).getCriteriaBuilder();
			
			//CriteriaQuery<VResumenCargue> cq = cb.createQuery(VResumenCargue.class);
			//cq.where(((Object) cb).qbe(cq.from(ResumenCargue.class), Criterio));

			//lista = em.createQuery( (cb).getResultList();
			
			/*Criterio = new VResumenCargue();
			Criterio.setConsecutivoBatch(new BigDecimal("1961"));*/
			
			if(Criterio==null)
				throw new Exception("El criterio viene vacio");
			
			//Session session = SessionManager.getManager().getSession(ConstantesAvaluos.NOMBRE_SESSION_JPA);
			//Session session = SessionManager.getManager().getDefaultSession();
			
			//ReadAllQuery query = new ReadAllQuery();
			ReadAllQuery query = new ReadAllQuery(VResumenCargue.class);
			query.setExampleObject(Criterio);
			
			ExpressionBuilder emp = query.getExpressionBuilder();
			Expression peritoExpression = emp.get("tipoCargue").equal(ConstantesAvaluos.TIPO_CARGUE_CARGUE);
			
			query.setSelectionCriteria(peritoExpression);
			
			
			Query queryJPA = JpaHelper.createQuery(query, em); 			
			//lista = (List) session.executeQuery(query);
			lista = queryJPA.getResultList();
			
			//Query query1=query.getJPQLString();						
			/*Query query = em.createQuery(sql.toString());
			lista = query.getResultList();*/

		} catch (Exception e) {
			//log.log(Level.SEVERE, "--> Excepción Resumen Plano ", e);
			System.out.println("Se presento error en el metodo buscarResumenPlano: " + e.getMessage());
			return lista;
		}
		finally
		{ em.close();
		}
		return lista;		
	}
	
    /**
     * trae el resumen de un cargue de archvos segun su consecutivo Batch
     */
	@SuppressWarnings("unchecked")
    public List<VResumenCargue> buscarResumenPlanoPeritoByCriterio(VResumenCargue Criterio,EmpresasAvaluos empresasAvaluos){

		List<VResumenCargue> lista = null;	
		EntityManager em = emf.createEntityManager();

		try {

//			fh = new FileHandler(Util.getProperty("log"), true);
//		    log.addHandler(fh);
//		    log.setLevel(Level.ALL);
//		    SimpleFormatter formatter = new SimpleFormatter();
//		    fh.setFormatter(formatter);
			
			//StringBuilder sql = new StringBuilder("");/*new StringBuilder("SELECT res FROM VResumenCargue res where res.consecutivoBatch="+consecutvoBatch.toString());*/
			//Criterio.*/

			//EntityManager em = ...
			//CriteriaBuilder cb = ((EntityManagerImpl) em).getCriteriaBuilder();
			
			//CriteriaQuery<VResumenCargue> cq = cb.createQuery(VResumenCargue.class);
			//cq.where(((Object) cb).qbe(cq.from(ResumenCargue.class), Criterio));

			//lista = em.createQuery( (cb).getResultList();
			
			/*Criterio = new VResumenCargue();
			Criterio.setConsecutivoBatch(new BigDecimal("1961"));*/
			
			if(Criterio==null /*|| empresasAvaluos==null*/ )
				throw new Exception("El criterio viene vacio");
			
			//Session session = SessionManager.getManager().getSession(ConstantesAvaluos.NOMBRE_SESSION_JPA);
			//Session session = SessionManager.getManager().getDefaultSession();
			
			//ReadAllQuery query = new ReadAllQuery();
			ReadAllQuery query = new ReadAllQuery(VResumenCargue.class);
			query.setExampleObject(Criterio);
			ExpressionBuilder emp = query.getExpressionBuilder();
			
			Expression peritoExpression = emp.get("tipoCargue").equal(ConstantesAvaluos.TIPO_CARGUE_CARGUE);						

			query.setSelectionCriteria(peritoExpression);
			
			Expression perfilExpression = null;				
			
			StringBuffer sql = new StringBuffer();

			try {
				StringBuffer sqlEmpresa = new StringBuffer(
						"SELECT p FROM PeritosEmpresa p WHERE p.estadoAsociacion ='A' AND p.numeroDocumento = ");
				sqlEmpresa.append(empresasAvaluos.getNumeroDocumento());
				List<PeritosEmpresa> listPerito = em.createQuery(
						sqlEmpresa.toString()).getResultList();

				if ((listPerito == null) || (listPerito.isEmpty())) {
					//inmueble.getAvaluo().setTUsuario("''");
					/*perfilExpression = emp.get("usuarioTransaccion").equal(ConstantesAvaluos.NULO);
					query.setSelectionCriteria(perfilExpression);*/
				} else if ((listPerito.get(0).getEmpresasAvaluo() != null)
						&& (listPerito.get(0).getEmpresasAvaluo()
								.getNumeroDocumento() != null)) {
					perfilExpression = emp.get("empresaAvaluos").equal(listPerito.get(0).getEmpresasAvaluo().getNumeroDocumento().toString());
					
					/*query.setSelectionCriteria(perfilExpression);*/
					/*String[] peritos = null;
					if (!listPerito.isEmpty()) {
						peritos = new String[listPerito.size()];					
						for(int i=0; i< listPerito.size(); i++) {
				    		//System.out.println(listPerito.get(i));
							//peritos[i]=listPerito.get(i).getEmpresasAvaluo().getNumeroDocumento().toString();
							peritos[i]=listPerito.get(i).getNumeroDocumento().toString();
				    	}
					}
					perfilExpression = emp.get("usuarioTransaccion").in(peritos);*/
					query.setSelectionCriteria(perfilExpression);
					
				}
			} catch (Exception e) {
				//log.log(Level.SEVERE, "[ERROR]", e);
				System.out.println("Se presento error buscando Perito asociado: " + e.getMessage());
				//throw new Exception(ConstantesAvaluos.ERROR);
				e.printStackTrace();
			}	
			
			//perfilExpression = emp.get("usuarioTransaccion").equal(ConstantesAvaluos.TIPO_CARGUE_CARGUE);
			
			//query.setSelectionCriteria(perfilExpression);
			query.setSelectionCriteria(perfilExpression);

			Query queryJPA = JpaHelper.createQuery(query, em); 			
			//lista = (List) session.executeQuery(query);
			lista = queryJPA.getResultList();
			
			//Query query1=query.getJPQLString();						
			/*Query query = em.createQuery(sql.toString());
			lista = query.getResultList();*/

		} catch (Exception e) {
			//log.log(Level.SEVERE, "--> Excepción Resumen Plano ", e);
			System.out.println("Se presento error en el metodo buscarResumenPlano: " + e.getMessage());
			e.printStackTrace();
			return lista;
		}
		finally
		{ em.close();
		}
		return lista;		
	}
	
    
    /**
     * @deprecated no se utiliza; el resumen de un plano se trae por 
     *  una vista VResumenCargue 
     */
    @SuppressWarnings("unchecked")
    public List<ResumenCargue> buscarResumenCargue(){

		List<ResumenCargue> lista = null;	
		EntityManager em = emf.createEntityManager();

		try {

//			fh = new FileHandler(Util.getProperty("log"), true);
//		    log.addHandler(fh);
//		    log.setLevel(Level.ALL);
//		    SimpleFormatter formatter = new SimpleFormatter();
//		    fh.setFormatter(formatter);
			
			StringBuilder sql = new StringBuilder("" +
				"SELECT 										     										 "+
				"   DISTINCT PGB_CARGUE_TMP.NUMERO_REF_CARGUE, 						   						 "+
				"    PGB_CARGUE_TMP.TIPO_CARGUE, 							     							 "+
				"    PGB_CARGUE_TMP.FECHA_TRANSACCION, 							     						 "+
				"       (SELECT  COUNT(CONSECUTIVO_TMP)  						     						 "+
				"          FROM PGB_CARGUE_TMP TOTAL 							     						 "+
				"         Where TOTAL.NUMERO_REF_CARGUE = PGB_CARGUE_TMP.NUMERO_REF_CARGUE) TOTAL, 	     	 "+
				"       (SELECT  COUNT(ESTADO_CARGUE) 							     						 "+
				"          FROM PGB_CARGUE_TMP APLICADOS 						     						 "+
				"         Where ((APLICADOS.ESTADO_CARGUE = 'APLICADO')) 				     				 "+
				"           AND APLICADOS.NUMERO_REF_CARGUE = PGB_CARGUE_TMP.NUMERO_REF_CARGUE) APLICADOS,   "+
				"       (SELECT  COUNT(ESTADO_CARGUE) 							  	     					 "+
				"          FROM PGB_CARGUE_TMP RECHAZADOS 						     						 "+
				"         Where ((RECHAZADOS.ESTADO_CARGUE = 'RECHAZADO'))  				     			 "+
				"           AND RECHAZADOS.NUMERO_REF_CARGUE = PGB_CARGUE_TMP.NUMERO_REF_CARGUE) RECHAZADOS, "+
				"       (SELECT  COUNT(ESTADO_CARGUE) 							     						 "+
				"          FROM PGB_CARGUE_TMP SIN_ESTADO 						     						 "+
				"         Where ((SIN_ESTADO.ESTADO_CARGUE = 'CARGADO'))  					     			 "+
				"           AND SIN_ESTADO.NUMERO_REF_CARGUE = PGB_CARGUE_TMP.NUMERO_REF_CARGUE) SIN_ESTADO  "+
				"FROM PGB_CARGUE_TMP									     								 "+
				"order by PGB_CARGUE_TMP.NUMERO_REF_CARGUE						     						 "+
				"");

			Query query = em.createNativeQuery(sql.toString());
			lista = query.getResultList();

		} catch (Exception e) {
			//log.log(Level.SEVERE, "--> Excepción Resumen Cargue ", e);
			System.out.println("Se presento error en el metodo buscarResumenCargue: " + e.getMessage());
			return lista;
		}
		finally
		{ em.close();
		}
		return lista;		
	}
    
    /**
     * Trae el detalle del log para cada linea de un plano segun su referencia de cargue 
     */
    @SuppressWarnings("unchecked")
	public List<PgbCargueTmp> buscarLogCargue(BigDecimal referencia){

		List<PgbCargueTmp> lista = null;	
		EntityManager em = emf.createEntityManager();

		try {

//			fh = new FileHandler(Util.getProperty("log"), true);
//		    log.addHandler(fh);
//		    log.setLevel(Level.ALL);
//		    SimpleFormatter formatter = new SimpleFormatter();
//		    fh.setFormatter(formatter);
			
			StringBuilder sql = new StringBuilder("select c from  PgbCargueTmp c where c.numeroRefCargue="+referencia.toString()+" order by c.lineaPlano");

			Query query = em.createQuery(sql.toString());
			query.setHint("eclipselink.refresh", "true");
			lista = query.getResultList();

		} catch (Exception e) {
			//log.log(Level.SEVERE, "--> Excepción Log Cargue ", e);
			System.out.println("Se presento error en el metodo buscarLogCargue: " + e.getMessage());
			return lista;
		}
		finally
		{ em.close();
		}
		return lista;
	} 

    
    /**
     * Trae el detalle del log para cada linea de un plano segun su referencia de cargue 
     */
    @SuppressWarnings("unchecked")
	public List<PgbCargueTmp> buscarLogCarguePorCriterio(BigDecimal referencia,PgbCargueTmp Criterio){

		List<PgbCargueTmp> lista = null;	
		EntityManager em = emf.createEntityManager();

		try {

//			fh = new FileHandler(Util.getProperty("log"), true);
//		    log.addHandler(fh);
//		    log.setLevel(Level.ALL);
//		    SimpleFormatter formatter = new SimpleFormatter();
//		    fh.setFormatter(formatter);
			
			/*
			StringBuilder sql = new StringBuilder("select c from  PgbCargueTmp c where c.numeroRefCargue="+referencia.toString()+" order by c.lineaPlano");

			Query query = em.createQuery(sql.toString());
			query.setHint("eclipselink.refresh", "true");
			lista = query.getResultList();*/
			
			/*if(Criterio==null )
				throw new Exception("El criterio viene vacio");*/
			
			//Session session = SessionManager.getManager().getSession(ConstantesAvaluos.NOMBRE_SESSION_JPA);
			//Session session = SessionManager.getManager().getDefaultSession();
			
			ReadAllQuery query = new ReadAllQuery(PgbCargueTmp.class);
			query.setExampleObject(Criterio);
			ExpressionBuilder emp = query.getExpressionBuilder();
			Expression referenciaExpression = emp.get("numeroRefCargue").equal(referencia);
			query.setSelectionCriteria(referenciaExpression);
			Query queryJPA = JpaHelper.createQuery(query, em); 			
			//lista = (List) session.executeQuery(query);
			lista = queryJPA.getResultList();

		} catch (Exception e) {
			//log.log(Level.SEVERE, "--> Excepción Log Cargue ", e);
			System.out.println("Se presento error en el metodo buscarLogCargue: " + e.getMessage());
			return lista;
		}
		finally
		{ em.close();
		}
		return lista;
	} 
    
    
    /**
     * pruebas 
     */
    public static void main(String args[])
    {
    	CarguePlanoDao dao = new CarguePlanoDao();    	
    	try {
			dao.cargarAvaluo();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
}
