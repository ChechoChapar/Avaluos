package com.segurosbolivar.avaluos.daos;

import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.FileHandler;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.eclipse.persistence.exceptions.ValidationException;

import com.segurosbolivar.avaluos.util.Util;

/**
 * Clase base para todos los Daos de la aplicación  
 * @author Seguros Bolivar
 * @deprecated No se usa actualmente
 * @param <E> Objeto que corresponde a una entidad (entity) del modelo de objetos.
 */
public abstract class JpaDao<E> {

    /**
     * Entity que será el tipo de la instancia de la clase.
     */
    protected Class<E> entityClass;

    /**
     * Entity manager para el contexto de persistencia definifo por avaluosJpa
     */
    
    protected EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");

    /** Mecanismo de log de la aplicación */
    protected static final Logger log = Logger.getLogger("JpaDao");
    /** Objeto con el archivo donde se escribirá el log de la aplicación */
    FileHandler fh;

    /**
     * Contexto de persistencia de la aplicación
     */
    @PersistenceContext
    protected EntityManager entityManager = emf.createEntityManager();

    private static final SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss.S"); 
    
    private static int numContadorIntentos = 0;
    private static int numMaxIntentos = 3;
    
    /**
     * Constructor por defecto de la clase.
     * Parametriza el tipo de la clase e instancia el log de la aplicación
     */
    public JpaDao() {
	ParameterizedType genericSuperclass = (ParameterizedType) getClass().getGenericSuperclass();
	this.entityClass = (Class<E>) genericSuperclass.getActualTypeArguments()[0];

	// Configuracion del log
	try {
	    fh = new FileHandler(Util.getProperty("log"), true);
	    log.addHandler(fh);
	    log.setLevel(Level.ALL);
	    SimpleFormatter formatter = new SimpleFormatter();
	    fh.setFormatter(formatter);
	}
	catch (SecurityException e) {
	    e.printStackTrace();
	}
	catch (IOException e) {
	    //NullPointer
		//e.printStackTrace();
	}
    }

    /**
     * Recupera todos los objetos del tipo parametrizado <E> 
     * @return Lista con todos los objetos de tipo <E>
     */
    public List<E> findAll() {
	String all = "select x from " + entityClass.getSimpleName() + " x";
	Query query = entityManager.createQuery(all);
	return query.getResultList();
    }

    /**
     * Recupera un objeto del tipo parametrizado <E> con base en su identificador único.  
     * @param id Identificador único del objeto que se quiere recuperar.
     * @return Objeto de tipo <E> que corresponde al identificador del parametro.
     */
    public E findById(BigDecimal id) {
	return entityManager.find(entityClass, id);
    }

    /**
     * Crea un registro del tipo parametrizado <E>
     * @param entity Objeto que se quiere crear.
     */
    public void persist(E entity) {
    	try{
	    	System.out.print("Start: " + imprimirTiempo()); 
			entityManager.getTransaction().begin();
			entityManager.persist(entity);
			entityManager.getTransaction().commit();
			entityManager.clear();
			System.out.println(" - Finish: " + imprimirTiempo());
    	}catch (Exception e) {
    		if(entityManager.getTransaction().isActive()){ 
    			entityManager.getTransaction().rollback();
    		}
    		if(e instanceof javax.persistence.RollbackException){
    			if(numContadorIntentos < numMaxIntentos){
    				numContadorIntentos ++ ;
    				persist(entity);    				 
    			}else {
    				numContadorIntentos = 0 ;
    			}
    		}
	    	if(e instanceof java.lang.IllegalStateException){
	    		if(numContadorIntentos < numMaxIntentos){
	    			numContadorIntentos ++ ;
    				persist(entity);    				 
    			}else {
    				numContadorIntentos = 0 ;
    			}
	    	}
		}
    }

    /**
     * Elimina un registro del tipo parametrizado <E>
     * @param entity Objeto correspondiente al registro que se quiere eliminar.
     */
    public void remove(E entity) {
	entityManager.remove(entity);
    }

    /**
     * Actualiza un registro del tipo parametrizado <E>
     * @param entity Objeto correspondiente al registro que se quiere actualizar.
     */
    public void merge(E entity) {
    	try{
	    	System.out.print("Start: " + imprimirTiempo());
	    	entityManager.getTransaction().begin();
	    	entityManager.merge(entity);
	    	entityManager.getTransaction().commit();
	    	entityManager.clear(); 
	    	System.out.println(" - Finish: " + imprimirTiempo());
	    }catch (Exception e) {
	    	if(entityManager.getTransaction().isActive()){
	    		entityManager.getTransaction().rollback();
	    	}
	    	if(e instanceof javax.persistence.RollbackException){
	    		if(numContadorIntentos < numMaxIntentos){
	    			numContadorIntentos ++ ;
	    			merge(entity);					 
				}else {
					numContadorIntentos = 0 ;
				}
	    		
    		}
	    	if(e instanceof java.lang.IllegalStateException){
	    		if(numContadorIntentos < numMaxIntentos){
	    			numContadorIntentos ++ ;
	    			merge(entity);					 
				}else {
					numContadorIntentos = 0 ;
				}
	    	}
		}
    }

    /**
     * Ejecuta una consulta de tipo JPQL cuto resultado es máximo un registro.
     * @param query  Cadena de texto que representa el JPQL
     * @return Un objeto con el resultado de la consulta, si no hay resultado retorna nulo.  
     */
    protected Object executeSingleQuery(Query query) {
	try {
	    return query.getSingleResult();
	}
	catch (NoResultException ex) {
	    return null;
	}
    }

    /**
     * Ejecuta una consulta de tipo JPQL cuyo resultado puede ser varios registros.
     * @param query Cadena de texto que representa el JPQL
     * @return Lista de objetos con los resultados que arroja la consulta, si no hay resultados retorna nulo
     */
    protected List<E> executeListQuery(Query query) {
	try {
	    return (List<E>) query.getResultList();
	}
	catch (NoResultException ex) {
	    return null;
	}
    }
    
    public String imprimirTiempo(){
    	return dateFormat.format(new Date());    	
    }
    
}