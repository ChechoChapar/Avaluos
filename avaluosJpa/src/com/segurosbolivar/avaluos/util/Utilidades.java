/**
 * 
 */
package com.segurosbolivar.avaluos.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author lgalanruge
 *
 */
public class Utilidades {

	/**
	 * 
	 */
	public Utilidades() {
		// TODO Auto-generated constructor stub
	}
	
	public static String getStringWithOutEof (String expression){
		String regexExpresion = "\n" ; 
		Pattern pattern = Pattern.compile(regexExpresion); 
		Matcher matcher = pattern.matcher(expression); 
		
		if(matcher.find()){
			return expression.replace(regexExpresion, " "); 
		}
		return expression; 		 
	}
	
	/** public static void main(String... strings ){
		String expresion = "solo son pruebas \n \nde planos \\n \ndado a que no funcionan los planos \n" ; 
		System.out.println("Expresion: " + expresion + " - " + getStringWithOutEof(expresion ));
	}*/
	

}
