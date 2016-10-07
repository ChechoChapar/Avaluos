package permisos
{
	/**
	 * Clase para almacenar los permisos que tiene un usuario sobre un modulo del aplicativo
	 */
	public class Permiso
	{

		private var _Ejecuta:Boolean;
		private var _Adiciona:Boolean;
		private var _Consulta:Boolean;
		private var _Imprime:Boolean;
		private var _Edita:Boolean;
		private var _Elimina:Boolean;

		public function get Ejecuta():Boolean
		{
			return _Ejecuta;
		}

		public function set Ejecuta(value:Boolean):void
		{
			_Ejecuta = value;
		}

		public function get Adiciona():Boolean
		{
			return _Adiciona;
		}

		public function set Adiciona(value:Boolean):void
		{
			_Adiciona = value;
		}

		public function get Consulta():Boolean
		{
			return _Consulta;
		}

		public function set Consulta(value:Boolean):void
		{
			_Consulta = value;
		}

		public function get Imprime():Boolean
		{
			return _Imprime;
		}

		public function set Imprime(value:Boolean):void
		{
			_Imprime = value;
		}

		public function get Edita():Boolean
		{
			return _Edita;
		}

		public function set Edita(value:Boolean):void
		{
			_Edita = value;
		}

		public function get Elimina():Boolean
		{
			return _Elimina;
		}

		public function set Elimina(value:Boolean):void
		{
			_Elimina = value;
		}
	}
}