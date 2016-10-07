/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Avaluo.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.AnexoFotografico;
import valueObjects.Ciudad;
import valueObjects.ComportamientoOfertaDemanda;
import valueObjects.CondicionesSalubridad;
import valueObjects.Dominios;
import valueObjects.HistoricoAvaluo;
import valueObjects.InformacionBarrio;
import valueObjects.InformacionConstruccion;
import valueObjects.InformacionInmueble;
import valueObjects.LiquidacionAvaluo;
import valueObjects.LiquidacionAvaluoTotal;
import valueObjects.LogsGeneraArchivo;
import valueObjects.Observaciones;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Avaluo extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void 
    {
        try 
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.entities.Avaluo") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.Avaluo", cz);
            } 
        }
        catch (e:Error) 
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.Avaluo", cz); 
        }
    }   
     
    model_internal static function initRemoteClassAliasAllRelated() : void 
    {
        valueObjects.Dominios.initRemoteClassAliasSingleChild();
        valueObjects.Ciudad.initRemoteClassAliasSingleChild();
        valueObjects.Departamento.initRemoteClassAliasSingleChild();
        valueObjects.LiquidacionAvaluoTotal.initRemoteClassAliasSingleChild();
        valueObjects.Avaluo.initRemoteClassAliasSingleChild();
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

	model_internal var _dminternal_model : _AvaluoEntityMetadata;

	/**
	 * properties
	 */
	private var _internal_ciudad : valueObjects.Ciudad;
	private var _internal_nombreConjuntoEdificio : String;
	private var _internal_sector : String;
	private var _internal_latitudSFBUA : String;
	private var _internal_objCiudad : valueObjects.Ciudad;
	private var _internal_numeroIdentificacion : String;
	private var _internal_TUsuario : String;
	private var _internal_estadoAvaluo : String;
	private var _internal_sistemaCoordenadasBUA : String;
	private var _internal_nombreBanco : String;
	private var _internal_fechaCreacion : Date;
	private var _internal_consecutivoBanco : String;
	private var _internal_liquidacionTotal : ArrayCollection;
	model_internal var _internal_liquidacionTotal_leaf:valueObjects.LiquidacionAvaluoTotal;
	private var _internal_usuarioTransaccion : String;
	private var _internal_anexosFotograficos : ArrayCollection;
	model_internal var _internal_anexosFotograficos_leaf:valueObjects.AnexoFotografico;
	private var _internal_idCiudad : String;
	private var _internal_telefonoSolicitante : String;
	private var _internal_liquidacionAvaluos : ArrayCollection;
	model_internal var _internal_liquidacionAvaluos_leaf:valueObjects.LiquidacionAvaluo;
	private var _internal_dominioMetodologia : valueObjects.Dominios;
	private var _internal_longitudSFBUA : String;
	private var _internal_idMetodologia : String;
	private var _internal_dominioTipoIdentificacion : valueObjects.Dominios;
	private var _internal_barrio : String;
	private var _internal_fechaTransaccion : Date;
	private var _internal_fechaAvaluo : Date;
	private var _internal_justificacion : String;
	private var _internal_fechaAvaluoTetxo : String;
	private var _internal_codigoDaneDepartamento : String;
	private var _internal_idTipoIdentificacion : String;
	private var _internal_idDepartamento : String;
	private var _internal_compOfertaDemanda : ArrayCollection;
	model_internal var _internal_compOfertaDemanda_leaf:valueObjects.ComportamientoOfertaDemanda;
	private var _internal_matriculaInmobiliariaPpal1 : String;
	private var _internal_informacionConstruccion : ArrayCollection;
	model_internal var _internal_informacionConstruccion_leaf:valueObjects.InformacionConstruccion;
	private var _internal_sistemaCoordenadasTxtBUA : String;
	private var _internal_observacion : ArrayCollection;
	model_internal var _internal_observacion_leaf:valueObjects.Observaciones;
	private var _internal_historicosAvaluo : ArrayCollection;
	model_internal var _internal_historicosAvaluo_leaf:valueObjects.HistoricoAvaluo;
	private var _internal_tipoDocumento : String;
	private var _internal_numLinea : String;
	private var _internal_idObjetoAvaluo : String;
	private var _internal_codigoBanco : String;
	private var _internal_ubicacionGps : String;
	private var _internal_correoSolicitante : String;
	private var _internal_usuarioCreacion : String;
	private var _internal_tipoInforme : String;
	private var _internal_informacionInmueble : ArrayCollection;
	model_internal var _internal_informacionInmueble_leaf:valueObjects.InformacionInmueble;
	private var _internal_condicionSalubridad : ArrayCollection;
	model_internal var _internal_condicionSalubridad_leaf:valueObjects.CondicionesSalubridad;
	private var _internal_logsGeneraArchivo : valueObjects.LogsGeneraArchivo;
	private var _internal_direccionInmueble : String;
	private var _internal_celularSolicitante : String;
	private var _internal_informacionBarrio : ArrayCollection;
	model_internal var _internal_informacionBarrio_leaf:valueObjects.InformacionBarrio;
	private var _internal_nombreSolicitante : String;
	private var _internal_codigoDaneCiudad : String;
	private var _internal_idAvaluo : String;

    private static var emptyArray:Array = new Array();
//
//	[transient]
//	public var matricula1:String;
//	
//	[transient]
//	public var matricula2:String;
//	
//	[transient]
//	public var matriculaGj1:String;
//
//	[transient]
//	public var matriculaGj2:String;
//	
//	[transient]
//	public var matriculaDep1:String;
//
//	import mx.rpc.AsyncToken;
//	
//	[transient]
//	public var Token:AsyncToken;
//	
//	[transient]
//	public var direccionInmuebleOld : String;
//
//	
//	[transient]
//	public var ws : Boolean; 
//	
    /**
     * derived property cache initialization
     */  
    model_internal var _cacheInitialized_isValid:Boolean = false;   
    
	model_internal var _changeWatcherArray:Array = new Array();   

	public function _Super_Avaluo() 
	{	
		_model = new _AvaluoEntityMetadata(this);
	
		// Bind to own data properties for cache invalidation triggering  
       
	}

    /**
     * data property getters
     */
	[Bindable(event="propertyChange")] 
    public function get ciudad() : valueObjects.Ciudad    
    {
            return _internal_ciudad;
    }    
	[Bindable(event="propertyChange")] 
    public function get nombreConjuntoEdificio() : String    
    {
            return _internal_nombreConjuntoEdificio;
    }    
	[Bindable(event="propertyChange")] 
    public function get sector() : String    
    {
            return _internal_sector;
    }    
	[Bindable(event="propertyChange")] 
    public function get latitudSFBUA() : String    
    {
            return _internal_latitudSFBUA;
    }    
	[Bindable(event="propertyChange")] 
    public function get objCiudad() : valueObjects.Ciudad    
    {
            return _internal_objCiudad;
    }    
	[Bindable(event="propertyChange")] 
    public function get numeroIdentificacion() : String    
    {
            return _internal_numeroIdentificacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get TUsuario() : String    
    {
            return _internal_TUsuario;
    }    
	[Bindable(event="propertyChange")] 
    public function get estadoAvaluo() : String    
    {
            return _internal_estadoAvaluo;
    }    
	[Bindable(event="propertyChange")] 
    public function get sistemaCoordenadasBUA() : String    
    {
            return _internal_sistemaCoordenadasBUA;
    }    
	[Bindable(event="propertyChange")] 
    public function get nombreBanco() : String    
    {
            return _internal_nombreBanco;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaCreacion() : Date    
    {
            return _internal_fechaCreacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get consecutivoBanco() : String    
    {
            return _internal_consecutivoBanco;
    }    
	[Bindable(event="propertyChange")] 
    public function get liquidacionTotal() : ArrayCollection    
    {
            return _internal_liquidacionTotal;
    }    
	[Bindable(event="propertyChange")] 
    public function get usuarioTransaccion() : String    
    {
            return _internal_usuarioTransaccion;
    }    
	[Bindable(event="propertyChange")] 
    public function get anexosFotograficos() : ArrayCollection    
    {
            return _internal_anexosFotograficos;
    }    
	[Bindable(event="propertyChange")] 
    public function get idCiudad() : String    
    {
            return _internal_idCiudad;
    }    
	[Bindable(event="propertyChange")] 
    public function get telefonoSolicitante() : String    
    {
            return _internal_telefonoSolicitante;
    }    
	[Bindable(event="propertyChange")] 
    public function get liquidacionAvaluos() : ArrayCollection    
    {
            return _internal_liquidacionAvaluos;
    }    
	[Bindable(event="propertyChange")] 
    public function get dominioMetodologia() : valueObjects.Dominios    
    {
            return _internal_dominioMetodologia;
    }    
	[Bindable(event="propertyChange")] 
    public function get longitudSFBUA() : String    
    {
            return _internal_longitudSFBUA;
    }    
	[Bindable(event="propertyChange")] 
    public function get idMetodologia() : String    
    {
            return _internal_idMetodologia;
    }    
	[Bindable(event="propertyChange")] 
    public function get dominioTipoIdentificacion() : valueObjects.Dominios    
    {
            return _internal_dominioTipoIdentificacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get barrio() : String    
    {
            return _internal_barrio;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaTransaccion() : Date    
    {
            return _internal_fechaTransaccion;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaAvaluo() : Date    
    {
            return _internal_fechaAvaluo;
    }    
	[Bindable(event="propertyChange")] 
    public function get justificacion() : String    
    {
            return _internal_justificacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaAvaluoTetxo() : String    
    {
            return _internal_fechaAvaluoTetxo;
    }    
	[Bindable(event="propertyChange")] 
    public function get codigoDaneDepartamento() : String    
    {
            return _internal_codigoDaneDepartamento;
    }    
	[Bindable(event="propertyChange")] 
    public function get idTipoIdentificacion() : String    
    {
            return _internal_idTipoIdentificacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get idDepartamento() : String    
    {
            return _internal_idDepartamento;
    }    
	[Bindable(event="propertyChange")] 
    public function get compOfertaDemanda() : ArrayCollection    
    {
            return _internal_compOfertaDemanda;
    }    
	[Bindable(event="propertyChange")] 
    public function get matriculaInmobiliariaPpal1() : String    
    {
            return _internal_matriculaInmobiliariaPpal1;
    }    
	[Bindable(event="propertyChange")] 
    public function get informacionConstruccion() : ArrayCollection    
    {
            return _internal_informacionConstruccion;
    }    
	[Bindable(event="propertyChange")] 
    public function get sistemaCoordenadasTxtBUA() : String    
    {
            return _internal_sistemaCoordenadasTxtBUA;
    }    
	[Bindable(event="propertyChange")] 
    public function get observacion() : ArrayCollection    
    {
            return _internal_observacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get historicosAvaluo() : ArrayCollection    
    {
            return _internal_historicosAvaluo;
    }    
	[Bindable(event="propertyChange")] 
    public function get tipoDocumento() : String    
    {
            return _internal_tipoDocumento;
    }    
	[Bindable(event="propertyChange")] 
    public function get numLinea() : String    
    {
            return _internal_numLinea;
    }    
	[Bindable(event="propertyChange")] 
    public function get idObjetoAvaluo() : String    
    {
            return _internal_idObjetoAvaluo;
    }    
	[Bindable(event="propertyChange")] 
    public function get codigoBanco() : String    
    {
            return _internal_codigoBanco;
    }    
	[Bindable(event="propertyChange")] 
    public function get ubicacionGps() : String    
    {
            return _internal_ubicacionGps;
    }    
	[Bindable(event="propertyChange")] 
    public function get correoSolicitante() : String    
    {
            return _internal_correoSolicitante;
    }    
	[Bindable(event="propertyChange")] 
    public function get usuarioCreacion() : String    
    {
            return _internal_usuarioCreacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get tipoInforme() : String    
    {
            return _internal_tipoInforme;
    }    
	[Bindable(event="propertyChange")] 
    public function get informacionInmueble() : ArrayCollection    
    {
            return _internal_informacionInmueble;
    }    
	[Bindable(event="propertyChange")] 
    public function get condicionSalubridad() : ArrayCollection    
    {
            return _internal_condicionSalubridad;
    }    
	[Bindable(event="propertyChange")] 
    public function get logsGeneraArchivo() : valueObjects.LogsGeneraArchivo    
    {
            return _internal_logsGeneraArchivo;
    }    
	[Bindable(event="propertyChange")] 
    public function get direccionInmueble() : String    
    {
            return _internal_direccionInmueble;
    }    
	[Bindable(event="propertyChange")] 
    public function get celularSolicitante() : String    
    {
            return _internal_celularSolicitante;
    }    
	[Bindable(event="propertyChange")] 
    public function get informacionBarrio() : ArrayCollection    
    {
            return _internal_informacionBarrio;
    }    
	[Bindable(event="propertyChange")] 
    public function get nombreSolicitante() : String    
    {
            return _internal_nombreSolicitante;
    }    
	[Bindable(event="propertyChange")] 
    public function get codigoDaneCiudad() : String    
    {
            return _internal_codigoDaneCiudad;
    }    
	[Bindable(event="propertyChange")] 
    public function get idAvaluo() : String    
    {
            return _internal_idAvaluo;
    }    

    /**
     * data property setters
     */      
    public function set ciudad(value:valueObjects.Ciudad) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_ciudad == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:valueObjects.Ciudad = _internal_ciudad;               
        if (oldValue !== value)
        {
            _internal_ciudad = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ciudad", oldValue, _internal_ciudad));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set nombreConjuntoEdificio(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_nombreConjuntoEdificio == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_nombreConjuntoEdificio;               
        if (oldValue !== value)
        {
            _internal_nombreConjuntoEdificio = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreConjuntoEdificio", oldValue, _internal_nombreConjuntoEdificio));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set sector(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_sector == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_sector;               
        if (oldValue !== value)
        {
            _internal_sector = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sector", oldValue, _internal_sector));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set latitudSFBUA(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_latitudSFBUA == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_latitudSFBUA;               
        if (oldValue !== value)
        {
            _internal_latitudSFBUA = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "latitudSFBUA", oldValue, _internal_latitudSFBUA));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set objCiudad(value:valueObjects.Ciudad) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_objCiudad == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:valueObjects.Ciudad = _internal_objCiudad;               
        if (oldValue !== value)
        {
            _internal_objCiudad = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "objCiudad", oldValue, _internal_objCiudad));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set numeroIdentificacion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_numeroIdentificacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_numeroIdentificacion;               
        if (oldValue !== value)
        {
            _internal_numeroIdentificacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numeroIdentificacion", oldValue, _internal_numeroIdentificacion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set TUsuario(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_TUsuario == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_TUsuario;               
        if (oldValue !== value)
        {
            _internal_TUsuario = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TUsuario", oldValue, _internal_TUsuario));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set estadoAvaluo(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estadoAvaluo == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estadoAvaluo;               
        if (oldValue !== value)
        {
            _internal_estadoAvaluo = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoAvaluo", oldValue, _internal_estadoAvaluo));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set sistemaCoordenadasBUA(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_sistemaCoordenadasBUA == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_sistemaCoordenadasBUA;               
        if (oldValue !== value)
        {
            _internal_sistemaCoordenadasBUA = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sistemaCoordenadasBUA", oldValue, _internal_sistemaCoordenadasBUA));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set nombreBanco(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_nombreBanco == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_nombreBanco;               
        if (oldValue !== value)
        {
            _internal_nombreBanco = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreBanco", oldValue, _internal_nombreBanco));
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
    public function set consecutivoBanco(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_consecutivoBanco == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_consecutivoBanco;               
        if (oldValue !== value)
        {
            _internal_consecutivoBanco = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "consecutivoBanco", oldValue, _internal_consecutivoBanco));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set liquidacionTotal(value:*) : void
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_liquidacionTotal == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:ArrayCollection = _internal_liquidacionTotal;               
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_liquidacionTotal = value;
            }
            else if (value is Array)
            {
                _internal_liquidacionTotal = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of liquidacionTotal must be a collection");
            }
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "liquidacionTotal", oldValue, _internal_liquidacionTotal));
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
    public function set anexosFotograficos(value:*) : void
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_anexosFotograficos == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:ArrayCollection = _internal_anexosFotograficos;               
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_anexosFotograficos = value;
            }
            else if (value is Array)
            {
                _internal_anexosFotograficos = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of anexosFotograficos must be a collection");
            }
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "anexosFotograficos", oldValue, _internal_anexosFotograficos));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set idCiudad(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_idCiudad == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_idCiudad;               
        if (oldValue !== value)
        {
            _internal_idCiudad = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idCiudad", oldValue, _internal_idCiudad));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set telefonoSolicitante(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_telefonoSolicitante == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_telefonoSolicitante;               
        if (oldValue !== value)
        {
            _internal_telefonoSolicitante = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "telefonoSolicitante", oldValue, _internal_telefonoSolicitante));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set liquidacionAvaluos(value:*) : void
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_liquidacionAvaluos == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:ArrayCollection = _internal_liquidacionAvaluos;               
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_liquidacionAvaluos = value;
            }
            else if (value is Array)
            {
                _internal_liquidacionAvaluos = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of liquidacionAvaluos must be a collection");
            }
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "liquidacionAvaluos", oldValue, _internal_liquidacionAvaluos));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set dominioMetodologia(value:valueObjects.Dominios) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_dominioMetodologia == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:valueObjects.Dominios = _internal_dominioMetodologia;               
        if (oldValue !== value)
        {
            _internal_dominioMetodologia = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dominioMetodologia", oldValue, _internal_dominioMetodologia));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set longitudSFBUA(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_longitudSFBUA == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_longitudSFBUA;               
        if (oldValue !== value)
        {
            _internal_longitudSFBUA = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "longitudSFBUA", oldValue, _internal_longitudSFBUA));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set idMetodologia(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_idMetodologia == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_idMetodologia;               
        if (oldValue !== value)
        {
            _internal_idMetodologia = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idMetodologia", oldValue, _internal_idMetodologia));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set dominioTipoIdentificacion(value:valueObjects.Dominios) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_dominioTipoIdentificacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:valueObjects.Dominios = _internal_dominioTipoIdentificacion;               
        if (oldValue !== value)
        {
            _internal_dominioTipoIdentificacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dominioTipoIdentificacion", oldValue, _internal_dominioTipoIdentificacion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set barrio(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_barrio == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_barrio;               
        if (oldValue !== value)
        {
            _internal_barrio = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "barrio", oldValue, _internal_barrio));
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
    public function set fechaAvaluo(value:Date) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_fechaAvaluo == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:Date = _internal_fechaAvaluo;               
        if (oldValue !== value)
        {
            _internal_fechaAvaluo = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaAvaluo", oldValue, _internal_fechaAvaluo));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set justificacion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_justificacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_justificacion;               
        if (oldValue !== value)
        {
            _internal_justificacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "justificacion", oldValue, _internal_justificacion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set fechaAvaluoTetxo(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_fechaAvaluoTetxo == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_fechaAvaluoTetxo;               
        if (oldValue !== value)
        {
            _internal_fechaAvaluoTetxo = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaAvaluoTetxo", oldValue, _internal_fechaAvaluoTetxo));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set codigoDaneDepartamento(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_codigoDaneDepartamento == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_codigoDaneDepartamento;               
        if (oldValue !== value)
        {
            _internal_codigoDaneDepartamento = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codigoDaneDepartamento", oldValue, _internal_codigoDaneDepartamento));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set idTipoIdentificacion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_idTipoIdentificacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_idTipoIdentificacion;               
        if (oldValue !== value)
        {
            _internal_idTipoIdentificacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idTipoIdentificacion", oldValue, _internal_idTipoIdentificacion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set idDepartamento(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_idDepartamento == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_idDepartamento;               
        if (oldValue !== value)
        {
            _internal_idDepartamento = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idDepartamento", oldValue, _internal_idDepartamento));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set compOfertaDemanda(value:*) : void
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_compOfertaDemanda == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:ArrayCollection = _internal_compOfertaDemanda;               
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_compOfertaDemanda = value;
            }
            else if (value is Array)
            {
                _internal_compOfertaDemanda = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of compOfertaDemanda must be a collection");
            }
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "compOfertaDemanda", oldValue, _internal_compOfertaDemanda));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set matriculaInmobiliariaPpal1(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_matriculaInmobiliariaPpal1 == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_matriculaInmobiliariaPpal1;               
        if (oldValue !== value)
        {
            _internal_matriculaInmobiliariaPpal1 = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "matriculaInmobiliariaPpal1", oldValue, _internal_matriculaInmobiliariaPpal1));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set informacionConstruccion(value:*) : void
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_informacionConstruccion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:ArrayCollection = _internal_informacionConstruccion;               
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_informacionConstruccion = value;
            }
            else if (value is Array)
            {
                _internal_informacionConstruccion = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of informacionConstruccion must be a collection");
            }
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "informacionConstruccion", oldValue, _internal_informacionConstruccion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set sistemaCoordenadasTxtBUA(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_sistemaCoordenadasTxtBUA == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_sistemaCoordenadasTxtBUA;               
        if (oldValue !== value)
        {
            _internal_sistemaCoordenadasTxtBUA = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sistemaCoordenadasTxtBUA", oldValue, _internal_sistemaCoordenadasTxtBUA));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set observacion(value:*) : void
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_observacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:ArrayCollection = _internal_observacion;               
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_observacion = value;
            }
            else if (value is Array)
            {
                _internal_observacion = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of observacion must be a collection");
            }
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "observacion", oldValue, _internal_observacion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set historicosAvaluo(value:*) : void
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_historicosAvaluo == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:ArrayCollection = _internal_historicosAvaluo;               
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_historicosAvaluo = value;
            }
            else if (value is Array)
            {
                _internal_historicosAvaluo = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of historicosAvaluo must be a collection");
            }
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "historicosAvaluo", oldValue, _internal_historicosAvaluo));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set tipoDocumento(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_tipoDocumento == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_tipoDocumento;               
        if (oldValue !== value)
        {
            _internal_tipoDocumento = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoDocumento", oldValue, _internal_tipoDocumento));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set numLinea(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_numLinea == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_numLinea;               
        if (oldValue !== value)
        {
            _internal_numLinea = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numLinea", oldValue, _internal_numLinea));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set idObjetoAvaluo(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_idObjetoAvaluo == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_idObjetoAvaluo;               
        if (oldValue !== value)
        {
            _internal_idObjetoAvaluo = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idObjetoAvaluo", oldValue, _internal_idObjetoAvaluo));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set codigoBanco(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_codigoBanco == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_codigoBanco;               
        if (oldValue !== value)
        {
            _internal_codigoBanco = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codigoBanco", oldValue, _internal_codigoBanco));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set ubicacionGps(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_ubicacionGps == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_ubicacionGps;               
        if (oldValue !== value)
        {
            _internal_ubicacionGps = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ubicacionGps", oldValue, _internal_ubicacionGps));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set correoSolicitante(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_correoSolicitante == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_correoSolicitante;               
        if (oldValue !== value)
        {
            _internal_correoSolicitante = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "correoSolicitante", oldValue, _internal_correoSolicitante));
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
    public function set tipoInforme(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_tipoInforme == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_tipoInforme;               
        if (oldValue !== value)
        {
            _internal_tipoInforme = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoInforme", oldValue, _internal_tipoInforme));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set informacionInmueble(value:*) : void
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_informacionInmueble == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:ArrayCollection = _internal_informacionInmueble;               
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_informacionInmueble = value;
            }
            else if (value is Array)
            {
                _internal_informacionInmueble = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of informacionInmueble must be a collection");
            }
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "informacionInmueble", oldValue, _internal_informacionInmueble));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set condicionSalubridad(value:*) : void
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_condicionSalubridad == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:ArrayCollection = _internal_condicionSalubridad;               
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_condicionSalubridad = value;
            }
            else if (value is Array)
            {
                _internal_condicionSalubridad = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of condicionSalubridad must be a collection");
            }
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "condicionSalubridad", oldValue, _internal_condicionSalubridad));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set logsGeneraArchivo(value:valueObjects.LogsGeneraArchivo) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_logsGeneraArchivo == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:valueObjects.LogsGeneraArchivo = _internal_logsGeneraArchivo;               
        if (oldValue !== value)
        {
            _internal_logsGeneraArchivo = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "logsGeneraArchivo", oldValue, _internal_logsGeneraArchivo));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set direccionInmueble(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_direccionInmueble == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_direccionInmueble;               
        if (oldValue !== value)
        {
            _internal_direccionInmueble = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "direccionInmueble", oldValue, _internal_direccionInmueble));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set celularSolicitante(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_celularSolicitante == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_celularSolicitante;               
        if (oldValue !== value)
        {
            _internal_celularSolicitante = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "celularSolicitante", oldValue, _internal_celularSolicitante));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set informacionBarrio(value:*) : void
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_informacionBarrio == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:ArrayCollection = _internal_informacionBarrio;               
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_informacionBarrio = value;
            }
            else if (value is Array)
            {
                _internal_informacionBarrio = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of informacionBarrio must be a collection");
            }
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "informacionBarrio", oldValue, _internal_informacionBarrio));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set nombreSolicitante(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_nombreSolicitante == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_nombreSolicitante;               
        if (oldValue !== value)
        {
            _internal_nombreSolicitante = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreSolicitante", oldValue, _internal_nombreSolicitante));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set codigoDaneCiudad(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_codigoDaneCiudad == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_codigoDaneCiudad;               
        if (oldValue !== value)
        {
            _internal_codigoDaneCiudad = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codigoDaneCiudad", oldValue, _internal_codigoDaneCiudad));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set idAvaluo(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_idAvaluo == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_idAvaluo;               
        if (oldValue !== value)
        {
            _internal_idAvaluo = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idAvaluo", oldValue, _internal_idAvaluo));
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

		if (_model.isCiudadAvailable && _internal_ciudad == null)
		{
			violatedConsts.push("ciudadIsRequired");
			validationFailureMessages.push("ciudad is required");
		}
		if (_model.isNombreConjuntoEdificioAvailable && _internal_nombreConjuntoEdificio == null)
		{
			violatedConsts.push("nombreConjuntoEdificioIsRequired");
			validationFailureMessages.push("nombreConjuntoEdificio is required");
		}
		if (_model.isSectorAvailable && _internal_sector == null)
		{
			violatedConsts.push("sectorIsRequired");
			validationFailureMessages.push("sector is required");
		}
		if (_model.isLatitudSFBUAAvailable && _internal_latitudSFBUA == null)
		{
			violatedConsts.push("latitudSFBUAIsRequired");
			validationFailureMessages.push("latitudSFBUA is required");
		}
		if (_model.isObjCiudadAvailable && _internal_objCiudad == null)
		{
			violatedConsts.push("objCiudadIsRequired");
			validationFailureMessages.push("objCiudad is required");
		}
		if (_model.isNumeroIdentificacionAvailable && _internal_numeroIdentificacion == null)
		{
			violatedConsts.push("numeroIdentificacionIsRequired");
			validationFailureMessages.push("numeroIdentificacion is required");
		}
		if (_model.isTUsuarioAvailable && _internal_TUsuario == null)
		{
			violatedConsts.push("TUsuarioIsRequired");
			validationFailureMessages.push("TUsuario is required");
		}
		if (_model.isEstadoAvaluoAvailable && _internal_estadoAvaluo == null)
		{
			violatedConsts.push("estadoAvaluoIsRequired");
			validationFailureMessages.push("estadoAvaluo is required");
		}
		if (_model.isSistemaCoordenadasBUAAvailable && _internal_sistemaCoordenadasBUA == null)
		{
			violatedConsts.push("sistemaCoordenadasBUAIsRequired");
			validationFailureMessages.push("sistemaCoordenadasBUA is required");
		}
		if (_model.isNombreBancoAvailable && _internal_nombreBanco == null)
		{
			violatedConsts.push("nombreBancoIsRequired");
			validationFailureMessages.push("nombreBanco is required");
		}
		if (_model.isFechaCreacionAvailable && _internal_fechaCreacion == null)
		{
			violatedConsts.push("fechaCreacionIsRequired");
			validationFailureMessages.push("fechaCreacion is required");
		}
		if (_model.isConsecutivoBancoAvailable && _internal_consecutivoBanco == null)
		{
			violatedConsts.push("consecutivoBancoIsRequired");
			validationFailureMessages.push("consecutivoBanco is required");
		}
		if (_model.isLiquidacionTotalAvailable && _internal_liquidacionTotal == null)
		{
			violatedConsts.push("liquidacionTotalIsRequired");
			validationFailureMessages.push("liquidacionTotal is required");
		}
		if (_model.isUsuarioTransaccionAvailable && _internal_usuarioTransaccion == null)
		{
			violatedConsts.push("usuarioTransaccionIsRequired");
			validationFailureMessages.push("usuarioTransaccion is required");
		}
		if (_model.isAnexosFotograficosAvailable && _internal_anexosFotograficos == null)
		{
			violatedConsts.push("anexosFotograficosIsRequired");
			validationFailureMessages.push("anexosFotograficos is required");
		}
		if (_model.isIdCiudadAvailable && _internal_idCiudad == null)
		{
			violatedConsts.push("idCiudadIsRequired");
			validationFailureMessages.push("idCiudad is required");
		}
		if (_model.isTelefonoSolicitanteAvailable && _internal_telefonoSolicitante == null)
		{
			violatedConsts.push("telefonoSolicitanteIsRequired");
			validationFailureMessages.push("telefonoSolicitante is required");
		}
		if (_model.isLiquidacionAvaluosAvailable && _internal_liquidacionAvaluos == null)
		{
			violatedConsts.push("liquidacionAvaluosIsRequired");
			validationFailureMessages.push("liquidacionAvaluos is required");
		}
		if (_model.isDominioMetodologiaAvailable && _internal_dominioMetodologia == null)
		{
			violatedConsts.push("dominioMetodologiaIsRequired");
			validationFailureMessages.push("dominioMetodologia is required");
		}
		if (_model.isLongitudSFBUAAvailable && _internal_longitudSFBUA == null)
		{
			violatedConsts.push("longitudSFBUAIsRequired");
			validationFailureMessages.push("longitudSFBUA is required");
		}
		if (_model.isIdMetodologiaAvailable && _internal_idMetodologia == null)
		{
			violatedConsts.push("idMetodologiaIsRequired");
			validationFailureMessages.push("idMetodologia is required");
		}
		if (_model.isDominioTipoIdentificacionAvailable && _internal_dominioTipoIdentificacion == null)
		{
			violatedConsts.push("dominioTipoIdentificacionIsRequired");
			validationFailureMessages.push("dominioTipoIdentificacion is required");
		}
		if (_model.isBarrioAvailable && _internal_barrio == null)
		{
			violatedConsts.push("barrioIsRequired");
			validationFailureMessages.push("barrio is required");
		}
		if (_model.isFechaTransaccionAvailable && _internal_fechaTransaccion == null)
		{
			violatedConsts.push("fechaTransaccionIsRequired");
			validationFailureMessages.push("fechaTransaccion is required");
		}
		if (_model.isFechaAvaluoAvailable && _internal_fechaAvaluo == null)
		{
			violatedConsts.push("fechaAvaluoIsRequired");
			validationFailureMessages.push("fechaAvaluo is required");
		}
		if (_model.isJustificacionAvailable && _internal_justificacion == null)
		{
			violatedConsts.push("justificacionIsRequired");
			validationFailureMessages.push("justificacion is required");
		}
		if (_model.isFechaAvaluoTetxoAvailable && _internal_fechaAvaluoTetxo == null)
		{
			violatedConsts.push("fechaAvaluoTetxoIsRequired");
			validationFailureMessages.push("fechaAvaluoTetxo is required");
		}
		if (_model.isCodigoDaneDepartamentoAvailable && _internal_codigoDaneDepartamento == null)
		{
			violatedConsts.push("codigoDaneDepartamentoIsRequired");
			validationFailureMessages.push("codigoDaneDepartamento is required");
		}
		if (_model.isIdTipoIdentificacionAvailable && _internal_idTipoIdentificacion == null)
		{
			violatedConsts.push("idTipoIdentificacionIsRequired");
			validationFailureMessages.push("idTipoIdentificacion is required");
		}
		if (_model.isIdDepartamentoAvailable && _internal_idDepartamento == null)
		{
			violatedConsts.push("idDepartamentoIsRequired");
			validationFailureMessages.push("idDepartamento is required");
		}
		if (_model.isCompOfertaDemandaAvailable && _internal_compOfertaDemanda == null)
		{
			violatedConsts.push("compOfertaDemandaIsRequired");
			validationFailureMessages.push("compOfertaDemanda is required");
		}
		if (_model.isMatriculaInmobiliariaPpal1Available && _internal_matriculaInmobiliariaPpal1 == null)
		{
			violatedConsts.push("matriculaInmobiliariaPpal1IsRequired");
			validationFailureMessages.push("matriculaInmobiliariaPpal1 is required");
		}
		if (_model.isInformacionConstruccionAvailable && _internal_informacionConstruccion == null)
		{
			violatedConsts.push("informacionConstruccionIsRequired");
			validationFailureMessages.push("informacionConstruccion is required");
		}
		if (_model.isSistemaCoordenadasTxtBUAAvailable && _internal_sistemaCoordenadasTxtBUA == null)
		{
			violatedConsts.push("sistemaCoordenadasTxtBUAIsRequired");
			validationFailureMessages.push("sistemaCoordenadasTxtBUA is required");
		}
		if (_model.isObservacionAvailable && _internal_observacion == null)
		{
			violatedConsts.push("observacionIsRequired");
			validationFailureMessages.push("observacion is required");
		}
		if (_model.isHistoricosAvaluoAvailable && _internal_historicosAvaluo == null)
		{
			violatedConsts.push("historicosAvaluoIsRequired");
			validationFailureMessages.push("historicosAvaluo is required");
		}
		if (_model.isTipoDocumentoAvailable && _internal_tipoDocumento == null)
		{
			violatedConsts.push("tipoDocumentoIsRequired");
			validationFailureMessages.push("tipoDocumento is required");
		}
		if (_model.isNumLineaAvailable && _internal_numLinea == null)
		{
			violatedConsts.push("numLineaIsRequired");
			validationFailureMessages.push("numLinea is required");
		}
		if (_model.isIdObjetoAvaluoAvailable && _internal_idObjetoAvaluo == null)
		{
			violatedConsts.push("idObjetoAvaluoIsRequired");
			validationFailureMessages.push("idObjetoAvaluo is required");
		}
		if (_model.isCodigoBancoAvailable && _internal_codigoBanco == null)
		{
			violatedConsts.push("codigoBancoIsRequired");
			validationFailureMessages.push("codigoBanco is required");
		}
		if (_model.isUbicacionGpsAvailable && _internal_ubicacionGps == null)
		{
			violatedConsts.push("ubicacionGpsIsRequired");
			validationFailureMessages.push("ubicacionGps is required");
		}
		if (_model.isCorreoSolicitanteAvailable && _internal_correoSolicitante == null)
		{
			violatedConsts.push("correoSolicitanteIsRequired");
			validationFailureMessages.push("correoSolicitante is required");
		}
		if (_model.isUsuarioCreacionAvailable && _internal_usuarioCreacion == null)
		{
			violatedConsts.push("usuarioCreacionIsRequired");
			validationFailureMessages.push("usuarioCreacion is required");
		}
		if (_model.isTipoInformeAvailable && _internal_tipoInforme == null)
		{
			violatedConsts.push("tipoInformeIsRequired");
			validationFailureMessages.push("tipoInforme is required");
		}
		if (_model.isInformacionInmuebleAvailable && _internal_informacionInmueble == null)
		{
			violatedConsts.push("informacionInmuebleIsRequired");
			validationFailureMessages.push("informacionInmueble is required");
		}
		if (_model.isCondicionSalubridadAvailable && _internal_condicionSalubridad == null)
		{
			violatedConsts.push("condicionSalubridadIsRequired");
			validationFailureMessages.push("condicionSalubridad is required");
		}
		if (_model.isLogsGeneraArchivoAvailable && _internal_logsGeneraArchivo == null)
		{
			violatedConsts.push("logsGeneraArchivoIsRequired");
			validationFailureMessages.push("logsGeneraArchivo is required");
		}
		if (_model.isDireccionInmuebleAvailable && _internal_direccionInmueble == null)
		{
			violatedConsts.push("direccionInmuebleIsRequired");
			validationFailureMessages.push("direccionInmueble is required");
		}
		if (_model.isCelularSolicitanteAvailable && _internal_celularSolicitante == null)
		{
			violatedConsts.push("celularSolicitanteIsRequired");
			validationFailureMessages.push("celularSolicitante is required");
		}
		if (_model.isInformacionBarrioAvailable && _internal_informacionBarrio == null)
		{
			violatedConsts.push("informacionBarrioIsRequired");
			validationFailureMessages.push("informacionBarrio is required");
		}
		if (_model.isNombreSolicitanteAvailable && _internal_nombreSolicitante == null)
		{
			violatedConsts.push("nombreSolicitanteIsRequired");
			validationFailureMessages.push("nombreSolicitante is required");
		}
		if (_model.isCodigoDaneCiudadAvailable && _internal_codigoDaneCiudad == null)
		{
			violatedConsts.push("codigoDaneCiudadIsRequired");
			validationFailureMessages.push("codigoDaneCiudad is required");
		}
		if (_model.isIdAvaluoAvailable && _internal_idAvaluo == null)
		{
			violatedConsts.push("idAvaluoIsRequired");
			validationFailureMessages.push("idAvaluo is required");
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
    public function get _model() : _AvaluoEntityMetadata
    {
		return model_internal::_dminternal_model;              
    }	
    
    public function set _model(value : _AvaluoEntityMetadata) : void       
    {
    	var oldValue : _AvaluoEntityMetadata = model_internal::_dminternal_model;               
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
