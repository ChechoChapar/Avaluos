package com.segurosbolivar.avaluos.constantes;

/**
 * Clase de constantes generales del sistema
 * 
 * @author Seguros Bolivar
 * @version 1.0
 */
public abstract class ConstantesAvaluos {
	
	/**Maximo tamaño de los archivos que se pueden cargar*/	
	public final static int CONST_LIMITE_CONSULTA = 1000;
	
	/**Porcentaje de avance obra para no enviar a asobancaria*/
	public final static int PORCENTAJE_ASOBANCARIA = 69;	
	
    	/** Mensaje de estado de transacción exitosa*/
	public final static String EXITO = "Proceso realizado satisfactoriamente";
	/** Mensaje de estado de transacción fallida*/
	public final static String ERROR = "Por favor inténtelo de nuevo";	
	/** Mensaje de estado de transacción fallida*/
	
	public final static String CONSTRAINT = "El registro a insertar ya existe";
	
	/** Mensaje de estado de consulta que no arroja resultados*/ 
	public final static String NULO = "Sin resultados, intente otros criterios de búsqueda";
	/** Mensaje de estado de consulta que no arroja resultados*/
	public final static String GENERAR_AVALUOS_VACIO = "No existen avalúos para generar archivo";
	/** Nombre del archivo de configuración del sistema */
	public final static String CONFIGURACION = "config.properties";
	/** Estado que deben tener los avluos a ser enviados */
	public final static String ESTADO_AVALUOS_ENIVAR = "3";
	/** Eatdo aprobado del avaluo Abrobado,  */
	public final static String ESTADO_AVALUOS_APROBADO = "3";
	/** Separador de campos en archivos planos */
	public final static String SEPARADOR_CAMPOS = "|";
	
	public final static int CATEGORIA_LOCAL	      = 6;
	public final static int CATEGORIA_BODEGA	  = 5;
	public final static int CATEGORIA_OFICINA	  = 7;
	public final static int CATEGORIA_LOTE	      = 12;
	public final static int CATEGORIA_CASA	      = 4;
	public final static int CATEGORIA_CASA_RURAL  = 13;
	public final static int CATEGORIA_APARTAMENTO = 2;
	public final static int CATEGORIA_LOTE_URBANO = 15;
	
	/** Categora de un avaluo: inmueble */
	public final static String CATEGORIA_AVALUO_INMUEBLE = "INMUEBLE";
	/** Categoria de un avaluo ,ueble */
	public final static String CATEGORIA_AVALUO_MUEBLE = "mueble";
	/** Tipos de cargue en la tabla pgb_cargue_temporal: cargue */
	public final static String TIPO_CARGUE_CARGUE = "CARGUE";
	/** Tipos de cargue en la tabla pgb_cargue_temporal: descargua */
	public final static String TIPO_CARGUE_DESCARGA = "DESCARGA";
	/** Tipos de cargue en la tabla pgb_cargue_temporal: validaweb */
	public final static String TIPO_CARGUE_VALIDAWEB = "VALIDAWEB";
	/** Estados del cargue en la tabla pgb_cargue_temporal: cargado */
	public final static String ESTADO_CARGUE_CARGADO = "C";
	/** Estados del cargue en la tabla pgb_cargue_temporal: rechazado */
	public final static String ESTADO_CARGUE_RECHAZADO = "R";
	/** Estados del cargue en la tabla pgb_cargue_temporal: aplicado */
	public final static String ESTADO_CARGUE_APLICADO = "A";
	/** Estados del cargue en la tabla pgb_cargue_temporal: aplicado */
	public final static String ESTADO_CARGUE_APLICADO_DESCARGA = "APLICADO";
	/** Estados del log de archivos en la tabla PGB_LOGS_GENERA_ARCHIVOS: generado */
	public final static String ESTADO_LOGS_ARCHIVO_GENERADO = "G";
	/** Estados del log de archivos en la tabla PGB_LOGS_GENERA_ARCHIVOS: error */
	public final static String ESTADO_LOGS_ARCHIVO_ERROR = "R";
	/** Estados del log de archivos en la tabla PGB_LOGS_GENERA_ARCHIVOS: enviado */
	public final static String ESTADO_LOGS_ARCHIVO_ENVIADO = "E";
	/** Estados del log de archivos en la tabla PGB_LOGS_GENERA_ARCHIVOS: reversado */
	public final static String ESTADO_LOGS_ARCHIVO_REVERSADO = "V";
	/** Nombre completo de los estados del log de archivos en la tabla PGB_LOGS_GENERA_ARCHIVOS*/
	public final static String ESTADO_LOGS_ARCHIVO_GENERADO_CADENA = "Generado";
	/**  Nombre completo de los estados del log de archivos en la tabla  PGB_LOGS_GENERA_ARCHIVOS: error */
	public final static String ESTADO_LOGS_ARCHIVO_ERROR_CADENA = "Error";
	/**  Nombre completo de los estados del log de archivos en la tabla  PGB_LOGS_GENERA_ARCHIVOS: enviado */
	public final static String ESTADO_LOGS_ARCHIVO_ENVIADO_CADENA = "Enviado";
	/**  Nombre completo de los estados del log de archivos en la tabla  PGB_LOGS_GENERA_ARCHIVOS: reversado */
	public final static String ESTADO_LOGS_ARCHIVO_REVERSADO_CADENA = "Reversado";
	/**  Estados de las horas de corte: ACTIVA  */
	public final static String ESTADO_HORAS_CORTE_ACTIVA = "A";
	/**  Estados de las horas de corte: INACTIVA  */
	public final static String ESTADO_HORAS_CORTE_INACTIVA = "I";
	
	/**Maximo tamaño de los archivos que se pueden cargar*/	
	public final static int CONST_MAX_SIZE = 53000000;
	
	/** Formato de tetxo posiciones fijas stelent */
	public final static String FORMATO_LST = "lst";

	/** Formato de tetxo plano txt */
	public final static String FORMATO_TXT = "txt";
	/** Formato pdf  */
	public final static String FORMATO_PDF = "pdf";
	/** Formato zip  */
	public final static String FORMATO_ZIP = "zip";
	/** Formato Encripcion  */
	public final static String FORMATO_ENCRIPCION = "pgp";
	/** Formato xls  */
	public final static String FORMATO_XLS = "xls";
	/**Prefijo 1 nombre archivo zip*/
	public final static String PREFIJO_UNO_NOMBRE_ZIP = "C";
	/**Prefijo 2 nombre archivo zip*/
	public final static String PREFIJO_DOS_NOMBRE_ZIP = "BUA";
	/** Tipo entidad davivieda*/
	public final static String TIPO_ENTIDAD_DAVIVIENDA = "001";
	/** codigo entidad davivienda */
	public final static String CODIGO_ENTIDAD_DAVIVIENDA = "039";
	/** nombre entidad davivienda */
	public final static String NOMBRE_ENTIDAD_DAVIVIENDA = "DAVIVIENDA";
	/** Valor Corto para la opción TODOS en una lista de valores */
	public final static String TODOS_LOW_VALUE = "T";
	/** Cadena de texto para la opción TODOS en una lista de valores */
	public final static String TODOS_RV_MEANING = "[TODOS]";
	/** Tipo de informe de avaluo */
	public final static String TIPO_INFORME = "1";
	/** Estado del avaluo nuevo, según tabla de dominios CG_REF_CODES, campo rv_low_values*/
	public final static String ESTADO_AVALUO_NUEVO = "2";
	/** Constante para el nombre del pdf*/
	public final static String NOMBRE_ANEXO = "fotos";
	/** Constante para el perfil administrador*/
	public final static String PERFIL_ADMINISTRADOR = "PGBADMINIST01";
	/** Constante para el perfil perito para cargue individual*/
	public final static String PERFIL_PERITO_FORMULARIO = "PGBPERITO02";
	
	/** Constante para el perfil perito hijo para cargue individual*/
	public final static String PERFIL_PERITO_HIJO = "PGBPERITO03";
	
	/** Constante para el perfil perito para cargue masivo*/
	public final static String PERFIL_PERITO_CARGUE = "PGBPERITO01";
	/** Constante para el perfil consulta*/
	public final static String PERFIL_CONSULTA = "PGBCONSULTA01";
	/** Constante para el perfil procedatos*/
	public final static String PERFIL_PROCEDATOS = "PGBPROCEDATOS";
	/** Constante para el perfil desarrollo*/
	public final static String PERFIL_DESARROLLO = "PGBDESARROLLO";
	
	public static int DIAS_BORRADO_CARGUE = 7;
	
	public final static String ORA_00001_UK       = " El registro a insertar ya existe con el mismo consecutivo o llave, o su secuencia no esta actualizada. Verifique la información e intente de nuevo. Si persiste por favor infórmelo. ";  
	public final static String ORA_01400_INS_NULL = " La información del registro no se pudo insertar. Falta un campo requerido. Verifique e intente de nuevo. Si persiste por favor infórmelo. ";
	public final static String ORA_CONN           = " Se ha producido una desconexión momentánea con la base de datos. Intente de nuevo. si no funciona cierre el aplicativo e inténtelo nuevamente. Si persiste por favor infórmelo. ";  
	public final static String ORA_20599_PLSQL    = " La ejecución del proceso ha presentado un error. Por favor verifique la información ingresada e intente de nuevo. Si persiste por favor infórmelo. ";
	public final static String CLASSCAST          = " El aplicativo ha entrado en un estado inconsistente. Favor Solicite al administrador del sistema el reinicio del Despliegue. ";

	
}