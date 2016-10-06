/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - InformacionConstruccion.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.Avaluo;
import valueObjects.Dominios;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_InformacionConstruccion extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void 
    {
        try 
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.entities.InformacionConstruccion") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.InformacionConstruccion", cz);
            } 
        }
        catch (e:Error) 
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.InformacionConstruccion", cz); 
        }
    }   
     
    model_internal static function initRemoteClassAliasAllRelated() : void 
    {
        valueObjects.Dominios.initRemoteClassAliasSingleChild();
        valueObjects.Avaluo.initRemoteClassAliasSingleChild();
        valueObjects.Ciudad.initRemoteClassAliasSingleChild();
        valueObjects.Departamento.initRemoteClassAliasSingleChild();
        valueObjects.LiquidacionAvaluoTotal.initRemoteClassAliasSingleChild();
        valueObjects.AnexoFotografico.initRemoteClassAliasSingleChild();
        valueObjects.Archivo.initRemoteClassAliasSingleChild();
        valueObjects.LiquidacionAvaluo.initRemoteClassAliasSingleChild();
        valueObjects.ComportamientoOfertaDemanda.initRemoteClassAliasSingleChild();
        valueObjects.InformacionConstruccion.initRemoteClassAliasSingleChild();
        valueObjects.Observaciones.initRemoteClassAliasSingleChild();
        valueObjects.HistoricoAvaluo.initRemoteClassAliasSingleChild();
        valueObjects.InformacionInmueble.initRemoteClassAliasSingleChild();
        valueObjects.CondicionesSalubridad.initRemoteClassAliasSingleChild();
        valueObjects.LogsGeneraArchivo.initRemoteClassAliasSingleChild();
        valueObjects.InformacionBarrio.initRemoteClassAliasSingleChild();
    }

	model_internal var _dminternal_model : _InformacionConstruccionEntityMetadata;

	/**
	 * properties
	 */
	private var _internal_construidoUsoActual : String;
	private var _internal_textoCubierta : String;
	private var _internal_balcon : String;
	private var _internal_rangoConstruccionSF : String;
	private var _internal_deposito : String;
	private var _internal_usoExclusivo : String;
	private var _internal_oficina : String;
	private var _internal_estructuraReforzadaSF : String;
	private var _internal_textoEstructura : String;
	private var _internal_irregularidadPlantaBUA : String;
	private var _internal_textoFachada : String;
	private var _internal_estructuraReforzadaBUA : String;
	private var _internal_estadoCocina : String;
	private var _internal_comedor : String;
	private var _internal_fechaCreacion : Date;
	private var _internal_iluminacion : String;
	private var _internal_clubHouse : String;
	private var _internal_shutBasuras : String;
	private var _internal_numeroEdificios : String;
	private var _internal_piscina : String;
	private var _internal_parapetosCubierta : String;
	private var _internal_vetustez : String;
	private var _internal_avanceObra : String;
	private var _internal_materialEstructura : String;
	private var _internal_altura : String;
	private var _internal_porteria : String;
	private var _internal_danoPrevio : String;
	private var _internal_otrosDotacion2 : String;
	private var _internal_calidMetal : String;
	private var _internal_privado : String;
	private var _internal_pisos : String;
	private var _internal_calidadTecho : String;
	private var _internal_estadoMadera : String;
	private var _internal_bodega : String;
	private var _internal_calidadMuro : String;
	private var _internal_reparadosBUA : String;
	private var _internal_sencillo : String;
	private var _internal_banioPrivado : String;
	private var _internal_avaluo : valueObjects.Avaluo;
	private var _internal_danoPrevioBUA : String;
	private var _internal_estadoTerminadaNueva : String;
	private var _internal_presion : String;
	private var _internal_numeroHabitaciones : String;
	private var _internal_numeroAscensores : String;
	private var _internal_squash : String;
	private var _internal_irregularidadAlturaBUA : String;
	private var _internal_salonComunal : String;
	private var _internal_gimnasio : String;
	private var _internal_propiedadHorizontal : String;
	private var _internal_calidadPiso : String;
	private var _internal_banioSocial : String;
	private var _internal_usuarioCreacion : String;
	private var _internal_estadoTerminadoUsado : String;
	private var _internal_planta : String;
	private var _internal_fachada : String;
	private var _internal_citofono : String;
	private var _internal_cuartoServicio : String;
	private var _internal_simetriaPlantaSF : String;
	private var _internal_simetriaPlanta : String;
	private var _internal_ventilacion : String;
	private var _internal_sinTerminar : String;
	private var _internal_enObra : String;
	private var _internal_bombaEyectora : String;
	private var _internal_unidadPorPiso : String;
	private var _internal_terraza : String;
	private var _internal_ubicacionNivelVia : String;
	private var _internal_jardin : String;
	private var _internal_bahiaComunal : String;
	private var _internal_simetriaAltura : String;
	private var _internal_idInformacionConstruccion : String;
	private var _internal_asentamientos : String;
	private var _internal_golfito : String;
	private var _internal_usuarioTransaccion : String;
	private var _internal_zonaVerdePrivada : String;
	private var _internal_descubierto : String;
	private var _internal_banioServicio : String;
	private var _internal_sala : String;
	private var _internal_ubicacionInmueble : String;
	private var _internal_estadoRemodelacion : String;
	private var _internal_doble : String;
	private var _internal_ascensor : String;
	private var _internal_totalGarajes : String;
	private var _internal_estudio : String;
	private var _internal_conjuntoAgrupacionCerrada : String;
	private var _internal_luces : String;
	private var _internal_materialConstruccionBUA : String;
	private var _internal_fechaTransaccion : Date;
	private var _internal_sotanos : String;
	private var _internal_pisoInmueble : String;
	private var _internal_canchaMultiple : String;
	private var _internal_ubicacionFuentesHidricas : String;
	private var _internal_cubierta : String;
	private var _internal_estadoPisos : String;
	private var _internal_otraUbicacionTanque : String;
	private var _internal_golpeteo : String;
	private var _internal_estadoMuros : String;
	private var _internal_ubicacionTanque : String;
	private var _internal_servidumbre : String;
	private var _internal_pisosBodega : String;
	private var _internal_estadoMetal : String;
	private var _internal_estadoConservacion : String;
	private var _internal_estadoBanios : String;
	private var _internal_simetriaAlturaSF : String;
	private var _internal_estructuraTechos : String;
	private var _internal_danoReparadoSF : String;
	private var _internal_tanqueAgua : String;
	private var _internal_cocina : String;
	private var _internal_garajeVisitante : String;
	private var _internal_juegoNinos : String;
	private var _internal_danoPrevioSF : String;
	private var _internal_otroMaterial : String;
	private var _internal_detalleMaterialSFBUA : String;
	private var _internal_materialConstruccionSF : String;
	private var _internal_calidadMadera : String;
	private var _internal_zonasVerdes : String;
	private var _internal_totalUnidades : String;
	private var _internal_estructura : String;
	private var _internal_calidadCocina : String;
	private var _internal_bicicletero : String;
	private var _internal_aireAcondicionado : String;
	private var _internal_estadoConstruccion : String;
	private var _internal_otrosDotacion : String;
	private var _internal_estarHabitacion : String;
	private var _internal_cubierto : String;
	private var _internal_anoConstruccionBUA : String;
	private var _internal_patioInterior : String;
	private var _internal_local : String;
	private var _internal_sobrePeso : String;
	private var _internal_calidadBanio : String;
	private var _internal_tipoFachada : String;
	private var _internal_detallemat : ArrayCollection;
	model_internal var _internal_detallemat_leaf:valueObjects.Dominios;

    private static var emptyArray:Array = new Array();

    /**
     * derived property cache initialization
     */  
    model_internal var _cacheInitialized_isValid:Boolean = false;   
    
	model_internal var _changeWatcherArray:Array = new Array();   

	public function _Super_InformacionConstruccion() 
	{	
		_model = new _InformacionConstruccionEntityMetadata(this);
	
		// Bind to own data properties for cache invalidation triggering  
       
	}

    /**
     * data property getters
     */
	[Bindable(event="propertyChange")] 
    public function get construidoUsoActual() : String    
    {
            return _internal_construidoUsoActual;
    }    
	[Bindable(event="propertyChange")] 
    public function get textoCubierta() : String    
    {
            return _internal_textoCubierta;
    }    
	[Bindable(event="propertyChange")] 
    public function get balcon() : String    
    {
            return _internal_balcon;
    }    
	[Bindable(event="propertyChange")] 
    public function get rangoConstruccionSF() : String    
    {
            return _internal_rangoConstruccionSF;
    }    
	[Bindable(event="propertyChange")] 
    public function get deposito() : String    
    {
            return _internal_deposito;
    }    
	[Bindable(event="propertyChange")] 
    public function get usoExclusivo() : String    
    {
            return _internal_usoExclusivo;
    }    
	[Bindable(event="propertyChange")] 
    public function get oficina() : String    
    {
            return _internal_oficina;
    }    
	[Bindable(event="propertyChange")] 
    public function get estructuraReforzadaSF() : String    
    {
            return _internal_estructuraReforzadaSF;
    }    
	[Bindable(event="propertyChange")] 
    public function get textoEstructura() : String    
    {
            return _internal_textoEstructura;
    }    
	[Bindable(event="propertyChange")] 
    public function get irregularidadPlantaBUA() : String    
    {
            return _internal_irregularidadPlantaBUA;
    }    
	[Bindable(event="propertyChange")] 
    public function get textoFachada() : String    
    {
            return _internal_textoFachada;
    }    
	[Bindable(event="propertyChange")] 
    public function get estructuraReforzadaBUA() : String    
    {
            return _internal_estructuraReforzadaBUA;
    }    
	[Bindable(event="propertyChange")] 
    public function get estadoCocina() : String    
    {
            return _internal_estadoCocina;
    }    
	[Bindable(event="propertyChange")] 
    public function get comedor() : String    
    {
            return _internal_comedor;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaCreacion() : Date    
    {
            return _internal_fechaCreacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get iluminacion() : String    
    {
            return _internal_iluminacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get clubHouse() : String    
    {
            return _internal_clubHouse;
    }    
	[Bindable(event="propertyChange")] 
    public function get shutBasuras() : String    
    {
            return _internal_shutBasuras;
    }    
	[Bindable(event="propertyChange")] 
    public function get numeroEdificios() : String    
    {
            return _internal_numeroEdificios;
    }    
	[Bindable(event="propertyChange")] 
    public function get piscina() : String    
    {
            return _internal_piscina;
    }    
	[Bindable(event="propertyChange")] 
    public function get parapetosCubierta() : String    
    {
            return _internal_parapetosCubierta;
    }    
	[Bindable(event="propertyChange")] 
    public function get vetustez() : String    
    {
            return _internal_vetustez;
    }    
	[Bindable(event="propertyChange")] 
    public function get avanceObra() : String    
    {
            return _internal_avanceObra;
    }    
	[Bindable(event="propertyChange")] 
    public function get materialEstructura() : String    
    {
            return _internal_materialEstructura;
    }    
	[Bindable(event="propertyChange")] 
    public function get altura() : String    
    {
            return _internal_altura;
    }    
	[Bindable(event="propertyChange")] 
    public function get porteria() : String    
    {
            return _internal_porteria;
    }    
	[Bindable(event="propertyChange")] 
    public function get danoPrevio() : String    
    {
            return _internal_danoPrevio;
    }    
	[Bindable(event="propertyChange")] 
    public function get otrosDotacion2() : String    
    {
            return _internal_otrosDotacion2;
    }    
	[Bindable(event="propertyChange")] 
    public function get calidMetal() : String    
    {
            return _internal_calidMetal;
    }    
	[Bindable(event="propertyChange")] 
    public function get privado() : String    
    {
            return _internal_privado;
    }    
	[Bindable(event="propertyChange")] 
    public function get pisos() : String    
    {
            return _internal_pisos;
    }    
	[Bindable(event="propertyChange")] 
    public function get calidadTecho() : String    
    {
            return _internal_calidadTecho;
    }    
	[Bindable(event="propertyChange")] 
    public function get estadoMadera() : String    
    {
            return _internal_estadoMadera;
    }    
	[Bindable(event="propertyChange")] 
    public function get bodega() : String    
    {
            return _internal_bodega;
    }    
	[Bindable(event="propertyChange")] 
    public function get calidadMuro() : String    
    {
            return _internal_calidadMuro;
    }    
	[Bindable(event="propertyChange")] 
    public function get reparadosBUA() : String    
    {
            return _internal_reparadosBUA;
    }    
	[Bindable(event="propertyChange")] 
    public function get sencillo() : String    
    {
            return _internal_sencillo;
    }    
	[Bindable(event="propertyChange")] 
    public function get banioPrivado() : String    
    {
            return _internal_banioPrivado;
    }    
	[Bindable(event="propertyChange")] 
    public function get avaluo() : valueObjects.Avaluo    
    {
            return _internal_avaluo;
    }    
	[Bindable(event="propertyChange")] 
    public function get danoPrevioBUA() : String    
    {
            return _internal_danoPrevioBUA;
    }    
	[Bindable(event="propertyChange")] 
    public function get estadoTerminadaNueva() : String    
    {
            return _internal_estadoTerminadaNueva;
    }    
	[Bindable(event="propertyChange")] 
    public function get presion() : String    
    {
            return _internal_presion;
    }    
	[Bindable(event="propertyChange")] 
    public function get numeroHabitaciones() : String    
    {
            return _internal_numeroHabitaciones;
    }    
	[Bindable(event="propertyChange")] 
    public function get numeroAscensores() : String    
    {
            return _internal_numeroAscensores;
    }    
	[Bindable(event="propertyChange")] 
    public function get squash() : String    
    {
            return _internal_squash;
    }    
	[Bindable(event="propertyChange")] 
    public function get irregularidadAlturaBUA() : String    
    {
            return _internal_irregularidadAlturaBUA;
    }    
	[Bindable(event="propertyChange")] 
    public function get salonComunal() : String    
    {
            return _internal_salonComunal;
    }    
	[Bindable(event="propertyChange")] 
    public function get gimnasio() : String    
    {
            return _internal_gimnasio;
    }    
	[Bindable(event="propertyChange")] 
    public function get propiedadHorizontal() : String    
    {
            return _internal_propiedadHorizontal;
    }    
	[Bindable(event="propertyChange")] 
    public function get calidadPiso() : String    
    {
            return _internal_calidadPiso;
    }    
	[Bindable(event="propertyChange")] 
    public function get banioSocial() : String    
    {
            return _internal_banioSocial;
    }    
	[Bindable(event="propertyChange")] 
    public function get usuarioCreacion() : String    
    {
            return _internal_usuarioCreacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get estadoTerminadoUsado() : String    
    {
            return _internal_estadoTerminadoUsado;
    }    
	[Bindable(event="propertyChange")] 
    public function get planta() : String    
    {
            return _internal_planta;
    }    
	[Bindable(event="propertyChange")] 
    public function get fachada() : String    
    {
            return _internal_fachada;
    }    
	[Bindable(event="propertyChange")] 
    public function get citofono() : String    
    {
            return _internal_citofono;
    }    
	[Bindable(event="propertyChange")] 
    public function get cuartoServicio() : String    
    {
            return _internal_cuartoServicio;
    }    
	[Bindable(event="propertyChange")] 
    public function get simetriaPlantaSF() : String    
    {
            return _internal_simetriaPlantaSF;
    }    
	[Bindable(event="propertyChange")] 
    public function get simetriaPlanta() : String    
    {
            return _internal_simetriaPlanta;
    }    
	[Bindable(event="propertyChange")] 
    public function get ventilacion() : String    
    {
            return _internal_ventilacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get sinTerminar() : String    
    {
            return _internal_sinTerminar;
    }    
	[Bindable(event="propertyChange")] 
    public function get enObra() : String    
    {
            return _internal_enObra;
    }    
	[Bindable(event="propertyChange")] 
    public function get bombaEyectora() : String    
    {
            return _internal_bombaEyectora;
    }    
	[Bindable(event="propertyChange")] 
    public function get unidadPorPiso() : String    
    {
            return _internal_unidadPorPiso;
    }    
	[Bindable(event="propertyChange")] 
    public function get terraza() : String    
    {
            return _internal_terraza;
    }    
	[Bindable(event="propertyChange")] 
    public function get ubicacionNivelVia() : String    
    {
            return _internal_ubicacionNivelVia;
    }    
	[Bindable(event="propertyChange")] 
    public function get jardin() : String    
    {
            return _internal_jardin;
    }    
	[Bindable(event="propertyChange")] 
    public function get bahiaComunal() : String    
    {
            return _internal_bahiaComunal;
    }    
	[Bindable(event="propertyChange")] 
    public function get simetriaAltura() : String    
    {
            return _internal_simetriaAltura;
    }    
	[Bindable(event="propertyChange")] 
    public function get idInformacionConstruccion() : String    
    {
            return _internal_idInformacionConstruccion;
    }    
	[Bindable(event="propertyChange")] 
    public function get asentamientos() : String    
    {
            return _internal_asentamientos;
    }    
	[Bindable(event="propertyChange")] 
    public function get golfito() : String    
    {
            return _internal_golfito;
    }    
	[Bindable(event="propertyChange")] 
    public function get usuarioTransaccion() : String    
    {
            return _internal_usuarioTransaccion;
    }    
	[Bindable(event="propertyChange")] 
    public function get zonaVerdePrivada() : String    
    {
            return _internal_zonaVerdePrivada;
    }    
	[Bindable(event="propertyChange")] 
    public function get descubierto() : String    
    {
            return _internal_descubierto;
    }    
	[Bindable(event="propertyChange")] 
    public function get banioServicio() : String    
    {
            return _internal_banioServicio;
    }    
	[Bindable(event="propertyChange")] 
    public function get sala() : String    
    {
            return _internal_sala;
    }    
	[Bindable(event="propertyChange")] 
    public function get ubicacionInmueble() : String    
    {
            return _internal_ubicacionInmueble;
    }    
	[Bindable(event="propertyChange")] 
    public function get estadoRemodelacion() : String    
    {
            return _internal_estadoRemodelacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get doble() : String    
    {
            return _internal_doble;
    }    
	[Bindable(event="propertyChange")] 
    public function get ascensor() : String    
    {
            return _internal_ascensor;
    }    
	[Bindable(event="propertyChange")] 
    public function get totalGarajes() : String    
    {
            return _internal_totalGarajes;
    }    
	[Bindable(event="propertyChange")] 
    public function get estudio() : String    
    {
            return _internal_estudio;
    }    
	[Bindable(event="propertyChange")] 
    public function get conjuntoAgrupacionCerrada() : String    
    {
            return _internal_conjuntoAgrupacionCerrada;
    }    
	[Bindable(event="propertyChange")] 
    public function get luces() : String    
    {
            return _internal_luces;
    }    
	[Bindable(event="propertyChange")] 
    public function get materialConstruccionBUA() : String    
    {
            return _internal_materialConstruccionBUA;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaTransaccion() : Date    
    {
            return _internal_fechaTransaccion;
    }    
	[Bindable(event="propertyChange")] 
    public function get sotanos() : String    
    {
            return _internal_sotanos;
    }    
	[Bindable(event="propertyChange")] 
    public function get pisoInmueble() : String    
    {
            return _internal_pisoInmueble;
    }    
	[Bindable(event="propertyChange")] 
    public function get canchaMultiple() : String    
    {
            return _internal_canchaMultiple;
    }    
	[Bindable(event="propertyChange")] 
    public function get ubicacionFuentesHidricas() : String    
    {
            return _internal_ubicacionFuentesHidricas;
    }    
	[Bindable(event="propertyChange")] 
    public function get cubierta() : String    
    {
            return _internal_cubierta;
    }    
	[Bindable(event="propertyChange")] 
    public function get estadoPisos() : String    
    {
            return _internal_estadoPisos;
    }    
	[Bindable(event="propertyChange")] 
    public function get otraUbicacionTanque() : String    
    {
            return _internal_otraUbicacionTanque;
    }    
	[Bindable(event="propertyChange")] 
    public function get golpeteo() : String    
    {
            return _internal_golpeteo;
    }    
	[Bindable(event="propertyChange")] 
    public function get estadoMuros() : String    
    {
            return _internal_estadoMuros;
    }    
	[Bindable(event="propertyChange")] 
    public function get ubicacionTanque() : String    
    {
            return _internal_ubicacionTanque;
    }    
	[Bindable(event="propertyChange")] 
    public function get servidumbre() : String    
    {
            return _internal_servidumbre;
    }    
	[Bindable(event="propertyChange")] 
    public function get pisosBodega() : String    
    {
            return _internal_pisosBodega;
    }    
	[Bindable(event="propertyChange")] 
    public function get estadoMetal() : String    
    {
            return _internal_estadoMetal;
    }    
	[Bindable(event="propertyChange")] 
    public function get estadoConservacion() : String    
    {
            return _internal_estadoConservacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get estadoBanios() : String    
    {
            return _internal_estadoBanios;
    }    
	[Bindable(event="propertyChange")] 
    public function get simetriaAlturaSF() : String    
    {
            return _internal_simetriaAlturaSF;
    }    
	[Bindable(event="propertyChange")] 
    public function get estructuraTechos() : String    
    {
            return _internal_estructuraTechos;
    }    
	[Bindable(event="propertyChange")] 
    public function get danoReparadoSF() : String    
    {
            return _internal_danoReparadoSF;
    }    
	[Bindable(event="propertyChange")] 
    public function get tanqueAgua() : String    
    {
            return _internal_tanqueAgua;
    }    
	[Bindable(event="propertyChange")] 
    public function get cocina() : String    
    {
            return _internal_cocina;
    }    
	[Bindable(event="propertyChange")] 
    public function get garajeVisitante() : String    
    {
            return _internal_garajeVisitante;
    }    
	[Bindable(event="propertyChange")] 
    public function get juegoNinos() : String    
    {
            return _internal_juegoNinos;
    }    
	[Bindable(event="propertyChange")] 
    public function get danoPrevioSF() : String    
    {
            return _internal_danoPrevioSF;
    }    
	[Bindable(event="propertyChange")] 
    public function get otroMaterial() : String    
    {
            return _internal_otroMaterial;
    }    
	[Bindable(event="propertyChange")] 
    public function get detalleMaterialSFBUA() : String    
    {
            return _internal_detalleMaterialSFBUA;
    }    
	[Bindable(event="propertyChange")] 
    public function get materialConstruccionSF() : String    
    {
            return _internal_materialConstruccionSF;
    }    
	[Bindable(event="propertyChange")] 
    public function get calidadMadera() : String    
    {
            return _internal_calidadMadera;
    }    
	[Bindable(event="propertyChange")] 
    public function get zonasVerdes() : String    
    {
            return _internal_zonasVerdes;
    }    
	[Bindable(event="propertyChange")] 
    public function get totalUnidades() : String    
    {
            return _internal_totalUnidades;
    }    
	[Bindable(event="propertyChange")] 
    public function get estructura() : String    
    {
            return _internal_estructura;
    }    
	[Bindable(event="propertyChange")] 
    public function get calidadCocina() : String    
    {
            return _internal_calidadCocina;
    }    
	[Bindable(event="propertyChange")] 
    public function get bicicletero() : String    
    {
            return _internal_bicicletero;
    }    
	[Bindable(event="propertyChange")] 
    public function get aireAcondicionado() : String    
    {
            return _internal_aireAcondicionado;
    }    
	[Bindable(event="propertyChange")] 
    public function get estadoConstruccion() : String    
    {
            return _internal_estadoConstruccion;
    }    
	[Bindable(event="propertyChange")] 
    public function get otrosDotacion() : String    
    {
            return _internal_otrosDotacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get estarHabitacion() : String    
    {
            return _internal_estarHabitacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get cubierto() : String    
    {
            return _internal_cubierto;
    }    
	[Bindable(event="propertyChange")] 
    public function get anoConstruccionBUA() : String    
    {
            return _internal_anoConstruccionBUA;
    }    
	[Bindable(event="propertyChange")] 
    public function get patioInterior() : String    
    {
            return _internal_patioInterior;
    }    
	[Bindable(event="propertyChange")] 
    public function get local() : String    
    {
            return _internal_local;
    }    
	[Bindable(event="propertyChange")] 
    public function get sobrePeso() : String    
    {
            return _internal_sobrePeso;
    }    
	[Bindable(event="propertyChange")] 
    public function get calidadBanio() : String    
    {
            return _internal_calidadBanio;
    }    
	[Bindable(event="propertyChange")] 
    public function get tipoFachada() : String    
    {
            return _internal_tipoFachada;
    }    
	[Bindable(event="propertyChange")] 
    public function get detallemat() : ArrayCollection    
    {
            return _internal_detallemat;
    }    

    /**
     * data property setters
     */      
    public function set construidoUsoActual(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_construidoUsoActual == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_construidoUsoActual;               
        if (oldValue !== value)
        {
            _internal_construidoUsoActual = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "construidoUsoActual", oldValue, _internal_construidoUsoActual));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set textoCubierta(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_textoCubierta == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_textoCubierta;               
        if (oldValue !== value)
        {
            _internal_textoCubierta = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "textoCubierta", oldValue, _internal_textoCubierta));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set balcon(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_balcon == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_balcon;               
        if (oldValue !== value)
        {
            _internal_balcon = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "balcon", oldValue, _internal_balcon));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set rangoConstruccionSF(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_rangoConstruccionSF == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_rangoConstruccionSF;               
        if (oldValue !== value)
        {
            _internal_rangoConstruccionSF = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rangoConstruccionSF", oldValue, _internal_rangoConstruccionSF));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set deposito(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_deposito == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_deposito;               
        if (oldValue !== value)
        {
            _internal_deposito = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "deposito", oldValue, _internal_deposito));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set usoExclusivo(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_usoExclusivo == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_usoExclusivo;               
        if (oldValue !== value)
        {
            _internal_usoExclusivo = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usoExclusivo", oldValue, _internal_usoExclusivo));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set oficina(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_oficina == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_oficina;               
        if (oldValue !== value)
        {
            _internal_oficina = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "oficina", oldValue, _internal_oficina));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set estructuraReforzadaSF(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estructuraReforzadaSF == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estructuraReforzadaSF;               
        if (oldValue !== value)
        {
            _internal_estructuraReforzadaSF = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estructuraReforzadaSF", oldValue, _internal_estructuraReforzadaSF));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set textoEstructura(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_textoEstructura == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_textoEstructura;               
        if (oldValue !== value)
        {
            _internal_textoEstructura = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "textoEstructura", oldValue, _internal_textoEstructura));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set irregularidadPlantaBUA(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_irregularidadPlantaBUA == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_irregularidadPlantaBUA;               
        if (oldValue !== value)
        {
            _internal_irregularidadPlantaBUA = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "irregularidadPlantaBUA", oldValue, _internal_irregularidadPlantaBUA));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set textoFachada(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_textoFachada == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_textoFachada;               
        if (oldValue !== value)
        {
            _internal_textoFachada = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "textoFachada", oldValue, _internal_textoFachada));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set estructuraReforzadaBUA(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estructuraReforzadaBUA == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estructuraReforzadaBUA;               
        if (oldValue !== value)
        {
            _internal_estructuraReforzadaBUA = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estructuraReforzadaBUA", oldValue, _internal_estructuraReforzadaBUA));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set estadoCocina(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estadoCocina == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estadoCocina;               
        if (oldValue !== value)
        {
            _internal_estadoCocina = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoCocina", oldValue, _internal_estadoCocina));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set comedor(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_comedor == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_comedor;               
        if (oldValue !== value)
        {
            _internal_comedor = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "comedor", oldValue, _internal_comedor));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set fechaCreacion(value:Date) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_fechaCreacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:Date = _internal_fechaCreacion;               
        if (oldValue !== value)
        {
            _internal_fechaCreacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaCreacion", oldValue, _internal_fechaCreacion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set iluminacion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_iluminacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_iluminacion;               
        if (oldValue !== value)
        {
            _internal_iluminacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "iluminacion", oldValue, _internal_iluminacion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set clubHouse(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_clubHouse == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_clubHouse;               
        if (oldValue !== value)
        {
            _internal_clubHouse = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "clubHouse", oldValue, _internal_clubHouse));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set shutBasuras(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_shutBasuras == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_shutBasuras;               
        if (oldValue !== value)
        {
            _internal_shutBasuras = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "shutBasuras", oldValue, _internal_shutBasuras));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set numeroEdificios(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_numeroEdificios == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_numeroEdificios;               
        if (oldValue !== value)
        {
            _internal_numeroEdificios = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numeroEdificios", oldValue, _internal_numeroEdificios));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set piscina(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_piscina == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_piscina;               
        if (oldValue !== value)
        {
            _internal_piscina = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "piscina", oldValue, _internal_piscina));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set parapetosCubierta(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_parapetosCubierta == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_parapetosCubierta;               
        if (oldValue !== value)
        {
            _internal_parapetosCubierta = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "parapetosCubierta", oldValue, _internal_parapetosCubierta));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set vetustez(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_vetustez == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_vetustez;               
        if (oldValue !== value)
        {
            _internal_vetustez = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "vetustez", oldValue, _internal_vetustez));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set avanceObra(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_avanceObra == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_avanceObra;               
        if (oldValue !== value)
        {
            _internal_avanceObra = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "avanceObra", oldValue, _internal_avanceObra));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set materialEstructura(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_materialEstructura == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_materialEstructura;               
        if (oldValue !== value)
        {
            _internal_materialEstructura = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "materialEstructura", oldValue, _internal_materialEstructura));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set altura(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_altura == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_altura;               
        if (oldValue !== value)
        {
            _internal_altura = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "altura", oldValue, _internal_altura));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set porteria(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_porteria == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_porteria;               
        if (oldValue !== value)
        {
            _internal_porteria = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "porteria", oldValue, _internal_porteria));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set danoPrevio(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_danoPrevio == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_danoPrevio;               
        if (oldValue !== value)
        {
            _internal_danoPrevio = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "danoPrevio", oldValue, _internal_danoPrevio));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set otrosDotacion2(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_otrosDotacion2 == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_otrosDotacion2;               
        if (oldValue !== value)
        {
            _internal_otrosDotacion2 = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "otrosDotacion2", oldValue, _internal_otrosDotacion2));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set calidMetal(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_calidMetal == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_calidMetal;               
        if (oldValue !== value)
        {
            _internal_calidMetal = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "calidMetal", oldValue, _internal_calidMetal));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set privado(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_privado == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_privado;               
        if (oldValue !== value)
        {
            _internal_privado = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "privado", oldValue, _internal_privado));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set pisos(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_pisos == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_pisos;               
        if (oldValue !== value)
        {
            _internal_pisos = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pisos", oldValue, _internal_pisos));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set calidadTecho(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_calidadTecho == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_calidadTecho;               
        if (oldValue !== value)
        {
            _internal_calidadTecho = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "calidadTecho", oldValue, _internal_calidadTecho));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set estadoMadera(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estadoMadera == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estadoMadera;               
        if (oldValue !== value)
        {
            _internal_estadoMadera = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoMadera", oldValue, _internal_estadoMadera));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set bodega(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_bodega == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_bodega;               
        if (oldValue !== value)
        {
            _internal_bodega = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "bodega", oldValue, _internal_bodega));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set calidadMuro(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_calidadMuro == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_calidadMuro;               
        if (oldValue !== value)
        {
            _internal_calidadMuro = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "calidadMuro", oldValue, _internal_calidadMuro));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set reparadosBUA(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_reparadosBUA == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_reparadosBUA;               
        if (oldValue !== value)
        {
            _internal_reparadosBUA = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "reparadosBUA", oldValue, _internal_reparadosBUA));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set sencillo(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_sencillo == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_sencillo;               
        if (oldValue !== value)
        {
            _internal_sencillo = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sencillo", oldValue, _internal_sencillo));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set banioPrivado(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_banioPrivado == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_banioPrivado;               
        if (oldValue !== value)
        {
            _internal_banioPrivado = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "banioPrivado", oldValue, _internal_banioPrivado));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set avaluo(value:valueObjects.Avaluo) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_avaluo == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:valueObjects.Avaluo = _internal_avaluo;               
        if (oldValue !== value)
        {
            _internal_avaluo = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "avaluo", oldValue, _internal_avaluo));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set danoPrevioBUA(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_danoPrevioBUA == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_danoPrevioBUA;               
        if (oldValue !== value)
        {
            _internal_danoPrevioBUA = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "danoPrevioBUA", oldValue, _internal_danoPrevioBUA));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set estadoTerminadaNueva(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estadoTerminadaNueva == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estadoTerminadaNueva;               
        if (oldValue !== value)
        {
            _internal_estadoTerminadaNueva = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoTerminadaNueva", oldValue, _internal_estadoTerminadaNueva));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set presion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_presion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_presion;               
        if (oldValue !== value)
        {
            _internal_presion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "presion", oldValue, _internal_presion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set numeroHabitaciones(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_numeroHabitaciones == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_numeroHabitaciones;               
        if (oldValue !== value)
        {
            _internal_numeroHabitaciones = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numeroHabitaciones", oldValue, _internal_numeroHabitaciones));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set numeroAscensores(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_numeroAscensores == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_numeroAscensores;               
        if (oldValue !== value)
        {
            _internal_numeroAscensores = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numeroAscensores", oldValue, _internal_numeroAscensores));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set squash(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_squash == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_squash;               
        if (oldValue !== value)
        {
            _internal_squash = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "squash", oldValue, _internal_squash));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set irregularidadAlturaBUA(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_irregularidadAlturaBUA == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_irregularidadAlturaBUA;               
        if (oldValue !== value)
        {
            _internal_irregularidadAlturaBUA = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "irregularidadAlturaBUA", oldValue, _internal_irregularidadAlturaBUA));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set salonComunal(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_salonComunal == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_salonComunal;               
        if (oldValue !== value)
        {
            _internal_salonComunal = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "salonComunal", oldValue, _internal_salonComunal));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set gimnasio(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_gimnasio == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_gimnasio;               
        if (oldValue !== value)
        {
            _internal_gimnasio = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "gimnasio", oldValue, _internal_gimnasio));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set propiedadHorizontal(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_propiedadHorizontal == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_propiedadHorizontal;               
        if (oldValue !== value)
        {
            _internal_propiedadHorizontal = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propiedadHorizontal", oldValue, _internal_propiedadHorizontal));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set calidadPiso(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_calidadPiso == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_calidadPiso;               
        if (oldValue !== value)
        {
            _internal_calidadPiso = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "calidadPiso", oldValue, _internal_calidadPiso));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set banioSocial(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_banioSocial == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_banioSocial;               
        if (oldValue !== value)
        {
            _internal_banioSocial = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "banioSocial", oldValue, _internal_banioSocial));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set usuarioCreacion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_usuarioCreacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_usuarioCreacion;               
        if (oldValue !== value)
        {
            _internal_usuarioCreacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usuarioCreacion", oldValue, _internal_usuarioCreacion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set estadoTerminadoUsado(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estadoTerminadoUsado == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estadoTerminadoUsado;               
        if (oldValue !== value)
        {
            _internal_estadoTerminadoUsado = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoTerminadoUsado", oldValue, _internal_estadoTerminadoUsado));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set planta(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_planta == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_planta;               
        if (oldValue !== value)
        {
            _internal_planta = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "planta", oldValue, _internal_planta));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set fachada(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_fachada == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_fachada;               
        if (oldValue !== value)
        {
            _internal_fachada = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fachada", oldValue, _internal_fachada));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set citofono(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_citofono == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_citofono;               
        if (oldValue !== value)
        {
            _internal_citofono = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "citofono", oldValue, _internal_citofono));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set cuartoServicio(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_cuartoServicio == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_cuartoServicio;               
        if (oldValue !== value)
        {
            _internal_cuartoServicio = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cuartoServicio", oldValue, _internal_cuartoServicio));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set simetriaPlantaSF(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_simetriaPlantaSF == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_simetriaPlantaSF;               
        if (oldValue !== value)
        {
            _internal_simetriaPlantaSF = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "simetriaPlantaSF", oldValue, _internal_simetriaPlantaSF));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set simetriaPlanta(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_simetriaPlanta == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_simetriaPlanta;               
        if (oldValue !== value)
        {
            _internal_simetriaPlanta = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "simetriaPlanta", oldValue, _internal_simetriaPlanta));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set ventilacion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_ventilacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_ventilacion;               
        if (oldValue !== value)
        {
            _internal_ventilacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ventilacion", oldValue, _internal_ventilacion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set sinTerminar(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_sinTerminar == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_sinTerminar;               
        if (oldValue !== value)
        {
            _internal_sinTerminar = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sinTerminar", oldValue, _internal_sinTerminar));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set enObra(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_enObra == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_enObra;               
        if (oldValue !== value)
        {
            _internal_enObra = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "enObra", oldValue, _internal_enObra));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set bombaEyectora(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_bombaEyectora == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_bombaEyectora;               
        if (oldValue !== value)
        {
            _internal_bombaEyectora = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "bombaEyectora", oldValue, _internal_bombaEyectora));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set unidadPorPiso(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_unidadPorPiso == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_unidadPorPiso;               
        if (oldValue !== value)
        {
            _internal_unidadPorPiso = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "unidadPorPiso", oldValue, _internal_unidadPorPiso));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set terraza(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_terraza == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_terraza;               
        if (oldValue !== value)
        {
            _internal_terraza = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "terraza", oldValue, _internal_terraza));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set ubicacionNivelVia(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_ubicacionNivelVia == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_ubicacionNivelVia;               
        if (oldValue !== value)
        {
            _internal_ubicacionNivelVia = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ubicacionNivelVia", oldValue, _internal_ubicacionNivelVia));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set jardin(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_jardin == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_jardin;               
        if (oldValue !== value)
        {
            _internal_jardin = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "jardin", oldValue, _internal_jardin));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set bahiaComunal(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_bahiaComunal == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_bahiaComunal;               
        if (oldValue !== value)
        {
            _internal_bahiaComunal = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "bahiaComunal", oldValue, _internal_bahiaComunal));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set simetriaAltura(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_simetriaAltura == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_simetriaAltura;               
        if (oldValue !== value)
        {
            _internal_simetriaAltura = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "simetriaAltura", oldValue, _internal_simetriaAltura));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set idInformacionConstruccion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_idInformacionConstruccion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_idInformacionConstruccion;               
        if (oldValue !== value)
        {
            _internal_idInformacionConstruccion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idInformacionConstruccion", oldValue, _internal_idInformacionConstruccion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set asentamientos(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_asentamientos == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_asentamientos;               
        if (oldValue !== value)
        {
            _internal_asentamientos = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "asentamientos", oldValue, _internal_asentamientos));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set golfito(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_golfito == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_golfito;               
        if (oldValue !== value)
        {
            _internal_golfito = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "golfito", oldValue, _internal_golfito));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set usuarioTransaccion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_usuarioTransaccion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_usuarioTransaccion;               
        if (oldValue !== value)
        {
            _internal_usuarioTransaccion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usuarioTransaccion", oldValue, _internal_usuarioTransaccion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set zonaVerdePrivada(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_zonaVerdePrivada == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_zonaVerdePrivada;               
        if (oldValue !== value)
        {
            _internal_zonaVerdePrivada = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "zonaVerdePrivada", oldValue, _internal_zonaVerdePrivada));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set descubierto(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_descubierto == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_descubierto;               
        if (oldValue !== value)
        {
            _internal_descubierto = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descubierto", oldValue, _internal_descubierto));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set banioServicio(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_banioServicio == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_banioServicio;               
        if (oldValue !== value)
        {
            _internal_banioServicio = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "banioServicio", oldValue, _internal_banioServicio));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set sala(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_sala == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_sala;               
        if (oldValue !== value)
        {
            _internal_sala = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sala", oldValue, _internal_sala));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set ubicacionInmueble(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_ubicacionInmueble == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_ubicacionInmueble;               
        if (oldValue !== value)
        {
            _internal_ubicacionInmueble = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ubicacionInmueble", oldValue, _internal_ubicacionInmueble));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set estadoRemodelacion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estadoRemodelacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estadoRemodelacion;               
        if (oldValue !== value)
        {
            _internal_estadoRemodelacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoRemodelacion", oldValue, _internal_estadoRemodelacion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set doble(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_doble == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_doble;               
        if (oldValue !== value)
        {
            _internal_doble = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "doble", oldValue, _internal_doble));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set ascensor(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_ascensor == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_ascensor;               
        if (oldValue !== value)
        {
            _internal_ascensor = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ascensor", oldValue, _internal_ascensor));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set totalGarajes(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_totalGarajes == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_totalGarajes;               
        if (oldValue !== value)
        {
            _internal_totalGarajes = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "totalGarajes", oldValue, _internal_totalGarajes));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set estudio(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estudio == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estudio;               
        if (oldValue !== value)
        {
            _internal_estudio = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estudio", oldValue, _internal_estudio));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set conjuntoAgrupacionCerrada(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_conjuntoAgrupacionCerrada == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_conjuntoAgrupacionCerrada;               
        if (oldValue !== value)
        {
            _internal_conjuntoAgrupacionCerrada = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "conjuntoAgrupacionCerrada", oldValue, _internal_conjuntoAgrupacionCerrada));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set luces(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_luces == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_luces;               
        if (oldValue !== value)
        {
            _internal_luces = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "luces", oldValue, _internal_luces));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set materialConstruccionBUA(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_materialConstruccionBUA == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_materialConstruccionBUA;               
        if (oldValue !== value)
        {
            _internal_materialConstruccionBUA = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "materialConstruccionBUA", oldValue, _internal_materialConstruccionBUA));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set fechaTransaccion(value:Date) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_fechaTransaccion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:Date = _internal_fechaTransaccion;               
        if (oldValue !== value)
        {
            _internal_fechaTransaccion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaTransaccion", oldValue, _internal_fechaTransaccion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set sotanos(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_sotanos == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_sotanos;               
        if (oldValue !== value)
        {
            _internal_sotanos = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sotanos", oldValue, _internal_sotanos));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set pisoInmueble(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_pisoInmueble == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_pisoInmueble;               
        if (oldValue !== value)
        {
            _internal_pisoInmueble = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pisoInmueble", oldValue, _internal_pisoInmueble));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set canchaMultiple(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_canchaMultiple == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_canchaMultiple;               
        if (oldValue !== value)
        {
            _internal_canchaMultiple = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canchaMultiple", oldValue, _internal_canchaMultiple));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set ubicacionFuentesHidricas(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_ubicacionFuentesHidricas == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_ubicacionFuentesHidricas;               
        if (oldValue !== value)
        {
            _internal_ubicacionFuentesHidricas = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ubicacionFuentesHidricas", oldValue, _internal_ubicacionFuentesHidricas));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set cubierta(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_cubierta == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_cubierta;               
        if (oldValue !== value)
        {
            _internal_cubierta = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cubierta", oldValue, _internal_cubierta));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set estadoPisos(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estadoPisos == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estadoPisos;               
        if (oldValue !== value)
        {
            _internal_estadoPisos = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoPisos", oldValue, _internal_estadoPisos));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set otraUbicacionTanque(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_otraUbicacionTanque == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_otraUbicacionTanque;               
        if (oldValue !== value)
        {
            _internal_otraUbicacionTanque = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "otraUbicacionTanque", oldValue, _internal_otraUbicacionTanque));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set golpeteo(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_golpeteo == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_golpeteo;               
        if (oldValue !== value)
        {
            _internal_golpeteo = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "golpeteo", oldValue, _internal_golpeteo));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set estadoMuros(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estadoMuros == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estadoMuros;               
        if (oldValue !== value)
        {
            _internal_estadoMuros = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoMuros", oldValue, _internal_estadoMuros));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set ubicacionTanque(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_ubicacionTanque == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_ubicacionTanque;               
        if (oldValue !== value)
        {
            _internal_ubicacionTanque = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ubicacionTanque", oldValue, _internal_ubicacionTanque));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set servidumbre(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_servidumbre == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_servidumbre;               
        if (oldValue !== value)
        {
            _internal_servidumbre = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "servidumbre", oldValue, _internal_servidumbre));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set pisosBodega(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_pisosBodega == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_pisosBodega;               
        if (oldValue !== value)
        {
            _internal_pisosBodega = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pisosBodega", oldValue, _internal_pisosBodega));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set estadoMetal(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estadoMetal == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estadoMetal;               
        if (oldValue !== value)
        {
            _internal_estadoMetal = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoMetal", oldValue, _internal_estadoMetal));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set estadoConservacion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estadoConservacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estadoConservacion;               
        if (oldValue !== value)
        {
            _internal_estadoConservacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoConservacion", oldValue, _internal_estadoConservacion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set estadoBanios(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estadoBanios == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estadoBanios;               
        if (oldValue !== value)
        {
            _internal_estadoBanios = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoBanios", oldValue, _internal_estadoBanios));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set simetriaAlturaSF(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_simetriaAlturaSF == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_simetriaAlturaSF;               
        if (oldValue !== value)
        {
            _internal_simetriaAlturaSF = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "simetriaAlturaSF", oldValue, _internal_simetriaAlturaSF));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set estructuraTechos(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estructuraTechos == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estructuraTechos;               
        if (oldValue !== value)
        {
            _internal_estructuraTechos = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estructuraTechos", oldValue, _internal_estructuraTechos));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set danoReparadoSF(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_danoReparadoSF == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_danoReparadoSF;               
        if (oldValue !== value)
        {
            _internal_danoReparadoSF = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "danoReparadoSF", oldValue, _internal_danoReparadoSF));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set tanqueAgua(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_tanqueAgua == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_tanqueAgua;               
        if (oldValue !== value)
        {
            _internal_tanqueAgua = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tanqueAgua", oldValue, _internal_tanqueAgua));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set cocina(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_cocina == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_cocina;               
        if (oldValue !== value)
        {
            _internal_cocina = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cocina", oldValue, _internal_cocina));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set garajeVisitante(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_garajeVisitante == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_garajeVisitante;               
        if (oldValue !== value)
        {
            _internal_garajeVisitante = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "garajeVisitante", oldValue, _internal_garajeVisitante));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set juegoNinos(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_juegoNinos == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_juegoNinos;               
        if (oldValue !== value)
        {
            _internal_juegoNinos = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "juegoNinos", oldValue, _internal_juegoNinos));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set danoPrevioSF(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_danoPrevioSF == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_danoPrevioSF;               
        if (oldValue !== value)
        {
            _internal_danoPrevioSF = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "danoPrevioSF", oldValue, _internal_danoPrevioSF));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set otroMaterial(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_otroMaterial == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_otroMaterial;               
        if (oldValue !== value)
        {
            _internal_otroMaterial = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "otroMaterial", oldValue, _internal_otroMaterial));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set detalleMaterialSFBUA(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_detalleMaterialSFBUA == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_detalleMaterialSFBUA;               
        if (oldValue !== value)
        {
            _internal_detalleMaterialSFBUA = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "detalleMaterialSFBUA", oldValue, _internal_detalleMaterialSFBUA));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set materialConstruccionSF(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_materialConstruccionSF == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_materialConstruccionSF;               
        if (oldValue !== value)
        {
            _internal_materialConstruccionSF = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "materialConstruccionSF", oldValue, _internal_materialConstruccionSF));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set calidadMadera(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_calidadMadera == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_calidadMadera;               
        if (oldValue !== value)
        {
            _internal_calidadMadera = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "calidadMadera", oldValue, _internal_calidadMadera));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set zonasVerdes(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_zonasVerdes == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_zonasVerdes;               
        if (oldValue !== value)
        {
            _internal_zonasVerdes = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "zonasVerdes", oldValue, _internal_zonasVerdes));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set totalUnidades(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_totalUnidades == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_totalUnidades;               
        if (oldValue !== value)
        {
            _internal_totalUnidades = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "totalUnidades", oldValue, _internal_totalUnidades));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set estructura(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estructura == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estructura;               
        if (oldValue !== value)
        {
            _internal_estructura = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estructura", oldValue, _internal_estructura));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set calidadCocina(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_calidadCocina == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_calidadCocina;               
        if (oldValue !== value)
        {
            _internal_calidadCocina = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "calidadCocina", oldValue, _internal_calidadCocina));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set bicicletero(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_bicicletero == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_bicicletero;               
        if (oldValue !== value)
        {
            _internal_bicicletero = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "bicicletero", oldValue, _internal_bicicletero));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set aireAcondicionado(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_aireAcondicionado == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_aireAcondicionado;               
        if (oldValue !== value)
        {
            _internal_aireAcondicionado = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "aireAcondicionado", oldValue, _internal_aireAcondicionado));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set estadoConstruccion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estadoConstruccion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estadoConstruccion;               
        if (oldValue !== value)
        {
            _internal_estadoConstruccion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoConstruccion", oldValue, _internal_estadoConstruccion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set otrosDotacion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_otrosDotacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_otrosDotacion;               
        if (oldValue !== value)
        {
            _internal_otrosDotacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "otrosDotacion", oldValue, _internal_otrosDotacion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set estarHabitacion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estarHabitacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estarHabitacion;               
        if (oldValue !== value)
        {
            _internal_estarHabitacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estarHabitacion", oldValue, _internal_estarHabitacion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set cubierto(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_cubierto == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_cubierto;               
        if (oldValue !== value)
        {
            _internal_cubierto = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cubierto", oldValue, _internal_cubierto));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set anoConstruccionBUA(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_anoConstruccionBUA == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_anoConstruccionBUA;               
        if (oldValue !== value)
        {
            _internal_anoConstruccionBUA = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "anoConstruccionBUA", oldValue, _internal_anoConstruccionBUA));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set patioInterior(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_patioInterior == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_patioInterior;               
        if (oldValue !== value)
        {
            _internal_patioInterior = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "patioInterior", oldValue, _internal_patioInterior));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set local(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_local == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_local;               
        if (oldValue !== value)
        {
            _internal_local = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "local", oldValue, _internal_local));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set sobrePeso(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_sobrePeso == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_sobrePeso;               
        if (oldValue !== value)
        {
            _internal_sobrePeso = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sobrePeso", oldValue, _internal_sobrePeso));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set calidadBanio(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_calidadBanio == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_calidadBanio;               
        if (oldValue !== value)
        {
            _internal_calidadBanio = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "calidadBanio", oldValue, _internal_calidadBanio));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set tipoFachada(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_tipoFachada == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_tipoFachada;               
        if (oldValue !== value)
        {
            _internal_tipoFachada = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoFachada", oldValue, _internal_tipoFachada));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set detallemat(value:*) : void
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_detallemat == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:ArrayCollection = _internal_detallemat;               
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_detallemat = value;
            }
            else if (value is Array)
            {
                _internal_detallemat = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of detallemat must be a collection");
            }
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "detallemat", oldValue, _internal_detallemat));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    

    /**
     * data property setter listeners
     */   

   model_internal function setterListenerAnyConstraint(value:flash.events.Event):void
   {
        if (model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }        
   }   

    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();    
        var validationFailureMessages:Array = new Array();    

		if (_model.isConstruidoUsoActualAvailable && _internal_construidoUsoActual == null)
		{
			violatedConsts.push("construidoUsoActualIsRequired");
			validationFailureMessages.push("construidoUsoActual is required");
		}
		if (_model.isTextoCubiertaAvailable && _internal_textoCubierta == null)
		{
			violatedConsts.push("textoCubiertaIsRequired");
			validationFailureMessages.push("textoCubierta is required");
		}
		if (_model.isBalconAvailable && _internal_balcon == null)
		{
			violatedConsts.push("balconIsRequired");
			validationFailureMessages.push("balcon is required");
		}
		if (_model.isRangoConstruccionSFAvailable && _internal_rangoConstruccionSF == null)
		{
			violatedConsts.push("rangoConstruccionSFIsRequired");
			validationFailureMessages.push("rangoConstruccionSF is required");
		}
		if (_model.isDepositoAvailable && _internal_deposito == null)
		{
			violatedConsts.push("depositoIsRequired");
			validationFailureMessages.push("deposito is required");
		}
		if (_model.isUsoExclusivoAvailable && _internal_usoExclusivo == null)
		{
			violatedConsts.push("usoExclusivoIsRequired");
			validationFailureMessages.push("usoExclusivo is required");
		}
		if (_model.isOficinaAvailable && _internal_oficina == null)
		{
			violatedConsts.push("oficinaIsRequired");
			validationFailureMessages.push("oficina is required");
		}
		if (_model.isEstructuraReforzadaSFAvailable && _internal_estructuraReforzadaSF == null)
		{
			violatedConsts.push("estructuraReforzadaSFIsRequired");
			validationFailureMessages.push("estructuraReforzadaSF is required");
		}
		if (_model.isTextoEstructuraAvailable && _internal_textoEstructura == null)
		{
			violatedConsts.push("textoEstructuraIsRequired");
			validationFailureMessages.push("textoEstructura is required");
		}
		if (_model.isIrregularidadPlantaBUAAvailable && _internal_irregularidadPlantaBUA == null)
		{
			violatedConsts.push("irregularidadPlantaBUAIsRequired");
			validationFailureMessages.push("irregularidadPlantaBUA is required");
		}
		if (_model.isTextoFachadaAvailable && _internal_textoFachada == null)
		{
			violatedConsts.push("textoFachadaIsRequired");
			validationFailureMessages.push("textoFachada is required");
		}
		if (_model.isEstructuraReforzadaBUAAvailable && _internal_estructuraReforzadaBUA == null)
		{
			violatedConsts.push("estructuraReforzadaBUAIsRequired");
			validationFailureMessages.push("estructuraReforzadaBUA is required");
		}
		if (_model.isEstadoCocinaAvailable && _internal_estadoCocina == null)
		{
			violatedConsts.push("estadoCocinaIsRequired");
			validationFailureMessages.push("estadoCocina is required");
		}
		if (_model.isComedorAvailable && _internal_comedor == null)
		{
			violatedConsts.push("comedorIsRequired");
			validationFailureMessages.push("comedor is required");
		}
		if (_model.isFechaCreacionAvailable && _internal_fechaCreacion == null)
		{
			violatedConsts.push("fechaCreacionIsRequired");
			validationFailureMessages.push("fechaCreacion is required");
		}
		if (_model.isIluminacionAvailable && _internal_iluminacion == null)
		{
			violatedConsts.push("iluminacionIsRequired");
			validationFailureMessages.push("iluminacion is required");
		}
		if (_model.isClubHouseAvailable && _internal_clubHouse == null)
		{
			violatedConsts.push("clubHouseIsRequired");
			validationFailureMessages.push("clubHouse is required");
		}
		if (_model.isShutBasurasAvailable && _internal_shutBasuras == null)
		{
			violatedConsts.push("shutBasurasIsRequired");
			validationFailureMessages.push("shutBasuras is required");
		}
		if (_model.isNumeroEdificiosAvailable && _internal_numeroEdificios == null)
		{
			violatedConsts.push("numeroEdificiosIsRequired");
			validationFailureMessages.push("numeroEdificios is required");
		}
		if (_model.isPiscinaAvailable && _internal_piscina == null)
		{
			violatedConsts.push("piscinaIsRequired");
			validationFailureMessages.push("piscina is required");
		}
		if (_model.isParapetosCubiertaAvailable && _internal_parapetosCubierta == null)
		{
			violatedConsts.push("parapetosCubiertaIsRequired");
			validationFailureMessages.push("parapetosCubierta is required");
		}
		if (_model.isVetustezAvailable && _internal_vetustez == null)
		{
			violatedConsts.push("vetustezIsRequired");
			validationFailureMessages.push("vetustez is required");
		}
		if (_model.isAvanceObraAvailable && _internal_avanceObra == null)
		{
			violatedConsts.push("avanceObraIsRequired");
			validationFailureMessages.push("avanceObra is required");
		}
		if (_model.isMaterialEstructuraAvailable && _internal_materialEstructura == null)
		{
			violatedConsts.push("materialEstructuraIsRequired");
			validationFailureMessages.push("materialEstructura is required");
		}
		if (_model.isAlturaAvailable && _internal_altura == null)
		{
			violatedConsts.push("alturaIsRequired");
			validationFailureMessages.push("altura is required");
		}
		if (_model.isPorteriaAvailable && _internal_porteria == null)
		{
			violatedConsts.push("porteriaIsRequired");
			validationFailureMessages.push("porteria is required");
		}
		if (_model.isDanoPrevioAvailable && _internal_danoPrevio == null)
		{
			violatedConsts.push("danoPrevioIsRequired");
			validationFailureMessages.push("danoPrevio is required");
		}
		if (_model.isOtrosDotacion2Available && _internal_otrosDotacion2 == null)
		{
			violatedConsts.push("otrosDotacion2IsRequired");
			validationFailureMessages.push("otrosDotacion2 is required");
		}
		if (_model.isCalidMetalAvailable && _internal_calidMetal == null)
		{
			violatedConsts.push("calidMetalIsRequired");
			validationFailureMessages.push("calidMetal is required");
		}
		if (_model.isPrivadoAvailable && _internal_privado == null)
		{
			violatedConsts.push("privadoIsRequired");
			validationFailureMessages.push("privado is required");
		}
		if (_model.isPisosAvailable && _internal_pisos == null)
		{
			violatedConsts.push("pisosIsRequired");
			validationFailureMessages.push("pisos is required");
		}
		if (_model.isCalidadTechoAvailable && _internal_calidadTecho == null)
		{
			violatedConsts.push("calidadTechoIsRequired");
			validationFailureMessages.push("calidadTecho is required");
		}
		if (_model.isEstadoMaderaAvailable && _internal_estadoMadera == null)
		{
			violatedConsts.push("estadoMaderaIsRequired");
			validationFailureMessages.push("estadoMadera is required");
		}
		if (_model.isBodegaAvailable && _internal_bodega == null)
		{
			violatedConsts.push("bodegaIsRequired");
			validationFailureMessages.push("bodega is required");
		}
		if (_model.isCalidadMuroAvailable && _internal_calidadMuro == null)
		{
			violatedConsts.push("calidadMuroIsRequired");
			validationFailureMessages.push("calidadMuro is required");
		}
		if (_model.isReparadosBUAAvailable && _internal_reparadosBUA == null)
		{
			violatedConsts.push("reparadosBUAIsRequired");
			validationFailureMessages.push("reparadosBUA is required");
		}
		if (_model.isSencilloAvailable && _internal_sencillo == null)
		{
			violatedConsts.push("sencilloIsRequired");
			validationFailureMessages.push("sencillo is required");
		}
		if (_model.isBanioPrivadoAvailable && _internal_banioPrivado == null)
		{
			violatedConsts.push("banioPrivadoIsRequired");
			validationFailureMessages.push("banioPrivado is required");
		}
		if (_model.isAvaluoAvailable && _internal_avaluo == null)
		{
			violatedConsts.push("avaluoIsRequired");
			validationFailureMessages.push("avaluo is required");
		}
		if (_model.isDanoPrevioBUAAvailable && _internal_danoPrevioBUA == null)
		{
			violatedConsts.push("danoPrevioBUAIsRequired");
			validationFailureMessages.push("danoPrevioBUA is required");
		}
		if (_model.isEstadoTerminadaNuevaAvailable && _internal_estadoTerminadaNueva == null)
		{
			violatedConsts.push("estadoTerminadaNuevaIsRequired");
			validationFailureMessages.push("estadoTerminadaNueva is required");
		}
		if (_model.isPresionAvailable && _internal_presion == null)
		{
			violatedConsts.push("presionIsRequired");
			validationFailureMessages.push("presion is required");
		}
		if (_model.isNumeroHabitacionesAvailable && _internal_numeroHabitaciones == null)
		{
			violatedConsts.push("numeroHabitacionesIsRequired");
			validationFailureMessages.push("numeroHabitaciones is required");
		}
		if (_model.isNumeroAscensoresAvailable && _internal_numeroAscensores == null)
		{
			violatedConsts.push("numeroAscensoresIsRequired");
			validationFailureMessages.push("numeroAscensores is required");
		}
		if (_model.isSquashAvailable && _internal_squash == null)
		{
			violatedConsts.push("squashIsRequired");
			validationFailureMessages.push("squash is required");
		}
		if (_model.isIrregularidadAlturaBUAAvailable && _internal_irregularidadAlturaBUA == null)
		{
			violatedConsts.push("irregularidadAlturaBUAIsRequired");
			validationFailureMessages.push("irregularidadAlturaBUA is required");
		}
		if (_model.isSalonComunalAvailable && _internal_salonComunal == null)
		{
			violatedConsts.push("salonComunalIsRequired");
			validationFailureMessages.push("salonComunal is required");
		}
		if (_model.isGimnasioAvailable && _internal_gimnasio == null)
		{
			violatedConsts.push("gimnasioIsRequired");
			validationFailureMessages.push("gimnasio is required");
		}
		if (_model.isPropiedadHorizontalAvailable && _internal_propiedadHorizontal == null)
		{
			violatedConsts.push("propiedadHorizontalIsRequired");
			validationFailureMessages.push("propiedadHorizontal is required");
		}
		if (_model.isCalidadPisoAvailable && _internal_calidadPiso == null)
		{
			violatedConsts.push("calidadPisoIsRequired");
			validationFailureMessages.push("calidadPiso is required");
		}
		if (_model.isBanioSocialAvailable && _internal_banioSocial == null)
		{
			violatedConsts.push("banioSocialIsRequired");
			validationFailureMessages.push("banioSocial is required");
		}
		if (_model.isUsuarioCreacionAvailable && _internal_usuarioCreacion == null)
		{
			violatedConsts.push("usuarioCreacionIsRequired");
			validationFailureMessages.push("usuarioCreacion is required");
		}
		if (_model.isEstadoTerminadoUsadoAvailable && _internal_estadoTerminadoUsado == null)
		{
			violatedConsts.push("estadoTerminadoUsadoIsRequired");
			validationFailureMessages.push("estadoTerminadoUsado is required");
		}
		if (_model.isPlantaAvailable && _internal_planta == null)
		{
			violatedConsts.push("plantaIsRequired");
			validationFailureMessages.push("planta is required");
		}
		if (_model.isFachadaAvailable && _internal_fachada == null)
		{
			violatedConsts.push("fachadaIsRequired");
			validationFailureMessages.push("fachada is required");
		}
		if (_model.isCitofonoAvailable && _internal_citofono == null)
		{
			violatedConsts.push("citofonoIsRequired");
			validationFailureMessages.push("citofono is required");
		}
		if (_model.isCuartoServicioAvailable && _internal_cuartoServicio == null)
		{
			violatedConsts.push("cuartoServicioIsRequired");
			validationFailureMessages.push("cuartoServicio is required");
		}
		if (_model.isSimetriaPlantaSFAvailable && _internal_simetriaPlantaSF == null)
		{
			violatedConsts.push("simetriaPlantaSFIsRequired");
			validationFailureMessages.push("simetriaPlantaSF is required");
		}
		if (_model.isSimetriaPlantaAvailable && _internal_simetriaPlanta == null)
		{
			violatedConsts.push("simetriaPlantaIsRequired");
			validationFailureMessages.push("simetriaPlanta is required");
		}
		if (_model.isVentilacionAvailable && _internal_ventilacion == null)
		{
			violatedConsts.push("ventilacionIsRequired");
			validationFailureMessages.push("ventilacion is required");
		}
		if (_model.isSinTerminarAvailable && _internal_sinTerminar == null)
		{
			violatedConsts.push("sinTerminarIsRequired");
			validationFailureMessages.push("sinTerminar is required");
		}
		if (_model.isEnObraAvailable && _internal_enObra == null)
		{
			violatedConsts.push("enObraIsRequired");
			validationFailureMessages.push("enObra is required");
		}
		if (_model.isBombaEyectoraAvailable && _internal_bombaEyectora == null)
		{
			violatedConsts.push("bombaEyectoraIsRequired");
			validationFailureMessages.push("bombaEyectora is required");
		}
		if (_model.isUnidadPorPisoAvailable && _internal_unidadPorPiso == null)
		{
			violatedConsts.push("unidadPorPisoIsRequired");
			validationFailureMessages.push("unidadPorPiso is required");
		}
		if (_model.isTerrazaAvailable && _internal_terraza == null)
		{
			violatedConsts.push("terrazaIsRequired");
			validationFailureMessages.push("terraza is required");
		}
		if (_model.isUbicacionNivelViaAvailable && _internal_ubicacionNivelVia == null)
		{
			violatedConsts.push("ubicacionNivelViaIsRequired");
			validationFailureMessages.push("ubicacionNivelVia is required");
		}
		if (_model.isJardinAvailable && _internal_jardin == null)
		{
			violatedConsts.push("jardinIsRequired");
			validationFailureMessages.push("jardin is required");
		}
		if (_model.isBahiaComunalAvailable && _internal_bahiaComunal == null)
		{
			violatedConsts.push("bahiaComunalIsRequired");
			validationFailureMessages.push("bahiaComunal is required");
		}
		if (_model.isSimetriaAlturaAvailable && _internal_simetriaAltura == null)
		{
			violatedConsts.push("simetriaAlturaIsRequired");
			validationFailureMessages.push("simetriaAltura is required");
		}
		if (_model.isIdInformacionConstruccionAvailable && _internal_idInformacionConstruccion == null)
		{
			violatedConsts.push("idInformacionConstruccionIsRequired");
			validationFailureMessages.push("idInformacionConstruccion is required");
		}
		if (_model.isAsentamientosAvailable && _internal_asentamientos == null)
		{
			violatedConsts.push("asentamientosIsRequired");
			validationFailureMessages.push("asentamientos is required");
		}
		if (_model.isGolfitoAvailable && _internal_golfito == null)
		{
			violatedConsts.push("golfitoIsRequired");
			validationFailureMessages.push("golfito is required");
		}
		if (_model.isUsuarioTransaccionAvailable && _internal_usuarioTransaccion == null)
		{
			violatedConsts.push("usuarioTransaccionIsRequired");
			validationFailureMessages.push("usuarioTransaccion is required");
		}
		if (_model.isZonaVerdePrivadaAvailable && _internal_zonaVerdePrivada == null)
		{
			violatedConsts.push("zonaVerdePrivadaIsRequired");
			validationFailureMessages.push("zonaVerdePrivada is required");
		}
		if (_model.isDescubiertoAvailable && _internal_descubierto == null)
		{
			violatedConsts.push("descubiertoIsRequired");
			validationFailureMessages.push("descubierto is required");
		}
		if (_model.isBanioServicioAvailable && _internal_banioServicio == null)
		{
			violatedConsts.push("banioServicioIsRequired");
			validationFailureMessages.push("banioServicio is required");
		}
		if (_model.isSalaAvailable && _internal_sala == null)
		{
			violatedConsts.push("salaIsRequired");
			validationFailureMessages.push("sala is required");
		}
		if (_model.isUbicacionInmuebleAvailable && _internal_ubicacionInmueble == null)
		{
			violatedConsts.push("ubicacionInmuebleIsRequired");
			validationFailureMessages.push("ubicacionInmueble is required");
		}
		if (_model.isEstadoRemodelacionAvailable && _internal_estadoRemodelacion == null)
		{
			violatedConsts.push("estadoRemodelacionIsRequired");
			validationFailureMessages.push("estadoRemodelacion is required");
		}
		if (_model.isDobleAvailable && _internal_doble == null)
		{
			violatedConsts.push("dobleIsRequired");
			validationFailureMessages.push("doble is required");
		}
		if (_model.isAscensorAvailable && _internal_ascensor == null)
		{
			violatedConsts.push("ascensorIsRequired");
			validationFailureMessages.push("ascensor is required");
		}
		if (_model.isTotalGarajesAvailable && _internal_totalGarajes == null)
		{
			violatedConsts.push("totalGarajesIsRequired");
			validationFailureMessages.push("totalGarajes is required");
		}
		if (_model.isEstudioAvailable && _internal_estudio == null)
		{
			violatedConsts.push("estudioIsRequired");
			validationFailureMessages.push("estudio is required");
		}
		if (_model.isConjuntoAgrupacionCerradaAvailable && _internal_conjuntoAgrupacionCerrada == null)
		{
			violatedConsts.push("conjuntoAgrupacionCerradaIsRequired");
			validationFailureMessages.push("conjuntoAgrupacionCerrada is required");
		}
		if (_model.isLucesAvailable && _internal_luces == null)
		{
			violatedConsts.push("lucesIsRequired");
			validationFailureMessages.push("luces is required");
		}
		if (_model.isMaterialConstruccionBUAAvailable && _internal_materialConstruccionBUA == null)
		{
			violatedConsts.push("materialConstruccionBUAIsRequired");
			validationFailureMessages.push("materialConstruccionBUA is required");
		}
		if (_model.isFechaTransaccionAvailable && _internal_fechaTransaccion == null)
		{
			violatedConsts.push("fechaTransaccionIsRequired");
			validationFailureMessages.push("fechaTransaccion is required");
		}
		if (_model.isSotanosAvailable && _internal_sotanos == null)
		{
			violatedConsts.push("sotanosIsRequired");
			validationFailureMessages.push("sotanos is required");
		}
		if (_model.isPisoInmuebleAvailable && _internal_pisoInmueble == null)
		{
			violatedConsts.push("pisoInmuebleIsRequired");
			validationFailureMessages.push("pisoInmueble is required");
		}
		if (_model.isCanchaMultipleAvailable && _internal_canchaMultiple == null)
		{
			violatedConsts.push("canchaMultipleIsRequired");
			validationFailureMessages.push("canchaMultiple is required");
		}
		if (_model.isUbicacionFuentesHidricasAvailable && _internal_ubicacionFuentesHidricas == null)
		{
			violatedConsts.push("ubicacionFuentesHidricasIsRequired");
			validationFailureMessages.push("ubicacionFuentesHidricas is required");
		}
		if (_model.isCubiertaAvailable && _internal_cubierta == null)
		{
			violatedConsts.push("cubiertaIsRequired");
			validationFailureMessages.push("cubierta is required");
		}
		if (_model.isEstadoPisosAvailable && _internal_estadoPisos == null)
		{
			violatedConsts.push("estadoPisosIsRequired");
			validationFailureMessages.push("estadoPisos is required");
		}
		if (_model.isOtraUbicacionTanqueAvailable && _internal_otraUbicacionTanque == null)
		{
			violatedConsts.push("otraUbicacionTanqueIsRequired");
			validationFailureMessages.push("otraUbicacionTanque is required");
		}
		if (_model.isGolpeteoAvailable && _internal_golpeteo == null)
		{
			violatedConsts.push("golpeteoIsRequired");
			validationFailureMessages.push("golpeteo is required");
		}
		if (_model.isEstadoMurosAvailable && _internal_estadoMuros == null)
		{
			violatedConsts.push("estadoMurosIsRequired");
			validationFailureMessages.push("estadoMuros is required");
		}
		if (_model.isUbicacionTanqueAvailable && _internal_ubicacionTanque == null)
		{
			violatedConsts.push("ubicacionTanqueIsRequired");
			validationFailureMessages.push("ubicacionTanque is required");
		}
		if (_model.isServidumbreAvailable && _internal_servidumbre == null)
		{
			violatedConsts.push("servidumbreIsRequired");
			validationFailureMessages.push("servidumbre is required");
		}
		if (_model.isPisosBodegaAvailable && _internal_pisosBodega == null)
		{
			violatedConsts.push("pisosBodegaIsRequired");
			validationFailureMessages.push("pisosBodega is required");
		}
		if (_model.isEstadoMetalAvailable && _internal_estadoMetal == null)
		{
			violatedConsts.push("estadoMetalIsRequired");
			validationFailureMessages.push("estadoMetal is required");
		}
		if (_model.isEstadoConservacionAvailable && _internal_estadoConservacion == null)
		{
			violatedConsts.push("estadoConservacionIsRequired");
			validationFailureMessages.push("estadoConservacion is required");
		}
		if (_model.isEstadoBaniosAvailable && _internal_estadoBanios == null)
		{
			violatedConsts.push("estadoBaniosIsRequired");
			validationFailureMessages.push("estadoBanios is required");
		}
		if (_model.isSimetriaAlturaSFAvailable && _internal_simetriaAlturaSF == null)
		{
			violatedConsts.push("simetriaAlturaSFIsRequired");
			validationFailureMessages.push("simetriaAlturaSF is required");
		}
		if (_model.isEstructuraTechosAvailable && _internal_estructuraTechos == null)
		{
			violatedConsts.push("estructuraTechosIsRequired");
			validationFailureMessages.push("estructuraTechos is required");
		}
		if (_model.isDanoReparadoSFAvailable && _internal_danoReparadoSF == null)
		{
			violatedConsts.push("danoReparadoSFIsRequired");
			validationFailureMessages.push("danoReparadoSF is required");
		}
		if (_model.isTanqueAguaAvailable && _internal_tanqueAgua == null)
		{
			violatedConsts.push("tanqueAguaIsRequired");
			validationFailureMessages.push("tanqueAgua is required");
		}
		if (_model.isCocinaAvailable && _internal_cocina == null)
		{
			violatedConsts.push("cocinaIsRequired");
			validationFailureMessages.push("cocina is required");
		}
		if (_model.isGarajeVisitanteAvailable && _internal_garajeVisitante == null)
		{
			violatedConsts.push("garajeVisitanteIsRequired");
			validationFailureMessages.push("garajeVisitante is required");
		}
		if (_model.isJuegoNinosAvailable && _internal_juegoNinos == null)
		{
			violatedConsts.push("juegoNinosIsRequired");
			validationFailureMessages.push("juegoNinos is required");
		}
		if (_model.isDanoPrevioSFAvailable && _internal_danoPrevioSF == null)
		{
			violatedConsts.push("danoPrevioSFIsRequired");
			validationFailureMessages.push("danoPrevioSF is required");
		}
		if (_model.isOtroMaterialAvailable && _internal_otroMaterial == null)
		{
			violatedConsts.push("otroMaterialIsRequired");
			validationFailureMessages.push("otroMaterial is required");
		}
		if (_model.isDetalleMaterialSFBUAAvailable && _internal_detalleMaterialSFBUA == null)
		{
			violatedConsts.push("detalleMaterialSFBUAIsRequired");
			validationFailureMessages.push("detalleMaterialSFBUA is required");
		}
		if (_model.isMaterialConstruccionSFAvailable && _internal_materialConstruccionSF == null)
		{
			violatedConsts.push("materialConstruccionSFIsRequired");
			validationFailureMessages.push("materialConstruccionSF is required");
		}
		if (_model.isCalidadMaderaAvailable && _internal_calidadMadera == null)
		{
			violatedConsts.push("calidadMaderaIsRequired");
			validationFailureMessages.push("calidadMadera is required");
		}
		if (_model.isZonasVerdesAvailable && _internal_zonasVerdes == null)
		{
			violatedConsts.push("zonasVerdesIsRequired");
			validationFailureMessages.push("zonasVerdes is required");
		}
		if (_model.isTotalUnidadesAvailable && _internal_totalUnidades == null)
		{
			violatedConsts.push("totalUnidadesIsRequired");
			validationFailureMessages.push("totalUnidades is required");
		}
		if (_model.isEstructuraAvailable && _internal_estructura == null)
		{
			violatedConsts.push("estructuraIsRequired");
			validationFailureMessages.push("estructura is required");
		}
		if (_model.isCalidadCocinaAvailable && _internal_calidadCocina == null)
		{
			violatedConsts.push("calidadCocinaIsRequired");
			validationFailureMessages.push("calidadCocina is required");
		}
		if (_model.isBicicleteroAvailable && _internal_bicicletero == null)
		{
			violatedConsts.push("bicicleteroIsRequired");
			validationFailureMessages.push("bicicletero is required");
		}
		if (_model.isAireAcondicionadoAvailable && _internal_aireAcondicionado == null)
		{
			violatedConsts.push("aireAcondicionadoIsRequired");
			validationFailureMessages.push("aireAcondicionado is required");
		}
		if (_model.isEstadoConstruccionAvailable && _internal_estadoConstruccion == null)
		{
			violatedConsts.push("estadoConstruccionIsRequired");
			validationFailureMessages.push("estadoConstruccion is required");
		}
		if (_model.isOtrosDotacionAvailable && _internal_otrosDotacion == null)
		{
			violatedConsts.push("otrosDotacionIsRequired");
			validationFailureMessages.push("otrosDotacion is required");
		}
		if (_model.isEstarHabitacionAvailable && _internal_estarHabitacion == null)
		{
			violatedConsts.push("estarHabitacionIsRequired");
			validationFailureMessages.push("estarHabitacion is required");
		}
		if (_model.isCubiertoAvailable && _internal_cubierto == null)
		{
			violatedConsts.push("cubiertoIsRequired");
			validationFailureMessages.push("cubierto is required");
		}
		if (_model.isAnoConstruccionBUAAvailable && _internal_anoConstruccionBUA == null)
		{
			violatedConsts.push("anoConstruccionBUAIsRequired");
			validationFailureMessages.push("anoConstruccionBUA is required");
		}
		if (_model.isPatioInteriorAvailable && _internal_patioInterior == null)
		{
			violatedConsts.push("patioInteriorIsRequired");
			validationFailureMessages.push("patioInterior is required");
		}
		if (_model.isLocalAvailable && _internal_local == null)
		{
			violatedConsts.push("localIsRequired");
			validationFailureMessages.push("local is required");
		}
		if (_model.isSobrePesoAvailable && _internal_sobrePeso == null)
		{
			violatedConsts.push("sobrePesoIsRequired");
			validationFailureMessages.push("sobrePeso is required");
		}
		if (_model.isCalidadBanioAvailable && _internal_calidadBanio == null)
		{
			violatedConsts.push("calidadBanioIsRequired");
			validationFailureMessages.push("calidadBanio is required");
		}
		if (_model.isTipoFachadaAvailable && _internal_tipoFachada == null)
		{
			violatedConsts.push("tipoFachadaIsRequired");
			validationFailureMessages.push("tipoFachada is required");
		}
		if (_model.isDetallematAvailable && _internal_detallemat == null)
		{
			violatedConsts.push("detallematIsRequired");
			validationFailureMessages.push("detallemat is required");
		}

		var styleValidity:Boolean = true;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
    
        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && styleValidity;
    }  

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
       	var oldValue:Boolean = model_internal::_isValid;               
        if (oldValue !== value)
        {
        	model_internal::_isValid = value;
        	_model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }        
    }

    /**
     * derived property getters
     */

    [Transient] 
	[Bindable(event="propertyChange")] 
    public function get _model() : _InformacionConstruccionEntityMetadata
    {
		return model_internal::_dminternal_model;              
    }	
    
    public function set _model(value : _InformacionConstruccionEntityMetadata) : void       
    {
    	var oldValue : _InformacionConstruccionEntityMetadata = model_internal::_dminternal_model;               
        if (oldValue !== value)
        {
        	model_internal::_dminternal_model = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }     
    }      

    /**
     * methods
     */  


    /**
     *  services
     */                  
     private var _managingService:com.adobe.fiber.services.IFiberManagingService;
    
     public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
     {
         _managingService = managingService;
     }                      
     
    model_internal function set invalidConstraints_der(value:Array) : void
    {  
     	var oldValue:Array = model_internal::_invalidConstraints;
     	// avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;   
			_model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);   
        }     	             
    }             
    
     model_internal function set validationFailureMessages_der(value:Array) : void
    {  
     	var oldValue:Array = model_internal::_validationFailureMessages;
     	// avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;   
			_model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);   
        }     	             
    }        
     
     // Individual isAvailable functions     
	// fields, getters, and setters for primitive representations of complex id properties

}

}
