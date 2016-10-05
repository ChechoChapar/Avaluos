/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Departamento.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.Ciudad;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Departamento extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void 
    {
        try 
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.entities.Departamento") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.Departamento", cz);
            } 
        }
        catch (e:Error) 
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.Departamento", cz); 
        }
    }   
     
    model_internal static function initRemoteClassAliasAllRelated() : void 
    {
        valueObjects.Ciudad.initRemoteClassAliasSingleChild();
    }

	model_internal var _dminternal_model : _DepartamentoEntityMetadata;

	/**
	 * properties
	 */
	private var _internal_ciudadesDepto : ArrayCollection;
	model_internal var _internal_ciudadesDepto_leaf:valueObjects.Ciudad;
	private var _internal_codAsobancaria : String;
	private var _internal_usuarioTransaccion : String;
	private var _internal_idDepartamento : String;
	private var _internal_departamento : String;
	private var _internal_fechaCreacion : Date;
	private var _internal_codDane : String;
	private var _internal_fechaTransaccion : Date;
	private var _internal_usuarioCreacion : String;
	private var _internal_codDivpol : String;

    private static var emptyArray:Array = new Array();

    /**
     * derived property cache initialization
     */  
    model_internal var _cacheInitialized_isValid:Boolean = false;   
    
	model_internal var _changeWatcherArray:Array = new Array();   

	public function _Super_Departamento() 
	{	
		_model = new _DepartamentoEntityMetadata(this);
	
		// Bind to own data properties for cache invalidation triggering  
       
	}

    /**
     * data property getters
     */
	[Bindable(event="propertyChange")] 
    public function get ciudadesDepto() : ArrayCollection    
    {
            return _internal_ciudadesDepto;
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
    public function get idDepartamento() : String    
    {
            return _internal_idDepartamento;
    }    
	[Bindable(event="propertyChange")] 
    public function get departamento() : String    
    {
            return _internal_departamento;
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
	[Bindable(event="propertyChange")] 
    public function get codDivpol() : String    
    {
            return _internal_codDivpol;
    }    

    /**
     * data property setters
     */      
    public function set ciudadesDepto(value:*) : void
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_ciudadesDepto == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:ArrayCollection = _internal_ciudadesDepto;               
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_ciudadesDepto = value;
            }
            else if (value is Array)
            {
                _internal_ciudadesDepto = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of ciudadesDepto must be a collection");
            }
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ciudadesDepto", oldValue, _internal_ciudadesDepto));
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
    public function set departamento(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_departamento == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_departamento;               
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
    public function set codDivpol(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_codDivpol == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_codDivpol;               
        if (oldValue !== value)
        {
            _internal_codDivpol = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codDivpol", oldValue, _internal_codDivpol));
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

		if (_model.isCiudadesDeptoAvailable && _internal_ciudadesDepto == null)
		{
			violatedConsts.push("ciudadesDeptoIsRequired");
			validationFailureMessages.push("ciudadesDepto is required");
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
		if (_model.isIdDepartamentoAvailable && _internal_idDepartamento == null)
		{
			violatedConsts.push("idDepartamentoIsRequired");
			validationFailureMessages.push("idDepartamento is required");
		}
		if (_model.isDepartamentoAvailable && _internal_departamento == null)
		{
			violatedConsts.push("departamentoIsRequired");
			validationFailureMessages.push("departamento is required");
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
		if (_model.isCodDivpolAvailable && _internal_codDivpol == null)
		{
			violatedConsts.push("codDivpolIsRequired");
			validationFailureMessages.push("codDivpol is required");
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
    public function get _model() : _DepartamentoEntityMetadata
    {
		return model_internal::_dminternal_model;              
    }	
    
    public function set _model(value : _DepartamentoEntityMetadata) : void       
    {
    	var oldValue : _DepartamentoEntityMetadata = model_internal::_dminternal_model;               
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
