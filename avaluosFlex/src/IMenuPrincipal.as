package
{
	//Inclusion de Objetos de mensajeria
	import mx.messaging.Consumer;
	import mx.messaging.Producer;
	import valueObjects.Usuario;
	/**
	 * Interface del menu principal, es requerida para que los modulos
	 * cargados por el puedan obtener el usuario actual y los permisos
	 * contenidos en el.
	 **/
	public interface IMenuPrincipal
	{
		//function setTextoP(t:String):void
		/**
		 * Metodo para obtener el usuario actual del sistema
		 * @return Usuario
		 **/	
		function getUsuarioActual():Usuario
		//Inclusion de Objetos de mensajeria
		function getProducer():Producer
		function getConsumer():Consumer
	}
}