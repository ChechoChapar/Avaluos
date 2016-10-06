/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - TareasPerfilPK.as.
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
public class _Super_TareasPerfilPK extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.plantillaSeguridad.entities.TareasPerfilPK") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.plantillaSeguridad.entities.TareasPerfilPK", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.segurosbolivar.plantillaSeguridad.entities.TareasPerfilPK", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _TareasPerfilPKEntityMetadata;

    /**
     * properties
     */
    private var _internal_codigoTransaccion : String;
    private var _internal_perfil : String;
    private var _internal_modulo : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_TareasPerfilPK()
    {
        _model = new _TareasPerfilPKEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "codigoTransaccion", model_internal::setterListenerCodigoTransaccion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "perfil", model_internal::setterListenerPerfil));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "modulo", model_internal::setterListenerModulo));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get codigoTransaccion() : String
    {
        return _internal_codigoTransaccion;
    }

    [Bindable(event="propertyChange")]
    public function get perfil() : String
    {
        return _internal_perfil;
    }

    [Bindable(event="propertyChange")]
    public function get modulo() : String
    {
        return _internal_modulo;
    }

    /**
     * data property setters
     */

    public function set codigoTransaccion(value:String) : void
    {
        var oldValue:String = _internal_codigoTransaccion;
        if (oldValue !== value)
        {
            _internal_codigoTransaccion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codigoTransaccion", oldValue, _internal_codigoTransaccion));
        }
    }

    public function set perfil(value:String) : void
    {
        var oldValue:String = _internal_perfil;
        if (oldValue !== value)
        {
            _internal_perfil = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "perfil", oldValue, _internal_perfil));
        }
    }

    public function set modulo(value:String) : void
    {
        var oldValue:String = _internal_modulo;
        if (oldValue !== value)
        {
            _internal_modulo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "modulo", oldValue, _internal_modulo));
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

    model_internal function setterListenerCodigoTransaccion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCodigoTransaccion();
    }

    model_internal function setterListenerPerfil(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPerfil();
    }

    model_internal function setterListenerModulo(value:flash.events.Event):void
    {
        _model.invalidateDependentOnModulo();
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
        if (!_model.codigoTransaccionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_codigoTransaccionValidationFailureMessages);
        }
        if (!_model.perfilIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_perfilValidationFailureMessages);
        }
        if (!_model.moduloIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_moduloValidationFailureMessages);
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
    public function get _model() : _TareasPerfilPKEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _TareasPerfilPKEntityMetadata) : void
    {
        var oldValue : _TareasPerfilPKEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfCodigoTransaccion : Array = null;
    model_internal var _doValidationLastValOfCodigoTransaccion : String;

    model_internal function _doValidationForCodigoTransaccion(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCodigoTransaccion != null && model_internal::_doValidationLastValOfCodigoTransaccion == value)
           return model_internal::_doValidationCacheOfCodigoTransaccion ;

        _model.model_internal::_codigoTransaccionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCodigoTransaccionAvailable && _internal_codigoTransaccion == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "codigoTransaccion is required"));
        }

        model_internal::_doValidationCacheOfCodigoTransaccion = validationFailures;
        model_internal::_doValidationLastValOfCodigoTransaccion = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPerfil : Array = null;
    model_internal var _doValidationLastValOfPerfil : String;

    model_internal function _doValidationForPerfil(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfPerfil != null && model_internal::_doValidationLastValOfPerfil == value)
           return model_internal::_doValidationCacheOfPerfil ;

        _model.model_internal::_perfilIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPerfilAvailable && _internal_perfil == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "perfil is required"));
        }

        model_internal::_doValidationCacheOfPerfil = validationFailures;
        model_internal::_doValidationLastValOfPerfil = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfModulo : Array = null;
    model_internal var _doValidationLastValOfModulo : String;

    model_internal function _doValidationForModulo(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfModulo != null && model_internal::_doValidationLastValOfModulo == value)
           return model_internal::_doValidationCacheOfModulo ;

        _model.model_internal::_moduloIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isModuloAvailable && _internal_modulo == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "modulo is required"));
        }

        model_internal::_doValidationCacheOfModulo = validationFailures;
        model_internal::_doValidationLastValOfModulo = value;

        return validationFailures;
    }
    

}

}
