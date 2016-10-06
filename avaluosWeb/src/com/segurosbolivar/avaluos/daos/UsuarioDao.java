package com.segurosbolivar.avaluos.daos;

import com.segurosbolivar.avaluos.entities.UsuarioAvaluo;

public class UsuarioDao extends JpaDao<UsuarioAvaluo>{

//	public List<Usuario> consultaUsuarios()
//	{ EntityManager em = emf.createEntityManager();
//	  Query query = em.createNamedQuery("getUsuarios");
//	  List<Usuario> listaUsuarios = query.getResultList();
//	  em.close();	  
//	  return listaUsuarios;
//	}
//	
//	
//	public String consultaPerito(String codigo)
//	{
//		EntityManager em = EntityManagerImp.getManager();
//		String resultado = new String("");
//		try {
//			Query query = em.createNamedQuery("getNombreUsuario");
//			query.setParameter("id",codigo);
//			resultado = (String) query.getSingleResult();
//		} catch (Exception e) {
//			System.out.println("Error consultando usuario: " + e);
//		}finally{	
//			em.close();
//		}
//		return resultado;
//	}
//	
//	
//	/**
//	 * @param args
//	 */
//	public static void main(String[] args) {
//		// TODO Auto-generated method stub
//
//	}
}
