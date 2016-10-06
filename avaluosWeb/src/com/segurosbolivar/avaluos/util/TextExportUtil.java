package com.segurosbolivar.avaluos.util;

import java.math.BigDecimal;
import java.util.List;
import com.segurosbolivar.avaluos.util.Util;

/**
 * Clase para Crear un documento de texto de ancho fijo y exportar el contenido 
 * en el sistema externo a avaluos Stelent
 */
public class TextExportUtil {
	
	private StringBuilder lineasTexto;

	private List<BigDecimal> longitudCampos;

	/**
	 * Constructor por defecto 
	 */
	public TextExportUtil() {
		lineasTexto=new StringBuilder();
	}
	/**
	 * Constructor con la lista de la longitud 
	 */
	public TextExportUtil(List<BigDecimal> longitudCampos) {
		this();
		this.longitudCampos=longitudCampos;
	}
	
	/**
	 * Crea una fila en el archivo plano de posiciones fijas
	 * Utiliza la variable de instancia longitudCampos para colocar longitud de impresion a cada campo
	 * @param list lista a recorrer para llenar la fila
	 * @param indice indice de la fila en la cual se insertara la informacion
	 */
	public void llenaFilaPlanoList(List<String> list,int indice)
	{
		if(indice > 0)
		{
			this.lineasTexto.append("\n");
		}	
		for(int i=0; i< list.size(); i++)
		{
			int longitud=0;
			longitud  = (longitudCampos.get(i)).intValue();
			this.lineasTexto.append(Util.padRight(list.get(i),longitud));
		}
	}
	
	/**
	 * Accesores de atributos
	 */
	
	public StringBuilder getLineasTexto() {
		return lineasTexto;
	}

	public void setLineasTexto(StringBuilder lineasTexto) {
		this.lineasTexto = lineasTexto;
	}
	
	public List<BigDecimal> getLongitudCampos() {
		return longitudCampos;
	}

	public void setLongitudCampos(List<BigDecimal> longitudCampos) {
		this.longitudCampos = longitudCampos;
	}
	
}
