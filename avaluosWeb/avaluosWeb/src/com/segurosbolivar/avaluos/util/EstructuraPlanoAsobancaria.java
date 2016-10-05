package com.segurosbolivar.avaluos.util;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;

import com.segurosbolivar.avaluos.daos.EntityManagerImp;
import com.segurosbolivar.avaluos.entities.EstructuraArchivoPlano;

/**
 *	Clase utilitaria para obtener a manera de lista la estructura del plano de asobancaria
 *  con el fin de ser exportada a excel y la lista con longitudes de ancho fijo para ser exportada a texto
 */
public class EstructuraPlanoAsobancaria {

	private static EntityManager em;

	private List<BigDecimal> longitudCampos;
	private List<String> EstructuraPlano;
	
	public EstructuraPlanoAsobancaria()
	{
		longitudCampos=new ArrayList<BigDecimal>();
		EstructuraPlano=new ArrayList<String>();		
	}
	
	/**
	* Consulta la estructura de encabezados del plano asi como sus longitudes para ser exportadas.
	* estos valos se guardan en las variables de instancia longitudCampos y EstructuraPlano	
	*/
	public void consultarEstructuraplanoAsobancaria()
	{
		
	    StringBuffer sql = new StringBuffer();
	    sql.append(" SELECT estPlano FROM EstructuraArchivoPlano estPlano WHERE estPlano.esAsobancaria='S' AND  estPlano.funcionConversion is null ORDER BY estPlano.consecutivoPlano ");
	    em = EntityManagerImp.getManager();	    
	    List<EstructuraArchivoPlano> estPlanoList = em.createQuery(sql.toString()).getResultList();
	    List lista = new ArrayList();
	    for(EstructuraArchivoPlano e:estPlanoList)
	    {
	    	this.longitudCampos.add(e.getLongitudVisualCampo());
	    	this.EstructuraPlano.add(e.getColumnaBd());
	    }
		
	    //02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
	
	}
	
	/**
	 * Retorna la estructura del plano como un listado de Entidades EstructuraArchivoPlano
	 * @deprecated actualmente se utiliza getEstructuraplanoAsobancariaList
	 */
	public static List<EstructuraArchivoPlano> getEstructuraplanoAsobancaria()
	{
		
	    StringBuffer sql = new StringBuffer();
	    sql.append("SELECT estPlano FROM EstructuraArchivoPlano estPlano WHERE estPlano.esAsobancaria='S' AND estPlano.funcionConversion is null ORDER BY estPlano.consecutivoPlano ");
	    em = EntityManagerImp.getManager();	    
	    List<EstructuraArchivoPlano> estPlanoList = em.createQuery(sql.toString()).getResultList();
	    
	    //02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
		
		return estPlanoList;
	}
	
	/**
	 * Retorna la estructura del plano como un List que incluye unicamente el nombre de las 
	 * columnas para su uso
	 */	
	public static List getEstructuraplanoAsobancariaList()
	{
		
	    StringBuffer sql = new StringBuffer();
	    sql.append(" SELECT estPlano FROM EstructuraArchivoPlano estPlano WHERE estPlano.esAsobancaria='S' AND  estPlano.funcionConversion is null ORDER BY estPlano.consecutivoPlano ");
	    em = EntityManagerImp.getManager();	    
	    List<EstructuraArchivoPlano> estPlanoList = em.createQuery(sql.toString()).getResultList();
	    List lista = new ArrayList();
	    for(EstructuraArchivoPlano e:estPlanoList)
	    {
	    	lista.add(e.getColumnaBd());
	    }
	    
	    //02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
	    
		return lista;		
	}
	
	public EntityManager getEm() {
		return em;
	}

	public void setEm(EntityManager em) {
		this.em = em;
	}
	
	public List<BigDecimal> getLongitudCampos() {
		return longitudCampos;
	}

	public void setLongitudCampos(List<BigDecimal> longitudCampos) {
		this.longitudCampos = longitudCampos;
	}

	public List<String> getEstructuraPlano() {
		return EstructuraPlano;
	}

	public void setEstructuraPlano(List<String> estructuraPlano) {
		EstructuraPlano = estructuraPlano;
	}
	
}
