/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - DominiosAux.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.events.PropertyChangeEvent;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_DominiosAux extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void 
    {
        try 
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.entities.DominiosAux") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.DominiosAux", cz);
            } 
        }
        catch (e:Error) 
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.DominiosAux", cz); 
        }
    }   
     
    model_internal static function initRemoteClassAliasAllRelated() : void 
    {
    }

	model_internal var _dminternal_model : _DominiosAuxEntityMetadata;

	/**
	 * properties
	 */
	private var _internal_idCgRefCodes : String;
	private var _internal_rvLowValue : String;
	private var _internal_rvMeaning : String;
	private var _internal_rvHighValue : String;
	private var _internal_rvAbbreviation : String;
	private var _internal_rvCreateBy : String;
	private var _internal_rvDomain : String;

    private static var emptyArray:Array = new Array();

    /**
     * derived property cache initialization
     */  
    model_internal var _cacheInitialized_isValid:Boolean = false;   
    
	model_internal var _changeWatcherArray:Array = new Array();   

	public function _Super_DominiosAux() 
	{	
		_model = new _DominiosAuxEntityMetadata(this);
	
		// Bind to own data properties for cache invalidation triggering  
       
	}

    /**
     * data property getters
     */
	[Bindable(event="propertyChange")] 
    public function get idCgRefCodes() : String    
    {
            return _internal_idCgRefCodes;
    }    
	[Bindable(event="propertyChange")] 
    public function get rvLowValue() : String    
    {
            return _internal_rvLowValue;
    }    
	[Bindable(event="propertyChange")] 
    public function get rvMeaning() : String    
    {
            return _internal_rvMeaning;
    }    
	[Bindable(event="propertyChange")] 
    public function get rvHighValue() : String    
    {
            return _internal_rvHighValue;
    }    
	[Bindable(event="propertyChange")] 
    public function get rvAbbreviation() : String    
    {
            return _internal_rvAbbreviation;
    }    
	[Bindable(event="propertyChange")] 
    public function get rvCreateBy() : String    
    {
            return _internal_rvCreateBy;
    }    
	[Bindable(event="propertyChange")] 
    public function get rvDomain() : String    
    {
            return _internal_rvDomain;
    }    

    /**
     * data property setters
     */      
    public function set idCgRefCodes(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:String = _internal_idCgRefCodes;               
        if (oldValue !== value)
        {
            _internal_idCgRefCodes = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idCgRefCodes", oldValue, _internal_idCgRefCodes));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set rvLowValue(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:String = _internal_rvLowValue;               
        if (oldValue !== value)
        {
            _internal_rvLowValue = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rvLowValue", oldValue, _internal_rvLowValue));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set rvMeaning(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:String = _internal_rvMeaning;               
        if (oldValue !== value)
        {
            _internal_rvMeaning = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rvMeaning", oldValue, _internal_rvMeaning));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set rvHighValue(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:String = _internal_rvHighValue;               
        if (oldValue !== value)
        {
            _internal_rvHighValue = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rvHighValue", oldValue, _internal_rvHighValue));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set rvAbbreviation(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:String = _internal_rvAbbreviation;               
        if (oldValue !== value)
        {
            _internal_rvAbbreviation = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rvAbbreviation", oldValue, _internal_rvAbbreviation));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set rvCreateBy(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:String = _internal_rvCreateBy;               
        if (oldValue !== value)
        {
            _internal_rvCreateBy = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rvCreateBy", oldValue, _internal_rvCreateBy));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set rvDomain(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:String = _internal_rvDomain;               
        if (oldValue !== value)
        {
            _internal_rvDomain = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rvDomain", oldValue, _internal_rvDomain));
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
    public function get _model() : _DominiosAuxEntityMetadata
    {
		return model_internal::_dminternal_model;              
    }	
    
    public function set _model(value : _DominiosAuxEntityMetadata) : void       
    {
    	var oldValue : _DominiosAuxEntityMetadata = model_internal::_dminternal_model;               
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
