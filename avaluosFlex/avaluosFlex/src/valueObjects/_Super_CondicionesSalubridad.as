/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - CondicionesSalubridad.as.
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
public class _Super_CondicionesSalubridad extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void 
    {
        try 
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.entities.CondicionesSalubridad") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.CondicionesSalubridad", cz);
            } 
        }
        catch (e:Error) 
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.CondicionesSalubridad", cz); 
        }
    }   
     
    model_internal static function initRemoteClassAliasAllRelated() : void 
    {
        valueObjects.Avaluo.initRemoteClassAliasSingleChild();
    }

	model_internal var _dminternal_model : _CondicionesSalubridadEntityMetadata;

	/**
	 * properties
	 */
	private var _internal_ambientalParques : String;
	private var _internal_usuarioTransaccion : String;
	private var _internal_idCondicionSalubridad : String;
	private var _internal_aguasServidas : String;
	private var _internal_impactoNegativoOtros : String;
	private var _internal_impactoNegativoInseguridad : String;
	private var _internal_requiereCondicionesSalubridad : String;
	private var _internal_impactoNegativoRuido : String;
	private var _internal_usuarioCreacion : String;
	private var _internal_avaluo : valueObjects.Avaluo;
	private var _internal_ambientalOtros : String;
	private var _internal_ambientalArborizacion : String;
	private var _internal_fechaCreacion : Date;
	private var _internal_condicionesSalubridad : String;
	private var _internal_impactoNegativoPorAire : String;
	private var _internal_fechaTransaccion : Date;
	private var _internal_ambientalZonaVerde : String;
	private var _internal_impactoNegativoBasura : String;

    private static var emptyArray:Array = new Array();

    /**
     * derived property cache initialization
     */  
    model_internal var _cacheInitialized_isValid:Boolean = false;   
    
	model_internal var _changeWatcherArray:Array = new Array();   

	public function _Super_CondicionesSalubridad() 
	{	
		_model = new _CondicionesSalubridadEntityMetadata(this);
	
		// Bind to own data properties for cache invalidation triggering  
       
	}

    /**
     * data property getters
     */
	[Bindable(event="propertyChange")] 
    public function get ambientalParques() : String    
    {
            return _internal_ambientalParques;
    }    
	[Bindable(event="propertyChange")] 
    public function get usuarioTransaccion() : String    
    {
            return _internal_usuarioTransaccion;
    }    
	[Bindable(event="propertyChange")] 
    public function get idCondicionSalubridad() : String    
    {
            return _internal_idCondicionSalubridad;
    }    
	[Bindable(event="propertyChange")] 
    public function get aguasServidas() : String    
    {
            return _internal_aguasServidas;
    }    
	[Bindable(event="propertyChange")] 
    public function get impactoNegativoOtros() : String    
    {
            return _internal_impactoNegativoOtros;
    }    
	[Bindable(event="propertyChange")] 
    public function get impactoNegativoInseguridad() : String    
    {
            return _internal_impactoNegativoInseguridad;
    }    
	[Bindable(event="propertyChange")] 
    public function get requiereCondicionesSalubridad() : String    
    {
            return _internal_requiereCondicionesSalubridad;
    }    
	[Bindable(event="propertyChange")] 
    public function get impactoNegativoRuido() : String    
    {
            return _internal_impactoNegativoRuido;
    }    
	[Bindable(event="propertyChange")] 
    public function get usuarioCreacion() : String    
    {
            return _internal_usuarioCreacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get avaluo() : valueObjects.Avaluo    
    {
            return _internal_avaluo;
    }    
	[Bindable(event="propertyChange")] 
    public function get ambientalOtros() : String    
    {
            return _internal_ambientalOtros;
    }    
	[Bindable(event="propertyChange")] 
    public function get ambientalArborizacion() : String    
    {
            return _internal_ambientalArborizacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaCreacion() : Date    
    {
            return _internal_fechaCreacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get condicionesSalubridad() : String    
    {
            return _internal_condicionesSalubridad;
    }    
	[Bindable(event="propertyChange")] 
    public function get impactoNegativoPorAire() : String    
    {
            return _internal_impactoNegativoPorAire;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaTransaccion() : Date    
    {
            return _internal_fechaTransaccion;
    }    
	[Bindable(event="propertyChange")] 
    public function get ambientalZonaVerde() : String    
    {
            return _internal_ambientalZonaVerde;
    }    
	[Bindable(event="propertyChange")] 
    public function get impactoNegativoBasura() : String    
    {
            return _internal_impactoNegativoBasura;
    }    

    /**
     * data property setters
     */      
    public function set ambientalParques(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_ambientalParques == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_ambientalParques;               
        if (oldValue !== value)
        {
            _internal_ambientalParques = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ambientalParques", oldValue, _internal_ambientalParques));
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
    public function set idCondicionSalubridad(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_idCondicionSalubridad == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_idCondicionSalubridad;               
        if (oldValue !== value)
        {
            _internal_idCondicionSalubridad = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idCondicionSalubridad", oldValue, _internal_idCondicionSalubridad));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set aguasServidas(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_aguasServidas == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_aguasServidas;               
        if (oldValue !== value)
        {
            _internal_aguasServidas = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "aguasServidas", oldValue, _internal_aguasServidas));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set impactoNegativoOtros(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_impactoNegativoOtros == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_impactoNegativoOtros;               
        if (oldValue !== value)
        {
            _internal_impactoNegativoOtros = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "impactoNegativoOtros", oldValue, _internal_impactoNegativoOtros));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set impactoNegativoInseguridad(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_impactoNegativoInseguridad == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_impactoNegativoInseguridad;               
        if (oldValue !== value)
        {
            _internal_impactoNegativoInseguridad = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "impactoNegativoInseguridad", oldValue, _internal_impactoNegativoInseguridad));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set requiereCondicionesSalubridad(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_requiereCondicionesSalubridad == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_requiereCondicionesSalubridad;               
        if (oldValue !== value)
        {
            _internal_requiereCondicionesSalubridad = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "requiereCondicionesSalubridad", oldValue, _internal_requiereCondicionesSalubridad));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set impactoNegativoRuido(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_impactoNegativoRuido == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_impactoNegativoRuido;               
        if (oldValue !== value)
        {
            _internal_impactoNegativoRuido = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "impactoNegativoRuido", oldValue, _internal_impactoNegativoRuido));
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
    public function set ambientalOtros(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_ambientalOtros == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_ambientalOtros;               
        if (oldValue !== value)
        {
            _internal_ambientalOtros = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ambientalOtros", oldValue, _internal_ambientalOtros));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set ambientalArborizacion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_ambientalArborizacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_ambientalArborizacion;               
        if (oldValue !== value)
        {
            _internal_ambientalArborizacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ambientalArborizacion", oldValue, _internal_ambientalArborizacion));
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
    public function set condicionesSalubridad(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_condicionesSalubridad == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_condicionesSalubridad;               
        if (oldValue !== value)
        {
            _internal_condicionesSalubridad = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "condicionesSalubridad", oldValue, _internal_condicionesSalubridad));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set impactoNegativoPorAire(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_impactoNegativoPorAire == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_impactoNegativoPorAire;               
        if (oldValue !== value)
        {
            _internal_impactoNegativoPorAire = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "impactoNegativoPorAire", oldValue, _internal_impactoNegativoPorAire));
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
    public function set ambientalZonaVerde(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_ambientalZonaVerde == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_ambientalZonaVerde;               
        if (oldValue !== value)
        {
            _internal_ambientalZonaVerde = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ambientalZonaVerde", oldValue, _internal_ambientalZonaVerde));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set impactoNegativoBasura(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_impactoNegativoBasura == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_impactoNegativoBasura;               
        if (oldValue !== value)
        {
            _internal_impactoNegativoBasura = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "impactoNegativoBasura", oldValue, _internal_impactoNegativoBasura));
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

		if (_model.isAmbientalParquesAvailable && _internal_ambientalParques == null)
		{
			violatedConsts.push("ambientalParquesIsRequired");
			validationFailureMessages.push("ambientalParques is required");
		}
		if (_model.isUsuarioTransaccionAvailable && _internal_usuarioTransaccion == null)
		{
			violatedConsts.push("usuarioTransaccionIsRequired");
			validationFailureMessages.push("usuarioTransaccion is required");
		}
		if (_model.isIdCondicionSalubridadAvailable && _internal_idCondicionSalubridad == null)
		{
			violatedConsts.push("idCondicionSalubridadIsRequired");
			validationFailureMessages.push("idCondicionSalubridad is required");
		}
		if (_model.isAguasServidasAvailable && _internal_aguasServidas == null)
		{
			violatedConsts.push("aguasServidasIsRequired");
			validationFailureMessages.push("aguasServidas is required");
		}
		if (_model.isImpactoNegativoOtrosAvailable && _internal_impactoNegativoOtros == null)
		{
			violatedConsts.push("impactoNegativoOtrosIsRequired");
			validationFailureMessages.push("impactoNegativoOtros is required");
		}
		if (_model.isImpactoNegativoInseguridadAvailable && _internal_impactoNegativoInseguridad == null)
		{
			violatedConsts.push("impactoNegativoInseguridadIsRequired");
			validationFailureMessages.push("impactoNegativoInseguridad is required");
		}
		if (_model.isRequiereCondicionesSalubridadAvailable && _internal_requiereCondicionesSalubridad == null)
		{
			violatedConsts.push("requiereCondicionesSalubridadIsRequired");
			validationFailureMessages.push("requiereCondicionesSalubridad is required");
		}
		if (_model.isImpactoNegativoRuidoAvailable && _internal_impactoNegativoRuido == null)
		{
			violatedConsts.push("impactoNegativoRuidoIsRequired");
			validationFailureMessages.push("impactoNegativoRuido is required");
		}
		if (_model.isUsuarioCreacionAvailable && _internal_usuarioCreacion == null)
		{
			violatedConsts.push("usuarioCreacionIsRequired");
			validationFailureMessages.push("usuarioCreacion is required");
		}
		if (_model.isAvaluoAvailable && _internal_avaluo == null)
		{
			violatedConsts.push("avaluoIsRequired");
			validationFailureMessages.push("avaluo is required");
		}
		if (_model.isAmbientalOtrosAvailable && _internal_ambientalOtros == null)
		{
			violatedConsts.push("ambientalOtrosIsRequired");
			validationFailureMessages.push("ambientalOtros is required");
		}
		if (_model.isAmbientalArborizacionAvailable && _internal_ambientalArborizacion == null)
		{
			violatedConsts.push("ambientalArborizacionIsRequired");
			validationFailureMessages.push("ambientalArborizacion is required");
		}
		if (_model.isFechaCreacionAvailable && _internal_fechaCreacion == null)
		{
			violatedConsts.push("fechaCreacionIsRequired");
			validationFailureMessages.push("fechaCreacion is required");
		}
		if (_model.isCondicionesSalubridadAvailable && _internal_condicionesSalubridad == null)
		{
			violatedConsts.push("condicionesSalubridadIsRequired");
			validationFailureMessages.push("condicionesSalubridad is required");
		}
		if (_model.isImpactoNegativoPorAireAvailable && _internal_impactoNegativoPorAire == null)
		{
			violatedConsts.push("impactoNegativoPorAireIsRequired");
			validationFailureMessages.push("impactoNegativoPorAire is required");
		}
		if (_model.isFechaTransaccionAvailable && _internal_fechaTransaccion == null)
		{
			violatedConsts.push("fechaTransaccionIsRequired");
			validationFailureMessages.push("fechaTransaccion is required");
		}
		if (_model.isAmbientalZonaVerdeAvailable && _internal_ambientalZonaVerde == null)
		{
			violatedConsts.push("ambientalZonaVerdeIsRequired");
			validationFailureMessages.push("ambientalZonaVerde is required");
		}
		if (_model.isImpactoNegativoBasuraAvailable && _internal_impactoNegativoBasura == null)
		{
			violatedConsts.push("impactoNegativoBasuraIsRequired");
			validationFailureMessages.push("impactoNegativoBasura is required");
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
    public function get _model() : _CondicionesSalubridadEntityMetadata
    {
		return model_internal::_dminternal_model;              
    }	
    
    public function set _model(value : _CondicionesSalubridadEntityMetadata) : void       
    {
    	var oldValue : _CondicionesSalubridadEntityMetadata = model_internal::_dminternal_model;               
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
