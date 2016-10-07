/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - LiquidacionAvaluoTotal.as.
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
public class _Super_LiquidacionAvaluoTotal extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void 
    {
        try 
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.entities.LiquidacionAvaluoTotal") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.LiquidacionAvaluoTotal", cz);
            } 
        }
        catch (e:Error) 
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.LiquidacionAvaluoTotal", cz); 
        }
    }   
     
    model_internal static function initRemoteClassAliasAllRelated() : void 
    {
        valueObjects.Avaluo.initRemoteClassAliasSingleChild();
    }

	model_internal var _dminternal_model : _LiquidacionAvaluoTotalEntityMetadata;

	/**
	 * properties
	 */
	private var _internal_idLiqavaluoTotal : String;
	private var _internal_valorAsegurable : String;
	private var _internal_calificacion : String;
	private var _internal_usuarioTransaccion : String;
	private var _internal_avaluoUvr : String;
	private var _internal_valorUvrDia : String;
	private var _internal_fechaCreacion : Date;
	private var _internal_totalAvaluo : String;
	private var _internal_fechaTransaccion : Date;
	private var _internal_avaluo : valueObjects.Avaluo;
	private var _internal_usuarioCreacion : String;

    private static var emptyArray:Array = new Array();

    /**
     * derived property cache initialization
     */  
    model_internal var _cacheInitialized_isValid:Boolean = false;   
    
	model_internal var _changeWatcherArray:Array = new Array();   

	public function _Super_LiquidacionAvaluoTotal() 
	{	
		_model = new _LiquidacionAvaluoTotalEntityMetadata(this);
	
		// Bind to own data properties for cache invalidation triggering  
       
	}

    /**
     * data property getters
     */
	[Bindable(event="propertyChange")] 
    public function get idLiqavaluoTotal() : String    
    {
            return _internal_idLiqavaluoTotal;
    }    
	[Bindable(event="propertyChange")] 
    public function get valorAsegurable() : String    
    {
            return _internal_valorAsegurable;
    }    
	[Bindable(event="propertyChange")] 
    public function get calificacion() : String    
    {
            return _internal_calificacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get usuarioTransaccion() : String    
    {
            return _internal_usuarioTransaccion;
    }    
	[Bindable(event="propertyChange")] 
    public function get avaluoUvr() : String    
    {
            return _internal_avaluoUvr;
    }    
	[Bindable(event="propertyChange")] 
    public function get valorUvrDia() : String    
    {
            return _internal_valorUvrDia;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaCreacion() : Date    
    {
            return _internal_fechaCreacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get totalAvaluo() : String    
    {
            return _internal_totalAvaluo;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaTransaccion() : Date    
    {
            return _internal_fechaTransaccion;
    }    
	[Bindable(event="propertyChange")] 
    public function get avaluo() : valueObjects.Avaluo    
    {
            return _internal_avaluo;
    }    
	[Bindable(event="propertyChange")] 
    public function get usuarioCreacion() : String    
    {
            return _internal_usuarioCreacion;
    }    

    /**
     * data property setters
     */      
    public function set idLiqavaluoTotal(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_idLiqavaluoTotal == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_idLiqavaluoTotal;               
        if (oldValue !== value)
        {
            _internal_idLiqavaluoTotal = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idLiqavaluoTotal", oldValue, _internal_idLiqavaluoTotal));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set valorAsegurable(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_valorAsegurable == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_valorAsegurable;               
        if (oldValue !== value)
        {
            _internal_valorAsegurable = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "valorAsegurable", oldValue, _internal_valorAsegurable));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set calificacion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_calificacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_calificacion;               
        if (oldValue !== value)
        {
            _internal_calificacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "calificacion", oldValue, _internal_calificacion));
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
    public function set avaluoUvr(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_avaluoUvr == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_avaluoUvr;               
        if (oldValue !== value)
        {
            _internal_avaluoUvr = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "avaluoUvr", oldValue, _internal_avaluoUvr));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set valorUvrDia(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_valorUvrDia == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_valorUvrDia;               
        if (oldValue !== value)
        {
            _internal_valorUvrDia = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "valorUvrDia", oldValue, _internal_valorUvrDia));
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
    public function set totalAvaluo(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_totalAvaluo == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_totalAvaluo;               
        if (oldValue !== value)
        {
            _internal_totalAvaluo = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "totalAvaluo", oldValue, _internal_totalAvaluo));
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

		if (_model.isIdLiqavaluoTotalAvailable && _internal_idLiqavaluoTotal == null)
		{
			violatedConsts.push("idLiqavaluoTotalIsRequired");
			validationFailureMessages.push("idLiqavaluoTotal is required");
		}
		if (_model.isValorAsegurableAvailable && _internal_valorAsegurable == null)
		{
			violatedConsts.push("valorAsegurableIsRequired");
			validationFailureMessages.push("valorAsegurable is required");
		}
		if (_model.isCalificacionAvailable && _internal_calificacion == null)
		{
			violatedConsts.push("calificacionIsRequired");
			validationFailureMessages.push("calificacion is required");
		}
		if (_model.isUsuarioTransaccionAvailable && _internal_usuarioTransaccion == null)
		{
			violatedConsts.push("usuarioTransaccionIsRequired");
			validationFailureMessages.push("usuarioTransaccion is required");
		}
		if (_model.isAvaluoUvrAvailable && _internal_avaluoUvr == null)
		{
			violatedConsts.push("avaluoUvrIsRequired");
			validationFailureMessages.push("avaluoUvr is required");
		}
		if (_model.isValorUvrDiaAvailable && _internal_valorUvrDia == null)
		{
			violatedConsts.push("valorUvrDiaIsRequired");
			validationFailureMessages.push("valorUvrDia is required");
		}
		if (_model.isFechaCreacionAvailable && _internal_fechaCreacion == null)
		{
			violatedConsts.push("fechaCreacionIsRequired");
			validationFailureMessages.push("fechaCreacion is required");
		}
		if (_model.isTotalAvaluoAvailable && _internal_totalAvaluo == null)
		{
			violatedConsts.push("totalAvaluoIsRequired");
			validationFailureMessages.push("totalAvaluo is required");
		}
		if (_model.isFechaTransaccionAvailable && _internal_fechaTransaccion == null)
		{
			violatedConsts.push("fechaTransaccionIsRequired");
			validationFailureMessages.push("fechaTransaccion is required");
		}
		if (_model.isAvaluoAvailable && _internal_avaluo == null)
		{
			violatedConsts.push("avaluoIsRequired");
			validationFailureMessages.push("avaluo is required");
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
    public function get _model() : _LiquidacionAvaluoTotalEntityMetadata
    {
		return model_internal::_dminternal_model;              
    }	
    
    public function set _model(value : _LiquidacionAvaluoTotalEntityMetadata) : void       
    {
    	var oldValue : _LiquidacionAvaluoTotalEntityMetadata = model_internal::_dminternal_model;               
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
