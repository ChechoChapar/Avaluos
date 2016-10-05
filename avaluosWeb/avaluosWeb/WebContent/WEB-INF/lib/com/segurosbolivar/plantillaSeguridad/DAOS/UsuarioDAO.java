package com.segurosbolivar.plantillaSeguridad.DAOS;

import java.math.BigDecimal;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import javax.xml.transform.Transformer;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.*;
import org.xml.sax.InputSource;
import java.util.regex.*;
import java.util.Hashtable;
import java.util.ArrayList;
import java.net.*;
import java.io.IOException;


import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.segurosbolivar.plantillaSeguridad.entities.ModulosPerfil;
import com.segurosbolivar.plantillaSeguridad.entities.TareasPerfil;
import com.segurosbolivar.plantillaSeguridad.entities.Usuario;
import com.segurosbolivar.plantillaSeguridad.impl.EntityManagerImp;

public class UsuarioDAO {

	/**
	 * @param args
	 */
	
	private Usuario usuario;

	private List<Usuario> listaUsuarios;
	
	public List<Usuario> getListaUsuarios() {
		return listaUsuarios;
	}

	public void setListaUsuarios(List<Usuario> listaUsuarios) {
		this.listaUsuarios = listaUsuarios;
	}

	public Usuario getUsuario() {
		return usuario;
	}
	
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public String sayHello()
	{
		return ("Hello World");
	}

	public String decirHola()
	{
		return ("Hola");
	}

	public Document traeMenuXMLByCedula(String cedula)
	{
		String resultado=null;
		EntityManager em= EntityManagerImp.getManager();
		try
		{
			
		Query query=em.createNamedQuery("traeMenuXMLByCedula");
		query.setParameter(1, cedula);
		resultado=(String)query.getSingleResult();
		
		} catch (Exception ex) {
			
			Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
			
		} finally {  
			
			em.close();
			
		}  

		Document document = null;
		
        try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            document = builder.parse(new InputSource(new StringReader(resultado)));
       }
       catch (Exception e) { Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, "Imposible convertir cadena a tipo de dato XML:", e);
       }
           return document;
       
	}
	
	public Object traeMenuXMLByCedulaString(String cedula)
	{
		Object resultado=null;
		EntityManager em= EntityManagerImp.getManager();
		try
		{
			
		Query query=em.createNamedQuery("traeMenuXMLByCedula");
		query.setParameter(1, cedula);
		resultado=(String)query.getSingleResult();
		
		} catch (Exception ex) {
			
			Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
			
		} finally {  
			
			em.close();
			
		}  
		return resultado;
       
	}
	
	public Usuario findUsuarioByCedula(java.math.BigDecimal cedula){

		EntityManager em= EntityManagerImp.getManager();

		try{

			Query query=em.createNamedQuery("findUsuarioByCedula");
			query.setParameter("p_cedula", cedula);
			this.usuario = (Usuario)query.getSingleResult();
								
		} catch (Exception ex) {
  
			Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);  
			System.out.print("error en el metodo findUsuarioByCedula: " + ex);
		} finally {  
			em.close();  
		}  
		return usuario;
	}		

	public void findUsuarioByCedula0(){

		EntityManager em= EntityManagerImp.getManager();

		try{
			
			Query query=em.createNamedQuery("findUsuarioByCedula");
			query.setParameter("p_cedula", this.usuario.getCedulaEmpleado());
			this.usuario = (Usuario)query.getSingleResult();
								
		} catch (Exception ex) {  
			
			System.out.print("error en el metodo findUsuarioByCedula: " + ex);
			
		} finally {  
			em.close();  
		}  
		

	}	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		UsuarioDAO dao= new UsuarioDAO();
		BigDecimal cedula = new BigDecimal("40046225");
		Usuario usr = dao.findUsuarioByCedula(cedula);
		
    			 	
	}	
}
