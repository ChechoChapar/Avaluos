package com.segurosbolivar.avaluos.util;

import org.apache.poi.hssf.usermodel.*;
import java.util.List;

/**
 * Clase para Crear un libro de Excel y exportar   alli el contenido de una lista enviada
 */
public class ExcelExportUtil {
	
	//Variables de la hoja y el libro 
	
	private HSSFWorkbook libro;
	private HSSFSheet hoja; 
	private String nombrehoja="AVALUOS1";
	
	/**
	 * Constructor para crear el libro de excel y la hoja 
	 */
	public ExcelExportUtil() {
		this.libro = new HSSFWorkbook();
		this.hoja=libro.createSheet(nombrehoja);
	}
	
	/**
	 * Crea/Reemplaza una fila en la hoja de excel 
	 * @param list lista a recorrer para llenar la fila
	 * @param indice indice de la fila en la cual se insertara la informacion
	 */
	public void llenaFilaHojaLista(List list,int indice)
	{
		HSSFRow rowA = this.hoja.createRow(indice);
		try {
			for(int i=0; i< list.size(); i++)
			{
				HSSFCell cellA = rowA.createCell(i);
				cellA.setCellValue(new HSSFRichTextString((String)list.get(i)));
			}
		} catch (Exception e) { 
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * Accesores de atributos
	 */
	public HSSFWorkbook getLibro() {
		return libro;
	}

	/**
	 * Accesores de atributos
	 */
	public void setLibro(HSSFWorkbook libro) {
		this.libro = libro;
	}

	/**
	 * Accesores de atributos
	 */
	public String getNombrehoja() {
		return nombrehoja;
	}

	/**
	 * Accesores de atributos
	 */
	public void setNombrehoja(String nombrehoja) {
		this.nombrehoja = nombrehoja;
	}
	
}
