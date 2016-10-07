package com.segurosbolivar.avaluos.servlet;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.Serializable;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.segurosbolivar.avaluos.util.Util;

public class ProcedatosDownloadServlet extends HttpServlet implements Serializable{


	private ServletConfig config;

	private static final long serialVersionUID = 1L;

	private static final int BUFSIZE = 4096;

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		System.out.println("--> Init");
		this.config=config;
	}

	
	/**
	 * @see Servlet#getServletInfo()
	 */
	public String getServletInfo() {
		System.out.println("--> ServletInfo");
		return null;
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		String archivo=req.getParameter("URLarchivo");
		
		//String rutaProcedatos = Util.getProperty("ruta.archivos.procedatos");
		String rutaProcedatos = Util.getProperty("domain");
				
		if(new File(rutaProcedatos+archivo).exists())
		{

			System.out.println("--> get");
			File file = new File(rutaProcedatos+archivo);
			int length   = 0;
			ServletOutputStream outStream = response.getOutputStream();
			String mimetype;

			// sets response content type
			//if (mimetype == null) {
			mimetype = "application/octet-stream";
			//}
			response.setContentType(mimetype);
			response.setContentLength((int)file.length());
			String fileName = file.getName();			

			// sets HTTP header
			response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");

			byte[] byteBuffer = new byte[BUFSIZE];
			DataInputStream in = new DataInputStream(new FileInputStream(file));

			// reads the file's bytes and writes them to the response stream
			while ((in != null) && ((length = in.read(byteBuffer)) != -1))
			{
				outStream.write(byteBuffer,0,length);
			}

			in.close();
			outStream.close();
		}
		else{
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("--> post");

		//String rutaProcedatos = Util.getProperty("ruta.archivos.procedatos");
		String rutaProcedatos = Util.getProperty("domain");
		
		String archivo=req.getParameter("URLarchivo");

		if(new File(rutaProcedatos+archivo).exists())
		{

			File file = new File(rutaProcedatos+archivo);
			int length   = 0;
			ServletOutputStream outStream = res.getOutputStream();
			String mimetype;

			// sets response content type
			//if (mimetype == null) {
			mimetype = "application/octet-stream";
			//}
			res.setContentType(mimetype);
			res.setContentLength((int)file.length());
			String fileName = file.getName();

			// sets HTTP header
			res.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");

			byte[] byteBuffer = new byte[BUFSIZE];
			DataInputStream in = new DataInputStream(new FileInputStream(file));

			// reads the file's bytes and writes them to the response stream
			while ((in != null) && ((length = in.read(byteBuffer)) != -1))
			{
				outStream.write(byteBuffer,0,length);
			}

			in.close();
			outStream.close();
		}
		else{
			res.sendError(HttpServletResponse.SC_NOT_FOUND);
		}
	}

}
