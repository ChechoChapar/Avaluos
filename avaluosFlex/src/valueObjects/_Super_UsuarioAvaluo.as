/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - UsuarioAvaluo.as.
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
public class _Super_UsuarioAvaluo extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.entities.UsuarioAvaluo") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.UsuarioAvaluo", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.UsuarioAvaluo", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _UsuarioAvaluoEntityMetadata;

    /**
     * properties
     */
    private var _internal_cedulaEmpleado : String;
    private var _internal_telefonoEmpleado : String;
    private var _internal_contadorAccesos : String;
    private var _internal_usuarioTransaccion : String;
    private var _internal_fechaVencimiento : Date;
    private var _internal_nombreEmpleado : String;
    private var _internal_claveUsuario : String;
    private var _internal_codigoPerfil : String;
    private var _internal_estadoUsuario : String;
    private var _internal_codigoEmpleado : String;
    private var _internal_codigoUsuario : String;
    private var _internal_fechaActivacion : Date;
    private var _internal_codigoLocalidad : String;
    private var _internal_indicadorNivelSupervision : String;
    private var _internal_fechaCreacion : Date;
    private var _internal_codCia : String;
    private var _internal_fechaTransaccion : Date;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_UsuarioAvaluo()
    {
        _model = new _UsuarioAvaluoEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "cedulaEmpleado", model_internal::setterListenerCedulaEmpleado));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "telefonoEmpleado", model_internal::setterListenerTelefonoEmpleado));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "contadorAccesos", model_internal::setterListenerContadorAccesos));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "usuarioTransaccion", model_internal::setterListenerUsuarioTransaccion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaVencimiento", model_internal::setterListenerFechaVencimiento));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "nombreEmpleado", model_internal::setterListenerNombreEmpleado));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "claveUsuario", model_internal::setterListenerClaveUsuario));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "codigoPerfil", model_internal::setterListenerCodigoPerfil));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "estadoUsuario", model_internal::setterListenerEstadoUsuario));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "codigoEmpleado", model_internal::setterListenerCodigoEmpleado));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "codigoUsuario", model_internal::setterListenerCodigoUsuario));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaActivacion", model_internal::setterListenerFechaActivacion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "codigoLocalidad", model_internal::setterListenerCodigoLocalidad));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "indicadorNivelSupervision", model_internal::setterListenerIndicadorNivelSupervision));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaCreacion", model_internal::setterListenerFechaCreacion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "codCia", model_internal::setterListenerCodCia));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaTransaccion", model_internal::setterListenerFechaTransaccion));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get cedulaEmpleado() : String
    {
        return _internal_cedulaEmpleado;
    }

    [Bindable(event="propertyChange")]
    public function get telefonoEmpleado() : String
    {
        return _internal_telefonoEmpleado;
    }

    [Bindable(event="propertyChange")]
    public function get contadorAccesos() : String
    {
        return _internal_contadorAccesos;
    }

    [Bindable(event="propertyChange")]
    public function get usuarioTransaccion() : String
    {
        return _internal_usuarioTransaccion;
    }

    [Bindable(event="propertyChange")]
    public function get fechaVencimiento() : Date
    {
        return _internal_fechaVencimiento;
    }

    [Bindable(event="propertyChange")]
    public function get nombreEmpleado() : String
    {
        return _internal_nombreEmpleado;
    }

    [Bindable(event="propertyChange")]
    public function get claveUsuario() : String
    {
        return _internal_claveUsuario;
    }

    [Bindable(event="propertyChange")]
    public function get codigoPerfil() : String
    {
        return _internal_codigoPerfil;
    }

    [Bindable(event="propertyChange")]
    public function get estadoUsuario() : String
    {
        return _internal_estadoUsuario;
    }

    [Bindable(event="propertyChange")]
    public function get codigoEmpleado() : String
    {
        return _internal_codigoEmpleado;
    }

    [Bindable(event="propertyChange")]
    public function get codigoUsuario() : String
    {
        return _internal_codigoUsuario;
    }

    [Bindable(event="propertyChange")]
    public function get fechaActivacion() : Date
    {
        return _internal_fechaActivacion;
    }

    [Bindable(event="propertyChange")]
    public function get codigoLocalidad() : String
    {
        return _internal_codigoLocalidad;
    }

    [Bindable(event="propertyChange")]
    public function get indicadorNivelSupervision() : String
    {
        return _internal_indicadorNivelSupervision;
    }

    [Bindable(event="propertyChange")]
    public function get fechaCreacion() : Date
    {
        return _internal_fechaCreacion;
    }

    [Bindable(event="propertyChange")]
    public function get codCia() : String
    {
        return _internal_codCia;
    }

    [Bindable(event="propertyChange")]
    public function get fechaTransaccion() : Date
    {
        return _internal_fechaTransaccion;
    }

    /**
     * data property setters
     */

    public function set cedulaEmpleado(value:String) : void
    {
        var oldValue:String = _internal_cedulaEmpleado;
        if (oldValue !== value)
        {
            _internal_cedulaEmpleado = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cedulaEmpleado", oldValue, _internal_cedulaEmpleado));
        }
    }

    public function set telefonoEmpleado(value:String) : void
    {
        var oldValue:String = _internal_telefonoEmpleado;
        if (oldValue !== value)
        {
            _internal_telefonoEmpleado = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "telefonoEmpleado", oldValue, _internal_telefonoEmpleado));
        }
    }

    public function set contadorAccesos(value:String) : void
    {
        var oldValue:String = _internal_contadorAccesos;
        if (oldValue !== value)
        {
            _internal_contadorAccesos = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "contadorAccesos", oldValue, _internal_contadorAccesos));
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

    public function set fechaVencimiento(value:Date) : void
    {
        var oldValue:Date = _internal_fechaVencimiento;
        if (oldValue !== value)
        {
            _internal_fechaVencimiento = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaVencimiento", oldValue, _internal_fechaVencimiento));
        }
    }

    public function set nombreEmpleado(value:String) : void
    {
        var oldValue:String = _internal_nombreEmpleado;
        if (oldValue !== value)
        {
            _internal_nombreEmpleado = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreEmpleado", oldValue, _internal_nombreEmpleado));
        }
    }

    public function set claveUsuario(value:String) : void
    {
        var oldValue:String = _internal_claveUsuario;
        if (oldValue !== value)
        {
            _internal_claveUsuario = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "claveUsuario", oldValue, _internal_claveUsuario));
        }
    }

    public function set codigoPerfil(value:String) : void
    {
        var oldValue:String = _internal_codigoPerfil;
        if (oldValue !== value)
        {
            _internal_codigoPerfil = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codigoPerfil", oldValue, _internal_codigoPerfil));
        }
    }

    public function set estadoUsuario(value:String) : void
    {
        var oldValue:String = _internal_estadoUsuario;
        if (oldValue !== value)
        {
            _internal_estadoUsuario = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoUsuario", oldValue, _internal_estadoUsuario));
        }
    }

    public function set codigoEmpleado(value:String) : void
    {
        var oldValue:String = _internal_codigoEmpleado;
        if (oldValue !== value)
        {
            _internal_codigoEmpleado = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codigoEmpleado", oldValue, _internal_codigoEmpleado));
        }
    }

    public function set codigoUsuario(value:String) : void
    {
        var oldValue:String = _internal_codigoUsuario;
        if (oldValue !== value)
        {
            _internal_codigoUsuario = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codigoUsuario", oldValue, _internal_codigoUsuario));
        }
    }

    public function set fechaActivacion(value:Date) : void
    {
        var oldValue:Date = _internal_fechaActivacion;
        if (oldValue !== value)
        {
            _internal_fechaActivacion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaActivacion", oldValue, _internal_fechaActivacion));
        }
    }

    public function set codigoLocalidad(value:String) : void
    {
        var oldValue:String = _internal_codigoLocalidad;
        if (oldValue !== value)
        {
            _internal_codigoLocalidad = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codigoLocalidad", oldValue, _internal_codigoLocalidad));
        }
    }

    public function set indicadorNivelSupervision(value:String) : void
    {
        var oldValue:String = _internal_indicadorNivelSupervision;
        if (oldValue !== value)
        {
            _internal_indicadorNivelSupervision = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "indicadorNivelSupervision", oldValue, _internal_indicadorNivelSupervision));
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

    public function set codCia(value:String) : void
    {
        var oldValue:String = _internal_codCia;
        if (oldValue !== value)
        {
            _internal_codCia = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codCia", oldValue, _internal_codCia));
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

    model_internal function setterListenerCedulaEmpleado(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCedulaEmpleado();
    }

    model_internal function setterListenerTelefonoEmpleado(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTelefonoEmpleado();
    }

    model_internal function setterListenerContadorAccesos(value:flash.events.Event):void
    {
        _model.invalidateDependentOnContadorAccesos();
    }

    model_internal function setterListenerUsuarioTransaccion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUsuarioTransaccion();
    }

    model_internal function setterListenerFechaVencimiento(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFechaVencimiento();
    }

    model_internal function setterListenerNombreEmpleado(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNombreEmpleado();
    }

    model_internal function setterListenerClaveUsuario(value:flash.events.Event):void
    {
        _model.invalidateDependentOnClaveUsuario();
    }

    model_internal function setterListenerCodigoPerfil(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCodigoPerfil();
    }

    model_internal function setterListenerEstadoUsuario(value:flash.events.Event):void
    {
        _model.invalidateDependentOnEstadoUsuario();
    }

    model_internal function setterListenerCodigoEmpleado(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCodigoEmpleado();
    }

    model_internal function setterListenerCodigoUsuario(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCodigoUsuario();
    }

    model_internal function setterListenerFechaActivacion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFechaActivacion();
    }

    model_internal function setterListenerCodigoLocalidad(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCodigoLocalidad();
    }

    model_internal function setterListenerIndicadorNivelSupervision(value:flash.events.Event):void
    {
        _model.invalidateDependentOnIndicadorNivelSupervision();
    }

    model_internal function setterListenerFechaCreacion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFechaCreacion();
    }

    model_internal function setterListenerCodCia(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCodCia();
    }

    model_internal function setterListenerFechaTransaccion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFechaTransaccion();
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
        if (!_model.cedulaEmpleadoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_cedulaEmpleadoValidationFailureMessages);
        }
        if (!_model.telefonoEmpleadoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_telefonoEmpleadoValidationFailureMessages);
        }
        if (!_model.contadorAccesosIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_contadorAccesosValidationFailureMessages);
        }
        if (!_model.usuarioTransaccionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_usuarioTransaccionValidationFailureMessages);
        }
        if (!_model.fechaVencimientoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_fechaVencimientoValidationFailureMessages);
        }
        if (!_model.nombreEmpleadoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nombreEmpleadoValidationFailureMessages);
        }
        if (!_model.claveUsuarioIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_claveUsuarioValidationFailureMessages);
        }
        if (!_model.codigoPerfilIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_codigoPerfilValidationFailureMessages);
        }
        if (!_model.estadoUsuarioIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_estadoUsuarioValidationFailureMessages);
        }
        if (!_model.codigoEmpleadoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_codigoEmpleadoValidationFailureMessages);
        }
        if (!_model.codigoUsuarioIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_codigoUsuarioValidationFailureMessages);
        }
        if (!_model.fechaActivacionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_fechaActivacionValidationFailureMessages);
        }
        if (!_model.codigoLocalidadIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_codigoLocalidadValidationFailureMessages);
        }
        if (!_model.indicadorNivelSupervisionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_indicadorNivelSupervisionValidationFailureMessages);
        }
        if (!_model.fechaCreacionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_fechaCreacionValidationFailureMessages);
        }
        if (!_model.codCiaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_codCiaValidationFailureMessages);
        }
        if (!_model.fechaTransaccionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_fechaTransaccionValidationFailureMessages);
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
    public function get _model() : _UsuarioAvaluoEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _UsuarioAvaluoEntityMetadata) : void
    {
        var oldValue : _UsuarioAvaluoEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfCedulaEmpleado : Array = null;
    model_internal var _doValidationLastValOfCedulaEmpleado : String;

    model_internal function _doValidationForCedulaEmpleado(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCedulaEmpleado != null && model_internal::_doValidationLastValOfCedulaEmpleado == value)
           return model_internal::_doValidationCacheOfCedulaEmpleado ;

        _model.model_internal::_cedulaEmpleadoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCedulaEmpleadoAvailable && _internal_cedulaEmpleado == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "cedulaEmpleado is required"));
        }

        model_internal::_doValidationCacheOfCedulaEmpleado = validationFailures;
        model_internal::_doValidationLastValOfCedulaEmpleado = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTelefonoEmpleado : Array = null;
    model_internal var _doValidationLastValOfTelefonoEmpleado : String;

    model_internal function _doValidationForTelefonoEmpleado(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTelefonoEmpleado != null && model_internal::_doValidationLastValOfTelefonoEmpleado == value)
           return model_internal::_doValidationCacheOfTelefonoEmpleado ;

        _model.model_internal::_telefonoEmpleadoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTelefonoEmpleadoAvailable && _internal_telefonoEmpleado == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "telefonoEmpleado is required"));
        }

        model_internal::_doValidationCacheOfTelefonoEmpleado = validationFailures;
        model_internal::_doValidationLastValOfTelefonoEmpleado = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfContadorAccesos : Array = null;
    model_internal var _doValidationLastValOfContadorAccesos : String;

    model_internal function _doValidationForContadorAccesos(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfContadorAccesos != null && model_internal::_doValidationLastValOfContadorAccesos == value)
           return model_internal::_doValidationCacheOfContadorAccesos ;

        _model.model_internal::_contadorAccesosIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isContadorAccesosAvailable && _internal_contadorAccesos == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "contadorAccesos is required"));
        }

        model_internal::_doValidationCacheOfContadorAccesos = validationFailures;
        model_internal::_doValidationLastValOfContadorAccesos = value;

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
    
    model_internal var _doValidationCacheOfFechaVencimiento : Array = null;
    model_internal var _doValidationLastValOfFechaVencimiento : Date;

    model_internal function _doValidationForFechaVencimiento(valueIn:Object):Array
    {
        var value : Date = valueIn as Date;

        if (model_internal::_doValidationCacheOfFechaVencimiento != null && model_internal::_doValidationLastValOfFechaVencimiento == value)
           return model_internal::_doValidationCacheOfFechaVencimiento ;

        _model.model_internal::_fechaVencimientoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFechaVencimientoAvailable && _internal_fechaVencimiento == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "fechaVencimiento is required"));
        }

        model_internal::_doValidationCacheOfFechaVencimiento = validationFailures;
        model_internal::_doValidationLastValOfFechaVencimiento = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfNombreEmpleado : Array = null;
    model_internal var _doValidationLastValOfNombreEmpleado : String;

    model_internal function _doValidationForNombreEmpleado(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNombreEmpleado != null && model_internal::_doValidationLastValOfNombreEmpleado == value)
           return model_internal::_doValidationCacheOfNombreEmpleado ;

        _model.model_internal::_nombreEmpleadoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNombreEmpleadoAvailable && _internal_nombreEmpleado == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "nombreEmpleado is required"));
        }

        model_internal::_doValidationCacheOfNombreEmpleado = validationFailures;
        model_internal::_doValidationLastValOfNombreEmpleado = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfClaveUsuario : Array = null;
    model_internal var _doValidationLastValOfClaveUsuario : String;

    model_internal function _doValidationForClaveUsuario(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfClaveUsuario != null && model_internal::_doValidationLastValOfClaveUsuario == value)
           return model_internal::_doValidationCacheOfClaveUsuario ;

        _model.model_internal::_claveUsuarioIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isClaveUsuarioAvailable && _internal_claveUsuario == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "claveUsuario is required"));
        }

        model_internal::_doValidationCacheOfClaveUsuario = validationFailures;
        model_internal::_doValidationLastValOfClaveUsuario = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCodigoPerfil : Array = null;
    model_internal var _doValidationLastValOfCodigoPerfil : String;

    model_internal function _doValidationForCodigoPerfil(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCodigoPerfil != null && model_internal::_doValidationLastValOfCodigoPerfil == value)
           return model_internal::_doValidationCacheOfCodigoPerfil ;

        _model.model_internal::_codigoPerfilIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCodigoPerfilAvailable && _internal_codigoPerfil == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "codigoPerfil is required"));
        }

        model_internal::_doValidationCacheOfCodigoPerfil = validationFailures;
        model_internal::_doValidationLastValOfCodigoPerfil = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfEstadoUsuario : Array = null;
    model_internal var _doValidationLastValOfEstadoUsuario : String;

    model_internal function _doValidationForEstadoUsuario(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfEstadoUsuario != null && model_internal::_doValidationLastValOfEstadoUsuario == value)
           return model_internal::_doValidationCacheOfEstadoUsuario ;

        _model.model_internal::_estadoUsuarioIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isEstadoUsuarioAvailable && _internal_estadoUsuario == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "estadoUsuario is required"));
        }

        model_internal::_doValidationCacheOfEstadoUsuario = validationFailures;
        model_internal::_doValidationLastValOfEstadoUsuario = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCodigoEmpleado : Array = null;
    model_internal var _doValidationLastValOfCodigoEmpleado : String;

    model_internal function _doValidationForCodigoEmpleado(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCodigoEmpleado != null && model_internal::_doValidationLastValOfCodigoEmpleado == value)
           return model_internal::_doValidationCacheOfCodigoEmpleado ;

        _model.model_internal::_codigoEmpleadoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCodigoEmpleadoAvailable && _internal_codigoEmpleado == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "codigoEmpleado is required"));
        }

        model_internal::_doValidationCacheOfCodigoEmpleado = validationFailures;
        model_internal::_doValidationLastValOfCodigoEmpleado = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCodigoUsuario : Array = null;
    model_internal var _doValidationLastValOfCodigoUsuario : String;

    model_internal function _doValidationForCodigoUsuario(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCodigoUsuario != null && model_internal::_doValidationLastValOfCodigoUsuario == value)
           return model_internal::_doValidationCacheOfCodigoUsuario ;

        _model.model_internal::_codigoUsuarioIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCodigoUsuarioAvailable && _internal_codigoUsuario == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "codigoUsuario is required"));
        }

        model_internal::_doValidationCacheOfCodigoUsuario = validationFailures;
        model_internal::_doValidationLastValOfCodigoUsuario = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFechaActivacion : Array = null;
    model_internal var _doValidationLastValOfFechaActivacion : Date;

    model_internal function _doValidationForFechaActivacion(valueIn:Object):Array
    {
        var value : Date = valueIn as Date;

        if (model_internal::_doValidationCacheOfFechaActivacion != null && model_internal::_doValidationLastValOfFechaActivacion == value)
           return model_internal::_doValidationCacheOfFechaActivacion ;

        _model.model_internal::_fechaActivacionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFechaActivacionAvailable && _internal_fechaActivacion == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "fechaActivacion is required"));
        }

        model_internal::_doValidationCacheOfFechaActivacion = validationFailures;
        model_internal::_doValidationLastValOfFechaActivacion = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCodigoLocalidad : Array = null;
    model_internal var _doValidationLastValOfCodigoLocalidad : String;

    model_internal function _doValidationForCodigoLocalidad(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCodigoLocalidad != null && model_internal::_doValidationLastValOfCodigoLocalidad == value)
           return model_internal::_doValidationCacheOfCodigoLocalidad ;

        _model.model_internal::_codigoLocalidadIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCodigoLocalidadAvailable && _internal_codigoLocalidad == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "codigoLocalidad is required"));
        }

        model_internal::_doValidationCacheOfCodigoLocalidad = validationFailures;
        model_internal::_doValidationLastValOfCodigoLocalidad = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfIndicadorNivelSupervision : Array = null;
    model_internal var _doValidationLastValOfIndicadorNivelSupervision : String;

    model_internal function _doValidationForIndicadorNivelSupervision(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfIndicadorNivelSupervision != null && model_internal::_doValidationLastValOfIndicadorNivelSupervision == value)
           return model_internal::_doValidationCacheOfIndicadorNivelSupervision ;

        _model.model_internal::_indicadorNivelSupervisionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIndicadorNivelSupervisionAvailable && _internal_indicadorNivelSupervision == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "indicadorNivelSupervision is required"));
        }

        model_internal::_doValidationCacheOfIndicadorNivelSupervision = validationFailures;
        model_internal::_doValidationLastValOfIndicadorNivelSupervision = value;

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
    
    model_internal var _doValidationCacheOfCodCia : Array = null;
    model_internal var _doValidationLastValOfCodCia : String;

    model_internal function _doValidationForCodCia(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCodCia != null && model_internal::_doValidationLastValOfCodCia == value)
           return model_internal::_doValidationCacheOfCodCia ;

        _model.model_internal::_codCiaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCodCiaAvailable && _internal_codCia == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "codCia is required"));
        }

        model_internal::_doValidationCacheOfCodCia = validationFailures;
        model_internal::_doValidationLastValOfCodCia = value;

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
    

}

}
