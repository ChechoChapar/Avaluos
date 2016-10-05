/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - PeritosEmpresa.as.
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
import valueObjects.EmpresasAvaluos;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_PeritosEmpresa extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.entities.PeritosEmpresa") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.PeritosEmpresa", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.PeritosEmpresa", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.EmpresasAvaluos.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _PeritosEmpresaEntityMetadata;

    /**
     * properties
     */
    private var _internal_idPeritoEmpresa : String;
    private var _internal_empresasAvaluo : valueObjects.EmpresasAvaluos;
    private var _internal_usuarioTransaccion : String;
    private var _internal_estadoAsociacion : String;
    private var _internal_numeroDocumento : String;
    private var _internal_tipoDocumento : String;
    private var _internal_fechaCreacion : Date;
    private var _internal_fechaTransaccion : Date;
    private var _internal_usuarioCreacion : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_PeritosEmpresa()
    {
        _model = new _PeritosEmpresaEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "idPeritoEmpresa", model_internal::setterListenerIdPeritoEmpresa));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "empresasAvaluo", model_internal::setterListenerEmpresasAvaluo));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "usuarioTransaccion", model_internal::setterListenerUsuarioTransaccion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "estadoAsociacion", model_internal::setterListenerEstadoAsociacion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "numeroDocumento", model_internal::setterListenerNumeroDocumento));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "tipoDocumento", model_internal::setterListenerTipoDocumento));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaCreacion", model_internal::setterListenerFechaCreacion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaTransaccion", model_internal::setterListenerFechaTransaccion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "usuarioCreacion", model_internal::setterListenerUsuarioCreacion));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get idPeritoEmpresa() : String
    {
        return _internal_idPeritoEmpresa;
    }

    [Bindable(event="propertyChange")]
    public function get empresasAvaluo() : valueObjects.EmpresasAvaluos
    {
        return _internal_empresasAvaluo;
    }

    [Bindable(event="propertyChange")]
    public function get usuarioTransaccion() : String
    {
        return _internal_usuarioTransaccion;
    }

    [Bindable(event="propertyChange")]
    public function get estadoAsociacion() : String
    {
        return _internal_estadoAsociacion;
    }

    [Bindable(event="propertyChange")]
    public function get numeroDocumento() : String
    {
        return _internal_numeroDocumento;
    }

    [Bindable(event="propertyChange")]
    public function get tipoDocumento() : String
    {
        return _internal_tipoDocumento;
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

    public function set idPeritoEmpresa(value:String) : void
    {
        var oldValue:String = _internal_idPeritoEmpresa;
        if (oldValue !== value)
        {
            _internal_idPeritoEmpresa = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idPeritoEmpresa", oldValue, _internal_idPeritoEmpresa));
        }
    }

    public function set empresasAvaluo(value:valueObjects.EmpresasAvaluos) : void
    {
        var oldValue:valueObjects.EmpresasAvaluos = _internal_empresasAvaluo;
        if (oldValue !== value)
        {
            _internal_empresasAvaluo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "empresasAvaluo", oldValue, _internal_empresasAvaluo));
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

    public function set estadoAsociacion(value:String) : void
    {
        var oldValue:String = _internal_estadoAsociacion;
        if (oldValue !== value)
        {
            _internal_estadoAsociacion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoAsociacion", oldValue, _internal_estadoAsociacion));
        }
    }

    public function set numeroDocumento(value:String) : void
    {
        var oldValue:String = _internal_numeroDocumento;
        if (oldValue !== value)
        {
            _internal_numeroDocumento = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numeroDocumento", oldValue, _internal_numeroDocumento));
        }
    }

    public function set tipoDocumento(value:String) : void
    {
        var oldValue:String = _internal_tipoDocumento;
        if (oldValue !== value)
        {
            _internal_tipoDocumento = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoDocumento", oldValue, _internal_tipoDocumento));
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

    model_internal function setterListenerIdPeritoEmpresa(value:flash.events.Event):void
    {
        _model.invalidateDependentOnIdPeritoEmpresa();
    }

    model_internal function setterListenerEmpresasAvaluo(value:flash.events.Event):void
    {
        _model.invalidateDependentOnEmpresasAvaluo();
    }

    model_internal function setterListenerUsuarioTransaccion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUsuarioTransaccion();
    }

    model_internal function setterListenerEstadoAsociacion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnEstadoAsociacion();
    }

    model_internal function setterListenerNumeroDocumento(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNumeroDocumento();
    }

    model_internal function setterListenerTipoDocumento(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTipoDocumento();
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
        if (!_model.idPeritoEmpresaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_idPeritoEmpresaValidationFailureMessages);
        }
        if (!_model.empresasAvaluoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_empresasAvaluoValidationFailureMessages);
        }
        if (!_model.usuarioTransaccionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_usuarioTransaccionValidationFailureMessages);
        }
        if (!_model.estadoAsociacionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_estadoAsociacionValidationFailureMessages);
        }
        if (!_model.numeroDocumentoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_numeroDocumentoValidationFailureMessages);
        }
        if (!_model.tipoDocumentoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_tipoDocumentoValidationFailureMessages);
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
    public function get _model() : _PeritosEmpresaEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _PeritosEmpresaEntityMetadata) : void
    {
        var oldValue : _PeritosEmpresaEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfIdPeritoEmpresa : Array = null;
    model_internal var _doValidationLastValOfIdPeritoEmpresa : String;

    model_internal function _doValidationForIdPeritoEmpresa(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfIdPeritoEmpresa != null && model_internal::_doValidationLastValOfIdPeritoEmpresa == value)
           return model_internal::_doValidationCacheOfIdPeritoEmpresa ;

        _model.model_internal::_idPeritoEmpresaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIdPeritoEmpresaAvailable && _internal_idPeritoEmpresa == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "idPeritoEmpresa is required"));
        }

        model_internal::_doValidationCacheOfIdPeritoEmpresa = validationFailures;
        model_internal::_doValidationLastValOfIdPeritoEmpresa = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfEmpresasAvaluo : Array = null;
    model_internal var _doValidationLastValOfEmpresasAvaluo : valueObjects.EmpresasAvaluos;

    model_internal function _doValidationForEmpresasAvaluo(valueIn:Object):Array
    {
        var value : valueObjects.EmpresasAvaluos = valueIn as valueObjects.EmpresasAvaluos;

        if (model_internal::_doValidationCacheOfEmpresasAvaluo != null && model_internal::_doValidationLastValOfEmpresasAvaluo == value)
           return model_internal::_doValidationCacheOfEmpresasAvaluo ;

        _model.model_internal::_empresasAvaluoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isEmpresasAvaluoAvailable && _internal_empresasAvaluo == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "empresasAvaluo is required"));
        }

        model_internal::_doValidationCacheOfEmpresasAvaluo = validationFailures;
        model_internal::_doValidationLastValOfEmpresasAvaluo = value;

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
    
    model_internal var _doValidationCacheOfEstadoAsociacion : Array = null;
    model_internal var _doValidationLastValOfEstadoAsociacion : String;

    model_internal function _doValidationForEstadoAsociacion(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfEstadoAsociacion != null && model_internal::_doValidationLastValOfEstadoAsociacion == value)
           return model_internal::_doValidationCacheOfEstadoAsociacion ;

        _model.model_internal::_estadoAsociacionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isEstadoAsociacionAvailable && _internal_estadoAsociacion == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "estadoAsociacion is required"));
        }

        model_internal::_doValidationCacheOfEstadoAsociacion = validationFailures;
        model_internal::_doValidationLastValOfEstadoAsociacion = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfNumeroDocumento : Array = null;
    model_internal var _doValidationLastValOfNumeroDocumento : String;

    model_internal function _doValidationForNumeroDocumento(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNumeroDocumento != null && model_internal::_doValidationLastValOfNumeroDocumento == value)
           return model_internal::_doValidationCacheOfNumeroDocumento ;

        _model.model_internal::_numeroDocumentoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNumeroDocumentoAvailable && _internal_numeroDocumento == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "numeroDocumento is required"));
        }

        model_internal::_doValidationCacheOfNumeroDocumento = validationFailures;
        model_internal::_doValidationLastValOfNumeroDocumento = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTipoDocumento : Array = null;
    model_internal var _doValidationLastValOfTipoDocumento : String;

    model_internal function _doValidationForTipoDocumento(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTipoDocumento != null && model_internal::_doValidationLastValOfTipoDocumento == value)
           return model_internal::_doValidationCacheOfTipoDocumento ;

        _model.model_internal::_tipoDocumentoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTipoDocumentoAvailable && _internal_tipoDocumento == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "tipoDocumento is required"));
        }

        model_internal::_doValidationCacheOfTipoDocumento = validationFailures;
        model_internal::_doValidationLastValOfTipoDocumento = value;

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
