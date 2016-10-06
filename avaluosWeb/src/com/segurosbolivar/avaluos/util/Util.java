/**
 * 
 */
package com.segurosbolivar.avaluos.util;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;
import java.util.logging.FileHandler;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.persistence.EntityManager;
import javax.sql.DataSource;

import org.eclipse.persistence.internal.databaseaccess.Accessor;
import org.eclipse.persistence.internal.jpa.EntityManagerImpl;
import org.eclipse.persistence.jpa.JpaEntityManager;
import org.eclipse.persistence.sessions.Login;
import org.eclipse.persistence.sessions.UnitOfWork;
import org.eclipse.persistence.sessions.server.ServerSession;

//import weblogic.jdbc.wrapper.Blob;

import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;

/**
 * Esta clase contiene diversos métodos utilitarios transversales a todos los paquetes.
 * @author Seguros Bolivar
 * @version 1.0
 * 
 */
public final class Util {

    /**
     * Objeto en el que se creará la instancia única de la clase
     */
    private static Util INSTANCE = null;

    /**
     * Constructor privado para que no se genere un constructor por defecto
     */
    private Util() {

    }

    /**
     * Crea la instancia única de la clase
     */
    private synchronized static void createInstance() {
	if (INSTANCE == null) {
	    INSTANCE = new Util();
	}
    }

    /**
     * Recupera la isntancia única de la clase
     * @return una instancia de la clase Util
     */
    public static Util getInstance() {
	if (INSTANCE == null)
	    createInstance();
	return INSTANCE;
    }

    /**
     * Evita que el objeto se pueda clonar para mantener la coherencia del patrón singleton
     */
    public Object clone() throws CloneNotSupportedException {
	throw new CloneNotSupportedException();
    }

    public static void ManejaExcepciones(Exception e) throws Exception
    {
     	
	  if(e instanceof javax.persistence.RollbackException || e instanceof org.eclipse.persistence.exceptions.DatabaseException || e instanceof java.lang.ClassCastException)
	  {
		String errMsg = e.getMessage();
		if(errMsg.contains("ORA-00001") && errMsg.contains("viol")) //Unique constraint  
		{  
			throw new Exception(ConstantesAvaluos.ORA_00001_UK+" "/*+e.getMessage().toString()*/ ,e);
		}else if(errMsg.contains("ORA-01400"))                      ///Cannot insert null
		{  
				throw new Exception(ConstantesAvaluos.ORA_01400_INS_NULL ,e);
		}else if(errMsg.contains("ORA-03113")||errMsg.contains("ORA-00028")||errMsg.contains("ORA-00031")||errMsg.contains("ORA-01034")||errMsg.contains("12528")||errMsg.contains("ORA-12514"))                      
		{  
				throw new Exception(ConstantesAvaluos.ORA_CONN+""/*+e.getMessage().toString()*/ ,e);
		}
		//ORA-03113: end-of-file on communication channel
		//ORA-00028: your session has been killed
		//ORA-00031: session marked for kill
		//ORA-01034: ORACLE not available
		//ORA-12514, TNS:listener does not currently know of service requested in connect descriptor
		//ORA-12528, TNS:listener: all appropriate instances are blocking new connections
		else if(errMsg.contains("ORA-20599")||errMsg.contains("ORA-06502"))                      ///Cannot insert null
		{  
			  //then display required user friendly msg
				throw new Exception(ConstantesAvaluos.ORA_20599_PLSQL+" " /*+e.getMessage().toString()*/ ,e);
		}			
		//ORA-20599: A user specified error message
		else if(errMsg.contains("cast")||errMsg.contains("known entity type"))
		{
			throw new Exception(ConstantesAvaluos.CLASSCAST+" "/*+e.getMessage().toString()*/ ,e);
		}		
		else
		{
			throw new Exception(ConstantesAvaluos.ERROR+" "/*+e.getMessage().toString()*/ ,e);
		}
	  }
	  else if(e instanceof com.segurosbolivar.avaluos.exceptions.AvaluosBussinesException)
	  {
		  throw new Exception(e.getMessage());
	  }	  
	  else
	  {
		  throw new Exception(ConstantesAvaluos.ERROR+" "/*+e.getMessage().toString()*/ ,e);
	  }	  
    }
    /**
     * Recupera un valor de un archivo de propiedades
     * 
     * @param key
     *            Clave o nombre de la propiedad para la cual se quiere consultar el valor
     * @return valor correspondiente a la clave
     * @throws IOException
     */
    public static String getProperty(String key) throws IOException {
	Properties properties = new Properties();
	InputStream is = getInstance().getClass().getClassLoader().getResourceAsStream(ConstantesAvaluos.CONFIGURACION);
	properties.load(is);
	return properties.getProperty(key);
    }

    /**
     * Recupera la fecha actual en el formato especificado.
     * 
     * @param formato
     *            en el cual se quiere recuperar la fecha. estos son algunos formatos de fecha válidos: yyyyMMdd, dd/MM/yyyy, yyMMddHHmmss, etc...
     * @return Un String con la fecha actual en el formato especificado.
     */
    public static String getDateAsString(String format) {
	Date fechaActual = new Date();
	SimpleDateFormat formato = new SimpleDateFormat(format);
	return formato.format(fechaActual);
    }
    
    /**
     * Convierte una fecha cualquiera a un una cadena de texto de tipo String con el formato
     * de fecha especificado
     * @param date fecha a convertir
     * @param format formato de fecha deseado
     * @return
     */
    public static String getAnyDateAsString(Date date, String format) {
	SimpleDateFormat formato = new SimpleDateFormat(format);
	return formato.format(date);
    }

    /**
     * Elimina el contenido de un directorio
     * @param path ruta del directorio que se quiere limpiar
     * @return true si se pudo borrar todo el contenido del directorio
     */
    public static boolean deleteDirectory(File path) {
	boolean deleted = false;
	if (path.exists()) {
	    File[] files = path.listFiles();
	    for (int i = 0; i < files.length; i++) {
		    deleted = files[i].delete();
	    }
	}
	return deleted;
    }
   
    /**
     * Formatea una cadena con espacios a la derecha
     * @param s Cadena a formatear
     * @param n Espacios del formato 
     * */
    public static String padRight(String s, int n) 
    {
    	return String.format("%1$-" + n + "s", s);   
    }
    
    /**
     * Formatea una cadena con espacios a la izquierda
     * @param s Cadena a formatear
     * @param n Espacios del formato
     * */
    public static String padLeft(String s, int n) 
    {     
    	return String.format("%1$#" + n + "s", s);   
    } 
    
    
    public static void deleteFilesOlderThanNdays(int daysBack, String dirWay)  
    {  
        File directory = new File(dirWay);  
        if(directory.exists())  
        {     
            File[] listFiles = directory.listFiles();  
            long purgeTime = System.currentTimeMillis() - ((long)daysBack * 24 * 60 * 60 * 1000);    
            for(File listFile : listFiles)  
            {  
                if(listFile.lastModified() < purgeTime)  
                {  
                    System.out.println("File or directory name: " + listFile);  
                    if (listFile.isFile())  
                    {  
                        listFile.delete();  
                        System.out.println("This is a file: " + listFile);  
                        System.out.println("listFile.lastModified()" + listFile.lastModified());  
                        System.out.println("purgeTime: " + purgeTime);  
                    }  
                    else  
                    {  
                        System.out.println("This is a directory: " + listFile);  
                        //System.out.println("Date last modified: " + fileDueToBeDelete);  
                        deleteFilesOlderThanNdays(daysBack, listFile.getAbsolutePath());  
                    }  
                }  
            }  
        }   
        else  
             //log.warn("Files were not deleted, directory " + dirWay + " does'nt exist!");  
        	System.out.println("Files were not deleted, directory " + dirWay + " does'nt exist!");
    }  
   
    public static <T> void SeteaObjetoDestino(Class clase,Object objetoOrigen,Object objetoDestino,String[] excepciones) throws InstantiationException, IllegalAccessException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException, SecurityException, NoSuchMethodException
    {
    	 if(objetoOrigen!=null)
    	 {	
		    	T objeto = (T) Class.forName(clase.getName()).newInstance();
				Method[] metodos = objeto.getClass().getDeclaredMethods();
		
				for (int i = 0; i < metodos.length; i++) {
					for (int j = 0; j < excepciones.length; j++) {
						if (metodos[i].getName().startsWith("set")) {
							if( metodos[i].getName().toString().substring(3).equals(excepciones[j]))
							{
								
							}
							else
							{
								String metodoGet = metodos[i].getName().toString().replace("set", "get");
								metodoGet = metodoGet.replaceAll("\\(.+\\)", "()");
								Method met=objeto.getClass().getDeclaredMethod(metodoGet);
								Object result = met.invoke((T)objetoOrigen);
								metodos[i].invoke(
										(T)objetoDestino,
											result
										);
										
							}	
						}
					}
		 }	
		}   	
    }
    
    public static Connection getJDBConnFromEM(EntityManager em) throws NamingException, SQLException, IOException
    {
    	em.getTransaction().begin();
    	UnitOfWork unitOfWork = (UnitOfWork)((JpaEntityManager)em.getDelegate()).getActiveSession();    	
    	unitOfWork.beginEarlyTransaction();
    	Accessor accessor = ((EntityManagerImpl)(em.getDelegate())).getServerSession().getAccessor();
    	//Accessor accessor = unitOfWork.getAccessor();
    	accessor.incrementCallCount(unitOfWork.getParent());
    	accessor.decrementCallCount();
    	java.sql.Connection connection = accessor.getConnection();
    	
    	if(connection == null)
    	{
    		connection = (Connection) accessor.getDatasourceConnection();
    	}	
    	
    	if(connection == null)
    	{	
    		String ds ="";
	    	/*Login login = unitOfWork.getDatasourceLogin();
	    	login.getDatasourcePlatform();
	    	ds = login.toString();
	    	ds = ds.substring(ds.indexOf("datasource name=>")+17);
	    	int recortar = (ds.length() - ds.lastIndexOf("DS"))-2;
	    	ds = ds.substring(0, ds.length()-recortar);*/
    		ds=Util.getProperty("datasource");
	    	connection = getConnFromDs(ds);
    	}
    	
    	
    	/*weblogic.jdbc.wrapper.Blob bl=new Blob();
    	bl
    	oracle.sql.BLOB blo = ((oracle.sql.BLOB)bl.getVendorObj());*/
    	
    	em.getTransaction().commit();
    	
    	//weblogic.diagnostics.
    	
    	/*
    	em.getTransaction().begin();
    	JpaEntityManager ent= (JpaEntityManager) em;
    	//java.sql.Connection connection = ent.getUnitOfWork()(JpaEntityManager)em.unwrap(java.sql.Connection.class);
    	em.getTransaction().commit();
    	*/
    	
    	//JpaEntityManager ent= (JpaEntityManager) em;
        //(ent.getSession()).;
        //(ent.getActiveSession()).getLogin().;

        /*
        ent.getSession()
        ent.getActiveSession()
        */

        
        /*Connection con = (Connection)((EntityManagerImpl)(em.getDelegate())).getServerSession().getAccessor().getConnection();
        Connection cnn = ((JpaEntityManager)em.getDelegate()).getServerSession().getAccessor().getConnection();
        Connection cnn = (Connection) em.unwrap(java.sql.Connection.class);*/
        //return con;
    	
    	return connection;
        
    }
    
    public static Connection getConnFromDs(String ds) throws NamingException, SQLException
    {    
	    Context ctx = new InitialContext();
	    DataSource dataSource = (DataSource)ctx.lookup(ds);
	    return dataSource.getConnection();
    }
       	
	public static BigDecimal getSequenceValue(String nomTabla, String campoId,String nomSequence) throws Exception {
		Connection con = Util.getConnFromDs("jdbc/avaluosDS");
		StringBuffer sql = new StringBuffer();
		// sql.append(b)
		PreparedStatement pst = con.prepareStatement("SELECT " + nomSequence+ ".nextval FROM DUAL");
		BigDecimal seq = (BigDecimal) ((ResultSet) pst.executeQuery()).getBigDecimal(0);
		sql = new StringBuffer();
		// sql.append(b)		
		pst = con.prepareStatement("SELECT max(" + campoId + ") FROM "+ nomTabla + "");
		BigDecimal id = (BigDecimal) ((ResultSet) pst.executeQuery()).getBigDecimal(0);
		try {
			if (seq.compareTo(id) <= 0) {
				BigDecimal resta = id.subtract(seq);
				if (!resta.equals(0)) { 
					// Connection con=null;
					con.prepareStatement("ALTER SEQUENCE avaluos." + nomSequence + "  increment by "+ resta).execute();
					con.prepareStatement("SELECT " + nomSequence+ ".nextval FROM DUAL");
					seq = (BigDecimal) ((ResultSet) pst.executeQuery()).getBigDecimal(0);
					con.prepareStatement("ALTER SEQUENCE avaluos." + nomSequence+ "  increment by 1").execute();
					con.prepareStatement("SELECT " + nomSequence+ ".nextval FROM DUAL");
					seq = (BigDecimal) ((ResultSet) pst.executeQuery()).getBigDecimal(0);
				} else {
					con.prepareStatement("SELECT " + nomSequence+ ".nextval FROM DUAL");
					seq = (BigDecimal) ((ResultSet) pst.executeQuery()).getBigDecimal(0);
				}
				// id.add(new BigDecimal(2));
				// return id;
			}
			// seq.add(new BigDecimal(2));
			return seq;
		} catch (Exception e) {
			e.printStackTrace();
			con.prepareStatement("ALTER SEQUENCE avaluos." + nomSequence + "  increment by 1").execute();
			con.prepareStatement("SELECT " + nomSequence + ".nextval FROM DUAL");
			seq = (BigDecimal) ((ResultSet) pst.executeQuery()).getBigDecimal(0);
			try {
				con.close();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			throw e;
		}
	}
}
