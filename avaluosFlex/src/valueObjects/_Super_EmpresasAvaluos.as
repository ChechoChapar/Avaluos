/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - EmpresasAvaluos.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.binding.utils.ChangeWatcher;
import mx.collections.ArrayCollection;
import mx.events.CollectionEvent;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;
import valueObjects.Archivo;
import valueObjects.PeritosEmpresa;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_EmpresasAvaluos extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.entities.EmpresasAvaluos") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.EmpresasAvaluos", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.EmpresasAvaluos", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.Archivo.initRemoteClassAliasSingleChild();
        valueObjects.PeritosEmpresa.initRemoteClassAliasSingleChild();
        valueObjects.EmpresasAvaluos.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _EmpresasAvaluosEntityMetadata;

    /**
     * properties
     */
    private var _internal_logo : valueObjects.Archivo;
    private var _internal_cargaArchivoPlano : String;
    private var _internal_usuarioTransaccion : String;
    private var _internal_idEmpresaAvaluo : String;
    private var _internal_numeroDocumento : String;
    private var _internal_usuarioCreacion : String;
    private var _internal_registroPrivado : String;
    private var _internal_estado : String;
    private var _internal_peritosEmpresas : ArrayCollection;
    model_internal var _internal_peritosEmpresas_leaf:valueObjects.PeritosEmpresa;
    private var _internal_registroSic : String;
    private var _internal_sucursalDavivienda : String;
    private var _internal_tipoDocumento : String;
    private var _internal_fechaCreacion : Date;
    private var _internal_firma : valueObjects.Archivo;
    private var _internal_descEmpresa : String;
    private var _internal_fechaTransaccion : Date;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_EmpresasAvaluos()
    {
        _model = new _EmpresasAvaluosEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "logo", model_internal::setterListenerLogo));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "cargaArchivoPlano", model_internal::setterListenerCargaArchivoPlano));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "usuarioTransaccion", model_internal::setterListenerUsuarioTransaccion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "idEmpresaAvaluo", model_internal::setterListenerIdEmpresaAvaluo));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "numeroDocumento", model_internal::setterListenerNumeroDocumento));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "usuarioCreacion", model_internal::setterListenerUsuarioCreacion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "registroPrivado", model_internal::setterListenerRegistroPrivado));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "estado", model_internal::setterListenerEstado));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "peritosEmpresas", model_internal::setterListenerPeritosEmpresas));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "registroSic", model_internal::setterListenerRegistroSic));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "sucursalDavivienda", model_internal::setterListenerSucursalDavivienda));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "tipoDocumento", model_internal::setterListenerTipoDocumento));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaCreacion", model_internal::setterListenerFechaCreacion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "firma", model_internal::setterListenerFirma));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "descEmpresa", model_internal::setterListenerDescEmpresa));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaTransaccion", model_internal::setterListenerFechaTransaccion));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get logo() : valueObjects.Archivo
    {
        return _internal_logo;
    }

    [Bindable(event="propertyChange")]
    public function get cargaArchivoPlano() : String
    {
        return _internal_cargaArchivoPlano;
    }

    [Bindable(event="propertyChange")]
    public function get usuarioTransaccion() : String
    {
        return _internal_usuarioTransaccion;
    }

    [Bindable(event="propertyChange")]
    public function get idEmpresaAvaluo() : String
    {
        return _internal_idEmpresaAvaluo;
    }

    [Bindable(event="propertyChange")]
    public function get numeroDocumento() : String
    {
        return _internal_numeroDocumento;
    }

    [Bindable(event="propertyChange")]
    public function get usuarioCreacion() : String
    {
        return _internal_usuarioCreacion;
    }

    [Bindable(event="propertyChange")]
    public function get registroPrivado() : String
    {
        return _internal_registroPrivado;
    }

    [Bindable(event="propertyChange")]
    public function get estado() : String
    {
        return _internal_estado;
    }

    [Bindable(event="propertyChange")]
    public function get peritosEmpresas() : ArrayCollection
    {
        return _internal_peritosEmpresas;
    }

    [Bindable(event="propertyChange")]
    public function get registroSic() : String
    {
        return _internal_registroSic;
    }

    [Bindable(event="propertyChange")]
    public function get sucursalDavivienda() : String
    {
        return _internal_sucursalDavivienda;
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
    public function get firma() : valueObjects.Archivo
    {
        return _internal_firma;
    }

    [Bindable(event="propertyChange")]
    public function get descEmpresa() : String
    {
        return _internal_descEmpresa;
    }

    [Bindable(event="propertyChange")]
    public function get fechaTransaccion() : Date
    {
        return _internal_fechaTransaccion;
    }

    /**
     * data property setters
     */

    public function set logo(value:valueObjects.Archivo) : void
    {
        var oldValue:valueObjects.Archivo = _internal_logo;
        if (oldValue !== value)
        {
            _internal_logo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "logo", oldValue, _internal_logo));
        }
    }

    public function set cargaArchivoPlano(value:String) : void
    {
        var oldValue:String = _internal_cargaArchivoPlano;
        if (oldValue !== value)
        {
            _internal_cargaArchivoPlano = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cargaArchivoPlano", oldValue, _internal_cargaArchivoPlano));
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

    public function set idEmpresaAvaluo(value:String) : void
    {
        var oldValue:String = _internal_idEmpresaAvaluo;
        if (oldValue !== value)
        {
            _internal_idEmpresaAvaluo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idEmpresaAvaluo", oldValue, _internal_idEmpresaAvaluo));
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

    public function set usuarioCreacion(value:String) : void
    {
        var oldValue:String = _internal_usuarioCreacion;
        if (oldValue !== value)
        {
            _internal_usuarioCreacion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usuarioCreacion", oldValue, _internal_usuarioCreacion));
        }
    }

    public function set registroPrivado(value:String) : void
    {
        var oldValue:String = _internal_registroPrivado;
        if (oldValue !== value)
        {
            _internal_registroPrivado = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "registroPrivado", oldValue, _internal_registroPrivado));
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

    public function set peritosEmpresas(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_peritosEmpresas;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_peritosEmpresas = value;
            }
            else if (value is Array)
            {
                _internal_peritosEmpresas = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of peritosEmpresas must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "peritosEmpresas", oldValue, _internal_peritosEmpresas));
        }
    }

    public function set registroSic(value:String) : void
    {
        var oldValue:String = _internal_registroSic;
        if (oldValue !== value)
        {
            _internal_registroSic = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "registroSic", oldValue, _internal_registroSic));
        }
    }

    public function set sucursalDavivienda(value:String) : void
    {
        var oldValue:String = _internal_sucursalDavivienda;
        if (oldValue !== value)
        {
            _internal_sucursalDavivienda = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sucursalDavivienda", oldValue, _internal_sucursalDavivienda));
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

    public function set firma(value:valueObjects.Archivo) : void
    {
        var oldValue:valueObjects.Archivo = _internal_firma;
        if (oldValue !== value)
        {
            _internal_firma = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "firma", oldValue, _internal_firma));
        }
    }

    public function set descEmpresa(value:String) : void
    {
        var oldValue:String = _internal_descEmpresa;
        if (oldValue !== value)
        {
            _internal_descEmpresa = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descEmpresa", oldValue, _internal_descEmpresa));
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

    model_internal function setterListenerLogo(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLogo();
    }

    model_internal function setterListenerCargaArchivoPlano(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCargaArchivoPlano();
    }

    model_internal function setterListenerUsuarioTransaccion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUsuarioTransaccion();
    }

    model_internal function setterListenerIdEmpresaAvaluo(value:flash.events.Event):void
    {
        _model.invalidateDependentOnIdEmpresaAvaluo();
    }

    model_internal function setterListenerNumeroDocumento(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNumeroDocumento();
    }

    model_internal function setterListenerUsuarioCreacion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUsuarioCreacion();
    }

    model_internal function setterListenerRegistroPrivado(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRegistroPrivado();
    }

    model_internal function setterListenerEstado(value:flash.events.Event):void
    {
        _model.invalidateDependentOnEstado();
    }

    model_internal function setterListenerPeritosEmpresas(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerPeritosEmpresas);
            }
        }
        _model.invalidateDependentOnPeritosEmpresas();
    }

    model_internal function setterListenerRegistroSic(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRegistroSic();
    }

    model_internal function setterListenerSucursalDavivienda(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSucursalDavivienda();
    }

    model_internal function setterListenerTipoDocumento(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTipoDocumento();
    }

    model_internal function setterListenerFechaCreacion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFechaCreacion();
    }

    model_internal function setterListenerFirma(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFirma();
    }

    model_internal function setterListenerDescEmpresa(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDescEmpresa();
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
        if (!_model.logoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_logoValidationFailureMessages);
        }
        if (!_model.cargaArchivoPlanoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_cargaArchivoPlanoValidationFailureMessages);
        }
        if (!_model.usuarioTransaccionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_usuarioTransaccionValidationFailureMessages);
        }
        if (!_model.idEmpresaAvaluoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_idEmpresaAvaluoValidationFailureMessages);
        }
        if (!_model.numeroDocumentoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_numeroDocumentoValidationFailureMessages);
        }
        if (!_model.usuarioCreacionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_usuarioCreacionValidationFailureMessages);
        }
        if (!_model.registroPrivadoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_registroPrivadoValidationFailureMessages);
        }
        if (!_model.estadoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_estadoValidationFailureMessages);
        }
        if (!_model.peritosEmpresasIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_peritosEmpresasValidationFailureMessages);
        }
        if (!_model.registroSicIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_registroSicValidationFailureMessages);
        }
        if (!_model.sucursalDaviviendaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_sucursalDaviviendaValidationFailureMessages);
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
        if (!_model.firmaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_firmaValidationFailureMessages);
        }
        if (!_model.descEmpresaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_descEmpresaValidationFailureMessages);
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
    public function get _model() : _EmpresasAvaluosEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _EmpresasAvaluosEntityMetadata) : void
    {
        var oldValue : _EmpresasAvaluosEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfLogo : Array = null;
    model_internal var _doValidationLastValOfLogo : valueObjects.Archivo;

    model_internal function _doValidationForLogo(valueIn:Object):Array
    {
        var value : valueObjects.Archivo = valueIn as valueObjects.Archivo;

        if (model_internal::_doValidationCacheOfLogo != null && model_internal::_doValidationLastValOfLogo == value)
           return model_internal::_doValidationCacheOfLogo ;

        _model.model_internal::_logoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLogoAvailable && _internal_logo == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "logo is required"));
        }

        model_internal::_doValidationCacheOfLogo = validationFailures;
        model_internal::_doValidationLastValOfLogo = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCargaArchivoPlano : Array = null;
    model_internal var _doValidationLastValOfCargaArchivoPlano : String;

    model_internal function _doValidationForCargaArchivoPlano(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCargaArchivoPlano != null && model_internal::_doValidationLastValOfCargaArchivoPlano == value)
           return model_internal::_doValidationCacheOfCargaArchivoPlano ;

        _model.model_internal::_cargaArchivoPlanoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCargaArchivoPlanoAvailable && _internal_cargaArchivoPlano == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "cargaArchivoPlano is required"));
        }

        model_internal::_doValidationCacheOfCargaArchivoPlano = validationFailures;
        model_internal::_doValidationLastValOfCargaArchivoPlano = value;

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
    
    model_internal var _doValidationCacheOfIdEmpresaAvaluo : Array = null;
    model_internal var _doValidationLastValOfIdEmpresaAvaluo : String;

    model_internal function _doValidationForIdEmpresaAvaluo(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfIdEmpresaAvaluo != null && model_internal::_doValidationLastValOfIdEmpresaAvaluo == value)
           return model_internal::_doValidationCacheOfIdEmpresaAvaluo ;

        _model.model_internal::_idEmpresaAvaluoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIdEmpresaAvaluoAvailable && _internal_idEmpresaAvaluo == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "idEmpresaAvaluo is required"));
        }

        model_internal::_doValidationCacheOfIdEmpresaAvaluo = validationFailures;
        model_internal::_doValidationLastValOfIdEmpresaAvaluo = value;

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
    
    model_internal var _doValidationCacheOfRegistroPrivado : Array = null;
    model_internal var _doValidationLastValOfRegistroPrivado : String;

    model_internal function _doValidationForRegistroPrivado(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfRegistroPrivado != null && model_internal::_doValidationLastValOfRegistroPrivado == value)
           return model_internal::_doValidationCacheOfRegistroPrivado ;

        _model.model_internal::_registroPrivadoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRegistroPrivadoAvailable && _internal_registroPrivado == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "registroPrivado is required"));
        }

        model_internal::_doValidationCacheOfRegistroPrivado = validationFailures;
        model_internal::_doValidationLastValOfRegistroPrivado = value;

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
    
    model_internal var _doValidationCacheOfPeritosEmpresas : Array = null;
    model_internal var _doValidationLastValOfPeritosEmpresas : ArrayCollection;

    model_internal function _doValidationForPeritosEmpresas(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfPeritosEmpresas != null && model_internal::_doValidationLastValOfPeritosEmpresas == value)
           return model_internal::_doValidationCacheOfPeritosEmpresas ;

        _model.model_internal::_peritosEmpresasIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPeritosEmpresasAvailable && _internal_peritosEmpresas == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "peritosEmpresas is required"));
        }

        model_internal::_doValidationCacheOfPeritosEmpresas = validationFailures;
        model_internal::_doValidationLastValOfPeritosEmpresas = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRegistroSic : Array = null;
    model_internal var _doValidationLastValOfRegistroSic : String;

    model_internal function _doValidationForRegistroSic(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfRegistroSic != null && model_internal::_doValidationLastValOfRegistroSic == value)
           return model_internal::_doValidationCacheOfRegistroSic ;

        _model.model_internal::_registroSicIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRegistroSicAvailable && _internal_registroSic == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "registroSic is required"));
        }

        model_internal::_doValidationCacheOfRegistroSic = validationFailures;
        model_internal::_doValidationLastValOfRegistroSic = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfSucursalDavivienda : Array = null;
    model_internal var _doValidationLastValOfSucursalDavivienda : String;

    model_internal function _doValidationForSucursalDavivienda(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSucursalDavivienda != null && model_internal::_doValidationLastValOfSucursalDavivienda == value)
           return model_internal::_doValidationCacheOfSucursalDavivienda ;

        _model.model_internal::_sucursalDaviviendaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSucursalDaviviendaAvailable && _internal_sucursalDavivienda == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "sucursalDavivienda is required"));
        }

        model_internal::_doValidationCacheOfSucursalDavivienda = validationFailures;
        model_internal::_doValidationLastValOfSucursalDavivienda = value;

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
    
    model_internal var _doValidationCacheOfFirma : Array = null;
    model_internal var _doValidationLastValOfFirma : valueObjects.Archivo;

    model_internal function _doValidationForFirma(valueIn:Object):Array
    {
        var value : valueObjects.Archivo = valueIn as valueObjects.Archivo;

        if (model_internal::_doValidationCacheOfFirma != null && model_internal::_doValidationLastValOfFirma == value)
           return model_internal::_doValidationCacheOfFirma ;

        _model.model_internal::_firmaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFirmaAvailable && _internal_firma == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "firma is required"));
        }

        model_internal::_doValidationCacheOfFirma = validationFailures;
        model_internal::_doValidationLastValOfFirma = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDescEmpresa : Array = null;
    model_internal var _doValidationLastValOfDescEmpresa : String;

    model_internal function _doValidationForDescEmpresa(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDescEmpresa != null && model_internal::_doValidationLastValOfDescEmpresa == value)
           return model_internal::_doValidationCacheOfDescEmpresa ;

        _model.model_internal::_descEmpresaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDescEmpresaAvailable && _internal_descEmpresa == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "descEmpresa is required"));
        }

        model_internal::_doValidationCacheOfDescEmpresa = validationFailures;
        model_internal::_doValidationLastValOfDescEmpresa = value;

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
