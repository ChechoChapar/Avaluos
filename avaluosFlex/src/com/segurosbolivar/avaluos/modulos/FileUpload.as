package com.segurosbolivar.avaluos.modulos {
    import com.segurosbolivar.avaluos.modulos.AVA2_PublicacionArchivo;
    
    import flash.events.*;
    import flash.net.FileReference;
    import flash.net.URLRequest;
    import flash.net.URLVariables;
    
    import mx.controls.Alert;
    import mx.controls.Button;
    import mx.controls.ProgressBar;
    import mx.core.FlexGlobals;
    import mx.core.UIComponent;
    
    import valueObjects.Usuario;
	
    public class FileUpload extends UIComponent {

		//private const UPLOAD_URL:String = "http://10.1.104.206:8080/avaluosWeb/UploadServlet";
		//private const UPLOAD_URL:String = "http://oastest.bolnet.com.co/avaluosWeb/UploadServlet";
		private const UPLOAD_URL:String = FlexGlobals.topLevelApplication.parameters.urlArchivo+"/UploadServlet";
        private var fr:FileReference;
        private var pb:ProgressBar;
        private var btn:Button;
		
        public function FileUpload() {
        }

		public var ava2:AVA2_PublicacionArchivo = new AVA2_PublicacionArchivo();

		/**
		 * Configura las referencias a los componentes, adiciona los listeners, para 
		 * los eventos SELECT, OPEN, PROGRESS, y COMPLETE. 
		 */
		public function init(pb:ProgressBar, btn:Button,ava2:AVA2_PublicacionArchivo):void {
			this.pb = pb;
			this.btn = btn;
			this.ava2=ava2;
			
			fr = new FileReference();
			fr.addEventListener(Event.SELECT, selectHandler);
			fr.addEventListener(Event.OPEN, openHandler);
			fr.addEventListener(ProgressEvent.PROGRESS, progressHandler);
			fr.addEventListener(Event.COMPLETE, completeHandler);
			
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
         */
        private function selectHandler(event:Event):void {
			var usuario:Usuario = parentApplication.getUsuarioActual();
			var request:URLRequest = new URLRequest();
			var variables:URLVariables = new URLVariables(); 
			variables.codigoUsuario = usuario.codigoUsuario;
			request.data = variables; 
            request.url = UPLOAD_URL;
			var tamano:uint = fr.size;
			if(tamano > 10000000) {
				Alert.show("Esta intentando cargar un archivo demasiado grande, el tamaño debe ser menor a 10Mb (10.000Kb)");
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
            pb.label = "CARGANDO %%%";
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
			ava2.cargarArchivo();
        }
    }
}