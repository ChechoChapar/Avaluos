package com.segurosbolivar.plantillaSeguridad.services;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Text;

//For jdk1.5 with built in xerces parser
//import com.sun.org.apache.xml.internal.serialize.OutputFormat;
//import com.sun.org.apache.xml.internal.serialize.XMLSerializer;

//For JDK 1.3 or JDK 1.4  with xerces 2.7.1
import org.apache.xml.serialize.XMLSerializer;
import org.apache.xml.serialize.OutputFormat;

import com.segurosbolivar.plantillaSeguridad.DAOS.UsuarioDAO;
import com.segurosbolivar.plantillaSeguridad.entities.ModulosPerfil;
import com.segurosbolivar.plantillaSeguridad.entities.TareasPerfil;
import com.segurosbolivar.plantillaSeguridad.entities.Usuario;
import com.segurosbolivar.plantillaSeguridad.impl.EntityManagerImp;


public class XMLMenuCreator{

	//No generics
	List myData;
	Document dom;
	
	public Document getDomMenuByCedula(String cedula) {
		
		//create a list to hold the data
		myData = new ArrayList();
		
		//Get a DOM object
		createDocument();
		
		//initialize the list
		loadData(cedula); //cambiar por cedula
		
		createDOMTree();
		
		return dom;
	}

	public Document getDom() {
		
		createDOMTree();
		
		return dom;
	}


	public XMLMenuCreator() {
		//create a list to hold the data
		myData = new ArrayList();

		//initialize the list
		loadData();

		//Get a DOM object
		createDocument();
	}


	public void runExample(){
		System.out.println("Started .. ");
		createDOMTree();
		printToFile();
		System.out.println("Generated file successfully.");
	}

	/**
	 * Add a list of books to the list
	 * In a production system you might populate the list from a DB
	 */
	private void loadData(){
		
		UsuarioDAO dao = new UsuarioDAO();
		
		
		Usuario usuario = new Usuario();
		
		usuario.setCedulaEmpleado(new BigDecimal(40046225));//40046225
		
		dao.setUsuario(usuario);
		
		dao.findUsuarioByCedula0();
		
		usuario = dao.getUsuario();
		
		myData =  usuario.getModulos();
			
	}

	/**
	 * Add a list of books to the list
	 * In a production system you might populate the list from a DB
	 */
	private void loadData(String cedula){
		
		UsuarioDAO dao = new UsuarioDAO();
		
		
		Usuario usuario = new Usuario();
		
		usuario.setCedulaEmpleado(new BigDecimal(cedula));//40046225
		
		dao.setUsuario(usuario);
		
		dao.findUsuarioByCedula0();
		
		usuario = dao.getUsuario();
		
		myData =  usuario.getModulos();
			
	}
	
	/**
	 * Using JAXP in implementation independent manner create a document object
	 * using which we create a xml tree in memory
	 */
	private void createDocument() {

		//get an instance of factory
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		try {
		//get an instance of builder
		DocumentBuilder db = dbf.newDocumentBuilder();

		//create an instance of DOM
		dom = db.newDocument();

		}catch(ParserConfigurationException pce) {
			//dump it
			System.out.println("Error while trying to instantiate DocumentBuilder " + pce);
			System.exit(1);
		}

	}

	/**
	 * The real workhorse which creates the XML structure
	 */
	private void createDOMTree(){

		//create the root element <Books>
		Element rootEle = dom.createElement("Modulos");
		dom.appendChild(rootEle);

		//No enhanced for
		Iterator it  = myData.iterator();
		while(it.hasNext()) {
			ModulosPerfil b = (ModulosPerfil)it.next();			
			
			//For each Book object  create <Book> element and attach it to root
			if(b.getEsSubmodulo().compareTo("N") == 0){
				Element moduloEle = createModuloElement(b);
				rootEle.appendChild(moduloEle);
			}
		}

	}

	/**
	 * Helper method which creates a XML element <Book>
	 * @param b The book for which we need to create an xml representation
	 * @return XML element snippet representing a book
	 */
	private Element createModuloElement(ModulosPerfil mod){

		Element modEle = dom.createElement("Modulo");
		modEle.setAttribute("label", mod.getDescripcionModulo());

		
		Iterator <ModulosPerfil> subMod = mod.getSubModulos().iterator();
		
		
		while(subMod.hasNext()){
			
			Element subModEle = createModuloElement(subMod.next());
			
			modEle.appendChild(subModEle);
		}
		
		
		Iterator <TareasPerfil> transac = mod.getTareas().iterator();
		
		
		while(transac.hasNext()){
			
			Element transEle = createTransaccionElement(transac.next());
			
			modEle.appendChild(transEle);
		}
		
		return modEle;

	}
	
	
	private Element createTransaccionElement(TareasPerfil tar){
		
		Element transEle = dom.createElement("Transaccion");
		transEle.setAttribute("label", tar.getDescripcionTransaccion());
		transEle.setAttribute("transaccion", tar.getNombrePelicula());
		transEle.setAttribute("actualiza", tar.getActualiza());
		transEle.setAttribute("adiciona", tar.getAdiciona());
		transEle.setAttribute("consulta", tar.getConsulta());
		transEle.setAttribute("ejecuta", tar.getEjecuta());
		transEle.setAttribute("elimina", tar.getElimina());
		transEle.setAttribute("imprime", tar.getImprime());
		
		
		return transEle;
	}
	
	
	

	/**
	 * This method uses Xerces specific classes
	 * prints the XML document to file.
     */
	private void printToFile(){

		try
		{
			//print
			OutputFormat format = new OutputFormat(dom);
			format.setIndenting(true);

			//to generate output to console use this serializer
			//XMLSerializer serializer = new XMLSerializer(System.out, format);


			//to generate a file output use fileoutputstream instead of system.out
			XMLSerializer serializer = new XMLSerializer(
			new FileOutputStream(new File("book.xml")), format);

			serializer.serialize(dom);

		} catch(IOException ie) {
		    ie.printStackTrace();
		}
	}


	public static void main(String args[]) {

		//create an instance
		XMLMenuCreator xce = new XMLMenuCreator();

		//run the example
		xce.runExample();
	}
}