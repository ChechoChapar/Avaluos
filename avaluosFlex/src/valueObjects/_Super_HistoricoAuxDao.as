/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - HistoricoAuxDao.as.
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
public class _Super_HistoricoAuxDao extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.daos.HistoricoAuxDao") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.daos.HistoricoAuxDao", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.daos.HistoricoAuxDao", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _HistoricoAuxDaoEntityMetadata;

    /**
     * properties
     */
    private var _internal_usuarioTransaccion : String;
    private var _internal_idDepartamento : String;
    private var _internal_idCiudad : String;
    private var _internal_fechaAvaluoDesde : Date;
    private var _internal_fechaCreacionDesde : Date;
    private var _internal_numeroIdentificacion : String;
    private var _internal_matriculaInmobiliaria : String;
    private var _internal_direccionInmueble : String;
    private var _internal_usuarioAprueba : String;
    private var _internal_estadoAvaluo : String;
    private var _internal_fechaAvaluoHasta : Date;
    private var _internal_fechaCreacionHasta : Date;
    private var _internal_nombreSolicitante : String;
    private var _internal_fechaTransaccionHasta : Date;
    private var _internal_fechaTransaccionDesde : Date;
    private var _internal_tipoDocumento : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_HistoricoAuxDao()
    {
        _model = new _HistoricoAuxDaoEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "usuarioTransaccion", model_internal::setterListenerUsuarioTransaccion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "idDepartamento", model_internal::setterListenerIdDepartamento));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "idCiudad", model_internal::setterListenerIdCiudad));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaAvaluoDesde", model_internal::setterListenerFechaAvaluoDesde));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaCreacionDesde", model_internal::setterListenerFechaCreacionDesde));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "numeroIdentificacion", model_internal::setterListenerNumeroIdentificacion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "matriculaInmobiliaria", model_internal::setterListenerMatriculaInmobiliaria));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "direccionInmueble", model_internal::setterListenerDireccionInmueble));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "usuarioAprueba", model_internal::setterListenerUsuarioAprueba));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "estadoAvaluo", model_internal::setterListenerEstadoAvaluo));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaAvaluoHasta", model_internal::setterListenerFechaAvaluoHasta));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaCreacionHasta", model_internal::setterListenerFechaCreacionHasta));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "nombreSolicitante", model_internal::setterListenerNombreSolicitante));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaTransaccionHasta", model_internal::setterListenerFechaTransaccionHasta));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaTransaccionDesde", model_internal::setterListenerFechaTransaccionDesde));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "tipoDocumento", model_internal::setterListenerTipoDocumento));

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
    public function get idDepartamento() : String
    {
        return _internal_idDepartamento;
    }

    [Bindable(event="propertyChange")]
    public function get idCiudad() : String
    {
        return _internal_idCiudad;
    }

    [Bindable(event="propertyChange")]
    public function get fechaAvaluoDesde() : Date
    {
        return _internal_fechaAvaluoDesde;
    }

    [Bindable(event="propertyChange")]
    public function get fechaCreacionDesde() : Date
    {
        return _internal_fechaCreacionDesde;
    }

    [Bindable(event="propertyChange")]
    public function get numeroIdentificacion() : String
    {
        return _internal_numeroIdentificacion;
    }

    [Bindable(event="propertyChange")]
    public function get matriculaInmobiliaria() : String
    {
        return _internal_matriculaInmobiliaria;
    }

    [Bindable(event="propertyChange")]
    public function get direccionInmueble() : String
    {
        return _internal_direccionInmueble;
    }

    [Bindable(event="propertyChange")]
    public function get usuarioAprueba() : String
    {
        return _internal_usuarioAprueba;
    }

    [Bindable(event="propertyChange")]
    public function get estadoAvaluo() : String
    {
        return _internal_estadoAvaluo;
    }

    [Bindable(event="propertyChange")]
    public function get fechaAvaluoHasta() : Date
    {
        return _internal_fechaAvaluoHasta;
    }

    [Bindable(event="propertyChange")]
    public function get fechaCreacionHasta() : Date
    {
        return _internal_fechaCreacionHasta;
    }

    [Bindable(event="propertyChange")]
    public function get nombreSolicitante() : String
    {
        return _internal_nombreSolicitante;
    }

    [Bindable(event="propertyChange")]
    public function get fechaTransaccionHasta() : Date
    {
        return _internal_fechaTransaccionHasta;
    }

    [Bindable(event="propertyChange")]
    public function get fechaTransaccionDesde() : Date
    {
        return _internal_fechaTransaccionDesde;
    }

    [Bindable(event="propertyChange")]
    public function get tipoDocumento() : String
    {
        return _internal_tipoDocumento;
    }

    /**
     * data property setters
     */

    public function set usuarioTransaccion(value:String) : void
    {
        var oldValue:String = _internal_usuarioTransaccion;
        if (oldValue !== value)
        {
            _internal_usuarioTransaccion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usuarioTransaccion", oldValue, _internal_usuarioTransaccion));
        }
    }

    public function set idDepartamento(value:String) : void
    {
        var oldValue:String = _internal_idDepartamento;
        if (oldValue !== value)
        {
            _internal_idDepartamento = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idDepartamento", oldValue, _internal_idDepartamento));
        }
    }

    public function set idCiudad(value:String) : void
    {
        var oldValue:String = _internal_idCiudad;
        if (oldValue !== value)
        {
            _internal_idCiudad = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idCiudad", oldValue, _internal_idCiudad));
        }
    }

    public function set fechaAvaluoDesde(value:Date) : void
    {
        var oldValue:Date = _internal_fechaAvaluoDesde;
        if (oldValue !== value)
        {
            _internal_fechaAvaluoDesde = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaAvaluoDesde", oldValue, _internal_fechaAvaluoDesde));
        }
    }

    public function set fechaCreacionDesde(value:Date) : void
    {
        var oldValue:Date = _internal_fechaCreacionDesde;
        if (oldValue !== value)
        {
            _internal_fechaCreacionDesde = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaCreacionDesde", oldValue, _internal_fechaCreacionDesde));
        }
    }

    public function set numeroIdentificacion(value:String) : void
    {
        var oldValue:String = _internal_numeroIdentificacion;
        if (oldValue !== value)
        {
            _internal_numeroIdentificacion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numeroIdentificacion", oldValue, _internal_numeroIdentificacion));
        }
    }

    public function set matriculaInmobiliaria(value:String) : void
    {
        var oldValue:String = _internal_matriculaInmobiliaria;
        if (oldValue !== value)
        {
            _internal_matriculaInmobiliaria = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "matriculaInmobiliaria", oldValue, _internal_matriculaInmobiliaria));
        }
    }

    public function set direccionInmueble(value:String) : void
    {
        var oldValue:String = _internal_direccionInmueble;
        if (oldValue !== value)
        {
            _internal_direccionInmueble = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "direccionInmueble", oldValue, _internal_direccionInmueble));
        }
    }

    public function set usuarioAprueba(value:String) : void
    {
        var oldValue:String = _internal_usuarioAprueba;
        if (oldValue !== value)
        {
            _internal_usuarioAprueba = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usuarioAprueba", oldValue, _internal_usuarioAprueba));
        }
    }

    public function set estadoAvaluo(value:String) : void
    {
        var oldValue:String = _internal_estadoAvaluo;
        if (oldValue !== value)
        {
            _internal_estadoAvaluo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoAvaluo", oldValue, _internal_estadoAvaluo));
        }
    }

    public function set fechaAvaluoHasta(value:Date) : void
    {
        var oldValue:Date = _internal_fechaAvaluoHasta;
        if (oldValue !== value)
        {
            _internal_fechaAvaluoHasta = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaAvaluoHasta", oldValue, _internal_fechaAvaluoHasta));
        }
    }

    public function set fechaCreacionHasta(value:Date) : void
    {
        var oldValue:Date = _internal_fechaCreacionHasta;
        if (oldValue !== value)
        {
            _internal_fechaCreacionHasta = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaCreacionHasta", oldValue, _internal_fechaCreacionHasta));
        }
    }

    public function set nombreSolicitante(value:String) : void
    {
        var oldValue:String = _internal_nombreSolicitante;
        if (oldValue !== value)
        {
            _internal_nombreSolicitante = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreSolicitante", oldValue, _internal_nombreSolicitante));
        }
    }

    public function set fechaTransaccionHasta(value:Date) : void
    {
        var oldValue:Date = _internal_fechaTransaccionHasta;
        if (oldValue !== value)
        {
            _internal_fechaTransaccionHasta = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaTransaccionHasta", oldValue, _internal_fechaTransaccionHasta));
        }
    }

    public function set fechaTransaccionDesde(value:Date) : void
    {
        var oldValue:Date = _internal_fechaTransaccionDesde;
        if (oldValue !== value)
        {
            _internal_fechaTransaccionDesde = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaTransaccionDesde", oldValue, _internal_fechaTransaccionDesde));
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

    model_internal function setterListenerUsuarioTransaccion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUsuarioTransaccion();
    }

    model_internal function setterListenerIdDepartamento(value:flash.events.Event):void
    {
        _model.invalidateDependentOnIdDepartamento();
    }

    model_internal function setterListenerIdCiudad(value:flash.events.Event):void
    {
        _model.invalidateDependentOnIdCiudad();
    }

    model_internal function setterListenerFechaAvaluoDesde(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFechaAvaluoDesde();
    }

    model_internal function setterListenerFechaCreacionDesde(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFechaCreacionDesde();
    }

    model_internal function setterListenerNumeroIdentificacion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNumeroIdentificacion();
    }

    model_internal function setterListenerMatriculaInmobiliaria(value:flash.events.Event):void
    {
        _model.invalidateDependentOnMatriculaInmobiliaria();
    }

    model_internal function setterListenerDireccionInmueble(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDireccionInmueble();
    }

    model_internal function setterListenerUsuarioAprueba(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUsuarioAprueba();
    }

    model_internal function setterListenerEstadoAvaluo(value:flash.events.Event):void
    {
        _model.invalidateDependentOnEstadoAvaluo();
    }

    model_internal function setterListenerFechaAvaluoHasta(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFechaAvaluoHasta();
    }

    model_internal function setterListenerFechaCreacionHasta(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFechaCreacionHasta();
    }

    model_internal function setterListenerNombreSolicitante(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNombreSolicitante();
    }

    model_internal function setterListenerFechaTransaccionHasta(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFechaTransaccionHasta();
    }

    model_internal function setterListenerFechaTransaccionDesde(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFechaTransaccionDesde();
    }

    model_internal function setterListenerTipoDocumento(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTipoDocumento();
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
        if (!_model.usuarioTransaccionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_usuarioTransaccionValidationFailureMessages);
        }
        if (!_model.idDepartamentoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_idDepartamentoValidationFailureMessages);
        }
        if (!_model.idCiudadIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_idCiudadValidationFailureMessages);
        }
        if (!_model.fechaAvaluoDesdeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_fechaAvaluoDesdeValidationFailureMessages);
        }
        if (!_model.fechaCreacionDesdeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_fechaCreacionDesdeValidationFailureMessages);
        }
        if (!_model.numeroIdentificacionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_numeroIdentificacionValidationFailureMessages);
        }
        if (!_model.matriculaInmobiliariaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_matriculaInmobiliariaValidationFailureMessages);
        }
        if (!_model.direccionInmuebleIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_direccionInmuebleValidationFailureMessages);
        }
        if (!_model.usuarioApruebaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_usuarioApruebaValidationFailureMessages);
        }
        if (!_model.estadoAvaluoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_estadoAvaluoValidationFailureMessages);
        }
        if (!_model.fechaAvaluoHastaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_fechaAvaluoHastaValidationFailureMessages);
        }
        if (!_model.fechaCreacionHastaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_fechaCreacionHastaValidationFailureMessages);
        }
        if (!_model.nombreSolicitanteIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nombreSolicitanteValidationFailureMessages);
        }
        if (!_model.fechaTransaccionHastaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_fechaTransaccionHastaValidationFailureMessages);
        }
        if (!_model.fechaTransaccionDesdeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_fechaTransaccionDesdeValidationFailureMessages);
        }
        if (!_model.tipoDocumentoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_tipoDocumentoValidationFailureMessages);
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
    public function get _model() : _HistoricoAuxDaoEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _HistoricoAuxDaoEntityMetadata) : void
    {
        var oldValue : _HistoricoAuxDaoEntityMetadata = model_internal::_dminternal_model;
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
    
    model_internal var _doValidationCacheOfIdDepartamento : Array = null;
    model_internal var _doValidationLastValOfIdDepartamento : String;

    model_internal function _doValidationForIdDepartamento(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfIdDepartamento != null && model_internal::_doValidationLastValOfIdDepartamento == value)
           return model_internal::_doValidationCacheOfIdDepartamento ;

        _model.model_internal::_idDepartamentoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIdDepartamentoAvailable && _internal_idDepartamento == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "idDepartamento is required"));
        }

        model_internal::_doValidationCacheOfIdDepartamento = validationFailures;
        model_internal::_doValidationLastValOfIdDepartamento = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfIdCiudad : Array = null;
    model_internal var _doValidationLastValOfIdCiudad : String;

    model_internal function _doValidationForIdCiudad(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfIdCiudad != null && model_internal::_doValidationLastValOfIdCiudad == value)
           return model_internal::_doValidationCacheOfIdCiudad ;

        _model.model_internal::_idCiudadIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIdCiudadAvailable && _internal_idCiudad == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "idCiudad is required"));
        }

        model_internal::_doValidationCacheOfIdCiudad = validationFailures;
        model_internal::_doValidationLastValOfIdCiudad = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFechaAvaluoDesde : Array = null;
    model_internal var _doValidationLastValOfFechaAvaluoDesde : Date;

    model_internal function _doValidationForFechaAvaluoDesde(valueIn:Object):Array
    {
        var value : Date = valueIn as Date;

        if (model_internal::_doValidationCacheOfFechaAvaluoDesde != null && model_internal::_doValidationLastValOfFechaAvaluoDesde == value)
           return model_internal::_doValidationCacheOfFechaAvaluoDesde ;

        _model.model_internal::_fechaAvaluoDesdeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFechaAvaluoDesdeAvailable && _internal_fechaAvaluoDesde == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "fechaAvaluoDesde is required"));
        }

        model_internal::_doValidationCacheOfFechaAvaluoDesde = validationFailures;
        model_internal::_doValidationLastValOfFechaAvaluoDesde = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFechaCreacionDesde : Array = null;
    model_internal var _doValidationLastValOfFechaCreacionDesde : Date;

    model_internal function _doValidationForFechaCreacionDesde(valueIn:Object):Array
    {
        var value : Date = valueIn as Date;

        if (model_internal::_doValidationCacheOfFechaCreacionDesde != null && model_internal::_doValidationLastValOfFechaCreacionDesde == value)
           return model_internal::_doValidationCacheOfFechaCreacionDesde ;

        _model.model_internal::_fechaCreacionDesdeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFechaCreacionDesdeAvailable && _internal_fechaCreacionDesde == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "fechaCreacionDesde is required"));
        }

        model_internal::_doValidationCacheOfFechaCreacionDesde = validationFailures;
        model_internal::_doValidationLastValOfFechaCreacionDesde = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfNumeroIdentificacion : Array = null;
    model_internal var _doValidationLastValOfNumeroIdentificacion : String;

    model_internal function _doValidationForNumeroIdentificacion(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNumeroIdentificacion != null && model_internal::_doValidationLastValOfNumeroIdentificacion == value)
           return model_internal::_doValidationCacheOfNumeroIdentificacion ;

        _model.model_internal::_numeroIdentificacionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNumeroIdentificacionAvailable && _internal_numeroIdentificacion == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "numeroIdentificacion is required"));
        }

        model_internal::_doValidationCacheOfNumeroIdentificacion = validationFailures;
        model_internal::_doValidationLastValOfNumeroIdentificacion = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfMatriculaInmobiliaria : Array = null;
    model_internal var _doValidationLastValOfMatriculaInmobiliaria : String;

    model_internal function _doValidationForMatriculaInmobiliaria(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfMatriculaInmobiliaria != null && model_internal::_doValidationLastValOfMatriculaInmobiliaria == value)
           return model_internal::_doValidationCacheOfMatriculaInmobiliaria ;

        _model.model_internal::_matriculaInmobiliariaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isMatriculaInmobiliariaAvailable && _internal_matriculaInmobiliaria == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "matriculaInmobiliaria is required"));
        }

        model_internal::_doValidationCacheOfMatriculaInmobiliaria = validationFailures;
        model_internal::_doValidationLastValOfMatriculaInmobiliaria = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDireccionInmueble : Array = null;
    model_internal var _doValidationLastValOfDireccionInmueble : String;

    model_internal function _doValidationForDireccionInmueble(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDireccionInmueble != null && model_internal::_doValidationLastValOfDireccionInmueble == value)
           return model_internal::_doValidationCacheOfDireccionInmueble ;

        _model.model_internal::_direccionInmuebleIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDireccionInmuebleAvailable && _internal_direccionInmueble == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "direccionInmueble is required"));
        }

        model_internal::_doValidationCacheOfDireccionInmueble = validationFailures;
        model_internal::_doValidationLastValOfDireccionInmueble = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfUsuarioAprueba : Array = null;
    model_internal var _doValidationLastValOfUsuarioAprueba : String;

    model_internal function _doValidationForUsuarioAprueba(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfUsuarioAprueba != null && model_internal::_doValidationLastValOfUsuarioAprueba == value)
           return model_internal::_doValidationCacheOfUsuarioAprueba ;

        _model.model_internal::_usuarioApruebaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUsuarioApruebaAvailable && _internal_usuarioAprueba == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "usuarioAprueba is required"));
        }

        model_internal::_doValidationCacheOfUsuarioAprueba = validationFailures;
        model_internal::_doValidationLastValOfUsuarioAprueba = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfEstadoAvaluo : Array = null;
    model_internal var _doValidationLastValOfEstadoAvaluo : String;

    model_internal function _doValidationForEstadoAvaluo(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfEstadoAvaluo != null && model_internal::_doValidationLastValOfEstadoAvaluo == value)
           return model_internal::_doValidationCacheOfEstadoAvaluo ;

        _model.model_internal::_estadoAvaluoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isEstadoAvaluoAvailable && _internal_estadoAvaluo == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "estadoAvaluo is required"));
        }

        model_internal::_doValidationCacheOfEstadoAvaluo = validationFailures;
        model_internal::_doValidationLastValOfEstadoAvaluo = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFechaAvaluoHasta : Array = null;
    model_internal var _doValidationLastValOfFechaAvaluoHasta : Date;

    model_internal function _doValidationForFechaAvaluoHasta(valueIn:Object):Array
    {
        var value : Date = valueIn as Date;

        if (model_internal::_doValidationCacheOfFechaAvaluoHasta != null && model_internal::_doValidationLastValOfFechaAvaluoHasta == value)
           return model_internal::_doValidationCacheOfFechaAvaluoHasta ;

        _model.model_internal::_fechaAvaluoHastaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFechaAvaluoHastaAvailable && _internal_fechaAvaluoHasta == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "fechaAvaluoHasta is required"));
        }

        model_internal::_doValidationCacheOfFechaAvaluoHasta = validationFailures;
        model_internal::_doValidationLastValOfFechaAvaluoHasta = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFechaCreacionHasta : Array = null;
    model_internal var _doValidationLastValOfFechaCreacionHasta : Date;

    model_internal function _doValidationForFechaCreacionHasta(valueIn:Object):Array
    {
        var value : Date = valueIn as Date;

        if (model_internal::_doValidationCacheOfFechaCreacionHasta != null && model_internal::_doValidationLastValOfFechaCreacionHasta == value)
           return model_internal::_doValidationCacheOfFechaCreacionHasta ;

        _model.model_internal::_fechaCreacionHastaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFechaCreacionHastaAvailable && _internal_fechaCreacionHasta == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "fechaCreacionHasta is required"));
        }

        model_internal::_doValidationCacheOfFechaCreacionHasta = validationFailures;
        model_internal::_doValidationLastValOfFechaCreacionHasta = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfNombreSolicitante : Array = null;
    model_internal var _doValidationLastValOfNombreSolicitante : String;

    model_internal function _doValidationForNombreSolicitante(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNombreSolicitante != null && model_internal::_doValidationLastValOfNombreSolicitante == value)
           return model_internal::_doValidationCacheOfNombreSolicitante ;

        _model.model_internal::_nombreSolicitanteIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNombreSolicitanteAvailable && _internal_nombreSolicitante == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "nombreSolicitante is required"));
        }

        model_internal::_doValidationCacheOfNombreSolicitante = validationFailures;
        model_internal::_doValidationLastValOfNombreSolicitante = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFechaTransaccionHasta : Array = null;
    model_internal var _doValidationLastValOfFechaTransaccionHasta : Date;

    model_internal function _doValidationForFechaTransaccionHasta(valueIn:Object):Array
    {
        var value : Date = valueIn as Date;

        if (model_internal::_doValidationCacheOfFechaTransaccionHasta != null && model_internal::_doValidationLastValOfFechaTransaccionHasta == value)
           return model_internal::_doValidationCacheOfFechaTransaccionHasta ;

        _model.model_internal::_fechaTransaccionHastaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFechaTransaccionHastaAvailable && _internal_fechaTransaccionHasta == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "fechaTransaccionHasta is required"));
        }

        model_internal::_doValidationCacheOfFechaTransaccionHasta = validationFailures;
        model_internal::_doValidationLastValOfFechaTransaccionHasta = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFechaTransaccionDesde : Array = null;
    model_internal var _doValidationLastValOfFechaTransaccionDesde : Date;

    model_internal function _doValidationForFechaTransaccionDesde(valueIn:Object):Array
    {
        var value : Date = valueIn as Date;

        if (model_internal::_doValidationCacheOfFechaTransaccionDesde != null && model_internal::_doValidationLastValOfFechaTransaccionDesde == value)
           return model_internal::_doValidationCacheOfFechaTransaccionDesde ;

        _model.model_internal::_fechaTransaccionDesdeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFechaTransaccionDesdeAvailable && _internal_fechaTransaccionDesde == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "fechaTransaccionDesde is required"));
        }

        model_internal::_doValidationCacheOfFechaTransaccionDesde = validationFailures;
        model_internal::_doValidationLastValOfFechaTransaccionDesde = value;

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
    

}

}
