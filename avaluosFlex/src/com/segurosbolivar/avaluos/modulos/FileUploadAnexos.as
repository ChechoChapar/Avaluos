package com.segurosbolivar.avaluos.modulos {
    import com.segurosbolivar.avaluos.modulos.AVA3_DiligenciamientoAvaluos;
    
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
	
	
    public class FileUploadAnexos extends UIComponent {

		private const UPLOAD_URL:String = FlexGlobals.topLevelApplication.parameters.urlArchivo+"/UploadAnexosServlet";
		
		private const UPLOAD_FACHADA_LISTA_URL:String = FlexGlobals.topLevelApplication.parameters.urlArchivo+"/UploadAnexosPdfServlet";
        
		private var fr:FileReference;
        private var pb:ProgressBar;
		private var idAvaluo:String;
		private var tipoCarga:String;
		
        public function FileUploadAnexos() {
        }

		public var ava3:AVA3_DiligenciamientoAvaluos = new AVA3_DiligenciamientoAvaluos();

		/**
		 * Configura las referencias a los componentes, adiciona los listeners, para 
		 * los eventos SELECT, OPEN, PROGRESS, y COMPLETE. 
		 */
		public function init(pb:ProgressBar, btn:Button,ava3:AVA3_DiligenciamientoAvaluos):void {
			this.pb = pb;
			this.ava3=ava3;
			
			fr = new FileReference();
			fr.addEventListener(Event.SELECT, selectHandler);
			fr.addEventListener(Event.OPEN, openHandler);
			fr.addEventListener(ProgressEvent.PROGRESS, progressHandler);
			fr.addEventListener(Event.COMPLETE, completeHandler);
			fr.addEventListener(DataEvent.UPLOAD_COMPLETE_DATA, completeErrHandler);
			fr.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler); 
			
		}
		
		private function ioErrorHandler( event:IOErrorEvent ) :void			
		{	
			var usuario:Usuario = parentApplication.getUsuarioActual();
			var request:URLRequest = new URLRequest();
			var variables:URLVariables = new URLVariables(); 
			variables.codigoUsuario = usuario.codigoUsuario;
			variables.idAvaluo = idAvaluo;
			variables.tipoCarga = tipoCarga;
			variables.usuarioCreacion = usuario.codigoUsuario;
			request.data = variables; 
			request.url = UPLOAD_URL;
			var tamano:uint = fr.size;	
			
			try{
				fr.upload(request); 
			}catch(err:Error){
				err.getStackTrace();
				trace(err.message); 
			}			
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
            fr.cancel();
            pb.label = "CARGA CANCELADA";
        }

        /**
		 * Lanza la ventana de búsqueda de archivos, la cual permite al usuario 
		 * seleccionar un archivo para cargar en el servidor
         */
        public function startUploadFachada(idAvaluo:String,tipoCarga:String):void {
			var jpg:FileFilter = new FileFilter("Archivos JPG (*.jpg)", "*.jpg;");
			var jpeg:FileFilter = new FileFilter("Archivos JPEG (*.jpeg)", "*.jpeg;");
			var types:Array = new Array(jpg,jpeg);
			this.idAvaluo = idAvaluo;
			this.tipoCarga = tipoCarga;
            fr.browse(types);
        }
		
		/**
		 * Lanza la ventana de búsqueda de archivos, la cual permite al usuario 
		 * seleccionar un archivo para cargar en el servidor
		 */
		public function startUploadAnexos(idAvaluo:String,tipoCarga:String):void {
			var pdf:FileFilter = new FileFilter("Archivos PDF (*.pdf)", "*.pdf;");
			var types:Array = new Array(pdf);
			this.idAvaluo = idAvaluo;
			this.tipoCarga = tipoCarga;
			fr.browse(types);
		}

        /**
		 * Comienza la carga del archivo especificado en la constante UPLOAD_URL.
         */
        private function selectHandler(event:Event):void {
			var usuario:Usuario = parentApplication.getUsuarioActual();
			var request:URLRequest = new URLRequest();
			var variables:URLVariables = new URLVariables(); 
			variables.codigoUsuario = usuario.codigoUsuario;
			variables.idAvaluo = idAvaluo;
			variables.tipoCarga = tipoCarga;
			variables.usuarioCreacion = idAvaluo;
			request.data = variables; 
            request.url = UPLOAD_URL;
			var tamano:uint = fr.size;		
			
			if((this.tipoCarga == "fachada") && (tamano > 10485769)) {
				Alert.show("Esta intentando cargar un archivo demasiado grande, el tamaño debe ser menor a 10Mb (10.000Kb)");
				cancelUpload();
			}
			else 
			{ if((this.tipoCarga == "anexos") && (tamano > 1048575)) 
			  { Alert.show("Esta intentando cargar un archivo demasiado grande, el tamaño debe ser menor a 1Mb (1.000Kb)");
				cancelUpload();
			  }
			  else 
			  {   
				  //Cargar la fachada para el anexo PDF. generado desde la pantalla.				  
				  
				  /*var request1:URLRequest = new URLRequest();
				  var variables1:URLVariables = new URLVariables(); 
				  variables1.codigoUsuario = usuario.codigoUsuario;
				  variables1.idAvaluo = idAvaluo;
				  request1.data = variables; 
				  request1.url = UPLOAD_FACHADA_LISTA_URL;				  
				  variables.consecutivo = "1";
				  
				  var fr1:FileReference = new FileReference();
				  
				  fr1 = fr;
				  */
				  
				  /*fr1.creationDate=fr.creationDate;
				  fr1.creator = fr.creator;
				  fr1.data = fr.data;
				  fr1.modificationDate = fr.modificationDate;
				  fr1.name = fr.name;
				  fr1.size = fr.size;
				  fr1.type = fr.type;*/
				  
				  fr.upload(request);
				  
				  //fr1.upload(request1);
				  				  
			  }
			}
        }

        /**
		 * Cuando el evento OPEN se ha disparado, cambia el rótulo de la barra de progreso
		 * y activa el botón "Cancelar", el cual permite al usuario abortar la operación de carga
         */
        private function openHandler(event:Event):void {
            pb.label = "CARGANDO";
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
        }
    }
}