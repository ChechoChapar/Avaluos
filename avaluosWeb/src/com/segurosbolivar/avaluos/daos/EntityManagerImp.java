package com.segurosbolivar.avaluos.daos;



import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 * Implementacion de la obtencion del EntityManager de JPA para los DAOS 
 */
public class EntityManagerImp {
	
	
	public static EntityManager  getManager(){
		
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("avaluosJpa");
					
		return emf.createEntityManager();
		
		
	};
	

}

