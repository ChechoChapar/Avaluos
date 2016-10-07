package com.segurosbolivar.avaluos.daos;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
import com.segurosbolivar.avaluos.entities.Archivo;
import com.segurosbolivar.avaluos.entities.ComplementosExcel;

/**
 * Dao para manejar operaciones de persistencia sobre los complementos y manuales
 */
public class ComplementosExcelDao extends JpaDao<ComplementosExcel> {
	
	String mensajeTransaccion = null;
	
	 /** Mecanismo de log
	  * @deprecated ahora el mecanismo de log es heredado de JpaDao
	  * {@link com.segurosbolivar.avaluos.daos.JpaDao}   
	  */
    //private static final Logger log = Logger.getLogger("com.segurosbolivar.avaluos.daos.ComplementosExcelDao");
    //FileHandler fh;
	
	/**
	 * obtiene la variable mensajeTransaccion que guarda el resultado de la operacion
	 */
	public String getMensajeTransaccion() {
		return mensajeTransaccion;
	}

	/**
	 * setea la variable mensajeTransaccion que guarda el resultado de la operacion
	 */
	public void setMensajeTransaccion(String mensajeTransaccion) {
		this.mensajeTransaccion = mensajeTransaccion;
	}
	
	/**
	 * Consulta la lista de complementos
	 * @deprecated la lista de complementos es traida como un archivo porque nos interesa
	 * descargarlos
	 * {@link consultaArchivosComplementos()}
	 */
	public List<ComplementosExcel> consultaComplementos()
	{ EntityManager em = emf.createEntityManager();
	  Query query = em.createNamedQuery("getComplementos");
	  List<ComplementosExcel> listaComplementos = query.getResultList();
	  em.close();
	  //commentario 
	  return listaComplementos;
	}

	/**
	 * Elimina un complemento y su archivo relacionado
	 */
	public String eliminaArchivoComplemento(Archivo archivo)
	{				
		
		EntityManager em = emf.createEntityManager();
		
		try
		{		
		
		setMensajeTransaccion(null);
		em.getTransaction().begin();
		
		StringBuffer sqlComplemento = new StringBuffer("SELECT c FROM ComplementosExcel c WHERE c.archivo.idArchivo = '");
		sqlComplemento.append(archivo.getIdArchivo());
	    sqlComplemento.append("'");
	   	   
	    ComplementosExcel complemento = (ComplementosExcel)em.createQuery(sqlComplemento.toString()).getSingleResult();
	    em.remove(complemento);
	    
	     if(complemento!=null)
	     {	   			
			em.remove(em.find(Archivo.class, archivo.getIdArchivo()));
			em.getTransaction().commit();
			setMensajeTransaccion(ConstantesAvaluos.EXITO);
			
	     }
	    }
		catch(Exception e)
		{
			log.log(Level.SEVERE, "--> Excepción Complementos ", e);
			setMensajeTransaccion(ConstantesAvaluos.ERROR);
			e.printStackTrace();
		}finally
		{
			em.close();
		}
		
		return null;
		
	}
	
	/**
	 * Actualiza la informacion de un complemento.
	 */
	public void actualizaComplemento(Archivo archivo)
	{
		EntityManager em =null;
		try {		
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos	
		/*EntityManager*/ em = emf.createEntityManager();
	    em.getTransaction().begin();

	    StringBuffer sqlComplemento = new StringBuffer("SELECT c FROM ComplementosExcel c WHERE c.archivo.idArchivo = '");
		sqlComplemento.append(archivo.getIdArchivo());
	    sqlComplemento.append("'");
	    
	    ComplementosExcel complemento = (ComplementosExcel)em.createQuery(sqlComplemento.toString()).getSingleResult();
	    complemento.setDescripcionComplemento(archivo.getDescripcion());
	    em.merge(complemento);
	    
	    em.getTransaction().commit();
	    
	    setMensajeTransaccion(ConstantesAvaluos.EXITO);
	    	    
	}
	catch (Exception e) {
	    log.log(Level.SEVERE, "[ERROR]", e);
	    setMensajeTransaccion(ConstantesAvaluos.ERROR);
	}
//	finally {
//	    entityManager.close();
//	}
	finally{
		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
	}
	}
	/**
	 * Trae la lista de complementos como un archivo
	 * @see com.segurosbolivar.avaluos.entities.Archivo
	 */
	public List<Archivo> consultaArchivosComplementos()
	{ EntityManager em = emf.createEntityManager();	 

	Query query = em.createNativeQuery("" +
			" SELECT " +
			"   archivos.id_Archivo, " +
			"   '' as contenido, " +
			"   archivos.fecha_Creacion, " +
			"   archivos.fecha_Transaccion, " +
			"   archivos.nombre_Archivo, " +
			"   archivos.tamanio_Archivo, " +
			"   archivos.tipo_Archivo,  " +
			"   archivos.usuario_Creacion, " +
			"   archivos.usuario_Transaccion,"+
			"   pgb_complementos_excel.descripcion_complemento as descripcion"+
			" FROM pgb_complementos_excel, archivos" +
			" WHERE ((archivos.id_archivo = pgb_complementos_excel.id_archivo))"+
			//"",Archivo.class);
	     //Se elimina la conversion automatica al entity Archivo, ya que la descripcion viene de pgb_complementos_excel y no de la tabla archivos
         "");
	
	
	  List listaObj = query.getResultList();
      //List<Archivo> listaArchivosComplementos = query.getResultList();
	  //Se elimina la conversion automatica al entity Archivo, ya que la descripcion Archivos
	  List<Archivo> listaArchivosComplementos=new ArrayList(); 
		for(int i=0; i< listaObj.size(); i++)
		{
			Object[] obj = (Object[])listaObj.get(i);
			Archivo arch = new Archivo();
			arch.setIdArchivo((BigDecimal) obj[0]);
			arch.setContenidoArchivo((byte[]) obj[1]);
			arch.setFechaCreacion((Date) obj[2]);
			arch.setFechaTransaccion((Date) obj[3]);
			arch.setNombreArchivo((String) obj[4]);
			arch.setTamanioArchivo((BigDecimal) obj[5]);
			arch.setTipoArchivo((BigDecimal) obj[6]);
			arch.setUsuarioCreacion((String) obj[7]);
			arch.setUsuarioTransaccion((String) obj[8]);
			arch.setDescripcion((String) obj[9]);
			listaArchivosComplementos.add(arch); 
		}
	  
	  em.close();	  
	  return listaArchivosComplementos;
	}
	
	public void guardaCompemento(ComplementosExcel complemento)
	{
	
	}

	/**
	 * pruebas
	 */
	public static void main(String[] args) {
		
		
		Archivo arch = new Archivo();
		arch.setIdArchivo(new BigDecimal(1296));
		arch.setDescripcion("Archivo de prueba edit");
		ComplementosExcelDao dao = new ComplementosExcelDao();  
		//dao.eliminaArchivoComplemento(arch);
		dao.actualizaComplemento(arch);
		System.out.println(dao.getMensajeTransaccion());	
		
	}
}
