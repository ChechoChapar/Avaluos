package com.segurosbolivar.avaluos.daos;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
import com.segurosbolivar.avaluos.entities.UsuarioAvaluo;

public class UsuarioAvaluoDao extends JpaDao<UsuarioAvaluo>{

	public List<UsuarioAvaluo> consultaUsuarios()
	{ EntityManager em = emf.createEntityManager();
	  Query query = em.createNamedQuery("getUsuarios");
	  List<UsuarioAvaluo> listaUsuarios = query.getResultList();
	  em.close();	  
	  return listaUsuarios;
	}
	
	public List<UsuarioAvaluo> consultaTodosUsuarios()
	{ EntityManager em = emf.createEntityManager();
	  Query query = em.createQuery("select u from UsuarioAvaluo u");
	  List<UsuarioAvaluo> listaUsuarios = query.getResultList();
	  em.close();	  
	  return listaUsuarios;
	}
	
	
	public String consultaPerito(String codigo)
	{
		EntityManager em = EntityManagerImp.getManager();
		String resultado = new String("");
		try {
			Query query = em.createNamedQuery("getNombreUsuario");
			query.setParameter("id",codigo);
			resultado = (String) query.getSingleResult();
		} catch (Exception e) {
			System.out.println("Error consultando usuario: " + e);
		}finally{	
			em.close();
		}
		return resultado;
	}
	
	
	public String consultaPeritoEmpresa(String codigo)
	{
		EntityManager em = EntityManagerImp.getManager();
		String resultado = new String("");
		try {
			Query query = em.createQuery("select e.descEmpresa "+ 
					                     "  from EmpresasAvaluos e, PeritosEmpresa p "+ 
					                     " where e.idEmpresaAvaluo = p.EmpresasAvaluo.idEmpresaAvaluo "+
					                     "   and p.numeroDocumento = :id "+
					                     "   and p.estadoAsociacion = 'A'");
			query.setParameter("id",new BigDecimal(codigo));
			resultado = (String) query.getSingleResult();
		} catch (Exception e) {
			System.out.println("Error consultando perito: " + e);
		}finally{	
			em.close();
		}
		return resultado;
	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
}
