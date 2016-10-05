/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package tratarXML;

/**
 *
 * @author 7178021
 */
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.net.URL;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

public class UtilidadesXML {
    private int coderror;
    private String msgerror;


     public String DOM2String(Document doc) {

        TransformerFactory transformerFactory = TransformerFactory.newInstance();

        Transformer transformer = null;

        try {

            transformer = transformerFactory.newTransformer();

        } catch (javax.xml.transform.TransformerConfigurationException error) {

            coderror = 123;

            msgerror = error.getMessage();

            return null;

        }

        Source source = new DOMSource(doc);

        StringWriter writer = new StringWriter();

        Result result = new StreamResult(writer);

        try {

            transformer.transform(source, result);

        } catch (javax.xml.transform.TransformerException error) {

            coderror = 123;

            msgerror = error.getMessage();

            return null;

        }

        String s = writer.toString();

        return s;
    }

    public Document string2DOM(String s) throws IOException {

        Document tmpX = null;



        DocumentBuilder builder = null;

        try {

            builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();

        } catch (javax.xml.parsers.ParserConfigurationException error) {

            coderror = 10;

            msgerror = "Error crando factory String2DOM " + error.getMessage();

            return null;

        }

        try {

            tmpX = builder.parse(new ByteArrayInputStream(s.getBytes()));

        } catch (org.xml.sax.SAXException error) {

            coderror = 10;

            msgerror = "Error parseo SAX String2DOM " + error.getMessage();

        } catch (IOException error) {

            coderror = 10;

            msgerror = "Error generando Bytes String2DOM " + error.getMessage();

            return null;

        }

        return tmpX;

    }



    /**
     * Este método busca un fichero de tipo XML en el classpath crea un objeto
     * de tipo org.w3c.dom.Document.
     * @param fichero: El nombre del fichero a procesar.
     * @return
     * @throws Exception
     */
    public static Document File2Document(String fichero) throws Exception {
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        ClassLoader loader = (UtilidadesXML.class).getClassLoader();
        URL urlfichero = loader.getResource(fichero);

        Document XMLDoc = factory.newDocumentBuilder().parse(new InputSource(urlfichero.openStream()));
        return XMLDoc;
    }

    /**
     * Este método convierte un objeto de tipo org.w3c.dom.Node a String
     * @param nodo
     * @return
     * @throws Exception
     */
    public static String Node2String(Node nodo) throws Exception {
        StringWriter sw = new StringWriter();
        StreamResult sR = new StreamResult(sw);
        Transformer transformer = TransformerFactory.newInstance().newTransformer();
        transformer.setOutputProperty(OutputKeys.ENCODING, "UTF-8");
        transformer.setOutputProperty(OutputKeys.INDENT, "yes");
        transformer.transform(new DOMSource(nodo), sR);
        return sw.toString();
    }

    /**
     * Este método convierte un objeto de tipo org.w3c.dom.NodeList a String
     * Este método solo sirve para pintar los resultados.
     * @param nodo
     * @return
     * @throws Exception
     */
    public static String Nodes2String(NodeList nodes) throws Exception {
        StringBuffer lista = new StringBuffer();

        for (int i = 0; i < nodes.getLength(); i++) {
            Node node = (Node) nodes.item(i);
            lista.append(UtilidadesXML.Node2String(node));
        }

        return lista.toString();
    }

    /**
     * Devuelve true si el nodo es de tipo Node.ELEMENT_NODE y se llama "nombre"
     * @param nodo
     * @param nombre
     * @return
     */
    public static boolean esNodo(Node nodo, String nombre) {
        return (esNodo(nodo) && (nodo.getNodeName().equalsIgnoreCase(nombre)));
    }

    /**
     * Devuelve true si el nodo es de tipo Node.ELEMENT_NODE
     * @param nodo
     * @param nombre
     * @return
     */
    public static boolean esNodo(Node nodo) {
        return (nodo.getNodeType() == Node.ELEMENT_NODE);
    }

    /**
     * Devuelve true si el nodo es de tipo TEXT_NODE
     * @param nodo
     * @return
     */
    public static boolean esTexto(Node nodo) {
        return (nodo.getNodeType() == Node.TEXT_NODE);
    }

    /**
     * Devuelve el texto de un nodo: <tag>TEXTO</tag>
     * @param n
     * @return
     */
    public static String getTexto(Node n) {
        NodeList nl = n.getChildNodes();
        Node act = null;
        for (int i = 0; i < nl.getLength(); i++) {
            act = nl.item(i);
            if (act == null) {
                return null;
            }
            if ((act.getNodeType() == Node.CDATA_SECTION_NODE) || (act.getNodeType() == Node.TEXT_NODE)) {
                return act.getNodeValue();
            }
        }
        return "";
    }

    /**
     * Devuelve el valor del atributo "nombre" de un nodo
     * @param nombre
     * @param nodo
     * @return
     */
    public static String dameAtributoNodo(String nombre, Node nodo) {
        NamedNodeMap mapa = nodo.getAttributes();
        String valor = null;
        if (mapa != null) {
            Node nodoAt = mapa.getNamedItem(nombre);
            if (nodoAt != null) {
                valor = nodoAt.getNodeValue();
            }
        }
        return valor;
    }
   


    public String [] sacarAtributosDivPoliticas(String pCadenaArchivo, String []pAtributos)
    {

        String [] resultados = new String[pAtributos.length];
         try {
          

               UtilidadesXML u = new UtilidadesXML();
           String archivo = pCadenaArchivo;
           Document doc = u.string2DOM(archivo);
           System.out.println(UtilidadesXML.Node2String(doc.getDocumentElement()));

           XPath xpath = XPathFactory.newInstance().newXPath();

           String []atributos  = pAtributos;
           String expression ="";
           System.out.println("Lo nuevo" );
           String  resultado = "";
           String  cantidad = "";
           int cantidadUbicaciones = 0;


           expression = "count(/DIV_POLITICAS/DIV_POLITICA)";

           cantidad = (String) xpath.evaluate(expression, doc.getDocumentElement(), XPathConstants.STRING);
           System.out.println("cantidad" + cantidad);

           if (cantidad != null)
           {
               cantidadUbicaciones = Integer.parseInt(cantidad);

           }
 else
           {
               cantidadUbicaciones = 0;
 }


           for (int i=0; i<atributos.length; i++)
           {

                for (int j=1; j<=cantidadUbicaciones; j++)
                {
                    expression = "string (/DIV_POLITICAS/DIV_POLITICA[" + cantidadUbicaciones + "]/@" + atributos[i] + ")";
                    resultado = (String) xpath.evaluate(expression, doc.getDocumentElement(), XPathConstants.STRING);
                    System.out.println(atributos[i] + "=" + resultado);
               }

           }



         } catch (Exception e) {
            e.printStackTrace();
        }
        return resultados; 
    }
    
    
    public String [] sacarAtributosDireccion(String pCadenaArchivo, String []pAtributos)
    {

        String [] resultados = new String[pAtributos.length];
         try {
          

               UtilidadesXML u = new UtilidadesXML();
           String archivo = pCadenaArchivo;
           Document doc = u.string2DOM(archivo);
           System.out.println(UtilidadesXML.Node2String(doc.getDocumentElement()));

           XPath xpath = XPathFactory.newInstance().newXPath();

           String []atributos  = pAtributos;
           String expression ="";
           System.out.println("Lo nuevo" );
           String  resultado = "";
           String  cantidad = "";
           int cantidadUbicaciones = 0;


           expression = "count(/DIRECCIONES/DIRECCION_RETORNO)";

           cantidad = (String) xpath.evaluate(expression, doc.getDocumentElement(), XPathConstants.STRING);
           System.out.println("cantidad" + cantidad);

           if (cantidad != null)
           {
               cantidadUbicaciones = Integer.parseInt(cantidad);

           }
 else
           {
               cantidadUbicaciones = 0;
 }


           for (int i=0; i<atributos.length; i++)
           {

                for (int j=1; j<=cantidadUbicaciones; j++)
                {
                    expression = "string (/DIRECCIONES/DIRECCION_RETORNO[" + cantidadUbicaciones + "]/@" + atributos[i] + ")";
                    // expression = "string (/DIV_POLITICAS/DIV_POLITICA[@atributos[i]])";
                    resultado = (String) xpath.evaluate(expression, doc.getDocumentElement(), XPathConstants.STRING);
                    System.out.println(atributos[i] + "=" + resultado);
                    
               }
                resultados[i]=resultado;
           }



         } catch (Exception e) {
            e.printStackTrace();
        }
        return resultados; 
    }
    
    
    public static void main(String[] args) {
        try {

            UtilidadesXML u = new UtilidadesXML();
           String archivo = "<?xml version='1.0' encoding='UTF-8'?>  <DIV_POLITICAS>  <DIV_POLITICA SECUENCIA='37' CODIGO='2' NOMBRE='MEDELLIN - ANTIOQUIA - COLOMBIA' NOMBRESIMPLE='MEDELLIN' NIVEL='MUN' CODAZZI='5001' TRONADOR='2000'> </DIV_POLITICA> <DIV_POLITICA SECUENCIA='37' CODIGO='2' NOMBRE='MEDELLIN - ANTIOQUIA - COLOMBIA' NOMBRESIMPLE='MEDELLIN' NIVEL='MUN' CODAZZI='5001' TRONADOR='2000'></DIV_POLITICA> </DIV_POLITICAS> ";
           Document doc = u.string2DOM(archivo);
           System.out.println(UtilidadesXML.Node2String(doc.getDocumentElement()));

           XPath xpath = XPathFactory.newInstance().newXPath();

           String []atributos = {"CODAZZI", "CODIGO", "NIVEL", "NOMBRE","NOMBRESIMPLE","SECUENCIA","TRONADOR"};

           String expression ="";
           System.out.println("Lo nuevo" );
           String  resultado = "";
           String  cantidad = "";
           int cantidadUbicaciones = 0;


         
           expression = "count(/DIV_POLITICAS/DIV_POLITICA)";

           cantidad = (String) xpath.evaluate(expression, doc.getDocumentElement(), XPathConstants.STRING);
           System.out.println("cantidad" + cantidad);

           if (cantidad != null)
           {
               cantidadUbicaciones = Integer.parseInt(cantidad);

           }
 else
           {
               cantidadUbicaciones = 0;
 }


           for (int i=0; i<atributos.length; i++)
           {

                for (int j=1; j<=cantidadUbicaciones; j++)
                {
                    expression = "string (/DIV_POLITICAS/DIV_POLITICA[" + cantidadUbicaciones + "]/@" + atributos[i] + ")";
                    resultado = (String) xpath.evaluate(expression, doc.getDocumentElement(), XPathConstants.STRING);
                    System.out.println(atributos[i] + "=" + resultado);
               }
                
           }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
