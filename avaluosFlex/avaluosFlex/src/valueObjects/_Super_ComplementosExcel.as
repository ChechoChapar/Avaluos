/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - ComplementosExcel.as.
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
import valueObjects.Archivo;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_ComplementosExcel extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.entities.ComplementosExcel") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.ComplementosExcel", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.ComplementosExcel", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.Archivo.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _ComplementosExcelEntityMetadata;

    /**
     * properties
     */
    private var _internal_descripcionComplemento : String;
    private var _internal_usuarioTransaccion : String;
    private var _internal_archivo : valueObjects.Archivo;
    private var _internal_fechaCreacion : Date;
    private var _internal_idComplementoExcel : String;
    private var _internal_fechaTransaccion : Date;
    private var _internal_usuarioCreacion : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_ComplementosExcel()
    {
        _model = new _ComplementosExcelEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "descripcionComplemento", model_internal::setterListenerDescripcionComplemento));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "usuarioTransaccion", model_internal::setterListenerUsuarioTransaccion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "archivo", model_internal::setterListenerArchivo));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaCreacion", model_internal::setterListenerFechaCreacion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "idComplementoExcel", model_internal::setterListenerIdComplementoExcel));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaTransaccion", model_internal::setterListenerFechaTransaccion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "usuarioCreacion", model_internal::setterListenerUsuarioCreacion));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get descripcionComplemento() : String
    {
        return _internal_descripcionComplemento;
    }

    [Bindable(event="propertyChange")]
    public function get usuarioTransaccion() : String
    {
        return _internal_usuarioTransaccion;
    }

    [Bindable(event="propertyChange")]
    public function get archivo() : valueObjects.Archivo
    {
        return _internal_archivo;
    }

    [Bindable(event="propertyChange")]
    public function get fechaCreacion() : Date
    {
        return _internal_fechaCreacion;
    }

    [Bindable(event="propertyChange")]
    public function get idComplementoExcel() : String
    {
        return _internal_idComplementoExcel;
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

    public function set descripcionComplemento(value:String) : void
    {
        var oldValue:String = _internal_descripcionComplemento;
        if (oldValue !== value)
        {
            _internal_descripcionComplemento = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descripcionComplemento", oldValue, _internal_descripcionComplemento));
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

    public function set archivo(value:valueObjects.Archivo) : void
    {
        var oldValue:valueObjects.Archivo = _internal_archivo;
        if (oldValue !== value)
        {
            _internal_archivo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "archivo", oldValue, _internal_archivo));
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

    public function set idComplementoExcel(value:String) : void
    {
        var oldValue:String = _internal_idComplementoExcel;
        if (oldValue !== value)
        {
            _internal_idComplementoExcel = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idComplementoExcel", oldValue, _internal_idComplementoExcel));
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

    model_internal function setterListenerDescripcionComplemento(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDescripcionComplemento();
    }

    model_internal function setterListenerUsuarioTransaccion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUsuarioTransaccion();
    }

    model_internal function setterListenerArchivo(value:flash.events.Event):void
    {
        _model.invalidateDependentOnArchivo();
    }

    model_internal function setterListenerFechaCreacion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFechaCreacion();
    }

    model_internal function setterListenerIdComplementoExcel(value:flash.events.Event):void
    {
        _model.invalidateDependentOnIdComplementoExcel();
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
        if (!_model.descripcionComplementoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_descripcionComplementoValidationFailureMessages);
        }
        if (!_model.usuarioTransaccionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_usuarioTransaccionValidationFailureMessages);
        }
        if (!_model.archivoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_archivoValidationFailureMessages);
        }
        if (!_model.fechaCreacionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_fechaCreacionValidationFailureMessages);
        }
        if (!_model.idComplementoExcelIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_idComplementoExcelValidationFailureMessages);
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
    public function get _model() : _ComplementosExcelEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _ComplementosExcelEntityMetadata) : void
    {
        var oldValue : _ComplementosExcelEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfDescripcionComplemento : Array = null;
    model_internal var _doValidationLastValOfDescripcionComplemento : String;

    model_internal function _doValidationForDescripcionComplemento(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDescripcionComplemento != null && model_internal::_doValidationLastValOfDescripcionComplemento == value)
           return model_internal::_doValidationCacheOfDescripcionComplemento ;

        _model.model_internal::_descripcionComplementoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDescripcionComplementoAvailable && _internal_descripcionComplemento == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "descripcionComplemento is required"));
        }

        model_internal::_doValidationCacheOfDescripcionComplemento = validationFailures;
        model_internal::_doValidationLastValOfDescripcionComplemento = value;

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
    
    model_internal var _doValidationCacheOfArchivo : Array = null;
    model_internal var _doValidationLastValOfArchivo : valueObjects.Archivo;

    model_internal function _doValidationForArchivo(valueIn:Object):Array
    {
        var value : valueObjects.Archivo = valueIn as valueObjects.Archivo;

        if (model_internal::_doValidationCacheOfArchivo != null && model_internal::_doValidationLastValOfArchivo == value)
           return model_internal::_doValidationCacheOfArchivo ;

        _model.model_internal::_archivoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isArchivoAvailable && _internal_archivo == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "archivo is required"));
        }

        model_internal::_doValidationCacheOfArchivo = validationFailures;
        model_internal::_doValidationLastValOfArchivo = value;

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
    
    model_internal var _doValidationCacheOfIdComplementoExcel : Array = null;
    model_internal var _doValidationLastValOfIdComplementoExcel : String;

    model_internal function _doValidationForIdComplementoExcel(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfIdComplementoExcel != null && model_internal::_doValidationLastValOfIdComplementoExcel == value)
           return model_internal::_doValidationCacheOfIdComplementoExcel ;

        _model.model_internal::_idComplementoExcelIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIdComplementoExcelAvailable && _internal_idComplementoExcel == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "idComplementoExcel is required"));
        }

        model_internal::_doValidationCacheOfIdComplementoExcel = validationFailures;
        model_internal::_doValidationLastValOfIdComplementoExcel = value;

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
