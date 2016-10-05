/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - CampoRequeridoDTO.as.
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
public class _Super_CampoRequeridoDTO extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.util.campoRequeridoDTO") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.util.campoRequeridoDTO", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.util.campoRequeridoDTO", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _CampoRequeridoDTOEntityMetadata;

    /**
     * properties
     */
    private var _internal_nombreComponente : String;
    private var _internal_categoriaInmueble : String;
    private var _internal_nombretablaBD : String;
    private var _internal_requerido : Boolean;
    private var _internal_nombrecampoBD : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_CampoRequeridoDTO()
    {
        _model = new _CampoRequeridoDTOEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "nombreComponente", model_internal::setterListenerNombreComponente));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "categoriaInmueble", model_internal::setterListenerCategoriaInmueble));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "nombretablaBD", model_internal::setterListenerNombretablaBD));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "nombrecampoBD", model_internal::setterListenerNombrecampoBD));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get nombreComponente() : String
    {
        return _internal_nombreComponente;
    }

    [Bindable(event="propertyChange")]
    public function get categoriaInmueble() : String
    {
        return _internal_categoriaInmueble;
    }

    [Bindable(event="propertyChange")]
    public function get nombretablaBD() : String
    {
        return _internal_nombretablaBD;
    }

    [Bindable(event="propertyChange")]
    public function get requerido() : Boolean
    {
        return _internal_requerido;
    }

    [Bindable(event="propertyChange")]
    public function get nombrecampoBD() : String
    {
        return _internal_nombrecampoBD;
    }

    /**
     * data property setters
     */

    public function set nombreComponente(value:String) : void
    {
        var oldValue:String = _internal_nombreComponente;
        if (oldValue !== value)
        {
            _internal_nombreComponente = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreComponente", oldValue, _internal_nombreComponente));
        }
    }

    public function set categoriaInmueble(value:String) : void
    {
        var oldValue:String = _internal_categoriaInmueble;
        if (oldValue !== value)
        {
            _internal_categoriaInmueble = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "categoriaInmueble", oldValue, _internal_categoriaInmueble));
        }
    }

    public function set nombretablaBD(value:String) : void
    {
        var oldValue:String = _internal_nombretablaBD;
        if (oldValue !== value)
        {
            _internal_nombretablaBD = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombretablaBD", oldValue, _internal_nombretablaBD));
        }
    }

    public function set requerido(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_requerido;
        if (oldValue !== value)
        {
            _internal_requerido = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "requerido", oldValue, _internal_requerido));
        }
    }

    public function set nombrecampoBD(value:String) : void
    {
        var oldValue:String = _internal_nombrecampoBD;
        if (oldValue !== value)
        {
            _internal_nombrecampoBD = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombrecampoBD", oldValue, _internal_nombrecampoBD));
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

    model_internal function setterListenerNombreComponente(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNombreComponente();
    }

    model_internal function setterListenerCategoriaInmueble(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCategoriaInmueble();
    }

    model_internal function setterListenerNombretablaBD(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNombretablaBD();
    }

    model_internal function setterListenerNombrecampoBD(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNombrecampoBD();
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
        if (!_model.nombreComponenteIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nombreComponenteValidationFailureMessages);
        }
        if (!_model.categoriaInmuebleIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_categoriaInmuebleValidationFailureMessages);
        }
        if (!_model.nombretablaBDIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nombretablaBDValidationFailureMessages);
        }
        if (!_model.nombrecampoBDIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nombrecampoBDValidationFailureMessages);
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
    public function get _model() : _CampoRequeridoDTOEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _CampoRequeridoDTOEntityMetadata) : void
    {
        var oldValue : _CampoRequeridoDTOEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfNombreComponente : Array = null;
    model_internal var _doValidationLastValOfNombreComponente : String;

    model_internal function _doValidationForNombreComponente(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNombreComponente != null && model_internal::_doValidationLastValOfNombreComponente == value)
           return model_internal::_doValidationCacheOfNombreComponente ;

        _model.model_internal::_nombreComponenteIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNombreComponenteAvailable && _internal_nombreComponente == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "nombreComponente is required"));
        }

        model_internal::_doValidationCacheOfNombreComponente = validationFailures;
        model_internal::_doValidationLastValOfNombreComponente = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCategoriaInmueble : Array = null;
    model_internal var _doValidationLastValOfCategoriaInmueble : String;

    model_internal function _doValidationForCategoriaInmueble(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCategoriaInmueble != null && model_internal::_doValidationLastValOfCategoriaInmueble == value)
           return model_internal::_doValidationCacheOfCategoriaInmueble ;

        _model.model_internal::_categoriaInmuebleIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCategoriaInmuebleAvailable && _internal_categoriaInmueble == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "categoriaInmueble is required"));
        }

        model_internal::_doValidationCacheOfCategoriaInmueble = validationFailures;
        model_internal::_doValidationLastValOfCategoriaInmueble = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfNombretablaBD : Array = null;
    model_internal var _doValidationLastValOfNombretablaBD : String;

    model_internal function _doValidationForNombretablaBD(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNombretablaBD != null && model_internal::_doValidationLastValOfNombretablaBD == value)
           return model_internal::_doValidationCacheOfNombretablaBD ;

        _model.model_internal::_nombretablaBDIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNombretablaBDAvailable && _internal_nombretablaBD == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "nombretablaBD is required"));
        }

        model_internal::_doValidationCacheOfNombretablaBD = validationFailures;
        model_internal::_doValidationLastValOfNombretablaBD = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfNombrecampoBD : Array = null;
    model_internal var _doValidationLastValOfNombrecampoBD : String;

    model_internal function _doValidationForNombrecampoBD(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNombrecampoBD != null && model_internal::_doValidationLastValOfNombrecampoBD == value)
           return model_internal::_doValidationCacheOfNombrecampoBD ;

        _model.model_internal::_nombrecampoBDIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNombrecampoBDAvailable && _internal_nombrecampoBD == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "nombrecampoBD is required"));
        }

        model_internal::_doValidationCacheOfNombrecampoBD = validationFailures;
        model_internal::_doValidationLastValOfNombrecampoBD = value;

        return validationFailures;
    }
    

}

}
