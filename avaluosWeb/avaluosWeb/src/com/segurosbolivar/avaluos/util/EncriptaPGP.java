package com.segurosbolivar.avaluos.util;

import java.io.*;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

//import com.segurosbolivar.avaluos.constantes.ConstantesAvaluos;
//import com.segurosbolivar.avaluos.servlet.LogClass;

/**
 * Clase para realizar la encripcion de un archivo. Lo hace ejecutando el comando PGP
 * del sistema operativo del servidor. 
 * Utiliza el bash shell encripta.sh para ejecutar la encripcion
 */
public class EncriptaPGP  /*extends LogClass<EncriptaPGP>*/
{ 

	/** Mecanismo de log */
	//private static final Logger log = Logger.getLogger("com.segurosbolivar.avaluos.util.EncriptaPGP");
	//FileHandler fh;
	
	/**
	 * Constructor por defecto
	 */
	public EncriptaPGP(){

//		try {
//			// Configuracion del log
//			fh = new FileHandler(Util.getProperty("log"), true);
//			log.addHandler(fh);
//			log.setLevel(Level.ALL);
//			SimpleFormatter formatter = new SimpleFormatter();
//			fh.setFormatter(formatter);
//		} catch (Exception e) {
//			e.printStackTrace();
//			System.out.println(e.getMessage());			
//		}

	}

	//public int encriptar(String rutaArchivo,String nombreArchivoTxt)
	/**
	 * Metodo que llama al sistema operativo del servidor para llamar el comando de 
	 * encripcion PGP
	 * @param  rutaArchivo la ruta del servidor donde se encuetra el archivo a
	 * encriptar
	 */
	public int encriptar(String rutaArchivo)	
	{  
		//Codigo de retorno del proceso
		//Es 0 al finalizar la ejecucion si esta es exitosa.
		//Se cambia a -1 para garantizar que se retorne un nuevo valor al encriptar
		int returnCode = -1;
		try
		{	
			/**
			 * Inicia codigo utilizado con el fin de probar la encripcion localmente
			 * @deprecated
			 */
			System.out.println("Directorio al encriptar "+ System.getProperty("user.dir"));
			String ruta_pgp="/cygdrive/c/proyecto_avaluos_svn/avaluosWeb/WebContent/ziptmp/";
			String ruta_cygwin="/cygdrive/";
			String rutaSH=Util.getProperty("ruta.cargue.masivo")+System.getProperty("file.separator");
			if(rutaArchivo.contains("\\"))
			{
				rutaArchivo=rutaArchivo.replace("\\", "/");
				// rutaArchivo=rutaArchivo.replace("C:", "c");
				//rutaArchivo=rutaArchivo.replace(":", "");
				// rutaArchivo=ruta_cygwin.concat(rutaArchivo);
				
				rutaSH=rutaSH.replace("\\", "/");
				// rutaSH=rutaSH.replace("C:", "c");
				// rutaSH=ruta_cygwin.concat(rutaSH);
				
			}
			/**
			 * Finaliza Codigo utilizado con el fin de probar la encripcion localmente
			 */
			
			//se arma el comando a ejecutar
			String[] command = {"bash", "--login", "-i","-li",rutaSH+"encripta.sh",rutaArchivo};
			System.out.println("Comando a ejecutar: " + command );
			//inserta el comando a ejcutar con fines de debug
			InsertaTest("bash --login -i -li"+ Util.getProperty("ruta.cargue.masivo")+System.getProperty("file.separator")+"encripta.sh "+rutaArchivo);
			System.out.println("Usuario PGP "+System.getProperty("user.name"));
			
			//Ejecuta el proceso
			Process process = Runtime.getRuntime().exec(command);				
			//Con fines de debug
			InsertaTest("Paso por el comando "+new java.util.Date());

			//Permite la ejecucion del proceso por 15 segundos, si en este tiempo no se 
			//ejecuta genera un timeout.
			
			long now = System.currentTimeMillis(); 
			long timeoutInMillis = 1000L * 15;
			long finish = now + timeoutInMillis; 
			
			while ( isAlive( process ) )
			{ 
				if ( System.currentTimeMillis() > finish ) {
					process.destroy();
					System.out.println("Supero el tiempo de espera de 15 segundos para encriptar");
					//Con fines de debug
					InsertaTest("Supero el tiempo de espera de 15 segundos para encriptar");
				}
			} 
	
			//recibe el codigo de salida del proceso
			returnCode = process.waitFor();
			
			//recibe el string con la descripcion del error
			String linea;
			BufferedReader input = new BufferedReader (new InputStreamReader(process.getErrorStream()));
			while ((linea = input.readLine()) != null) {
				System.out.println("Línea de comando encripta: "+linea);
				//log.log(Level.SEVERE, "err "+línea);				
				InsertaTest(linea);				
			}
			input.close();
			input = new BufferedReader (new InputStreamReader(process.getInputStream()));
			while ((linea = input.readLine()) != null) {
				System.out.println("Leyendo línea "+linea);
				InsertaTest(linea);
			}
			input.close();
			System.out.println("Return code = " + returnCode);
			InsertaTest("Return code = " + returnCode);	
		} 
		catch (Exception e)
		{
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return returnCode;
	}

	/**
	 * Metodo utilizado para insertar un valor en la tabla de pruebas X
	 * @deprecated Utilizado para fines de debug con la ejecucion del proceso.
	 */
	public void InsertaTest(String valor)
	{
	  //02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
	  EntityManager em =null;    
      try{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("avaluosJpa");
        /*EntityManager*/ em = emf.createEntityManager();

		em.getTransaction().begin();
        Query query = em.createNativeQuery("insert into x(valor) values('"+valor.replace('\'', ' ')+"')");
        query.executeUpdate();
        em.getTransaction().commit();
      }catch(Exception e)
      {
  		e.printStackTrace();
		System.out.println("Mensaje Encripta "+e.getMessage());
		//log.log(Level.SEVERE,""+e.getMessage());
      }
      finally{
  		//02-Jul-2013: Mantis 0017211: Revisar el close del Entity Manager en los DAOs de Avalúos
  		//try{em.close();}catch(Exception ex1){ex1.printStackTrace();}
      }
	}

	/**
	 *	Metodo para determinar si un Process se encuentra en ejecucion y activo. 
	 */
	public static boolean isAlive( Process p ) {
		try
		{
			p.exitValue();
			return false;
		} catch (IllegalThreadStateException e) {
			return true;
		}
	}

	/**
	 * Pruebas
	 */
	public static void main(String[] args) throws InterruptedException
	{
		EncriptaPGP e = new EncriptaPGP();		
		e.encriptar("C:\\proyecto_avaluos_svn\\avaluosWeb\\WebContent\\ziptmp\\INMUEBLE_20110309_139.txt");
		//e.encriptar("/home/ubuntu/C_DRIVE/proyecto_avaluos_svn/avaluosWeb/WebContent/ziptmp/INMUEBLE_20110224_90.txt");		
		//Thread.currentThread().sleep(6000);
	}	
	
} 
