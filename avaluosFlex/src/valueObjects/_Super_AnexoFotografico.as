/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - AnexoFotografico.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.events.PropertyChangeEvent;
import valueObjects.Archivo;
import valueObjects.Avaluo;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_AnexoFotografico extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void 
    {
        try 
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.entities.AnexoFotografico") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.AnexoFotografico", cz);
            } 
        }
        catch (e:Error) 
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.AnexoFotografico", cz); 
        }
    }   
     
    model_internal static function initRemoteClassAliasAllRelated() : void 
    {
        valueObjects.Archivo.initRemoteClassAliasSingleChild();
        valueObjects.Avaluo.initRemoteClassAliasSingleChild();
    }

	model_internal var _dminternal_model : _AnexoFotograficoEntityMetadata;

	/**
	 * properties
	 */
	private var _internal_usuarioTransaccion : String;
	private var _internal_idAnexoFotografico : String;
	private var _internal_fechaCreacion : Date;
	private var _internal_archivoFoto : valueObjects.Archivo;
	private var _internal_archivoPdf : valueObjects.Archivo;
	private var _internal_avaluo : valueObjects.Avaluo;
	private var _internal_fechaTransaccion : Date;
	private var _internal_usuarioCreacion : String;

    private static var emptyArray:Array = new Array();

    /**
     * derived property cache initialization
     */  
    model_internal var _cacheInitialized_isValid:Boolean = false;   
    
	model_internal var _changeWatcherArray:Array = new Array();   

	public function _Super_AnexoFotografico() 
	{	
		_model = new _AnexoFotograficoEntityMetadata(this);
	
		// Bind to own data properties for cache invalidation triggering  
       
	}

    /**
     * data property getters
     */
	[Bindable(event="propertyChange")] 
    public function get usuarioTransaccion() : String    
    {
            return _internal_usuarioTransaccion;
    }    
	[Bindable(event="propertyChange")] 
    public function get idAnexoFotografico() : String    
    {
            return _internal_idAnexoFotografico;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaCreacion() : Date    
    {
            return _internal_fechaCreacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get archivoFoto() : valueObjects.Archivo    
    {
            return _internal_archivoFoto;
    }    
	[Bindable(event="propertyChange")] 
    public function get archivoPdf() : valueObjects.Archivo    
    {
            return _internal_archivoPdf;
    }    
	[Bindable(event="propertyChange")] 
    public function get avaluo() : valueObjects.Avaluo    
    {
            return _internal_avaluo;
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
    public function set idAnexoFotografico(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_idAnexoFotografico == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_idAnexoFotografico;               
        if (oldValue !== value)
        {
            _internal_idAnexoFotografico = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idAnexoFotografico", oldValue, _internal_idAnexoFotografico));
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
    public function set archivoFoto(value:valueObjects.Archivo) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_archivoFoto == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:valueObjects.Archivo = _internal_archivoFoto;               
        if (oldValue !== value)
        {
            _internal_archivoFoto = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "archivoFoto", oldValue, _internal_archivoFoto));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set archivoPdf(value:valueObjects.Archivo) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_archivoPdf == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:valueObjects.Archivo = _internal_archivoPdf;               
        if (oldValue !== value)
        {
            _internal_archivoPdf = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "archivoPdf", oldValue, _internal_archivoPdf));
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

		if (_model.isUsuarioTransaccionAvailable && _internal_usuarioTransaccion == null)
		{
			violatedConsts.push("usuarioTransaccionIsRequired");
			validationFailureMessages.push("usuarioTransaccion is required");
		}
		if (_model.isIdAnexoFotograficoAvailable && _internal_idAnexoFotografico == null)
		{
			violatedConsts.push("idAnexoFotograficoIsRequired");
			validationFailureMessages.push("idAnexoFotografico is required");
		}
		if (_model.isFechaCreacionAvailable && _internal_fechaCreacion == null)
		{
			violatedConsts.push("fechaCreacionIsRequired");
			validationFailureMessages.push("fechaCreacion is required");
		}
		if (_model.isArchivoFotoAvailable && _internal_archivoFoto == null)
		{
			violatedConsts.push("archivoFotoIsRequired");
			validationFailureMessages.push("archivoFoto is required");
		}
		if (_model.isArchivoPdfAvailable && _internal_archivoPdf == null)
		{
			violatedConsts.push("archivoPdfIsRequired");
			validationFailureMessages.push("archivoPdf is required");
		}
		if (_model.isAvaluoAvailable && _internal_avaluo == null)
		{
			violatedConsts.push("avaluoIsRequired");
			validationFailureMessages.push("avaluo is required");
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
    public function get _model() : _AnexoFotograficoEntityMetadata
    {
		return model_internal::_dminternal_model;              
    }	
    
    public function set _model(value : _AnexoFotograficoEntityMetadata) : void       
    {
    	var oldValue : _AnexoFotograficoEntityMetadata = model_internal::_dminternal_model;               
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
