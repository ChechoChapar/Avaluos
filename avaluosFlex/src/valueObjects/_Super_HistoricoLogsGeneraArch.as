/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - HistoricoLogsGeneraArch.as.
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
public class _Super_HistoricoLogsGeneraArch extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.entities.HistoricoLogsGeneraArch") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.HistoricoLogsGeneraArch", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.HistoricoLogsGeneraArch", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _HistoricoLogsGeneraArchEntityMetadata;

    /**
     * properties
     */
    private var _internal_codigoError : String;
    private var _internal_fechaDesde : Date;
    private var _internal_usuarioTransaccion : String;
    private var _internal_fechaHasta : Date;
    private var _internal_fechaFinCreacion : Date;
    private var _internal_fechaInicioCreacion : Date;
    private var _internal_usuarioCreacion : String;
    private var _internal_linkDescarga : String;
    private var _internal_enviado : String;
    private var _internal_nombreArchivo : String;
    private var _internal_estado : String;
    private var _internal_idLogArchivos : String;
    private var _internal_nombrePlano : String;
    private var _internal_descError : String;
    private var _internal_idHistLogsGeneraArch : String;
    private var _internal_fechaTransaccion : Date;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_HistoricoLogsGeneraArch()
    {
        _model = new _HistoricoLogsGeneraArchEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "codigoError", model_internal::setterListenerCodigoError));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaDesde", model_internal::setterListenerFechaDesde));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "usuarioTransaccion", model_internal::setterListenerUsuarioTransaccion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaHasta", model_internal::setterListenerFechaHasta));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaFinCreacion", model_internal::setterListenerFechaFinCreacion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaInicioCreacion", model_internal::setterListenerFechaInicioCreacion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "usuarioCreacion", model_internal::setterListenerUsuarioCreacion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "linkDescarga", model_internal::setterListenerLinkDescarga));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "enviado", model_internal::setterListenerEnviado));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "nombreArchivo", model_internal::setterListenerNombreArchivo));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "estado", model_internal::setterListenerEstado));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "idLogArchivos", model_internal::setterListenerIdLogArchivos));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "nombrePlano", model_internal::setterListenerNombrePlano));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "descError", model_internal::setterListenerDescError));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "idHistLogsGeneraArch", model_internal::setterListenerIdHistLogsGeneraArch));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaTransaccion", model_internal::setterListenerFechaTransaccion));

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
    public function get descError() : String
    {
        return _internal_descError;
    }

    [Bindable(event="propertyChange")]
    public function get idHistLogsGeneraArch() : String
    {
        return _internal_idHistLogsGeneraArch;
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
        var oldValue:String = _internal_codigoError;
        if (oldValue !== value)
        {
            _internal_codigoError = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codigoError", oldValue, _internal_codigoError));
        }
    }

    public function set fechaDesde(value:Date) : void
    {
        var oldValue:Date = _internal_fechaDesde;
        if (oldValue !== value)
        {
            _internal_fechaDesde = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaDesde", oldValue, _internal_fechaDesde));
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

    public function set fechaHasta(value:Date) : void
    {
        var oldValue:Date = _internal_fechaHasta;
        if (oldValue !== value)
        {
            _internal_fechaHasta = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaHasta", oldValue, _internal_fechaHasta));
        }
    }

    public function set fechaFinCreacion(value:Date) : void
    {
        var oldValue:Date = _internal_fechaFinCreacion;
        if (oldValue !== value)
        {
            _internal_fechaFinCreacion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaFinCreacion", oldValue, _internal_fechaFinCreacion));
        }
    }

    public function set fechaInicioCreacion(value:Date) : void
    {
        var oldValue:Date = _internal_fechaInicioCreacion;
        if (oldValue !== value)
        {
            _internal_fechaInicioCreacion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaInicioCreacion", oldValue, _internal_fechaInicioCreacion));
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

    public function set linkDescarga(value:String) : void
    {
        var oldValue:String = _internal_linkDescarga;
        if (oldValue !== value)
        {
            _internal_linkDescarga = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "linkDescarga", oldValue, _internal_linkDescarga));
        }
    }

    public function set enviado(value:String) : void
    {
        var oldValue:String = _internal_enviado;
        if (oldValue !== value)
        {
            _internal_enviado = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "enviado", oldValue, _internal_enviado));
        }
    }

    public function set nombreArchivo(value:String) : void
    {
        var oldValue:String = _internal_nombreArchivo;
        if (oldValue !== value)
        {
            _internal_nombreArchivo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreArchivo", oldValue, _internal_nombreArchivo));
        }
    }

    public function set estado(value:String) : void
    {
        var oldValue:String = _internal_estado;
        if (oldValue !== value)
        {
            _internal_estado = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estado", oldValue, _internal_estado));
        }
    }

    public function set idLogArchivos(value:String) : void
    {
        var oldValue:String = _internal_idLogArchivos;
        if (oldValue !== value)
        {
            _internal_idLogArchivos = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idLogArchivos", oldValue, _internal_idLogArchivos));
        }
    }

    public function set nombrePlano(value:String) : void
    {
        var oldValue:String = _internal_nombrePlano;
        if (oldValue !== value)
        {
            _internal_nombrePlano = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombrePlano", oldValue, _internal_nombrePlano));
        }
    }

    public function set descError(value:String) : void
    {
        var oldValue:String = _internal_descError;
        if (oldValue !== value)
        {
            _internal_descError = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descError", oldValue, _internal_descError));
        }
    }

    public function set idHistLogsGeneraArch(value:String) : void
    {
        var oldValue:String = _internal_idHistLogsGeneraArch;
        if (oldValue !== value)
        {
            _internal_idHistLogsGeneraArch = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idHistLogsGeneraArch", oldValue, _internal_idHistLogsGeneraArch));
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

    model_internal function setterListenerCodigoError(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCodigoError();
    }

    model_internal function setterListenerFechaDesde(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFechaDesde();
    }

    model_internal function setterListenerUsuarioTransaccion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUsuarioTransaccion();
    }

    model_internal function setterListenerFechaHasta(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFechaHasta();
    }

    model_internal function setterListenerFechaFinCreacion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFechaFinCreacion();
    }

    model_internal function setterListenerFechaInicioCreacion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFechaInicioCreacion();
    }

    model_internal function setterListenerUsuarioCreacion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUsuarioCreacion();
    }

    model_internal function setterListenerLinkDescarga(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLinkDescarga();
    }

    model_internal function setterListenerEnviado(value:flash.events.Event):void
    {
        _model.invalidateDependentOnEnviado();
    }

    model_internal function setterListenerNombreArchivo(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNombreArchivo();
    }

    model_internal function setterListenerEstado(value:flash.events.Event):void
    {
        _model.invalidateDependentOnEstado();
    }

    model_internal function setterListenerIdLogArchivos(value:flash.events.Event):void
    {
        _model.invalidateDependentOnIdLogArchivos();
    }

    model_internal function setterListenerNombrePlano(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNombrePlano();
    }

    model_internal function setterListenerDescError(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDescError();
    }

    model_internal function setterListenerIdHistLogsGeneraArch(value:flash.events.Event):void
    {
        _model.invalidateDependentOnIdHistLogsGeneraArch();
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
        if (!_model.codigoErrorIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_codigoErrorValidationFailureMessages);
        }
        if (!_model.fechaDesdeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_fechaDesdeValidationFailureMessages);
        }
        if (!_model.usuarioTransaccionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_usuarioTransaccionValidationFailureMessages);
        }
        if (!_model.fechaHastaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_fechaHastaValidationFailureMessages);
        }
        if (!_model.fechaFinCreacionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_fechaFinCreacionValidationFailureMessages);
        }
        if (!_model.fechaInicioCreacionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_fechaInicioCreacionValidationFailureMessages);
        }
        if (!_model.usuarioCreacionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_usuarioCreacionValidationFailureMessages);
        }
        if (!_model.linkDescargaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_linkDescargaValidationFailureMessages);
        }
        if (!_model.enviadoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_enviadoValidationFailureMessages);
        }
        if (!_model.nombreArchivoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nombreArchivoValidationFailureMessages);
        }
        if (!_model.estadoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_estadoValidationFailureMessages);
        }
        if (!_model.idLogArchivosIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_idLogArchivosValidationFailureMessages);
        }
        if (!_model.nombrePlanoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nombrePlanoValidationFailureMessages);
        }
        if (!_model.descErrorIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_descErrorValidationFailureMessages);
        }
        if (!_model.idHistLogsGeneraArchIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_idHistLogsGeneraArchValidationFailureMessages);
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
    public function get _model() : _HistoricoLogsGeneraArchEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _HistoricoLogsGeneraArchEntityMetadata) : void
    {
        var oldValue : _HistoricoLogsGeneraArchEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfCodigoError : Array = null;
    model_internal var _doValidationLastValOfCodigoError : String;

    model_internal function _doValidationForCodigoError(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCodigoError != null && model_internal::_doValidationLastValOfCodigoError == value)
           return model_internal::_doValidationCacheOfCodigoError ;

        _model.model_internal::_codigoErrorIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCodigoErrorAvailable && _internal_codigoError == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "codigoError is required"));
        }

        model_internal::_doValidationCacheOfCodigoError = validationFailures;
        model_internal::_doValidationLastValOfCodigoError = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFechaDesde : Array = null;
    model_internal var _doValidationLastValOfFechaDesde : Date;

    model_internal function _doValidationForFechaDesde(valueIn:Object):Array
    {
        var value : Date = valueIn as Date;

        if (model_internal::_doValidationCacheOfFechaDesde != null && model_internal::_doValidationLastValOfFechaDesde == value)
           return model_internal::_doValidationCacheOfFechaDesde ;

        _model.model_internal::_fechaDesdeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFechaDesdeAvailable && _internal_fechaDesde == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "fechaDesde is required"));
        }

        model_internal::_doValidationCacheOfFechaDesde = validationFailures;
        model_internal::_doValidationLastValOfFechaDesde = value;

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
    
    model_internal var _doValidationCacheOfFechaHasta : Array = null;
    model_internal var _doValidationLastValOfFechaHasta : Date;

    model_internal function _doValidationForFechaHasta(valueIn:Object):Array
    {
        var value : Date = valueIn as Date;

        if (model_internal::_doValidationCacheOfFechaHasta != null && model_internal::_doValidationLastValOfFechaHasta == value)
           return model_internal::_doValidationCacheOfFechaHasta ;

        _model.model_internal::_fechaHastaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFechaHastaAvailable && _internal_fechaHasta == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "fechaHasta is required"));
        }

        model_internal::_doValidationCacheOfFechaHasta = validationFailures;
        model_internal::_doValidationLastValOfFechaHasta = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFechaFinCreacion : Array = null;
    model_internal var _doValidationLastValOfFechaFinCreacion : Date;

    model_internal function _doValidationForFechaFinCreacion(valueIn:Object):Array
    {
        var value : Date = valueIn as Date;

        if (model_internal::_doValidationCacheOfFechaFinCreacion != null && model_internal::_doValidationLastValOfFechaFinCreacion == value)
           return model_internal::_doValidationCacheOfFechaFinCreacion ;

        _model.model_internal::_fechaFinCreacionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFechaFinCreacionAvailable && _internal_fechaFinCreacion == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "fechaFinCreacion is required"));
        }

        model_internal::_doValidationCacheOfFechaFinCreacion = validationFailures;
        model_internal::_doValidationLastValOfFechaFinCreacion = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFechaInicioCreacion : Array = null;
    model_internal var _doValidationLastValOfFechaInicioCreacion : Date;

    model_internal function _doValidationForFechaInicioCreacion(valueIn:Object):Array
    {
        var value : Date = valueIn as Date;

        if (model_internal::_doValidationCacheOfFechaInicioCreacion != null && model_internal::_doValidationLastValOfFechaInicioCreacion == value)
           return model_internal::_doValidationCacheOfFechaInicioCreacion ;

        _model.model_internal::_fechaInicioCreacionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFechaInicioCreacionAvailable && _internal_fechaInicioCreacion == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "fechaInicioCreacion is required"));
        }

        model_internal::_doValidationCacheOfFechaInicioCreacion = validationFailures;
        model_internal::_doValidationLastValOfFechaInicioCreacion = value;

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
    
    model_internal var _doValidationCacheOfLinkDescarga : Array = null;
    model_internal var _doValidationLastValOfLinkDescarga : String;

    model_internal function _doValidationForLinkDescarga(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLinkDescarga != null && model_internal::_doValidationLastValOfLinkDescarga == value)
           return model_internal::_doValidationCacheOfLinkDescarga ;

        _model.model_internal::_linkDescargaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLinkDescargaAvailable && _internal_linkDescarga == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "linkDescarga is required"));
        }

        model_internal::_doValidationCacheOfLinkDescarga = validationFailures;
        model_internal::_doValidationLastValOfLinkDescarga = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfEnviado : Array = null;
    model_internal var _doValidationLastValOfEnviado : String;

    model_internal function _doValidationForEnviado(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfEnviado != null && model_internal::_doValidationLastValOfEnviado == value)
           return model_internal::_doValidationCacheOfEnviado ;

        _model.model_internal::_enviadoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isEnviadoAvailable && _internal_enviado == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "enviado is required"));
        }

        model_internal::_doValidationCacheOfEnviado = validationFailures;
        model_internal::_doValidationLastValOfEnviado = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfNombreArchivo : Array = null;
    model_internal var _doValidationLastValOfNombreArchivo : String;

    model_internal function _doValidationForNombreArchivo(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNombreArchivo != null && model_internal::_doValidationLastValOfNombreArchivo == value)
           return model_internal::_doValidationCacheOfNombreArchivo ;

        _model.model_internal::_nombreArchivoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNombreArchivoAvailable && _internal_nombreArchivo == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "nombreArchivo is required"));
        }

        model_internal::_doValidationCacheOfNombreArchivo = validationFailures;
        model_internal::_doValidationLastValOfNombreArchivo = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfEstado : Array = null;
    model_internal var _doValidationLastValOfEstado : String;

    model_internal function _doValidationForEstado(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfEstado != null && model_internal::_doValidationLastValOfEstado == value)
           return model_internal::_doValidationCacheOfEstado ;

        _model.model_internal::_estadoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isEstadoAvailable && _internal_estado == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "estado is required"));
        }

        model_internal::_doValidationCacheOfEstado = validationFailures;
        model_internal::_doValidationLastValOfEstado = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfIdLogArchivos : Array = null;
    model_internal var _doValidationLastValOfIdLogArchivos : String;

    model_internal function _doValidationForIdLogArchivos(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfIdLogArchivos != null && model_internal::_doValidationLastValOfIdLogArchivos == value)
           return model_internal::_doValidationCacheOfIdLogArchivos ;

        _model.model_internal::_idLogArchivosIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIdLogArchivosAvailable && _internal_idLogArchivos == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "idLogArchivos is required"));
        }

        model_internal::_doValidationCacheOfIdLogArchivos = validationFailures;
        model_internal::_doValidationLastValOfIdLogArchivos = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfNombrePlano : Array = null;
    model_internal var _doValidationLastValOfNombrePlano : String;

    model_internal function _doValidationForNombrePlano(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNombrePlano != null && model_internal::_doValidationLastValOfNombrePlano == value)
           return model_internal::_doValidationCacheOfNombrePlano ;

        _model.model_internal::_nombrePlanoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNombrePlanoAvailable && _internal_nombrePlano == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "nombrePlano is required"));
        }

        model_internal::_doValidationCacheOfNombrePlano = validationFailures;
        model_internal::_doValidationLastValOfNombrePlano = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDescError : Array = null;
    model_internal var _doValidationLastValOfDescError : String;

    model_internal function _doValidationForDescError(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDescError != null && model_internal::_doValidationLastValOfDescError == value)
           return model_internal::_doValidationCacheOfDescError ;

        _model.model_internal::_descErrorIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDescErrorAvailable && _internal_descError == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "descError is required"));
        }

        model_internal::_doValidationCacheOfDescError = validationFailures;
        model_internal::_doValidationLastValOfDescError = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfIdHistLogsGeneraArch : Array = null;
    model_internal var _doValidationLastValOfIdHistLogsGeneraArch : String;

    model_internal function _doValidationForIdHistLogsGeneraArch(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfIdHistLogsGeneraArch != null && model_internal::_doValidationLastValOfIdHistLogsGeneraArch == value)
           return model_internal::_doValidationCacheOfIdHistLogsGeneraArch ;

        _model.model_internal::_idHistLogsGeneraArchIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIdHistLogsGeneraArchAvailable && _internal_idHistLogsGeneraArch == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "idHistLogsGeneraArch is required"));
        }

        model_internal::_doValidationCacheOfIdHistLogsGeneraArch = validationFailures;
        model_internal::_doValidationLastValOfIdHistLogsGeneraArch = value;

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
