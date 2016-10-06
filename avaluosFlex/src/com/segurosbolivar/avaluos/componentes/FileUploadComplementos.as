package com.segurosbolivar.avaluos.componentes {
	import com.segurosbolivar.avaluos.componentes.DescargaComplementos;
	
	import flash.events.*;
	import flash.net.FileReference;
	import flash.net.URLRequest;
	import flash.net.URLVariables;
	
	import mx.controls.Alert;
	import mx.controls.Button;
	import mx.controls.ProgressBar;
	import mx.core.FlexGlobals;
	import mx.core.UIComponent;
	import mx.rpc.events.FaultEvent;
	
	import valueObjects.Usuario;
	/**
	 * Clase para realizar el cargue de un complemento
	 * http://livedocs.adobe.com/flex/3/html/help.html?content=17_Networking_and_communications_9.html
	 * http://help.adobe.com/es_ES/ActionScript/3.0_ProgrammingAS3/WS5b3ccc516d4fbf351e63e3d118a9b90204-7cf6.html
	 * @see mx.core.UIComponent
	 * */
	public class FileUploadComplementos extends UIComponent {
		
		private const UPLOAD_URL:String = FlexGlobals.topLevelApplication.parameters.urlArchivo+"/ComplementosServlet";
		private var fr:FileReference;
		private var pb:ProgressBar;
		private var btn:Button;		
		var descripcion:String;
		
		public function FileUploadComplementos() {
		}
		
		public var desc:DescargaComplementos = new DescargaComplementos();	

		/**
		 * Configura las referencias a los componentes, adiciona los listeners, para 
		 * los eventos SELECT, OPEN, PROGRESS, COMPLETE, ERROR y UPLOAD_COMPLETE_DATA. 
		 */
		public function init(pb:ProgressBar, btn:Button,desc:DescargaComplementos):void {
		
			this.pb = pb;
			this.btn = btn;
			this.desc=desc;
			
			fr = new FileReference();
			fr.addEventListener(Event.SELECT, selectHandler);
			fr.addEventListener(Event.OPEN, openHandler);
			fr.addEventListener(ProgressEvent.PROGRESS, progressHandler);
			fr.addEventListener(Event.COMPLETE, completeHandler);				
			fr.addEventListener(IOErrorEvent.IO_ERROR, errorHandler);
			fr.addEventListener(SecurityErrorEvent.SECURITY_ERROR, errorHandler);
			fr.addEventListener(DataEvent.UPLOAD_COMPLETE_DATA, completeErrHandler);
		}
		
		/**
		 * Inmediatamente cancela la carga en progreso y desactiva el botón cancelar
		 */
		public function cancelUpload():void {
			fr.cancel();
			pb.label = "CARGA CANCELADA";
			btn.enabled = false;
		}
		
		/**
		 * Lanza la ventana de búsqueda de archivos, la cual permite al usuario 
		 * seleccionar un archivo para cargar en el servidor
		 */
		public function startUpload():void {
			fr.browse();
		}
		
		/**
		 * Comienza la carga del archivo especificado en la constante UPLOAD_URL.
		 * Trae del request la cedula del usuario que carga, para enviar al servlet de carga 
		 * este parametro junto con el tipo de operacion que en este caso es upload
		 */
		private function selectHandler(event:Event):void {
			var usuario:Usuario = parentApplication.getUsuarioActual();
			var request:URLRequest = new URLRequest();
			var variables:URLVariables = new URLVariables(); 
			
			variables.cedula = usuario.codigoUsuario;
			variables.operacion = "upload";
			request.data = variables;
			variables.descripcion=descripcion;
			request.url = UPLOAD_URL;
			
			var tamano:uint = fr.size;
			if(tamano > 20000000) {
				Alert.show("Esta intentando cargar un archivo demasiado grande, el tamaño debe ser menor a 20Mb (20.000Kb)");
				cancelUpload();
			}
			else {
				fr.upload(request);
			}
		}
		
		/**
		 * Cuando el evento OPEN se ha disparado, cambia el rótulo de la barra de progreso
		 * y activa el botón "Cancelar", el cual permite al usuario abortar la operación de carga
		 */
		private function openHandler(event:Event):void {
			pb.label = "CARGANDO";
			btn.enabled = true;
		}
		
		/**
		 * Mientrás el archivo es cargado, actualiza el rótulo de estado y la barra de progreso
		 */
		private function progressHandler(event:ProgressEvent):void {
			pb.label = "CARGANDO %3%%";
			try{
				pb.setProgress(event.bytesLoaded, event.bytesTotal);
			}
			catch (err:Error){
				err.getStackTrace();
			}
			var cadena:String;	
		}
		
		/**
		 * Una vez se ha completado la carga, cambia el rótulo de la barra de progreso y
		 * desactiva el botón "Cancelar" desde que la carga ya haya sido completada
		 */
		private function completeHandler(event:Event):void {
			pb.label = "CARGA COMPLETA";
			pb.setProgress(0, 100);
			btn.enabled = false;
			//desc.cargarArchivo();
			desc.refrescarData();
		}
		
		/**
		 * Cuando sucede una excepcion al cargar, cambia el rótulo de la barra de progreso y
		 * desactiva el botón "Cancelar", adicionalmente muestra una alerta con el contenido de
		 * la excepcion 
		 **/	
		private function errorHandler(event:Event):void {
			fr.cancel();
			pb.label = "Fallo el cargue " ;
			btn.enabled = false;					
			Alert.show(event.toString());
		}
		
		/**
		 * Cuando  la url de carga no retorna un mensaje satisfactorio, sino que retorna un mensaje de error
		 * se dispara este evento, se cambia el rótulo de la barra de progreso y
		 * desactiva el botón "Cancelar", adicionalmente muestra una alerta trayendo desde el servlet de carga
		 * la descripcion que este envío del mensaje  
		 */
		private function completeErrHandler( event:DataEvent ) :void			
		{						
			fr.cancel();
			pb.label = "Fallo el cargue " ;
			btn.enabled = false;					
			Alert.show(event.toString());		
		}

	}

}