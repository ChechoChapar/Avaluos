/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Ciudad.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.events.PropertyChangeEvent;
import valueObjects.Departamento;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Ciudad extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void 
    {
        try 
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.entities.Ciudad") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.Ciudad", cz);
            } 
        }
        catch (e:Error) 
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.Ciudad", cz); 
        }
    }   
     
    model_internal static function initRemoteClassAliasAllRelated() : void 
    {
        valueObjects.Departamento.initRemoteClassAliasSingleChild();
        valueObjects.Ciudad.initRemoteClassAliasSingleChild();
    }

	model_internal var _dminternal_model : _CiudadEntityMetadata;

	/**
	 * properties
	 */
	private var _internal_ciudad : String;
	private var _internal_codAsobancaria : String;
	private var _internal_usuarioTransaccion : String;
	private var _internal_departamento : valueObjects.Departamento;
	private var _internal_idCiudad : String;
	private var _internal_fechaCreacion : Date;
	private var _internal_codDane : String;
	private var _internal_fechaTransaccion : Date;
	private var _internal_usuarioCreacion : String;

    private static var emptyArray:Array = new Array();

    /**
     * derived property cache initialization
     */  
    model_internal var _cacheInitialized_isValid:Boolean = false;   
    
	model_internal var _changeWatcherArray:Array = new Array();   

	public function _Super_Ciudad() 
	{	
		_model = new _CiudadEntityMetadata(this);
	
		// Bind to own data properties for cache invalidation triggering  
       
	}

    /**
     * data property getters
     */
	[Bindable(event="propertyChange")] 
    public function get ciudad() : String    
    {
            return _internal_ciudad;
    }    
	[Bindable(event="propertyChange")] 
    public function get codAsobancaria() : String    
    {
            return _internal_codAsobancaria;
    }    
	[Bindable(event="propertyChange")] 
    public function get usuarioTransaccion() : String    
    {
            return _internal_usuarioTransaccion;
    }    
	[Bindable(event="propertyChange")] 
    public function get departamento() : valueObjects.Departamento    
    {
            return _internal_departamento;
    }    
	[Bindable(event="propertyChange")] 
    public function get idCiudad() : String    
    {
            return _internal_idCiudad;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaCreacion() : Date    
    {
            return _internal_fechaCreacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get codDane() : String    
    {
            return _internal_codDane;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaTransaccion() : Date    
    {
            return _internal_fechaTransaccion;
    }    
	[Bindable(event="propertyChange")] 
    public function get usuarioCreacion() : String    
    {
            return _internal_usuarioCreacion;
    }    

    /**
     * data property setters
     */      
    public function set ciudad(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_ciudad == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_ciudad;               
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
    public function set codAsobancaria(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_codAsobancaria == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_codAsobancaria;               
        if (oldValue !== value)
        {
            _internal_codAsobancaria = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codAsobancaria", oldValue, _internal_codAsobancaria));
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
    public function set departamento(value:valueObjects.Departamento) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_departamento == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:valueObjects.Departamento = _internal_departamento;               
        if (oldValue !== value)
        {
            _internal_departamento = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "departamento", oldValue, _internal_departamento));
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
    public function set codDane(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_codDane == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_codDane;               
        if (oldValue !== value)
        {
            _internal_codDane = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codDane", oldValue, _internal_codDane));
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
		if (_model.isCodAsobancariaAvailable && _internal_codAsobancaria == null)
		{
			violatedConsts.push("codAsobancariaIsRequired");
			validationFailureMessages.push("codAsobancaria is required");
		}
		if (_model.isUsuarioTransaccionAvailable && _internal_usuarioTransaccion == null)
		{
			violatedConsts.push("usuarioTransaccionIsRequired");
			validationFailureMessages.push("usuarioTransaccion is required");
		}
		if (_model.isDepartamentoAvailable && _internal_departamento == null)
		{
			violatedConsts.push("departamentoIsRequired");
			validationFailureMessages.push("departamento is required");
		}
		if (_model.isIdCiudadAvailable && _internal_idCiudad == null)
		{
			violatedConsts.push("idCiudadIsRequired");
			validationFailureMessages.push("idCiudad is required");
		}
		if (_model.isFechaCreacionAvailable && _internal_fechaCreacion == null)
		{
			violatedConsts.push("fechaCreacionIsRequired");
			validationFailureMessages.push("fechaCreacion is required");
		}
		if (_model.isCodDaneAvailable && _internal_codDane == null)
		{
			violatedConsts.push("codDaneIsRequired");
			validationFailureMessages.push("codDane is required");
		}
		if (_model.isFechaTransaccionAvailable && _internal_fechaTransaccion == null)
		{
			violatedConsts.push("fechaTransaccionIsRequired");
			validationFailureMessages.push("fechaTransaccion is required");
		}
		if (_model.isUsuarioCreacionAvailable && _internal_usuarioCreacion == null)
		{
			violatedConsts.push("usuarioCreacionIsRequired");
			validationFailureMessages.push("usuarioCreacion is required");
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
    public function get _model() : _CiudadEntityMetadata
    {
		return model_internal::_dminternal_model;              
    }	
    
    public function set _model(value : _CiudadEntityMetadata) : void       
    {
    	var oldValue : _CiudadEntityMetadata = model_internal::_dminternal_model;               
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
