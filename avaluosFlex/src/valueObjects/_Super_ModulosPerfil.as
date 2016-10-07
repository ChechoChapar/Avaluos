/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - ModulosPerfil.as.
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
import valueObjects.ModulosPerfil;
import valueObjects.ModulosPerfilPK;
import valueObjects.TareasPerfil;
import valueObjects.Usuario;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_ModulosPerfil extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.plantillaSeguridad.entities.ModulosPerfil") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.plantillaSeguridad.entities.ModulosPerfil", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.segurosbolivar.plantillaSeguridad.entities.ModulosPerfil", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.ModulosPerfilPK.initRemoteClassAliasSingleChild();
        valueObjects.ModulosPerfil.initRemoteClassAliasSingleChild();
        valueObjects.Usuario.initRemoteClassAliasSingleChild();
        valueObjects.TareasPerfil.initRemoteClassAliasSingleChild();
        valueObjects.TareasPerfilPK.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _ModulosPerfilEntityMetadata;

    /**
     * properties
     */
    private var _internal_id : valueObjects.ModulosPerfilPK;
    private var _internal_moduloPadre : valueObjects.ModulosPerfil;
    private var _internal_ordenModulo : String;
    private var _internal_esSubmodulo : String;
    private var _internal_usuario : valueObjects.Usuario;
    private var _internal_tareas : ArrayCollection;
    model_internal var _internal_tareas_leaf:valueObjects.TareasPerfil;
    private var _internal_descripcionModulo : String;
    private var _internal_subModulos : ArrayCollection;
    model_internal var _internal_subModulos_leaf:valueObjects.ModulosPerfil;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_ModulosPerfil()
    {
        _model = new _ModulosPerfilEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "id", model_internal::setterListenerId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "moduloPadre", model_internal::setterListenerModuloPadre));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "ordenModulo", model_internal::setterListenerOrdenModulo));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "esSubmodulo", model_internal::setterListenerEsSubmodulo));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "usuario", model_internal::setterListenerUsuario));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "tareas", model_internal::setterListenerTareas));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "descripcionModulo", model_internal::setterListenerDescripcionModulo));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "subModulos", model_internal::setterListenerSubModulos));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get id() : valueObjects.ModulosPerfilPK
    {
        return _internal_id;
    }

    [Bindable(event="propertyChange")]
    public function get moduloPadre() : valueObjects.ModulosPerfil
    {
        return _internal_moduloPadre;
    }

    [Bindable(event="propertyChange")]
    public function get ordenModulo() : String
    {
        return _internal_ordenModulo;
    }

    [Bindable(event="propertyChange")]
    public function get esSubmodulo() : String
    {
        return _internal_esSubmodulo;
    }

    [Bindable(event="propertyChange")]
    public function get usuario() : valueObjects.Usuario
    {
        return _internal_usuario;
    }

    [Bindable(event="propertyChange")]
    public function get tareas() : ArrayCollection
    {
        return _internal_tareas;
    }

    [Bindable(event="propertyChange")]
    public function get descripcionModulo() : String
    {
        return _internal_descripcionModulo;
    }

    [Bindable(event="propertyChange")]
    public function get subModulos() : ArrayCollection
    {
        return _internal_subModulos;
    }

    /**
     * data property setters
     */

    public function set id(value:valueObjects.ModulosPerfilPK) : void
    {
        var oldValue:valueObjects.ModulosPerfilPK = _internal_id;
        if (oldValue !== value)
        {
            _internal_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id", oldValue, _internal_id));
        }
    }

    public function set moduloPadre(value:valueObjects.ModulosPerfil) : void
    {
        var oldValue:valueObjects.ModulosPerfil = _internal_moduloPadre;
        if (oldValue !== value)
        {
            _internal_moduloPadre = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "moduloPadre", oldValue, _internal_moduloPadre));
        }
    }

    public function set ordenModulo(value:String) : void
    {
        var oldValue:String = _internal_ordenModulo;
        if (oldValue !== value)
        {
            _internal_ordenModulo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ordenModulo", oldValue, _internal_ordenModulo));
        }
    }

    public function set esSubmodulo(value:String) : void
    {
        var oldValue:String = _internal_esSubmodulo;
        if (oldValue !== value)
        {
            _internal_esSubmodulo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "esSubmodulo", oldValue, _internal_esSubmodulo));
        }
    }

    public function set usuario(value:valueObjects.Usuario) : void
    {
        var oldValue:valueObjects.Usuario = _internal_usuario;
        if (oldValue !== value)
        {
            _internal_usuario = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usuario", oldValue, _internal_usuario));
        }
    }

    public function set tareas(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_tareas;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_tareas = value;
            }
            else if (value is Array)
            {
                _internal_tareas = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of tareas must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tareas", oldValue, _internal_tareas));
        }
    }

    public function set descripcionModulo(value:String) : void
    {
        var oldValue:String = _internal_descripcionModulo;
        if (oldValue !== value)
        {
            _internal_descripcionModulo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descripcionModulo", oldValue, _internal_descripcionModulo));
        }
    }

    public function set subModulos(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_subModulos;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_subModulos = value;
            }
            else if (value is Array)
            {
                _internal_subModulos = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of subModulos must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "subModulos", oldValue, _internal_subModulos));
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

    model_internal function setterListenerModuloPadre(value:flash.events.Event):void
    {
        _model.invalidateDependentOnModuloPadre();
    }

    model_internal function setterListenerOrdenModulo(value:flash.events.Event):void
    {
        _model.invalidateDependentOnOrdenModulo();
    }

    model_internal function setterListenerEsSubmodulo(value:flash.events.Event):void
    {
        _model.invalidateDependentOnEsSubmodulo();
    }

    model_internal function setterListenerUsuario(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUsuario();
    }

    model_internal function setterListenerTareas(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerTareas);
            }
        }
        _model.invalidateDependentOnTareas();
    }

    model_internal function setterListenerDescripcionModulo(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDescripcionModulo();
    }

    model_internal function setterListenerSubModulos(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerSubModulos);
            }
        }
        _model.invalidateDependentOnSubModulos();
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
        if (!_model.moduloPadreIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_moduloPadreValidationFailureMessages);
        }
        if (!_model.ordenModuloIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_ordenModuloValidationFailureMessages);
        }
        if (!_model.esSubmoduloIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_esSubmoduloValidationFailureMessages);
        }
        if (!_model.usuarioIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_usuarioValidationFailureMessages);
        }
        if (!_model.tareasIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_tareasValidationFailureMessages);
        }
        if (!_model.descripcionModuloIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_descripcionModuloValidationFailureMessages);
        }
        if (!_model.subModulosIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_subModulosValidationFailureMessages);
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
    public function get _model() : _ModulosPerfilEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _ModulosPerfilEntityMetadata) : void
    {
        var oldValue : _ModulosPerfilEntityMetadata = model_internal::_dminternal_model;
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
    model_internal var _doValidationLastValOfId : valueObjects.ModulosPerfilPK;

    model_internal function _doValidationForId(valueIn:Object):Array
    {
        var value : valueObjects.ModulosPerfilPK = valueIn as valueObjects.ModulosPerfilPK;

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
    
    model_internal var _doValidationCacheOfModuloPadre : Array = null;
    model_internal var _doValidationLastValOfModuloPadre : valueObjects.ModulosPerfil;

    model_internal function _doValidationForModuloPadre(valueIn:Object):Array
    {
        var value : valueObjects.ModulosPerfil = valueIn as valueObjects.ModulosPerfil;

        if (model_internal::_doValidationCacheOfModuloPadre != null && model_internal::_doValidationLastValOfModuloPadre == value)
           return model_internal::_doValidationCacheOfModuloPadre ;

        _model.model_internal::_moduloPadreIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isModuloPadreAvailable && _internal_moduloPadre == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "moduloPadre is required"));
        }

        model_internal::_doValidationCacheOfModuloPadre = validationFailures;
        model_internal::_doValidationLastValOfModuloPadre = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfOrdenModulo : Array = null;
    model_internal var _doValidationLastValOfOrdenModulo : String;

    model_internal function _doValidationForOrdenModulo(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfOrdenModulo != null && model_internal::_doValidationLastValOfOrdenModulo == value)
           return model_internal::_doValidationCacheOfOrdenModulo ;

        _model.model_internal::_ordenModuloIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isOrdenModuloAvailable && _internal_ordenModulo == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "ordenModulo is required"));
        }

        model_internal::_doValidationCacheOfOrdenModulo = validationFailures;
        model_internal::_doValidationLastValOfOrdenModulo = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfEsSubmodulo : Array = null;
    model_internal var _doValidationLastValOfEsSubmodulo : String;

    model_internal function _doValidationForEsSubmodulo(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfEsSubmodulo != null && model_internal::_doValidationLastValOfEsSubmodulo == value)
           return model_internal::_doValidationCacheOfEsSubmodulo ;

        _model.model_internal::_esSubmoduloIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isEsSubmoduloAvailable && _internal_esSubmodulo == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "esSubmodulo is required"));
        }

        model_internal::_doValidationCacheOfEsSubmodulo = validationFailures;
        model_internal::_doValidationLastValOfEsSubmodulo = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfUsuario : Array = null;
    model_internal var _doValidationLastValOfUsuario : valueObjects.Usuario;

    model_internal function _doValidationForUsuario(valueIn:Object):Array
    {
        var value : valueObjects.Usuario = valueIn as valueObjects.Usuario;

        if (model_internal::_doValidationCacheOfUsuario != null && model_internal::_doValidationLastValOfUsuario == value)
           return model_internal::_doValidationCacheOfUsuario ;

        _model.model_internal::_usuarioIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUsuarioAvailable && _internal_usuario == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "usuario is required"));
        }

        model_internal::_doValidationCacheOfUsuario = validationFailures;
        model_internal::_doValidationLastValOfUsuario = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTareas : Array = null;
    model_internal var _doValidationLastValOfTareas : ArrayCollection;

    model_internal function _doValidationForTareas(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfTareas != null && model_internal::_doValidationLastValOfTareas == value)
           return model_internal::_doValidationCacheOfTareas ;

        _model.model_internal::_tareasIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTareasAvailable && _internal_tareas == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "tareas is required"));
        }

        model_internal::_doValidationCacheOfTareas = validationFailures;
        model_internal::_doValidationLastValOfTareas = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDescripcionModulo : Array = null;
    model_internal var _doValidationLastValOfDescripcionModulo : String;

    model_internal function _doValidationForDescripcionModulo(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDescripcionModulo != null && model_internal::_doValidationLastValOfDescripcionModulo == value)
           return model_internal::_doValidationCacheOfDescripcionModulo ;

        _model.model_internal::_descripcionModuloIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDescripcionModuloAvailable && _internal_descripcionModulo == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "descripcionModulo is required"));
        }

        model_internal::_doValidationCacheOfDescripcionModulo = validationFailures;
        model_internal::_doValidationLastValOfDescripcionModulo = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfSubModulos : Array = null;
    model_internal var _doValidationLastValOfSubModulos : ArrayCollection;

    model_internal function _doValidationForSubModulos(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfSubModulos != null && model_internal::_doValidationLastValOfSubModulos == value)
           return model_internal::_doValidationCacheOfSubModulos ;

        _model.model_internal::_subModulosIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSubModulosAvailable && _internal_subModulos == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "subModulos is required"));
        }

        model_internal::_doValidationCacheOfSubModulos = validationFailures;
        model_internal::_doValidationLastValOfSubModulos = value;

        return validationFailures;
    }
    

}

}
