/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - LogsGeneraArchivo.as.
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

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_LogsGeneraArchivo extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void 
    {
        try 
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.entities.LogsGeneraArchivo") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.LogsGeneraArchivo", cz);
            } 
        }
        catch (e:Error) 
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.LogsGeneraArchivo", cz); 
        }
    }   
     
    model_internal static function initRemoteClassAliasAllRelated() : void 
    {
        valueObjects.Avaluo.initRemoteClassAliasSingleChild();
    }

	model_internal var _dminternal_model : _LogsGeneraArchivoEntityMetadata;

	/**
	 * properties
	 */
	private var _internal_codigoError : String;
	private var _internal_avaluos : ArrayCollection;
	model_internal var _internal_avaluos_leaf:valueObjects.Avaluo;
	private var _internal_fechaDesde : Date;
	private var _internal_usuarioTransaccion : String;
	private var _internal_fechaHasta : Date;
	private var _internal_descripcionError : String;
	private var _internal_fechaFinCreacion : Date;
	private var _internal_fechaInicioCreacion : Date;
	private var _internal_usuarioCreacion : String;
	private var _internal_linkDescarga : String;
	private var _internal_enviado : String;
	private var _internal_nombreArchivo : String;
	private var _internal_cantReg : String;
	private var _internal_estado : String;
	private var _internal_idLogArchivos : String;
	private var _internal_nombrePlano : String;
	private var _internal_fechaTransaccion : Date;

    private static var emptyArray:Array = new Array();

    /**
     * derived property cache initialization
     */  
    model_internal var _cacheInitialized_isValid:Boolean = false;   
    
	model_internal var _changeWatcherArray:Array = new Array();   

	public function _Super_LogsGeneraArchivo() 
	{	
		_model = new _LogsGeneraArchivoEntityMetadata(this);
	
		// Bind to own data properties for cache invalidation triggering  
       
	}

    /**
     * data property getters
     */
	[Bindable(event="propertyChange")] 
    public function get codigoError() : String    
    {
            return _internal_codigoError;
    }    
	[Bindable(event="propertyChange")] 
    public function get avaluos() : ArrayCollection    
    {
            return _internal_avaluos;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaDesde() : Date    
    {
            return _internal_fechaDesde;
    }    
	[Bindable(event="propertyChange")] 
    public function get usuarioTransaccion() : String    
    {
            return _internal_usuarioTransaccion;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaHasta() : Date    
    {
            return _internal_fechaHasta;
    }    
	[Bindable(event="propertyChange")] 
    public function get descripcionError() : String    
    {
            return _internal_descripcionError;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaFinCreacion() : Date    
    {
            return _internal_fechaFinCreacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaInicioCreacion() : Date    
    {
            return _internal_fechaInicioCreacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get usuarioCreacion() : String    
    {
            return _internal_usuarioCreacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get linkDescarga() : String    
    {
            return _internal_linkDescarga;
    }    
	[Bindable(event="propertyChange")] 
    public function get enviado() : String    
    {
            return _internal_enviado;
    }    
	[Bindable(event="propertyChange")] 
    public function get nombreArchivo() : String    
    {
            return _internal_nombreArchivo;
    }    
	[Bindable(event="propertyChange")] 
    public function get cantReg() : String    
    {
            return _internal_cantReg;
    }    
	[Bindable(event="propertyChange")] 
    public function get estado() : String    
    {
            return _internal_estado;
    }    
	[Bindable(event="propertyChange")] 
    public function get idLogArchivos() : String    
    {
            return _internal_idLogArchivos;
    }    
	[Bindable(event="propertyChange")] 
    public function get nombrePlano() : String    
    {
            return _internal_nombrePlano;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaTransaccion() : Date    
    {
            return _internal_fechaTransaccion;
    }    

    /**
     * data property setters
     */      
    public function set codigoError(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_codigoError == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_codigoError;               
        if (oldValue !== value)
        {
            _internal_codigoError = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codigoError", oldValue, _internal_codigoError));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set avaluos(value:*) : void
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_avaluos == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:ArrayCollection = _internal_avaluos;               
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_avaluos = value;
            }
            else if (value is Array)
            {
                _internal_avaluos = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of avaluos must be a collection");
            }
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "avaluos", oldValue, _internal_avaluos));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set fechaDesde(value:Date) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_fechaDesde == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:Date = _internal_fechaDesde;               
        if (oldValue !== value)
        {
            _internal_fechaDesde = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaDesde", oldValue, _internal_fechaDesde));
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
    public function set fechaHasta(value:Date) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_fechaHasta == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:Date = _internal_fechaHasta;               
        if (oldValue !== value)
        {
            _internal_fechaHasta = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaHasta", oldValue, _internal_fechaHasta));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set descripcionError(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_descripcionError == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_descripcionError;               
        if (oldValue !== value)
        {
            _internal_descripcionError = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descripcionError", oldValue, _internal_descripcionError));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set fechaFinCreacion(value:Date) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_fechaFinCreacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:Date = _internal_fechaFinCreacion;               
        if (oldValue !== value)
        {
            _internal_fechaFinCreacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaFinCreacion", oldValue, _internal_fechaFinCreacion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set fechaInicioCreacion(value:Date) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_fechaInicioCreacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:Date = _internal_fechaInicioCreacion;               
        if (oldValue !== value)
        {
            _internal_fechaInicioCreacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaInicioCreacion", oldValue, _internal_fechaInicioCreacion));
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
    public function set linkDescarga(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_linkDescarga == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_linkDescarga;               
        if (oldValue !== value)
        {
            _internal_linkDescarga = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "linkDescarga", oldValue, _internal_linkDescarga));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set enviado(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_enviado == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_enviado;               
        if (oldValue !== value)
        {
            _internal_enviado = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "enviado", oldValue, _internal_enviado));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set nombreArchivo(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_nombreArchivo == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_nombreArchivo;               
        if (oldValue !== value)
        {
            _internal_nombreArchivo = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreArchivo", oldValue, _internal_nombreArchivo));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set cantReg(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_cantReg == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_cantReg;               
        if (oldValue !== value)
        {
            _internal_cantReg = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cantReg", oldValue, _internal_cantReg));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set estado(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estado == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estado;               
        if (oldValue !== value)
        {
            _internal_estado = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estado", oldValue, _internal_estado));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set idLogArchivos(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_idLogArchivos == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_idLogArchivos;               
        if (oldValue !== value)
        {
            _internal_idLogArchivos = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idLogArchivos", oldValue, _internal_idLogArchivos));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set nombrePlano(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_nombrePlano == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_nombrePlano;               
        if (oldValue !== value)
        {
            _internal_nombrePlano = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombrePlano", oldValue, _internal_nombrePlano));
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

		if (_model.isCodigoErrorAvailable && _internal_codigoError == null)
		{
			violatedConsts.push("codigoErrorIsRequired");
			validationFailureMessages.push("codigoError is required");
		}
		if (_model.isAvaluosAvailable && _internal_avaluos == null)
		{
			violatedConsts.push("avaluosIsRequired");
			validationFailureMessages.push("avaluos is required");
		}
		if (_model.isFechaDesdeAvailable && _internal_fechaDesde == null)
		{
			violatedConsts.push("fechaDesdeIsRequired");
			validationFailureMessages.push("fechaDesde is required");
		}
		if (_model.isUsuarioTransaccionAvailable && _internal_usuarioTransaccion == null)
		{
			violatedConsts.push("usuarioTransaccionIsRequired");
			validationFailureMessages.push("usuarioTransaccion is required");
		}
		if (_model.isFechaHastaAvailable && _internal_fechaHasta == null)
		{
			violatedConsts.push("fechaHastaIsRequired");
			validationFailureMessages.push("fechaHasta is required");
		}
		if (_model.isDescripcionErrorAvailable && _internal_descripcionError == null)
		{
			violatedConsts.push("descripcionErrorIsRequired");
			validationFailureMessages.push("descripcionError is required");
		}
		if (_model.isFechaFinCreacionAvailable && _internal_fechaFinCreacion == null)
		{
			violatedConsts.push("fechaFinCreacionIsRequired");
			validationFailureMessages.push("fechaFinCreacion is required");
		}
		if (_model.isFechaInicioCreacionAvailable && _internal_fechaInicioCreacion == null)
		{
			violatedConsts.push("fechaInicioCreacionIsRequired");
			validationFailureMessages.push("fechaInicioCreacion is required");
		}
		if (_model.isUsuarioCreacionAvailable && _internal_usuarioCreacion == null)
		{
			violatedConsts.push("usuarioCreacionIsRequired");
			validationFailureMessages.push("usuarioCreacion is required");
		}
		if (_model.isLinkDescargaAvailable && _internal_linkDescarga == null)
		{
			violatedConsts.push("linkDescargaIsRequired");
			validationFailureMessages.push("linkDescarga is required");
		}
		if (_model.isEnviadoAvailable && _internal_enviado == null)
		{
			violatedConsts.push("enviadoIsRequired");
			validationFailureMessages.push("enviado is required");
		}
		if (_model.isNombreArchivoAvailable && _internal_nombreArchivo == null)
		{
			violatedConsts.push("nombreArchivoIsRequired");
			validationFailureMessages.push("nombreArchivo is required");
		}
		if (_model.isCantRegAvailable && _internal_cantReg == null)
		{
			violatedConsts.push("cantRegIsRequired");
			validationFailureMessages.push("cantReg is required");
		}
		if (_model.isEstadoAvailable && _internal_estado == null)
		{
			violatedConsts.push("estadoIsRequired");
			validationFailureMessages.push("estado is required");
		}
		if (_model.isIdLogArchivosAvailable && _internal_idLogArchivos == null)
		{
			violatedConsts.push("idLogArchivosIsRequired");
			validationFailureMessages.push("idLogArchivos is required");
		}
		if (_model.isNombrePlanoAvailable && _internal_nombrePlano == null)
		{
			violatedConsts.push("nombrePlanoIsRequired");
			validationFailureMessages.push("nombrePlano is required");
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
    public function get _model() : _LogsGeneraArchivoEntityMetadata
    {
		return model_internal::_dminternal_model;              
    }	
    
    public function set _model(value : _LogsGeneraArchivoEntityMetadata) : void       
    {
    	var oldValue : _LogsGeneraArchivoEntityMetadata = model_internal::_dminternal_model;               
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
