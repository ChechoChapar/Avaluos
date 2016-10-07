package com.segurosbolivar.plantillaSeguridad.DAOS;

import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.eclipse.persistence.expressions.Expression;
import org.eclipse.persistence.expressions.ExpressionBuilder;
import org.eclipse.persistence.queries.ReadAllQuery;

import com.segurosbolivar.plantillaSeguridad.entities.ModulosPerfil;
import com.segurosbolivar.plantillaSeguridad.impl.EntityManagerImp;


public class ModulosPerfilDAO {

	private List<ModulosPerfil> listaModulosPerfil;
	
	public List<ModulosPerfil> getListaModulosPerfil() {
		return listaModulosPerfil;
	}

	public void setListaModulosPerfil(List<ModulosPerfil> listaModulosPerfil) {
		this.listaModulosPerfil = listaModulosPerfil;
	}
	
	public List <ModulosPerfil> getModulosHijos(){

		EntityManager em= EntityManagerImp.getManager();

		try{
			
			Query query=em.createNativeQuery("select " +
					"level," +
					"id_modulos_perfil" +
					",perfil" +
					",modulo" +
					",level as orden_modulo" +
					",lpad(' ', (level - 1) * 2) ||'-'|| descripcion_modulo as descripcion_modulo" +
					",modulo_padre" +
					",perfil_padre" +
					",es_submodulo" +
					" from v_Modulos_Perfil m" +
					" connect by prior modulo = modulo_padre start with modulo " +
					" in (select codigo_modulo from MODULO_APLICACION where codigo_modulo_padre is null) "
					,com.segurosbolivar.plantillaSeguridad.entities.ModulosPerfil.class);
			
			
			List <Object> modulosperfil = query.getResultList();
			
			Iterator<Object> iteradorModulosPerf = modulosperfil.iterator();

			while (iteradorModulosPerf.hasNext())
			{
				ModulosPerfil modperf = (ModulosPerfil)iteradorModulosPerf.next();
				
				//System.out.print(modperf.toString()); 		
				System.out.println(modperf.getOrdenModulo()+modperf.getDescripcionModulo());
			}	
			
										
		} catch (Exception ex) {  
			Logger.getLogger(ModulosPerfilDAO.class.getName()).log(Level.SEVERE, null, ex);  
		} finally {  
			em.close();  
		}  
		return null;//usuario;

	}	
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ModulosPerfilDAO dao= new ModulosPerfilDAO();
		dao.getModulosHijos();
	}

}
