package modulos
{
	import permisos.Permiso
	public interface IModule
	{
		function setTexto(t:String):void	
		function setPermisos(listaPermisos:Permiso):void
		function getPermisos():Permiso
		function ejecutar():void
		function adicionar():void
		function consultar():void
		function imprimir():void
		function editar():void
		function eliminar():void	
			
			
	}
}