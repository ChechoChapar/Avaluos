package com.segurosbolivar.avaluos.servlet;

	import java.awt.Image;
import java.awt.image.BufferedImage;
import java.awt.image.DataBufferByte;
import java.awt.image.RenderedImage;
import java.awt.image.WritableRaster;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
	import java.math.BigDecimal;
	import java.util.Calendar;
import java.util.Date;
	import java.util.Iterator;
	import java.util.List;
	import java.util.logging.FileHandler;
	import java.util.logging.Level;
	import java.util.logging.Logger;
	import java.util.logging.SimpleFormatter;

import javax.imageio.IIOImage;
import javax.imageio.ImageIO;
import javax.imageio.ImageReader;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;
import javax.imageio.stream.ImageOutputStream;
	import javax.persistence.EntityManager;
	import javax.persistence.EntityManagerFactory;
	import javax.persistence.Persistence;
import javax.persistence.Query;
	import javax.servlet.Servlet;
	import javax.servlet.ServletConfig;
	import javax.servlet.ServletException;
	import javax.servlet.ServletOutputStream;
	//import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;

//import magick.ImageInfo;
//import magick.MagickImage;

	import org.apache.commons.fileupload.FileItem;
	import org.apache.commons.fileupload.FileItemFactory;
	import org.apache.commons.fileupload.FileUploadException;
	import org.apache.commons.fileupload.disk.DiskFileItemFactory;
	import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
	import com.segurosbolivar.avaluos.entities.AnexoFotografico;
	import com.segurosbolivar.avaluos.entities.Archivo;
	import com.segurosbolivar.avaluos.entities.Avaluo;
import com.segurosbolivar.avaluos.entities.ListaAnexosPdf;
import com.segurosbolivar.avaluos.util.Util;
//import com.sun.image.codec.jpeg.JPEGimageDecoder;

	/**
	 * Servlet para la carga de anexos de un avaluo
	 * 
	 * @author Seguros Bolivar
	 * @version 1.0
	 */
	public class UploadAnexosPdfServlet extends HttpServlet {

	    /**
	     * Código de serialización de la clase.
	     */
	    private static final long serialVersionUID = 1L;

	    /**
	     * Constructor por defecto de la clase.
	     */
	    public UploadAnexosPdfServlet() {
		super();
	    }

	    /**
	     * @see Servlet#init(ServletConfig)
	     */
	    public void init(ServletConfig config) throws ServletException {
	    }

	    /**
	     * @see Servlet#getServletInfo()
	     */
	    public String getServletInfo() {
		return null;
	    }

	    
		/**
		 * Maximo tamaño de los archivos que se pueden cargar
		 */	
		//private static final int CONST_MAX_SIZE = 10000000;
		
	    /**
	     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	     */
	    protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
			String idAvaluo = req.getParameter("idAvaluo");
			String consecutivo = req.getParameter("consecutivo");
			String codigoUsuario = req.getParameter("codigoUsuario");
						
			String operacion=req.getParameter("operacion");
			
			if(operacion != null && operacion.equals("borrar"))
			{
				try {
					borrarImagenPdf(idAvaluo,consecutivo);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}			
	    }

	    /**
	     * Inserta el archivo seleccionado en la base de datos
	     * 
	     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	     */
	    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		FileItem item = null;
		FileItemFactory factory = new DiskFileItemFactory();
		Iterator iter = null;
		List items = null;
		ServletFileUpload upload = new ServletFileUpload(factory);
		//upload.setSizeMax(ConstantesAvaluos.CONST_MAX_SIZE);
		upload.setHeaderEncoding("ISO-8859-1"); 

		String idAvaluo = req.getParameter("idAvaluo");
		String consecutivo = req.getParameter("consecutivo");
		String codigoUsuario = req.getParameter("codigoUsuario");

		try {
		    items = upload.parseRequest(req);
		    iter = items.iterator();

		    while (iter.hasNext()) {
			item = (FileItem) iter.next();
			if (item.isFormField()) {
				
				/*String operacion=req.getParameter("operacion");
				
				if(operacion.equals("borrar"))
				{
					borrarImagenPdf(idAvaluo,consecutivo);
				}*/	
				
			}
			else {
			    /*if (tipoCarga.equalsIgnoreCase("fachada")) {
				guardarFachada(item, idAvaluo, req);
			    }
			    else {
				guardarAnexo(item, idAvaluo, req);
			    }*/
				guardarImagenPdf(item, idAvaluo,consecutivo,codigoUsuario, req);
			}
		    }
		}
		catch (FileUploadException e) {
		    e.printStackTrace();
		}
		catch (IOException e) {
		    e.printStackTrace();
		}
		catch (Exception e) {
		    e.printStackTrace();
		}
	    }

	    /**
	     * Guarda en la BD un archivo jpg que contiene la foto de la fachada del predio
	     * 
	     * @param item
	     *            datos del archivo que se va a guardar
	     * @param idAvaluo
	     *            identificador único del avaluo para el cual se va a alamacenar el archivo
	     * @param req
	     *            request
	     * @throws Exception
	     */
	    public synchronized void guardarImagenPdf(FileItem item, String idAvaluo,String consecutivo,String codigoUsuario, HttpServletRequest req) throws Exception {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
		EntityManager em = emf.createEntityManager();

		Archivo archivo = new Archivo();
		//AnexoFotografico anexoFotografico = new AnexoFotografico();
		ListaAnexosPdf anexoPdf  = null;//new ListaAnexosPdf(); 
		
		/*Avaluo av = new Avaluo();
		av.setIdAvaluo(new BigDecimal(idAvaluo));*/
		
		Query query = em.createQuery
		(
				"	SELECT avaluo			"+
				"	  FROM Avaluo avaluo						" +
				"      WHERE  avaluo.idAvaluo="+idAvaluo	    			
		);
		Avaluo av = (Avaluo)query.getSingleResult();
		
		if(av!=null)
		{		
			Date fechaAct = new Date(); 

			StringBuffer sql = new StringBuffer("SELECT ls FROM ListaAnexosPdf ls WHERE ls.pgbAvaluo.idAvaluo = "+idAvaluo+" and ls.consecutivoAnexo = "+consecutivo);
			
			
			try {
				anexoPdf = (ListaAnexosPdf)em.createQuery(sql.toString()).getSingleResult();
			} catch (Exception e) {
				System.out.println("Se consulta si tiene un anexo en la posicion. ");
				System.out.println("" + sql);
				System.out.println("" + e.getMessage() + " \n" + e.getClass() );
			}
			
			String filename= item.getName();
			//05 Abr 2013 Convertir codificacion de String para soportar caracteres especiales
			filename=new String(filename.getBytes("ISO-8859-1"), "UTF-8");
			
			String path = Util.getProperty("nueva.ruta.cargue.masivo");
			
			File savedFile = new File(path,filename);			
			
			//item.write(new File(item.getName()));
			//item.write(new File(filename));
			item.write(savedFile);
			
			
			
			//BufferedImage image = ImageIO.read(new File(item.getName()));		
			
		    String extensionName = filename.substring(filename.lastIndexOf('.') + 1);
			
		    if(extensionName.equals("bmp")){
			    //File input = new File(filename);
		    	File input = savedFile;
			    BufferedImage imagejpg = ImageIO.read(input); 
			    //File output = new File(filename.replace(".bmp", ".jpeg"));
			    File output = new File(path,filename.replace(".bmp", ".jpeg"));
			    ImageIO.write(imagejpg, "jpeg", output);  
		    }
			
		    if(extensionName.equals("gif")){
			    //File input = new File(filename);
		    	File input = savedFile;
			    BufferedImage imagejpg = ImageIO.read(input); 
			    //File output = new File(filename.replace(".gif", ".jpeg"));
			    File output = new File(path,filename.replace(".gif", ".jpeg"));
			    ImageIO.write(imagejpg, "jpeg", output);  
		    }
		    
		    //BufferedImage image = ImageIO.read(new File(filename));
		    BufferedImage image = ImageIO.read(savedFile);
		    
			if(image.getWidth()>481){
				
				Image thumbnail = image.getScaledInstance(481, -1, Image.SCALE_SMOOTH);				
				image = new BufferedImage(thumbnail.getWidth(null),thumbnail.getHeight(null),BufferedImage.TYPE_INT_RGB);
				image.getGraphics().drawImage(thumbnail, 0, 0, null);
				
			}
			 
			
		    /*ImageInfo info = new ImageInfo();
		    MagickImage image = new MagickImage( new ImageInfo(item.getName()));
		    image.setCompression(arg0)*/
			
		    
			Iterator<ImageWriter> writers = ImageIO.getImageWritersBySuffix("jpeg");
		    //Iterator<ImageWriter> writers = ImageIO.getImageWritersBySuffix(extensionName);
			if (!writers.hasNext()) throw new IllegalStateException("No writers found");
			ImageWriter writer = (ImageWriter) writers.next();
			// Create the ImageWriteParam to compress the image.
			ImageWriteParam param = writer.getDefaultWriteParam();
			param.setCompressionMode(ImageWriteParam.MODE_EXPLICIT);
			param.setCompressionQuality(0.5f);
			// The output will be a ByteArrayOutputStream (in memory)
			ByteArrayOutputStream bos = new ByteArrayOutputStream(32768);
			ImageOutputStream ios = ImageIO.createImageOutputStream(bos);
			writer.setOutput(ios);
			writer.write(null, new IIOImage(image, null, null), param);
			ios.flush(); // otherwise the buffer size will be zero!
			// From the ByteArrayOutputStream create a RenderedImage.
			ByteArrayInputStream in = new ByteArrayInputStream(bos.toByteArray());
			RenderedImage out = ImageIO.read(in);
			int size = bos.toByteArray().length;

			byte[] bit = bos.toByteArray();
			
//		    String extensionName = filename.substring(filename.lastIndexOf('.') + 1);
//		    Iterator i = ImageIO.getImageReadersBySuffix(extensionName);
//			
////			//BufferedImage image = ImageIO.read(item.getInputStream());
////			//Iterator<ImageReader> i = ImageIO.getImageReaders(item.getInputStream());
////
//			ImageReader rd = (ImageReader)i.next();
////			
////			//ImageWriter wrt =  ImageIO.getImageWriter(ImageIO.getImageReaders(item.getInputStream()));
////			
//			i = ImageIO.getImageWritersBySuffix(extensionName);
////			//ImageWriter wrt =  ImageIO.getImageWriter(rd);
//			ImageWriter wrt = (ImageWriter)i.next();
////				
//			ImageWriteParam param = wrt.getDefaultWriteParam();  
//			param.setCompressionMode(ImageWriteParam.MODE_EXPLICIT);  
//			param.setCompressionQuality(0.8f);  
////			
//			ByteArrayOutputStream baos = new ByteArrayOutputStream(); 
////			
////			BufferedImage image=rd.read(0);//new BufferedImage(rd.getWidth(0), rd.getHeight(0), BufferedImage.TYPE_INT_RGB); 
////			
//			//wrt.setOutput(baos);			
//			
//			BufferedImage in = ImageIO.read(new File(item.getName()));
//			
//			ImageOutputStream ios = ImageIO.createImageOutputStream(new File(item.getName())); 
//			wrt.setOutput(ios); 
//			
//			wrt.write(null, new IIOImage(in, null, null), param);  
//			wrt.dispose();
//			//byte[] bit = new byte[(int)ios.length()];
//			//ios.write(bit);
//			//byte[] bit=IOUtils.toByteArray(ios.);
//			
//			byte[] bit=null;// = getBytes(ios);
//			
//			ios.close();
//			//bit.length
//			
//			
//			
//			WritableRaster raster = in.getRaster();
//			DataBufferByte data   = (DataBufferByte) raster.getDataBuffer();
//			
//			bit = data.getData();
//			
//			/*
//			File fnew=new File(item.getName());
//			BufferedImage originalImage=ImageIO.read(fnew);
//			ByteArrayOutputStream baos1=new ByteArrayOutputStream();
//			ImageIO.write(originalImage, "jpg", baos1 );
//			byte[] imageInByte=baos.toByteArray();
//			*/
//			
//			
//			
//			 //byte[] bit = null;//imageInByte;//data.getData();
//			
////			baos.close();
////			
////			byte[] bytes = item.get();
////			
////			bytes = baos.toByteArray();
//			
//			
//			/*
//			InputStream in = (ByteArrayInputStream)item.getInputStream();
//			com.sun.image.codec.jpeg.JPEGImageDecoder decoder =
//			com.sun.image.codec.jpeg.JPEGCodec.CreateJPEGDecoder(in);
//			Bufferedimage image = decoder.decodeAsBufferedimage();
//			in.close(); 
//			preparing thumbail numbers
//			int thumbWidth = 150;
//			int thumbHeight = 150;
//			double thumbRatio = (double)thumbWidth 
//			(double)thumbHeight; ratio for the thumbail 
//			obtain the picture width and height
//			int imageWidth = image.getWidth(null);
//			int imageHeight = image.getHeight(null); 
//			*/
			
		    em.getTransaction().begin();			
			if(anexoPdf==null)
			{				
				
				Archivo arch = new Archivo();
			   
				//arch.setNombreArchivo(item.getName());
				arch.setNombreArchivo(filename);
				arch.setTamanioArchivo(BigDecimal.valueOf(item.getSize()));
				//arch.setContenidoArchivo(item.get());
				arch.setContenidoArchivo(bit);
				arch.setUsuarioCreacion(codigoUsuario);
				arch.setFechaCreacion(fechaAct);
				arch.setUsuarioTransaccion(codigoUsuario);
				arch.setFechaTransaccion(fechaAct);
				em.persist(arch);
				
				
				anexoPdf  = new ListaAnexosPdf();
				query = em.createNativeQuery("SELECT SEQ_PGB_LST_ANEXOS_PDF.nextval FROM DUAL");
				BigDecimal valor = (BigDecimal)query.getSingleResult();
				anexoPdf.setIdListaAnexosPdf(valor);
				
				anexoPdf.setPgbAvaluo(av);
				anexoPdf.setArchivo(arch);
				anexoPdf.setConsecutivoAnexo(new BigDecimal(consecutivo));
				anexoPdf.setUsuarioTransaccion(codigoUsuario);
				anexoPdf.setUsuarioCreacion(codigoUsuario);
				anexoPdf.setFechaCreacion(fechaAct);
				anexoPdf.setFechaTransaccion(fechaAct);			
			    	    
			    em.persist(anexoPdf);
			    
			}
			else
			{
				
				/*
				Archivo arch = new Archivo();
			   
				arch.setNombreArchivo(item.getName());
				arch.setTamanioArchivo(BigDecimal.valueOf(item.getSize()));
				arch.setContenidoArchivo(item.get());
				arch.setUsuarioCreacion(codigoUsuario);
				arch.setFechaCreacion(fechaAct);
				arch.setUsuarioTransaccion(codigoUsuario);
				arch.setFechaTransaccion(fechaAct);
				em.persist(arch);
				*/
				
				//anexoPdf.getArchivo().setNombreArchivo(item.getName());
				anexoPdf.getArchivo().setNombreArchivo(filename);
				anexoPdf.getArchivo().setTamanioArchivo(BigDecimal.valueOf(item.getSize()));
				//anexoPdf.getArchivo().setContenidoArchivo(item.get());
				anexoPdf.getArchivo().setContenidoArchivo(bit);
				anexoPdf.getArchivo().setUsuarioTransaccion(codigoUsuario);
				anexoPdf.getArchivo().setFechaTransaccion(fechaAct);
				
				anexoPdf.setConsecutivoAnexo(new BigDecimal(consecutivo));
				anexoPdf.setUsuarioTransaccion(codigoUsuario);
				anexoPdf.setFechaTransaccion(fechaAct);
				
			}	
		    em.getTransaction().commit();
		  }

		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	//	try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
	   }

	    
	     public byte[] getBytes(ImageOutputStream ios) {
	            ByteArrayOutputStream bos = new ByteArrayOutputStream(255);
	            byte imageByte;
	            long counter = 0; 
	            try {
	                    System.out.println("getStreamPosition()[BEFORE]=" + ios.getStreamPosition());
	                    ios.seek(0);
	                    System.out.println("getStreamPosition()[AFTER]=" + ios.getStreamPosition());
	            } catch (IOException e1) {                       
	                    e1.printStackTrace();
	            }

	            while (true) {
	                    try {
	                            bos.write(ios.readByte());
	                            counter++;
	                    } catch (EOFException e) {
	                            System.out.println("End of Image Stream");
	                            break;
	                    } catch (IOException e) {
	                            System.out.println("Error processing the Image Stream");
	                            break;
	                    }
	            }
	            System.out.println("Total bytes read=" + counter);
	            byte[] retValue = bos.toByteArray();
	            return retValue;
	    }
	    
	    /**
	     * Guarda en la BD un archivo jpg que contiene la foto de la fachada del predio
	     * 
	     * @param item
	     *            datos del archivo que se va a guardar
	     * @param idAvaluo
	     *            identificador único del avaluo para el cual se va a alamacenar el archivo
	     * @param req
	     *            request
	     * @throws Exception
	     */
	    private void borrarImagenPdf(String idAvaluo,String consecutivo) throws Exception {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
		EntityManager em = emf.createEntityManager();

		Archivo archivo = new Archivo();
		//AnexoFotografico anexoFotografico = new AnexoFotografico();
		ListaAnexosPdf anexoPdf  = null;//new ListaAnexosPdf(); 
		
		/*Avaluo av = new Avaluo();
		av.setIdAvaluo(new BigDecimal(idAvaluo));*/
		
		Query query = em.createQuery
		(
				"	SELECT avaluo			"+
				"	  FROM Avaluo avaluo						" +
				"      WHERE  avaluo.idAvaluo="+idAvaluo	    			
		);
		Avaluo av = (Avaluo)query.getSingleResult();
		
		if(av!=null)
		{		
			Date fechaAct = new Date(); 

			StringBuffer sql = new StringBuffer("SELECT ls FROM ListaAnexosPdf ls WHERE ls.pgbAvaluo.idAvaluo = "+idAvaluo+" and ls.consecutivoAnexo = "+consecutivo);
			
			
			try {
				anexoPdf = (ListaAnexosPdf)em.createQuery(sql.toString()).getSingleResult();
			} catch (Exception e) {
				e.printStackTrace();
			}
						
		    em.getTransaction().begin();			
			if(anexoPdf==null)
			{								

			}
			else
			{
				
				em.remove(anexoPdf);
				
			}	
		    em.getTransaction().commit();
		}

		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
	  }	
				
/*
		StringBuffer sql = new StringBuffer("SELECT an FROM AnexoFotografico an WHERE an.avaluo.idAvaluo = ");
		sql.append(new BigDecimal(idAvaluo));
		List<AnexoFotografico> resList = em.createQuery(sql.toString()).getResultList();

		if ((resList != null) && (!resList.isEmpty())) {

		    AnexoFotografico anexoFachada = resList.get(0);
		    Archivo fachada = resList.get(0).getArchivoFoto();

		    em.getTransaction().begin();
		    if (fachada == null) {
			fachada = new Archivo();
			fachada.setNombreArchivo(item.getName());
			fachada.setTamanioArchivo(BigDecimal.valueOf(item.getSize()));
			fachada.setContenidoArchivo(item.get());
			fachada.setUsuarioCreacion(req.getParameter("codigoUsuario"));
			fachada.setFechaCreacion(Calendar.getInstance().getTime());
			fachada.setUsuarioTransaccion(req.getParameter("codigoUsuario"));
			fachada.setFechaTransaccion(Calendar.getInstance().getTime());
			em.persist(fachada);
		    }
		    else {
			fachada.setNombreArchivo(item.getName());
			fachada.setTamanioArchivo(BigDecimal.valueOf(item.getSize()));
			fachada.setContenidoArchivo(item.get());
			fachada.setUsuarioTransaccion(req.getParameter("codigoUsuario"));
			fachada.setFechaTransaccion(Calendar.getInstance().getTime());
		    }
		    anexoFachada.setArchivoFoto(fachada);
		    anexoFachada.setUsuarioTransaccion(req.getParameter("codigoUsuario"));
		    anexoFachada.setFechaTransaccion(Calendar.getInstance().getTime());
		    em.merge(fachada);
		    em.merge(anexoFachada);
		    em.getTransaction().commit();

		}
		else {
		    archivo.setNombreArchivo(item.getName());
		    archivo.setTamanioArchivo(BigDecimal.valueOf(item.getSize()));
		    archivo.setContenidoArchivo(item.get());
		    archivo.setUsuarioCreacion(req.getParameter("codigoUsuario"));
		    archivo.setFechaCreacion(Calendar.getInstance().getTime());
		    archivo.setUsuarioTransaccion(req.getParameter("codigoUsuario"));
		    archivo.setFechaTransaccion(Calendar.getInstance().getTime());

		    em.getTransaction().begin();
		    em.persist(archivo);
//		    anexoFotografico.setAvaluo(em.find(Avaluo.class, new BigDecimal(idAvaluo)));
//		    anexoFotografico.setArchivoFoto(archivo);
//		    anexoFotografico.setUsuarioCreacion(req.getParameter("codigoUsuario"));
//		    anexoFotografico.setFechaCreacion(Calendar.getInstance().getTime());
//		    anexoFotografico.setUsuarioTransaccion(req.getParameter("codigoUsuario"));
//		    anexoFotografico.setFechaTransaccion(Calendar.getInstance().getTime());
//		    em.persist(anexoFotografico);
		    em.getTransaction().commit();
		}*/
		
	    //}

}
