package com.segurosbolivar.avaluos.componentes {

	import com.segurosbolivar.avaluos.componentes.WndAnexosPdf;
	
	import flash.events.*;
	import flash.net.FileFilter;
	import flash.net.FileReference;
	import flash.net.URLRequest;
	import flash.net.URLVariables;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.controls.Button;
	import mx.controls.ProgressBar;
	import mx.core.FlexGlobals;
	import mx.core.UIComponent;
		
	import valueObjects.Usuario;
	
	
	public class FileUploadAnexosPdf extends UIComponent {
	
		public var httpStatus:int = 0;
		
		private const UPLOAD_URL:String = FlexGlobals.topLevelApplication.parameters.urlArchivo+"/UploadAnexosPdfServlet";
		//private const UPLOAD_URL:String = "https://localhost:7002/avaluosWeb/UploadAnexosPdfServlet";
		private var fr:FileReference;
		private var pb:ProgressBar;
		private var idAvaluo:String;
		private var tipoCarga:String;
		private var consecutivo:String;
		private var btn:Button;
		public var codigoUsuario:String;
		
		public function FileUploadAnexosPdf() {
		}
		
		/*public function FileUploadAnexosPdf(usuario:String) {
			usuarioAct=usuario;
		}*/
		
		//public var ava3:AVA3_DiligenciamientoAvaluos = new AVA3_DiligenciamientoAvaluos();
		public var wndAnx:WndAnexosPdf;// = new WndAnexosPdf();
		
		/**
		 * Configura las referencias a los componentes, adiciona los listeners, para 
		 * los eventos SELECT, OPEN, PROGRESS, y COMPLETE. 
		 */
		//public function init(pb:ProgressBar, btn:Button,ava3:AVA3_DiligenciamientoAvaluos):void {
		//public function init(pb:ProgressBar, btn:Button,wndAnx:WndAnexosPdf):void {
		public function init(pb:ProgressBar, btn:Button,wndAnx:WndAnexosPdf):void {
			this.pb = pb;
			this.wndAnx=wndAnx;
			this.btn=btn;
			
			fr = new FileReference();
			fr.addEventListener(Event.SELECT, selectHandler);
			fr.addEventListener(Event.OPEN, openHandler);
			fr.addEventListener(ProgressEvent.PROGRESS, progressHandler);
			fr.addEventListener(Event.COMPLETE, completeHandler);
			fr.addEventListener(DataEvent.UPLOAD_COMPLETE_DATA, completeErrHandler);
			fr.addEventListener(IOErrorEvent.IO_ERROR, _onFileIOError);
			fr.addEventListener(SecurityErrorEvent.SECURITY_ERROR, _onFileSecurityError);
			
			fr.addEventListener(HTTPStatusEvent.HTTP_STATUS, httpStatusHandler);
			
		}
		
		public function httpStatusHandler(evt:HTTPStatusEvent):void {
			
			httpStatus=evt.status;
			
			if(httpStatus!=504)
			{
				pb.label = "Fallo el cargue: Http "+httpStatus;
				//btn.enabled = false;
				
				//dispatchEvent(new Event("error", true));// bubble to parent
			}
		}
		
		private function _onFileIOError(event:Event):void {
			
			//Se coloca esta validacion para evitar los errores por tiempo de espera en Access Manager.
			if(httpStatus!=504)
			{			
				//messageUnInit();
				
				pb.label = "Fallo el cargue: "+event.toString();
				
				//btn.enabled = false;
				
				//err.getStackTrace();
				Alert.show(event.toString());
				//dispatchEvent(new Event("error", true));// bubble to parent	
			}
			
		}
		private function _onFileSecurityError(event:Event):void {
			
			//messageUnInit();
			
			fr.cancel();
			pb.label = "Fallo el cargue: ";
			
			//btn.enabled = false;
			
			Alert.show(event.toString());
			
			dispatchEvent(new Event("error", true));// bubble to parent			
			
		}
		
		
		private function completeErrHandler( event:DataEvent ) :void			
		{						
			fr.cancel();
			pb.label = "Fallo el cargue ";					
			Alert.show(event.toString());		
		}
		
		/**
		 * Inmediatamente cancela la carga en progreso y desactiva el botón cancelar
		 */
		public function cancelUpload():void {
			if(fr!=null)
			{	
				fr.cancel();
				fr=null;
			}
			pb.label = "CARGA CANCELADA";
		}
		
		/**
		 * Lanza la ventana de búsqueda de archivos, la cual permite al usuario 
		 * seleccionar un archivo para cargar en el servidor
		 */
		public function startUploadImgs(idAvaluo:String,consecutivo:String):void {
			var jpg:FileFilter = new FileFilter("Archivos JPG (*.jpg)", "*.jpg;");
			var jpeg:FileFilter = new FileFilter("Archivos JPEG (*.jpeg)", "*.jpeg;");
			var gif:FileFilter = new FileFilter("Archivos GIF (*.gif)", "*.gif;");			
			var bmp:FileFilter = new FileFilter("Archivos BMP (*.bmp)", "*.bmp;");
			var types:Array = new Array(jpg,jpeg,gif,bmp);
			this.idAvaluo = idAvaluo;
			//this.tipoCarga = tipoCarga;
			this.consecutivo = consecutivo;
			if(fr!=null)
				fr.browse(types);
		}
		
		var request:URLRequest;
		
	
		/**
		 * Comienza la carga del archivo especificado en la constante UPLOAD_URL.
		 */
		private function selectHandler(event:Event):void {
			
			pb.label = fr.name;
			
			//var usuario:Usuario = usuarioAct;
			//var usuario:Usuario = parentApplication.getUsuarioActual();			
			var usuario:Usuario = new Usuario;
			//usuario.cedulaEmpleado="41700790"
			usuario.codigoUsuario=codigoUsuario;
			request = new URLRequest();
			//request.method = "POST";
			var variables:URLVariables = new URLVariables(); 
			variables.codigoUsuario = usuario.codigoUsuario;
			variables.idAvaluo = idAvaluo;
			variables.consecutivo = consecutivo;
			
			request.data = variables; 
			request.url = UPLOAD_URL;
			var tamano:uint = fr.size;
			
		}
		
		public function startUpload():void
		{
			if(fr!=null && request!=null)
				fr.upload(request);
		}
		
		/**
		 * Cuando el evento OPEN se ha disparado, cambia el rótulo de la barra de progreso
		 * y activa el botón "Cancelar", el cual permite al usuario abortar la operación de carga
		 */
		private function openHandler(event:Event):void
		{
			pb.label = "CARGANDO";
		}		
		/**
		 * Mientrás el archivo es cargado, actualiza el rótulo de estado y la barra de progreso
		 */
		private function progressHandler(event:ProgressEvent):void
		{
			pb.label = "CARGANDO %3%%";
			try{
				pb.setProgress(event.bytesLoaded, event.bytesTotal);
			}
			catch (err:Error){
				err.getStackTrace();
			}
			//var cadena:String;	
		}
		
		public function isInitialized():Boolean
		{
			var tmp:String;
			
			try
			{
				tmp=fr.name;
			}catch(ex:Error)
			{
				return false;
			}
			if(tmp==null)
			{
				return false;
			}	
			return true;
		}
		
		/**
		 * Una vez se ha completado la carga, cambia el rótulo de la barra de progreso y
		 * desactiva el botón "Cancelar" desde que la carga ya haya sido completada
		 */
		private function completeHandler(event:Event):void
		{
			pb.label = "CARGA COMPLETA";
			pb.setProgress(0, 100);
		}
	
}
}	