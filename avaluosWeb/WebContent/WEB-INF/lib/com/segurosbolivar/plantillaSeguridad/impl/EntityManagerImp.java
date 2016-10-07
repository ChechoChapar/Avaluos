package com.segurosbolivar.plantillaSeguridad.impl;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class EntityManagerImp {
	
	
	public static EntityManager  getManager(){
		
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("PlantillaSeguridadJPA");
						
		return emf.createEntityManager();
		
		
	};
	

}
