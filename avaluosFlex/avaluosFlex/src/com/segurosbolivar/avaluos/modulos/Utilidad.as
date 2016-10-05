package com.segurosbolivar.avaluos.modulos
{
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.controls.DateField;
	import mx.core.UIComponent;
	
	import spark.components.CheckBox;
	import spark.components.ComboBox;
	import spark.components.TextArea;
	import spark.components.TextInput;
	
	import valueObjects.CampoRequeridoDTO;

	public class Utilidad
	{
		public static var restrict_:String ="^|<>&'";
		public static var decimalCharacter:String ="0-9\\.\\-\\," ;
		public static var onlyNumber:String ="0-9" ;
		public static var toolTipCoordenadas = "Recuerde: " +
												" El rango de coordenadas valido para latitud es: -4.400000 y 13.500000. " +
												" El rango de coordenadas valido para longitud es: -82.500000 y -66.00000. " +
												" Primero Latitud luego Longitud separados por coma (,). " ; 
		public static var widthFields:int = 200 ; 
		public static const MSG_DESCLIQ:String = "Recuerde en la sección información de la construcción seleccionar un valor de la lista propiedad horizontal de  y guardar sección";
		public static const PORCENTAJE_ASOBANCARIA:int = 70;
		public static const MSG_VALOR_AVALO:String = "Haga click aquí para que el sistema calcule el valor UVR del avaluo";
		
		public function Utilidad()
		{
		}
		
		/**
		 * Transforma el 1 en el valor booleano true, cualquier otro valor en false,
		 * se emplea especialmente en los campos de tipo CheckBox para determinar siesta o no marcado.
		 * @param valor Número que se quiere transformar a un valor boleano. 
		 * */
		public static function isTrue(valor:String):Boolean {
			var res:Boolean = new Boolean(1);
			if (valor == "1") {
				res = true;
			}
			else {
				res = false;
			}
			return res;
		}
		
		/**
		 * Recupera un objeto de una lista a partir del índice 
		 * @param target valor del indice correspondiente al objeto que se quiere recuperar. 
		 * @param fields Lista de objetos
		 * @param propiedad nombre de la propiedad mediante la cual se quiere consultar el objeto
		 * */
		public static function getItemIndex(target:String, fields:ArrayCollection,propiedad:String ):int { 
			for(var x:int=0; x<fields.length; x++) { 
				if(fields[x][propiedad] == target) 
				{ return x; 
				} 
			} 
			return -1; 
		}
		
		/**
		 * Se imprime el mensaje por pantalla
		 **/
		public static function imprimirMensaje(mensaje:String, titulo:String):void{
			Alert.show(mensaje,titulo, 4, null, null, null, Alert.OK);
		}
		
		/**
		 * Convierte a español los rótulos de un componente calendar.
		 * @parama dt Componente calendar.
		 * */
		public static function dateChooser_init(dt:DateField):void {
			dt.dayNames=['Dom', 'Lun', 'Mar', 'Mie', 'Jue', 'Vie', 'Sab'];
			dt.monthNames=[	'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
				'Julio', 'Agosto', 'Septiembre', 'Octubre',
				'Noviembre', 'Diciembre'];
			dt.firstDayOfWeek = 1;
			dt.formatString = "DD/MM/YYYY";
		}
		
		/**
		 * Valida si un campo esta vacio
		 **/ 
		public static function isCampoVacio(campo:UIComponent):Boolean
		{
			if (campo is TextInput)
			{	
				var campoTxt:TextInput=campo as TextInput;
				
				if(campoTxt!=null)
				{
					if(campoTxt.text != null)
					{	
						if(campoTxt.text.length>0)
						{
							return false;
						}
						else
						{
							return true;
						}	
					}
					else
					{
						return true;
					}
				}
				else
				{
					return true;
				}	
				return false;
			}
			if (campo is ComboBox)
			{	
				var campoCbb:ComboBox=campo as ComboBox;
				if(campoCbb!=null)
				{
					if(campoCbb.selectedItem != null)
					{
						if(campoCbb.selectedIndex > -1)
						{
							return false;
						}
						else
						{
							return true;
						}
					}
					else
					{
						return true;
					}
				}
				else
				{
					return true;
				}
				return false;
			}
			if (campo is DateField)
			{	
				var campoDat:DateField=campo as DateField;
				
				if(campoDat!=null)
				{
					if(campoDat.text != null)
					{	
						if(campoDat.text.length>0)
						{
							return false;
						}
						else
						{
							return true;
						}	
					}
					else
					{
						return true;
					}
				}
				else
				{
					return true;
				}	
				return false;
			}
			
			if (campo is CheckBox)
			{	
				var campoCbx:CheckBox=campo as CheckBox;
				if(campoCbx!=null)
				{
					return true;					
				}
				else
				{
					return true;
				}
				return false;
			}
			if (campo is TextArea)
			{	
				var campoTxtA:TextArea=campo as TextArea;
				
				if(campoTxtA!=null)
				{
					if(campoTxtA.text != null)
					{	
						if(campoTxtA.text.length>0)
						{
							return false;
						}
						else
						{
							return true;
						}	
					}
					else
					{
						return true;
					}
				}
				else
				{
					return true;
				}	
				return false;
			}
			return false;	
		}
		
		public static function obtenerCamposVacios(arrayDto:ArrayCollection, displayObject:DisplayObjectContainer):ArrayCollection{
			var componente:UIComponent;
			var arrayDtoValida : ArrayCollection = new ArrayCollection();
			
			for each(var item:CampoRequeridoDTO in arrayDto)
			{
				
				try{						
					componente = displayObject.getChildByName(item.nombreComponente) as UIComponent;
					if(componente==null)
						componente =displayObject[item.nombreComponente];
					
					if(isCampoVacio(componente))
					{
						//campoRequeridoDTOResult.token = avaluosService.campoRequeridoDTO(campo);
						arrayDtoValida.addItem(item);
					}	
					
				}catch(e:Error)
				{
					trace(e);
				}
			}
			return arrayDtoValida ;
			 
		}
		
		public static function validarCamposObligarios(arrayDtoValida:ArrayCollection, displayObject:DisplayObjectContainer):ArrayCollection{
			var componente:UIComponent;
			for each(var item:CampoRequeridoDTO in arrayDtoValida)
			{
				
				try{					
					componente = displayObject.getChildByName(item.nombreComponente) as UIComponent;
					if(componente==null)
						componente =displayObject[item.nombreComponente];
					
					// if(item.requerido)
					if(componente!=null)
					{
						//Pintar verde
						componente.setStyle("contentBackgroundColor", 0xcbffde);
						componente.toolTip="Requerido";
					}	
					
				}catch(e:Error)
				{
					trace(e);
				}
			}
			return arrayDtoValida; 
		}
		
		
		
 
	}
}