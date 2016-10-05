package com.segurosbolivar.avaluos.modulos {
    import flash.events.*;
    import flash.net.FileReference;
    import flash.net.URLRequest;
    import flash.net.URLVariables;
    import flash.net.navigateToURL;
    
    import mx.controls.Alert;
    import mx.controls.Button;
    import mx.controls.ProgressBar;
    import mx.core.FlexGlobals;
    import mx.core.UIComponent;
    
    import valueObjects.Usuario;
	
    public class FileDownloadAnexos extends UIComponent {

		//private const DOWNLOAD_URL:String = "http://10.1.104.206:8080/avaluosWeb/tmp/";
		//private const DOWNLOAD_URL:String = "http://oastest:2777/avaluosWeb/tmp/";
		//private const DOWNLOAD_URL:String = "http://oastest.bolnet.com.co/avaluosWeb/tmp/";
		private const DOWNLOAD_URL:String = FlexGlobals.topLevelApplication.parameters.urlArchivo+"/tmp/";
		//private const LOG_DOWNLOAD_URL:String = "http://10.1.104.206:8080/avaluosWeb/log/";
		//private const LOG_DOWNLOAD_URL:String = "http://oastest.bolnet.com.co/avaluosWeb/log/";
		//private const LOG_DOWNLOAD_URL:String = "http://oastest:2777/avaluosWeb/log/";
		private const LOG_DOWNLOAD_URL:String = FlexGlobals.topLevelApplication.parameters.urlArchivo+"/log/";
		private const PROCEDATOS_DOWNLOAD_URL:String = FlexGlobals.topLevelApplication.parameters.urlArchivo;
		
		//cambiar a servlet que cargue bytes desde entitimanager
		//private const COMPLEMENTOS_DOWNLOAD_URL:String = FlexGlobals.topLevelApplication.parameters.urlArchivo+"/complementos/";
		private const COMPLEMENTOS_DOWNLOAD_URL:String = FlexGlobals.topLevelApplication.parameters.urlArchivo+"/ComplementosServlet";
		//private const COMPLEMENTOS_DOWNLOAD_URL:String = FlexGlobals.topLevelApplication.parameters.urlArchivo+"/ComplementosServlet?cedula=80093644&operacion=download";
		
        private var fr:FileReference;
        private var pb:ProgressBar;
        private var btn:Button;

        public function FileDownloadAnexos() {
        }

        /**
         * Configura las referencias a los componentes, adiciona los listeners, para 
		 * los eventos SELECT, OPEN, PROGRESS, y COMPLETE.
         */
        public function init(pb:ProgressBar, btn:Button):void {
            this.pb = pb;
            this.btn = btn;
            fr = new FileReference();
            fr.addEventListener(Event.OPEN, openHandler);
            fr.addEventListener(ProgressEvent.PROGRESS, progressHandler);
            fr.addEventListener(Event.COMPLETE, completeHandler);
        }

        /**
		 * Cancela inmediatamente la descarga en progreso y desactiva el botón cancelar.
         */
        public function cancelDownload():void {
            fr.cancel();
            pb.label = "DESCARGA CANCELADA";
            btn.enabled = false;
        }

        /**
		 * Comienza la descarga del archivo especificado en la constante DOWNLOAD_URL
         */
        public function startDownload(nomberArchivo:String):void {
            var request:URLRequest = new URLRequest();
            request.url = DOWNLOAD_URL+nomberArchivo;
			fr.download(request);
//			navigateToURL(request,"_blank");
			
			
        }
		
		/**
		 * Comienza la descarga del log de errrores de la aplicación en la ruta LOG_DOWNLOAD_URL
		 */
		public function startLogDownload(nomberArchivo:String):void {
			var request:URLRequest = new URLRequest();
			request.url = LOG_DOWNLOAD_URL+nomberArchivo;
//			fr.download(request);
			navigateToURL(request,"_blank");
			
		}
		
		/**
		 * Comienza la descarga del archivo de procedaros
		 */
		public function startProcedatosDownload(nomberArchivo:String):void {
			var request:URLRequest = new URLRequest();
			request.url = PROCEDATOS_DOWNLOAD_URL+nomberArchivo;
			fr.download(request);
//			navigateToURL(request,"_blank");
			
		}
		
		/**
		 * Comienza la descarga del archivo de complementos
		 */
		//public function startComplementosDownload(idComplemento:String):void {
		public function startComplementosDownload(idArchivo:String,nombreArchivo:String,usuario:Usuario):void {
			var request:URLRequest = new URLRequest();			
			
			//var request:URLRequest = new URLRequest(COMPLEMENTOS_DOWNLOAD_URL,nombreArchivo);
			
			var variables:URLVariables = new URLVariables();
			//var usuario:Usuario = parentApplication.getUsuarioActual();
			variables.cedula = usuario.codigoUsuario;
			variables.operacion = "download";
			variables.idArchivo=idArchivo;
			
			variables.DocumentID = nombreArchivo;
			
			request.data = variables;
			
			//request.url = COMPLEMENTOS_DOWNLOAD_URL+nomberArchivo;
			//			fr.download(request);
			
			
			//cedula=80093644&operacion=download";
			
			//request.url = COMPLEMENTOS_DOWNLOAD_URL+"&idArchivo="+idArchivo;
			request.url = COMPLEMENTOS_DOWNLOAD_URL;
			request.method="POST";
			//fr.name=nombreArchivo;		
			fr.download(request,nombreArchivo);			
			//navigateToURL(request,"_blank");
			
		}
		

        /**
		 * Cuando un evento OPEN es disparado, cambia el rótulo de la barra de progreso
		 * y activa el botón "Cancelar", el cual permite al usuario abortar la operación de descarga
         */
        private function openHandler(event:Event):void {
			if(pb != null){
				pb.label = "DESCARGANDO %3%%";
			}
			if(btn != null){
            	btn.enabled = true;
			}
        }
        
        /**
		 * Mientrás el archivo es descargado, actualiza el rótulo y el estado de la barra de progreso
         */
        private function progressHandler(event:ProgressEvent):void {
			if(pb != null){
				pb.setProgress(event.bytesLoaded, event.bytesTotal);
			}
        }

        /**
		 * Una vez la descarga ha sido completada, cambia el rótulo de la barra de progreso
		 * y desactiva el botón "Cancelar" desde que la descarga ya haya sido completada.
         */
        private function completeHandler(event:Event):void {
			if(pb != null){
				pb.label = "DESCARGA COMPLETA";
				pb.setProgress(0, 100);
			}
			if(btn != null){
            	btn.enabled = false;
			}
        }
    }
}