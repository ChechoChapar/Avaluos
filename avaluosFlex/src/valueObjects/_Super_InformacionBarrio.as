/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - InformacionBarrio.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.events.PropertyChangeEvent;
import valueObjects.Avaluo;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_InformacionBarrio extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void 
    {
        try 
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.entities.InformacionBarrio") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.InformacionBarrio", cz);
            } 
        }
        catch (e:Error) 
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.InformacionBarrio", cz); 
        }
    }   
     
    model_internal static function initRemoteClassAliasAllRelated() : void 
    {
        valueObjects.Avaluo.initRemoteClassAliasSingleChild();
    }

	model_internal var _dminternal_model : _InformacionBarrioEntityMetadata;

	/**
	 * properties
	 */
	private var _internal_gasSector : String;
	private var _internal_sardeneles : String;
	private var _internal_telefonoPredio : String;
	private var _internal_electricidadSector : String;
	private var _internal_parques : String;
	private var _internal_perspectivas : String;
	private var _internal_topografia : String;
	private var _internal_avaluo : valueObjects.Avaluo;
	private var _internal_legalidad : String;
	private var _internal_estrato : String;
	private var _internal_alcantarilladoSector : String;
	private var _internal_alumbrado : String;
	private var _internal_alamedas : String;
	private var _internal_edificacionesIguales : String;
	private var _internal_fechaCreacion : Date;
	private var _internal_estadosViaAcceso : String;
	private var _internal_paradero : String;
	private var _internal_electricidadPredio : String;
	private var _internal_otrosUsos : String;
	private var _internal_transporte : String;
	private var _internal_usuarioTransaccion : String;
	private var _internal_telefonoSector : String;
	private var _internal_zonasVerdes : String;
	private var _internal_andenes : String;
	private var _internal_textoOtrosUsos : String;
	private var _internal_industria : String;
	private var _internal_pavimentada : String;
	private var _internal_usuarioCreacion : String;
	private var _internal_acueductoPredio : String;
	private var _internal_cicloRutas : String;
	private var _internal_arborizacion : String;
	private var _internal_vivienda : String;
	private var _internal_idInformacionBarrio : String;
	private var _internal_gasPredio : String;
	private var _internal_comercio : String;
	private var _internal_alcantarilladoPredio : String;
	private var _internal_acueductoSector : String;
	private var _internal_fechaTransaccion : Date;

    private static var emptyArray:Array = new Array();

    /**
     * derived property cache initialization
     */  
    model_internal var _cacheInitialized_isValid:Boolean = false;   
    
	model_internal var _changeWatcherArray:Array = new Array();   

	public function _Super_InformacionBarrio() 
	{	
		_model = new _InformacionBarrioEntityMetadata(this);
	
		// Bind to own data properties for cache invalidation triggering  
       
	}

    /**
     * data property getters
     */
	[Bindable(event="propertyChange")] 
    public function get gasSector() : String    
    {
            return _internal_gasSector;
    }    
	[Bindable(event="propertyChange")] 
    public function get sardeneles() : String    
    {
            return _internal_sardeneles;
    }    
	[Bindable(event="propertyChange")] 
    public function get telefonoPredio() : String    
    {
            return _internal_telefonoPredio;
    }    
	[Bindable(event="propertyChange")] 
    public function get electricidadSector() : String    
    {
            return _internal_electricidadSector;
    }    
	[Bindable(event="propertyChange")] 
    public function get parques() : String    
    {
            return _internal_parques;
    }    
	[Bindable(event="propertyChange")] 
    public function get perspectivas() : String    
    {
            return _internal_perspectivas;
    }    
	[Bindable(event="propertyChange")] 
    public function get topografia() : String    
    {
            return _internal_topografia;
    }    
	[Bindable(event="propertyChange")] 
    public function get avaluo() : valueObjects.Avaluo    
    {
            return _internal_avaluo;
    }    
	[Bindable(event="propertyChange")] 
    public function get legalidad() : String    
    {
            return _internal_legalidad;
    }    
	[Bindable(event="propertyChange")] 
    public function get estrato() : String    
    {
            return _internal_estrato;
    }    
	[Bindable(event="propertyChange")] 
    public function get alcantarilladoSector() : String    
    {
            return _internal_alcantarilladoSector;
    }    
	[Bindable(event="propertyChange")] 
    public function get alumbrado() : String    
    {
            return _internal_alumbrado;
    }    
	[Bindable(event="propertyChange")] 
    public function get alamedas() : String    
    {
            return _internal_alamedas;
    }    
	[Bindable(event="propertyChange")] 
    public function get edificacionesIguales() : String    
    {
            return _internal_edificacionesIguales;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaCreacion() : Date    
    {
            return _internal_fechaCreacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get estadosViaAcceso() : String    
    {
            return _internal_estadosViaAcceso;
    }    
	[Bindable(event="propertyChange")] 
    public function get paradero() : String    
    {
            return _internal_paradero;
    }    
	[Bindable(event="propertyChange")] 
    public function get electricidadPredio() : String    
    {
            return _internal_electricidadPredio;
    }    
	[Bindable(event="propertyChange")] 
    public function get otrosUsos() : String    
    {
            return _internal_otrosUsos;
    }    
	[Bindable(event="propertyChange")] 
    public function get transporte() : String    
    {
            return _internal_transporte;
    }    
	[Bindable(event="propertyChange")] 
    public function get usuarioTransaccion() : String    
    {
            return _internal_usuarioTransaccion;
    }    
	[Bindable(event="propertyChange")] 
    public function get telefonoSector() : String    
    {
            return _internal_telefonoSector;
    }    
	[Bindable(event="propertyChange")] 
    public function get zonasVerdes() : String    
    {
            return _internal_zonasVerdes;
    }    
	[Bindable(event="propertyChange")] 
    public function get andenes() : String    
    {
            return _internal_andenes;
    }    
	[Bindable(event="propertyChange")] 
    public function get textoOtrosUsos() : String    
    {
            return _internal_textoOtrosUsos;
    }    
	[Bindable(event="propertyChange")] 
    public function get industria() : String    
    {
            return _internal_industria;
    }    
	[Bindable(event="propertyChange")] 
    public function get pavimentada() : String    
    {
            return _internal_pavimentada;
    }    
	[Bindable(event="propertyChange")] 
    public function get usuarioCreacion() : String    
    {
            return _internal_usuarioCreacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get acueductoPredio() : String    
    {
            return _internal_acueductoPredio;
    }    
	[Bindable(event="propertyChange")] 
    public function get cicloRutas() : String    
    {
            return _internal_cicloRutas;
    }    
	[Bindable(event="propertyChange")] 
    public function get arborizacion() : String    
    {
            return _internal_arborizacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get vivienda() : String    
    {
            return _internal_vivienda;
    }    
	[Bindable(event="propertyChange")] 
    public function get idInformacionBarrio() : String    
    {
            return _internal_idInformacionBarrio;
    }    
	[Bindable(event="propertyChange")] 
    public function get gasPredio() : String    
    {
            return _internal_gasPredio;
    }    
	[Bindable(event="propertyChange")] 
    public function get comercio() : String    
    {
            return _internal_comercio;
    }    
	[Bindable(event="propertyChange")] 
    public function get alcantarilladoPredio() : String    
    {
            return _internal_alcantarilladoPredio;
    }    
	[Bindable(event="propertyChange")] 
    public function get acueductoSector() : String    
    {
            return _internal_acueductoSector;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaTransaccion() : Date    
    {
            return _internal_fechaTransaccion;
    }    

    /**
     * data property setters
     */      
    public function set gasSector(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_gasSector == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_gasSector;               
        if (oldValue !== value)
        {
            _internal_gasSector = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "gasSector", oldValue, _internal_gasSector));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set sardeneles(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_sardeneles == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_sardeneles;               
        if (oldValue !== value)
        {
            _internal_sardeneles = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sardeneles", oldValue, _internal_sardeneles));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set telefonoPredio(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_telefonoPredio == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_telefonoPredio;               
        if (oldValue !== value)
        {
            _internal_telefonoPredio = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "telefonoPredio", oldValue, _internal_telefonoPredio));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set electricidadSector(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_electricidadSector == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_electricidadSector;               
        if (oldValue !== value)
        {
            _internal_electricidadSector = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "electricidadSector", oldValue, _internal_electricidadSector));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set parques(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_parques == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_parques;               
        if (oldValue !== value)
        {
            _internal_parques = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "parques", oldValue, _internal_parques));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set perspectivas(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_perspectivas == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_perspectivas;               
        if (oldValue !== value)
        {
            _internal_perspectivas = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "perspectivas", oldValue, _internal_perspectivas));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set topografia(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_topografia == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_topografia;               
        if (oldValue !== value)
        {
            _internal_topografia = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "topografia", oldValue, _internal_topografia));
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
    public function set legalidad(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_legalidad == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_legalidad;               
        if (oldValue !== value)
        {
            _internal_legalidad = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "legalidad", oldValue, _internal_legalidad));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set estrato(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estrato == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estrato;               
        if (oldValue !== value)
        {
            _internal_estrato = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estrato", oldValue, _internal_estrato));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set alcantarilladoSector(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_alcantarilladoSector == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_alcantarilladoSector;               
        if (oldValue !== value)
        {
            _internal_alcantarilladoSector = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "alcantarilladoSector", oldValue, _internal_alcantarilladoSector));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set alumbrado(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_alumbrado == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_alumbrado;               
        if (oldValue !== value)
        {
            _internal_alumbrado = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "alumbrado", oldValue, _internal_alumbrado));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set alamedas(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_alamedas == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_alamedas;               
        if (oldValue !== value)
        {
            _internal_alamedas = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "alamedas", oldValue, _internal_alamedas));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set edificacionesIguales(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_edificacionesIguales == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_edificacionesIguales;               
        if (oldValue !== value)
        {
            _internal_edificacionesIguales = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "edificacionesIguales", oldValue, _internal_edificacionesIguales));
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
    public function set estadosViaAcceso(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estadosViaAcceso == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estadosViaAcceso;               
        if (oldValue !== value)
        {
            _internal_estadosViaAcceso = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadosViaAcceso", oldValue, _internal_estadosViaAcceso));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set paradero(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_paradero == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_paradero;               
        if (oldValue !== value)
        {
            _internal_paradero = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "paradero", oldValue, _internal_paradero));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set electricidadPredio(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_electricidadPredio == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_electricidadPredio;               
        if (oldValue !== value)
        {
            _internal_electricidadPredio = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "electricidadPredio", oldValue, _internal_electricidadPredio));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set otrosUsos(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_otrosUsos == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_otrosUsos;               
        if (oldValue !== value)
        {
            _internal_otrosUsos = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "otrosUsos", oldValue, _internal_otrosUsos));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set transporte(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_transporte == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_transporte;               
        if (oldValue !== value)
        {
            _internal_transporte = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "transporte", oldValue, _internal_transporte));
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
    public function set telefonoSector(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_telefonoSector == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_telefonoSector;               
        if (oldValue !== value)
        {
            _internal_telefonoSector = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "telefonoSector", oldValue, _internal_telefonoSector));
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
    public function set andenes(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_andenes == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_andenes;               
        if (oldValue !== value)
        {
            _internal_andenes = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "andenes", oldValue, _internal_andenes));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set textoOtrosUsos(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_textoOtrosUsos == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_textoOtrosUsos;               
        if (oldValue !== value)
        {
            _internal_textoOtrosUsos = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "textoOtrosUsos", oldValue, _internal_textoOtrosUsos));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set industria(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_industria == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_industria;               
        if (oldValue !== value)
        {
            _internal_industria = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "industria", oldValue, _internal_industria));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set pavimentada(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_pavimentada == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_pavimentada;               
        if (oldValue !== value)
        {
            _internal_pavimentada = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pavimentada", oldValue, _internal_pavimentada));
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
    public function set acueductoPredio(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_acueductoPredio == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_acueductoPredio;               
        if (oldValue !== value)
        {
            _internal_acueductoPredio = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "acueductoPredio", oldValue, _internal_acueductoPredio));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set cicloRutas(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_cicloRutas == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_cicloRutas;               
        if (oldValue !== value)
        {
            _internal_cicloRutas = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cicloRutas", oldValue, _internal_cicloRutas));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set arborizacion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_arborizacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_arborizacion;               
        if (oldValue !== value)
        {
            _internal_arborizacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "arborizacion", oldValue, _internal_arborizacion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set vivienda(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_vivienda == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_vivienda;               
        if (oldValue !== value)
        {
            _internal_vivienda = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "vivienda", oldValue, _internal_vivienda));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set idInformacionBarrio(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_idInformacionBarrio == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_idInformacionBarrio;               
        if (oldValue !== value)
        {
            _internal_idInformacionBarrio = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idInformacionBarrio", oldValue, _internal_idInformacionBarrio));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set gasPredio(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_gasPredio == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_gasPredio;               
        if (oldValue !== value)
        {
            _internal_gasPredio = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "gasPredio", oldValue, _internal_gasPredio));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set comercio(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_comercio == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_comercio;               
        if (oldValue !== value)
        {
            _internal_comercio = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "comercio", oldValue, _internal_comercio));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set alcantarilladoPredio(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_alcantarilladoPredio == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_alcantarilladoPredio;               
        if (oldValue !== value)
        {
            _internal_alcantarilladoPredio = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "alcantarilladoPredio", oldValue, _internal_alcantarilladoPredio));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set acueductoSector(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_acueductoSector == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_acueductoSector;               
        if (oldValue !== value)
        {
            _internal_acueductoSector = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "acueductoSector", oldValue, _internal_acueductoSector));
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

		if (_model.isGasSectorAvailable && _internal_gasSector == null)
		{
			violatedConsts.push("gasSectorIsRequired");
			validationFailureMessages.push("gasSector is required");
		}
		if (_model.isSardenelesAvailable && _internal_sardeneles == null)
		{
			violatedConsts.push("sardenelesIsRequired");
			validationFailureMessages.push("sardeneles is required");
		}
		if (_model.isTelefonoPredioAvailable && _internal_telefonoPredio == null)
		{
			violatedConsts.push("telefonoPredioIsRequired");
			validationFailureMessages.push("telefonoPredio is required");
		}
		if (_model.isElectricidadSectorAvailable && _internal_electricidadSector == null)
		{
			violatedConsts.push("electricidadSectorIsRequired");
			validationFailureMessages.push("electricidadSector is required");
		}
		if (_model.isParquesAvailable && _internal_parques == null)
		{
			violatedConsts.push("parquesIsRequired");
			validationFailureMessages.push("parques is required");
		}
		if (_model.isPerspectivasAvailable && _internal_perspectivas == null)
		{
			violatedConsts.push("perspectivasIsRequired");
			validationFailureMessages.push("perspectivas is required");
		}
		if (_model.isTopografiaAvailable && _internal_topografia == null)
		{
			violatedConsts.push("topografiaIsRequired");
			validationFailureMessages.push("topografia is required");
		}
		if (_model.isAvaluoAvailable && _internal_avaluo == null)
		{
			violatedConsts.push("avaluoIsRequired");
			validationFailureMessages.push("avaluo is required");
		}
		if (_model.isLegalidadAvailable && _internal_legalidad == null)
		{
			violatedConsts.push("legalidadIsRequired");
			validationFailureMessages.push("legalidad is required");
		}
		if (_model.isEstratoAvailable && _internal_estrato == null)
		{
			violatedConsts.push("estratoIsRequired");
			validationFailureMessages.push("estrato is required");
		}
		if (_model.isAlcantarilladoSectorAvailable && _internal_alcantarilladoSector == null)
		{
			violatedConsts.push("alcantarilladoSectorIsRequired");
			validationFailureMessages.push("alcantarilladoSector is required");
		}
		if (_model.isAlumbradoAvailable && _internal_alumbrado == null)
		{
			violatedConsts.push("alumbradoIsRequired");
			validationFailureMessages.push("alumbrado is required");
		}
		if (_model.isAlamedasAvailable && _internal_alamedas == null)
		{
			violatedConsts.push("alamedasIsRequired");
			validationFailureMessages.push("alamedas is required");
		}
		if (_model.isEdificacionesIgualesAvailable && _internal_edificacionesIguales == null)
		{
			violatedConsts.push("edificacionesIgualesIsRequired");
			validationFailureMessages.push("edificacionesIguales is required");
		}
		if (_model.isFechaCreacionAvailable && _internal_fechaCreacion == null)
		{
			violatedConsts.push("fechaCreacionIsRequired");
			validationFailureMessages.push("fechaCreacion is required");
		}
		if (_model.isEstadosViaAccesoAvailable && _internal_estadosViaAcceso == null)
		{
			violatedConsts.push("estadosViaAccesoIsRequired");
			validationFailureMessages.push("estadosViaAcceso is required");
		}
		if (_model.isParaderoAvailable && _internal_paradero == null)
		{
			violatedConsts.push("paraderoIsRequired");
			validationFailureMessages.push("paradero is required");
		}
		if (_model.isElectricidadPredioAvailable && _internal_electricidadPredio == null)
		{
			violatedConsts.push("electricidadPredioIsRequired");
			validationFailureMessages.push("electricidadPredio is required");
		}
		if (_model.isOtrosUsosAvailable && _internal_otrosUsos == null)
		{
			violatedConsts.push("otrosUsosIsRequired");
			validationFailureMessages.push("otrosUsos is required");
		}
		if (_model.isTransporteAvailable && _internal_transporte == null)
		{
			violatedConsts.push("transporteIsRequired");
			validationFailureMessages.push("transporte is required");
		}
		if (_model.isUsuarioTransaccionAvailable && _internal_usuarioTransaccion == null)
		{
			violatedConsts.push("usuarioTransaccionIsRequired");
			validationFailureMessages.push("usuarioTransaccion is required");
		}
		if (_model.isTelefonoSectorAvailable && _internal_telefonoSector == null)
		{
			violatedConsts.push("telefonoSectorIsRequired");
			validationFailureMessages.push("telefonoSector is required");
		}
		if (_model.isZonasVerdesAvailable && _internal_zonasVerdes == null)
		{
			violatedConsts.push("zonasVerdesIsRequired");
			validationFailureMessages.push("zonasVerdes is required");
		}
		if (_model.isAndenesAvailable && _internal_andenes == null)
		{
			violatedConsts.push("andenesIsRequired");
			validationFailureMessages.push("andenes is required");
		}
		if (_model.isTextoOtrosUsosAvailable && _internal_textoOtrosUsos == null)
		{
			violatedConsts.push("textoOtrosUsosIsRequired");
			validationFailureMessages.push("textoOtrosUsos is required");
		}
		if (_model.isIndustriaAvailable && _internal_industria == null)
		{
			violatedConsts.push("industriaIsRequired");
			validationFailureMessages.push("industria is required");
		}
		if (_model.isPavimentadaAvailable && _internal_pavimentada == null)
		{
			violatedConsts.push("pavimentadaIsRequired");
			validationFailureMessages.push("pavimentada is required");
		}
		if (_model.isUsuarioCreacionAvailable && _internal_usuarioCreacion == null)
		{
			violatedConsts.push("usuarioCreacionIsRequired");
			validationFailureMessages.push("usuarioCreacion is required");
		}
		if (_model.isAcueductoPredioAvailable && _internal_acueductoPredio == null)
		{
			violatedConsts.push("acueductoPredioIsRequired");
			validationFailureMessages.push("acueductoPredio is required");
		}
		if (_model.isCicloRutasAvailable && _internal_cicloRutas == null)
		{
			violatedConsts.push("cicloRutasIsRequired");
			validationFailureMessages.push("cicloRutas is required");
		}
		if (_model.isArborizacionAvailable && _internal_arborizacion == null)
		{
			violatedConsts.push("arborizacionIsRequired");
			validationFailureMessages.push("arborizacion is required");
		}
		if (_model.isViviendaAvailable && _internal_vivienda == null)
		{
			violatedConsts.push("viviendaIsRequired");
			validationFailureMessages.push("vivienda is required");
		}
		if (_model.isIdInformacionBarrioAvailable && _internal_idInformacionBarrio == null)
		{
			violatedConsts.push("idInformacionBarrioIsRequired");
			validationFailureMessages.push("idInformacionBarrio is required");
		}
		if (_model.isGasPredioAvailable && _internal_gasPredio == null)
		{
			violatedConsts.push("gasPredioIsRequired");
			validationFailureMessages.push("gasPredio is required");
		}
		if (_model.isComercioAvailable && _internal_comercio == null)
		{
			violatedConsts.push("comercioIsRequired");
			validationFailureMessages.push("comercio is required");
		}
		if (_model.isAlcantarilladoPredioAvailable && _internal_alcantarilladoPredio == null)
		{
			violatedConsts.push("alcantarilladoPredioIsRequired");
			validationFailureMessages.push("alcantarilladoPredio is required");
		}
		if (_model.isAcueductoSectorAvailable && _internal_acueductoSector == null)
		{
			violatedConsts.push("acueductoSectorIsRequired");
			validationFailureMessages.push("acueductoSector is required");
		}
		if (_model.isFechaTransaccionAvailable && _internal_fechaTransaccion == null)
		{
			violatedConsts.push("fechaTransaccionIsRequired");
			validationFailureMessages.push("fechaTransaccion is required");
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
    public function get _model() : _InformacionBarrioEntityMetadata
    {
		return model_internal::_dminternal_model;              
    }	
    
    public function set _model(value : _InformacionBarrioEntityMetadata) : void       
    {
    	var oldValue : _InformacionBarrioEntityMetadata = model_internal::_dminternal_model;               
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
