/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Alarma.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.binding.utils.ChangeWatcher;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Alarma extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.entities.Alarma") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.Alarma", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.Alarma", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _AlarmaEntityMetadata;

    /**
     * properties
     */
    private var _internal_descripcionAlerta : String;
    private var _internal_numDias : String;
    private var _internal_usuarioTransaccion : String;
    private var _internal_idAlarma : String;
    private var _internal_fechaCreacion : Date;
    private var _internal_fechaTransaccion : Date;
    private var _internal_usuarioCreacion : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Alarma()
    {
        _model = new _AlarmaEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "descripcionAlerta", model_internal::setterListenerDescripcionAlerta));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "numDias", model_internal::setterListenerNumDias));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "usuarioTransaccion", model_internal::setterListenerUsuarioTransaccion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "idAlarma", model_internal::setterListenerIdAlarma));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaCreacion", model_internal::setterListenerFechaCreacion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaTransaccion", model_internal::setterListenerFechaTransaccion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "usuarioCreacion", model_internal::setterListenerUsuarioCreacion));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get descripcionAlerta() : String
    {
        return _internal_descripcionAlerta;
    }

    [Bindable(event="propertyChange")]
    public function get numDias() : String
    {
        return _internal_numDias;
    }

    [Bindable(event="propertyChange")]
    public function get usuarioTransaccion() : String
    {
        return _internal_usuarioTransaccion;
    }

    [Bindable(event="propertyChange")]
    public function get idAlarma() : String
    {
        return _internal_idAlarma;
    }

    [Bindable(event="propertyChange")]
    public function get fechaCreacion() : Date
    {
        return _internal_fechaCreacion;
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

    public function set descripcionAlerta(value:String) : void
    {
        var oldValue:String = _internal_descripcionAlerta;
        if (oldValue !== value)
        {
            _internal_descripcionAlerta = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descripcionAlerta", oldValue, _internal_descripcionAlerta));
        }
    }

    public function set numDias(value:String) : void
    {
        var oldValue:String = _internal_numDias;
        if (oldValue !== value)
        {
            _internal_numDias = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numDias", oldValue, _internal_numDias));
        }
    }

    public function set usuarioTransaccion(value:String) : void
    {
        var oldValue:String = _internal_usuarioTransaccion;
        if (oldValue !== value)
        {
            _internal_usuarioTransaccion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usuarioTransaccion", oldValue, _internal_usuarioTransaccion));
        }
    }

    public function set idAlarma(value:String) : void
    {
        var oldValue:String = _internal_idAlarma;
        if (oldValue !== value)
        {
            _internal_idAlarma = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idAlarma", oldValue, _internal_idAlarma));
        }
    }

    public function set fechaCreacion(value:Date) : void
    {
        var oldValue:Date = _internal_fechaCreacion;
        if (oldValue !== value)
        {
            _internal_fechaCreacion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaCreacion", oldValue, _internal_fechaCreacion));
        }
    }

    public function set fechaTransaccion(value:Date) : void
    {
        var oldValue:Date = _internal_fechaTransaccion;
        if (oldValue !== value)
        {
            _internal_fechaTransaccion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaTransaccion", oldValue, _internal_fechaTransaccion));
        }
    }

    public function set usuarioCreacion(value:String) : void
    {
        var oldValue:String = _internal_usuarioCreacion;
        if (oldValue !== value)
        {
            _internal_usuarioCreacion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usuarioCreacion", oldValue, _internal_usuarioCreacion));
        }
    }

    /**
     * Data property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */

    model_internal function setterListenerDescripcionAlerta(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDescripcionAlerta();
    }

    model_internal function setterListenerNumDias(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNumDias();
    }

    model_internal function setterListenerUsuarioTransaccion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUsuarioTransaccion();
    }

    model_internal function setterListenerIdAlarma(value:flash.events.Event):void
    {
        _model.invalidateDependentOnIdAlarma();
    }

    model_internal function setterListenerFechaCreacion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFechaCreacion();
    }

    model_internal function setterListenerFechaTransaccion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFechaTransaccion();
    }

    model_internal function setterListenerUsuarioCreacion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUsuarioCreacion();
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

        var propertyValidity:Boolean = true;
        if (!_model.descripcionAlertaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_descripcionAlertaValidationFailureMessages);
        }
        if (!_model.numDiasIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_numDiasValidationFailureMessages);
        }
        if (!_model.usuarioTransaccionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_usuarioTransaccionValidationFailureMessages);
        }
        if (!_model.idAlarmaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_idAlarmaValidationFailureMessages);
        }
        if (!_model.fechaCreacionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_fechaCreacionValidationFailureMessages);
        }
        if (!_model.fechaTransaccionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_fechaTransaccionValidationFailureMessages);
        }
        if (!_model.usuarioCreacionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_usuarioCreacionValidationFailureMessages);
        }

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
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
    public function get _model() : _AlarmaEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _AlarmaEntityMetadata) : void
    {
        var oldValue : _AlarmaEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfDescripcionAlerta : Array = null;
    model_internal var _doValidationLastValOfDescripcionAlerta : String;

    model_internal function _doValidationForDescripcionAlerta(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDescripcionAlerta != null && model_internal::_doValidationLastValOfDescripcionAlerta == value)
           return model_internal::_doValidationCacheOfDescripcionAlerta ;

        _model.model_internal::_descripcionAlertaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDescripcionAlertaAvailable && _internal_descripcionAlerta == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "descripcionAlerta is required"));
        }

        model_internal::_doValidationCacheOfDescripcionAlerta = validationFailures;
        model_internal::_doValidationLastValOfDescripcionAlerta = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfNumDias : Array = null;
    model_internal var _doValidationLastValOfNumDias : String;

    model_internal function _doValidationForNumDias(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNumDias != null && model_internal::_doValidationLastValOfNumDias == value)
           return model_internal::_doValidationCacheOfNumDias ;

        _model.model_internal::_numDiasIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNumDiasAvailable && _internal_numDias == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "numDias is required"));
        }

        model_internal::_doValidationCacheOfNumDias = validationFailures;
        model_internal::_doValidationLastValOfNumDias = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfUsuarioTransaccion : Array = null;
    model_internal var _doValidationLastValOfUsuarioTransaccion : String;

    model_internal function _doValidationForUsuarioTransaccion(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfUsuarioTransaccion != null && model_internal::_doValidationLastValOfUsuarioTransaccion == value)
           return model_internal::_doValidationCacheOfUsuarioTransaccion ;

        _model.model_internal::_usuarioTransaccionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUsuarioTransaccionAvailable && _internal_usuarioTransaccion == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "usuarioTransaccion is required"));
        }

        model_internal::_doValidationCacheOfUsuarioTransaccion = validationFailures;
        model_internal::_doValidationLastValOfUsuarioTransaccion = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfIdAlarma : Array = null;
    model_internal var _doValidationLastValOfIdAlarma : String;

    model_internal function _doValidationForIdAlarma(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfIdAlarma != null && model_internal::_doValidationLastValOfIdAlarma == value)
           return model_internal::_doValidationCacheOfIdAlarma ;

        _model.model_internal::_idAlarmaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIdAlarmaAvailable && _internal_idAlarma == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "idAlarma is required"));
        }

        model_internal::_doValidationCacheOfIdAlarma = validationFailures;
        model_internal::_doValidationLastValOfIdAlarma = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFechaCreacion : Array = null;
    model_internal var _doValidationLastValOfFechaCreacion : Date;

    model_internal function _doValidationForFechaCreacion(valueIn:Object):Array
    {
        var value : Date = valueIn as Date;

        if (model_internal::_doValidationCacheOfFechaCreacion != null && model_internal::_doValidationLastValOfFechaCreacion == value)
           return model_internal::_doValidationCacheOfFechaCreacion ;

        _model.model_internal::_fechaCreacionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFechaCreacionAvailable && _internal_fechaCreacion == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "fechaCreacion is required"));
        }

        model_internal::_doValidationCacheOfFechaCreacion = validationFailures;
        model_internal::_doValidationLastValOfFechaCreacion = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFechaTransaccion : Array = null;
    model_internal var _doValidationLastValOfFechaTransaccion : Date;

    model_internal function _doValidationForFechaTransaccion(valueIn:Object):Array
    {
        var value : Date = valueIn as Date;

        if (model_internal::_doValidationCacheOfFechaTransaccion != null && model_internal::_doValidationLastValOfFechaTransaccion == value)
           return model_internal::_doValidationCacheOfFechaTransaccion ;

        _model.model_internal::_fechaTransaccionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFechaTransaccionAvailable && _internal_fechaTransaccion == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "fechaTransaccion is required"));
        }

        model_internal::_doValidationCacheOfFechaTransaccion = validationFailures;
        model_internal::_doValidationLastValOfFechaTransaccion = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfUsuarioCreacion : Array = null;
    model_internal var _doValidationLastValOfUsuarioCreacion : String;

    model_internal function _doValidationForUsuarioCreacion(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfUsuarioCreacion != null && model_internal::_doValidationLastValOfUsuarioCreacion == value)
           return model_internal::_doValidationCacheOfUsuarioCreacion ;

        _model.model_internal::_usuarioCreacionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUsuarioCreacionAvailable && _internal_usuarioCreacion == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "usuarioCreacion is required"));
        }

        model_internal::_doValidationCacheOfUsuarioCreacion = validationFailures;
        model_internal::_doValidationLastValOfUsuarioCreacion = value;

        return validationFailures;
    }
    

}

}
