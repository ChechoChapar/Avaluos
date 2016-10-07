/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - TareasPerfil.as.
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
import valueObjects.ModulosPerfil;
import valueObjects.TareasPerfilPK;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_TareasPerfil extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.plantillaSeguridad.entities.TareasPerfil") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.plantillaSeguridad.entities.TareasPerfil", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.segurosbolivar.plantillaSeguridad.entities.TareasPerfil", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.TareasPerfilPK.initRemoteClassAliasSingleChild();
        valueObjects.ModulosPerfil.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _TareasPerfilEntityMetadata;

    /**
     * properties
     */
    private var _internal_id : valueObjects.TareasPerfilPK;
    private var _internal_adiciona : String;
    private var _internal_actualiza : String;
    private var _internal_idTareasPerfil : String;
    private var _internal_imprime : String;
    private var _internal_nombrePelicula : String;
    private var _internal_elimina : String;
    private var _internal_modulo : valueObjects.ModulosPerfil;
    private var _internal_consulta : String;
    private var _internal_descripcionTransaccion : String;
    private var _internal_ejecuta : String;
    private var _internal_ordenTransaccion : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_TareasPerfil()
    {
        _model = new _TareasPerfilEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "id", model_internal::setterListenerId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "adiciona", model_internal::setterListenerAdiciona));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "actualiza", model_internal::setterListenerActualiza));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "idTareasPerfil", model_internal::setterListenerIdTareasPerfil));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "imprime", model_internal::setterListenerImprime));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "nombrePelicula", model_internal::setterListenerNombrePelicula));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "elimina", model_internal::setterListenerElimina));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "modulo", model_internal::setterListenerModulo));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "consulta", model_internal::setterListenerConsulta));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "descripcionTransaccion", model_internal::setterListenerDescripcionTransaccion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "ejecuta", model_internal::setterListenerEjecuta));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "ordenTransaccion", model_internal::setterListenerOrdenTransaccion));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get id() : valueObjects.TareasPerfilPK
    {
        return _internal_id;
    }

    [Bindable(event="propertyChange")]
    public function get adiciona() : String
    {
        return _internal_adiciona;
    }

    [Bindable(event="propertyChange")]
    public function get actualiza() : String
    {
        return _internal_actualiza;
    }

    [Bindable(event="propertyChange")]
    public function get idTareasPerfil() : String
    {
        return _internal_idTareasPerfil;
    }

    [Bindable(event="propertyChange")]
    public function get imprime() : String
    {
        return _internal_imprime;
    }

    [Bindable(event="propertyChange")]
    public function get nombrePelicula() : String
    {
        return _internal_nombrePelicula;
    }

    [Bindable(event="propertyChange")]
    public function get elimina() : String
    {
        return _internal_elimina;
    }

    [Bindable(event="propertyChange")]
    public function get modulo() : valueObjects.ModulosPerfil
    {
        return _internal_modulo;
    }

    [Bindable(event="propertyChange")]
    public function get consulta() : String
    {
        return _internal_consulta;
    }

    [Bindable(event="propertyChange")]
    public function get descripcionTransaccion() : String
    {
        return _internal_descripcionTransaccion;
    }

    [Bindable(event="propertyChange")]
    public function get ejecuta() : String
    {
        return _internal_ejecuta;
    }

    [Bindable(event="propertyChange")]
    public function get ordenTransaccion() : String
    {
        return _internal_ordenTransaccion;
    }

    /**
     * data property setters
     */

    public function set id(value:valueObjects.TareasPerfilPK) : void
    {
        var oldValue:valueObjects.TareasPerfilPK = _internal_id;
        if (oldValue !== value)
        {
            _internal_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id", oldValue, _internal_id));
        }
    }

    public function set adiciona(value:String) : void
    {
        var oldValue:String = _internal_adiciona;
        if (oldValue !== value)
        {
            _internal_adiciona = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "adiciona", oldValue, _internal_adiciona));
        }
    }

    public function set actualiza(value:String) : void
    {
        var oldValue:String = _internal_actualiza;
        if (oldValue !== value)
        {
            _internal_actualiza = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "actualiza", oldValue, _internal_actualiza));
        }
    }

    public function set idTareasPerfil(value:String) : void
    {
        var oldValue:String = _internal_idTareasPerfil;
        if (oldValue !== value)
        {
            _internal_idTareasPerfil = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idTareasPerfil", oldValue, _internal_idTareasPerfil));
        }
    }

    public function set imprime(value:String) : void
    {
        var oldValue:String = _internal_imprime;
        if (oldValue !== value)
        {
            _internal_imprime = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "imprime", oldValue, _internal_imprime));
        }
    }

    public function set nombrePelicula(value:String) : void
    {
        var oldValue:String = _internal_nombrePelicula;
        if (oldValue !== value)
        {
            _internal_nombrePelicula = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombrePelicula", oldValue, _internal_nombrePelicula));
        }
    }

    public function set elimina(value:String) : void
    {
        var oldValue:String = _internal_elimina;
        if (oldValue !== value)
        {
            _internal_elimina = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "elimina", oldValue, _internal_elimina));
        }
    }

    public function set modulo(value:valueObjects.ModulosPerfil) : void
    {
        var oldValue:valueObjects.ModulosPerfil = _internal_modulo;
        if (oldValue !== value)
        {
            _internal_modulo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "modulo", oldValue, _internal_modulo));
        }
    }

    public function set consulta(value:String) : void
    {
        var oldValue:String = _internal_consulta;
        if (oldValue !== value)
        {
            _internal_consulta = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "consulta", oldValue, _internal_consulta));
        }
    }

    public function set descripcionTransaccion(value:String) : void
    {
        var oldValue:String = _internal_descripcionTransaccion;
        if (oldValue !== value)
        {
            _internal_descripcionTransaccion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descripcionTransaccion", oldValue, _internal_descripcionTransaccion));
        }
    }

    public function set ejecuta(value:String) : void
    {
        var oldValue:String = _internal_ejecuta;
        if (oldValue !== value)
        {
            _internal_ejecuta = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ejecuta", oldValue, _internal_ejecuta));
        }
    }

    public function set ordenTransaccion(value:String) : void
    {
        var oldValue:String = _internal_ordenTransaccion;
        if (oldValue !== value)
        {
            _internal_ordenTransaccion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ordenTransaccion", oldValue, _internal_ordenTransaccion));
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

    model_internal function setterListenerId(value:flash.events.Event):void
    {
        _model.invalidateDependentOnId();
    }

    model_internal function setterListenerAdiciona(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAdiciona();
    }

    model_internal function setterListenerActualiza(value:flash.events.Event):void
    {
        _model.invalidateDependentOnActualiza();
    }

    model_internal function setterListenerIdTareasPerfil(value:flash.events.Event):void
    {
        _model.invalidateDependentOnIdTareasPerfil();
    }

    model_internal function setterListenerImprime(value:flash.events.Event):void
    {
        _model.invalidateDependentOnImprime();
    }

    model_internal function setterListenerNombrePelicula(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNombrePelicula();
    }

    model_internal function setterListenerElimina(value:flash.events.Event):void
    {
        _model.invalidateDependentOnElimina();
    }

    model_internal function setterListenerModulo(value:flash.events.Event):void
    {
        _model.invalidateDependentOnModulo();
    }

    model_internal function setterListenerConsulta(value:flash.events.Event):void
    {
        _model.invalidateDependentOnConsulta();
    }

    model_internal function setterListenerDescripcionTransaccion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDescripcionTransaccion();
    }

    model_internal function setterListenerEjecuta(value:flash.events.Event):void
    {
        _model.invalidateDependentOnEjecuta();
    }

    model_internal function setterListenerOrdenTransaccion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnOrdenTransaccion();
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
        if (!_model.idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_idValidationFailureMessages);
        }
        if (!_model.adicionaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_adicionaValidationFailureMessages);
        }
        if (!_model.actualizaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_actualizaValidationFailureMessages);
        }
        if (!_model.idTareasPerfilIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_idTareasPerfilValidationFailureMessages);
        }
        if (!_model.imprimeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_imprimeValidationFailureMessages);
        }
        if (!_model.nombrePeliculaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nombrePeliculaValidationFailureMessages);
        }
        if (!_model.eliminaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_eliminaValidationFailureMessages);
        }
        if (!_model.moduloIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_moduloValidationFailureMessages);
        }
        if (!_model.consultaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_consultaValidationFailureMessages);
        }
        if (!_model.descripcionTransaccionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_descripcionTransaccionValidationFailureMessages);
        }
        if (!_model.ejecutaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_ejecutaValidationFailureMessages);
        }
        if (!_model.ordenTransaccionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_ordenTransaccionValidationFailureMessages);
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
    public function get _model() : _TareasPerfilEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _TareasPerfilEntityMetadata) : void
    {
        var oldValue : _TareasPerfilEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfId : Array = null;
    model_internal var _doValidationLastValOfId : valueObjects.TareasPerfilPK;

    model_internal function _doValidationForId(valueIn:Object):Array
    {
        var value : valueObjects.TareasPerfilPK = valueIn as valueObjects.TareasPerfilPK;

        if (model_internal::_doValidationCacheOfId != null && model_internal::_doValidationLastValOfId == value)
           return model_internal::_doValidationCacheOfId ;

        _model.model_internal::_idIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIdAvailable && _internal_id == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "id is required"));
        }

        model_internal::_doValidationCacheOfId = validationFailures;
        model_internal::_doValidationLastValOfId = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfAdiciona : Array = null;
    model_internal var _doValidationLastValOfAdiciona : String;

    model_internal function _doValidationForAdiciona(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfAdiciona != null && model_internal::_doValidationLastValOfAdiciona == value)
           return model_internal::_doValidationCacheOfAdiciona ;

        _model.model_internal::_adicionaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAdicionaAvailable && _internal_adiciona == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "adiciona is required"));
        }

        model_internal::_doValidationCacheOfAdiciona = validationFailures;
        model_internal::_doValidationLastValOfAdiciona = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfActualiza : Array = null;
    model_internal var _doValidationLastValOfActualiza : String;

    model_internal function _doValidationForActualiza(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfActualiza != null && model_internal::_doValidationLastValOfActualiza == value)
           return model_internal::_doValidationCacheOfActualiza ;

        _model.model_internal::_actualizaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isActualizaAvailable && _internal_actualiza == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "actualiza is required"));
        }

        model_internal::_doValidationCacheOfActualiza = validationFailures;
        model_internal::_doValidationLastValOfActualiza = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfIdTareasPerfil : Array = null;
    model_internal var _doValidationLastValOfIdTareasPerfil : String;

    model_internal function _doValidationForIdTareasPerfil(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfIdTareasPerfil != null && model_internal::_doValidationLastValOfIdTareasPerfil == value)
           return model_internal::_doValidationCacheOfIdTareasPerfil ;

        _model.model_internal::_idTareasPerfilIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIdTareasPerfilAvailable && _internal_idTareasPerfil == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "idTareasPerfil is required"));
        }

        model_internal::_doValidationCacheOfIdTareasPerfil = validationFailures;
        model_internal::_doValidationLastValOfIdTareasPerfil = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfImprime : Array = null;
    model_internal var _doValidationLastValOfImprime : String;

    model_internal function _doValidationForImprime(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfImprime != null && model_internal::_doValidationLastValOfImprime == value)
           return model_internal::_doValidationCacheOfImprime ;

        _model.model_internal::_imprimeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isImprimeAvailable && _internal_imprime == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "imprime is required"));
        }

        model_internal::_doValidationCacheOfImprime = validationFailures;
        model_internal::_doValidationLastValOfImprime = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfNombrePelicula : Array = null;
    model_internal var _doValidationLastValOfNombrePelicula : String;

    model_internal function _doValidationForNombrePelicula(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNombrePelicula != null && model_internal::_doValidationLastValOfNombrePelicula == value)
           return model_internal::_doValidationCacheOfNombrePelicula ;

        _model.model_internal::_nombrePeliculaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNombrePeliculaAvailable && _internal_nombrePelicula == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "nombrePelicula is required"));
        }

        model_internal::_doValidationCacheOfNombrePelicula = validationFailures;
        model_internal::_doValidationLastValOfNombrePelicula = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfElimina : Array = null;
    model_internal var _doValidationLastValOfElimina : String;

    model_internal function _doValidationForElimina(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfElimina != null && model_internal::_doValidationLastValOfElimina == value)
           return model_internal::_doValidationCacheOfElimina ;

        _model.model_internal::_eliminaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isEliminaAvailable && _internal_elimina == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "elimina is required"));
        }

        model_internal::_doValidationCacheOfElimina = validationFailures;
        model_internal::_doValidationLastValOfElimina = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfModulo : Array = null;
    model_internal var _doValidationLastValOfModulo : valueObjects.ModulosPerfil;

    model_internal function _doValidationForModulo(valueIn:Object):Array
    {
        var value : valueObjects.ModulosPerfil = valueIn as valueObjects.ModulosPerfil;

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
    
    model_internal var _doValidationCacheOfConsulta : Array = null;
    model_internal var _doValidationLastValOfConsulta : String;

    model_internal function _doValidationForConsulta(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfConsulta != null && model_internal::_doValidationLastValOfConsulta == value)
           return model_internal::_doValidationCacheOfConsulta ;

        _model.model_internal::_consultaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isConsultaAvailable && _internal_consulta == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "consulta is required"));
        }

        model_internal::_doValidationCacheOfConsulta = validationFailures;
        model_internal::_doValidationLastValOfConsulta = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDescripcionTransaccion : Array = null;
    model_internal var _doValidationLastValOfDescripcionTransaccion : String;

    model_internal function _doValidationForDescripcionTransaccion(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDescripcionTransaccion != null && model_internal::_doValidationLastValOfDescripcionTransaccion == value)
           return model_internal::_doValidationCacheOfDescripcionTransaccion ;

        _model.model_internal::_descripcionTransaccionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDescripcionTransaccionAvailable && _internal_descripcionTransaccion == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "descripcionTransaccion is required"));
        }

        model_internal::_doValidationCacheOfDescripcionTransaccion = validationFailures;
        model_internal::_doValidationLastValOfDescripcionTransaccion = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfEjecuta : Array = null;
    model_internal var _doValidationLastValOfEjecuta : String;

    model_internal function _doValidationForEjecuta(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfEjecuta != null && model_internal::_doValidationLastValOfEjecuta == value)
           return model_internal::_doValidationCacheOfEjecuta ;

        _model.model_internal::_ejecutaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isEjecutaAvailable && _internal_ejecuta == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "ejecuta is required"));
        }

        model_internal::_doValidationCacheOfEjecuta = validationFailures;
        model_internal::_doValidationLastValOfEjecuta = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfOrdenTransaccion : Array = null;
    model_internal var _doValidationLastValOfOrdenTransaccion : String;

    model_internal function _doValidationForOrdenTransaccion(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfOrdenTransaccion != null && model_internal::_doValidationLastValOfOrdenTransaccion == value)
           return model_internal::_doValidationCacheOfOrdenTransaccion ;

        _model.model_internal::_ordenTransaccionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isOrdenTransaccionAvailable && _internal_ordenTransaccion == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "ordenTransaccion is required"));
        }

        model_internal::_doValidationCacheOfOrdenTransaccion = validationFailures;
        model_internal::_doValidationLastValOfOrdenTransaccion = value;

        return validationFailures;
    }
    

}

}
