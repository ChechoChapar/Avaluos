
/**
 * This is a generated class and is not intended for modification.  
 */
package valueObjects
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.styles.StyleValidator;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import mx.events.ValidationResultEvent;
import valueObjects.ModulosPerfil;
import valueObjects.TareasPerfil;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _ModulosPerfilEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("id", "moduloPadre", "ordenModulo", "esSubmodulo", "usuario", "tareas", "descripcionModulo", "subModulos");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("id", "moduloPadre", "ordenModulo", "esSubmodulo", "usuario", "tareas", "descripcionModulo", "subModulos");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("id", "moduloPadre", "ordenModulo", "esSubmodulo", "usuario", "tareas", "descripcionModulo", "subModulos");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("id", "moduloPadre", "ordenModulo", "esSubmodulo", "usuario", "tareas", "descripcionModulo", "subModulos");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("tareas", "subModulos");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "ModulosPerfil";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _idIsValid:Boolean;
    model_internal var _idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _idIsValidCacheInitialized:Boolean = false;
    model_internal var _idValidationFailureMessages:Array;
    
    model_internal var _moduloPadreIsValid:Boolean;
    model_internal var _moduloPadreValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _moduloPadreIsValidCacheInitialized:Boolean = false;
    model_internal var _moduloPadreValidationFailureMessages:Array;
    
    model_internal var _ordenModuloIsValid:Boolean;
    model_internal var _ordenModuloValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _ordenModuloIsValidCacheInitialized:Boolean = false;
    model_internal var _ordenModuloValidationFailureMessages:Array;
    
    model_internal var _esSubmoduloIsValid:Boolean;
    model_internal var _esSubmoduloValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _esSubmoduloIsValidCacheInitialized:Boolean = false;
    model_internal var _esSubmoduloValidationFailureMessages:Array;
    
    model_internal var _usuarioIsValid:Boolean;
    model_internal var _usuarioValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _usuarioIsValidCacheInitialized:Boolean = false;
    model_internal var _usuarioValidationFailureMessages:Array;
    
    model_internal var _tareasIsValid:Boolean;
    model_internal var _tareasValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _tareasIsValidCacheInitialized:Boolean = false;
    model_internal var _tareasValidationFailureMessages:Array;
    
    model_internal var _descripcionModuloIsValid:Boolean;
    model_internal var _descripcionModuloValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _descripcionModuloIsValidCacheInitialized:Boolean = false;
    model_internal var _descripcionModuloValidationFailureMessages:Array;
    
    model_internal var _subModulosIsValid:Boolean;
    model_internal var _subModulosValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _subModulosIsValidCacheInitialized:Boolean = false;
    model_internal var _subModulosValidationFailureMessages:Array;

    model_internal var _instance:_Super_ModulosPerfil;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _ModulosPerfilEntityMetadata(value : _Super_ModulosPerfil)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["id"] = new Array();
            model_internal::dependentsOnMap["moduloPadre"] = new Array();
            model_internal::dependentsOnMap["ordenModulo"] = new Array();
            model_internal::dependentsOnMap["esSubmodulo"] = new Array();
            model_internal::dependentsOnMap["usuario"] = new Array();
            model_internal::dependentsOnMap["tareas"] = new Array();
            model_internal::dependentsOnMap["descripcionModulo"] = new Array();
            model_internal::dependentsOnMap["subModulos"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
            model_internal::collectionBaseMap["tareas"] = "valueObjects.TareasPerfil";
            model_internal::collectionBaseMap["subModulos"] = "valueObjects.ModulosPerfil";
        }

        model_internal::_instance = value;
        model_internal::_idValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForId);
        model_internal::_idValidator.required = true;
        model_internal::_idValidator.requiredFieldError = "id is required";
        //model_internal::_idValidator.source = model_internal::_instance;
        //model_internal::_idValidator.property = "id";
        model_internal::_moduloPadreValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForModuloPadre);
        model_internal::_moduloPadreValidator.required = true;
        model_internal::_moduloPadreValidator.requiredFieldError = "moduloPadre is required";
        //model_internal::_moduloPadreValidator.source = model_internal::_instance;
        //model_internal::_moduloPadreValidator.property = "moduloPadre";
        model_internal::_ordenModuloValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForOrdenModulo);
        model_internal::_ordenModuloValidator.required = true;
        model_internal::_ordenModuloValidator.requiredFieldError = "ordenModulo is required";
        //model_internal::_ordenModuloValidator.source = model_internal::_instance;
        //model_internal::_ordenModuloValidator.property = "ordenModulo";
        model_internal::_esSubmoduloValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForEsSubmodulo);
        model_internal::_esSubmoduloValidator.required = true;
        model_internal::_esSubmoduloValidator.requiredFieldError = "esSubmodulo is required";
        //model_internal::_esSubmoduloValidator.source = model_internal::_instance;
        //model_internal::_esSubmoduloValidator.property = "esSubmodulo";
        model_internal::_usuarioValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUsuario);
        model_internal::_usuarioValidator.required = true;
        model_internal::_usuarioValidator.requiredFieldError = "usuario is required";
        //model_internal::_usuarioValidator.source = model_internal::_instance;
        //model_internal::_usuarioValidator.property = "usuario";
        model_internal::_tareasValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTareas);
        model_internal::_tareasValidator.required = true;
        model_internal::_tareasValidator.requiredFieldError = "tareas is required";
        //model_internal::_tareasValidator.source = model_internal::_instance;
        //model_internal::_tareasValidator.property = "tareas";
        model_internal::_descripcionModuloValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDescripcionModulo);
        model_internal::_descripcionModuloValidator.required = true;
        model_internal::_descripcionModuloValidator.requiredFieldError = "descripcionModulo is required";
        //model_internal::_descripcionModuloValidator.source = model_internal::_instance;
        //model_internal::_descripcionModuloValidator.property = "descripcionModulo";
        model_internal::_subModulosValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSubModulos);
        model_internal::_subModulosValidator.required = true;
        model_internal::_subModulosValidator.requiredFieldError = "subModulos is required";
        //model_internal::_subModulosValidator.source = model_internal::_instance;
        //model_internal::_subModulosValidator.property = "subModulos";
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::dataProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity ModulosPerfil");  
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity ModulosPerfil");  

        return model_internal::collectionBaseMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity ModulosPerfil");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity ModulosPerfil");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity ModulosPerfil");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isModuloPadreAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isOrdenModuloAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEsSubmoduloAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUsuarioAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTareasAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDescripcionModuloAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSubModulosAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnId():void
    {
        if (model_internal::_idIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfId = null;
            model_internal::calculateIdIsValid();
        }
    }
    public function invalidateDependentOnModuloPadre():void
    {
        if (model_internal::_moduloPadreIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfModuloPadre = null;
            model_internal::calculateModuloPadreIsValid();
        }
    }
    public function invalidateDependentOnOrdenModulo():void
    {
        if (model_internal::_ordenModuloIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfOrdenModulo = null;
            model_internal::calculateOrdenModuloIsValid();
        }
    }
    public function invalidateDependentOnEsSubmodulo():void
    {
        if (model_internal::_esSubmoduloIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfEsSubmodulo = null;
            model_internal::calculateEsSubmoduloIsValid();
        }
    }
    public function invalidateDependentOnUsuario():void
    {
        if (model_internal::_usuarioIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUsuario = null;
            model_internal::calculateUsuarioIsValid();
        }
    }
    public function invalidateDependentOnTareas():void
    {
        if (model_internal::_tareasIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTareas = null;
            model_internal::calculateTareasIsValid();
        }
    }
    public function invalidateDependentOnDescripcionModulo():void
    {
        if (model_internal::_descripcionModuloIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDescripcionModulo = null;
            model_internal::calculateDescripcionModuloIsValid();
        }
    }
    public function invalidateDependentOnSubModulos():void
    {
        if (model_internal::_subModulosIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSubModulos = null;
            model_internal::calculateSubModulosIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get idStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get idValidator() : StyleValidator
    {
        return model_internal::_idValidator;
    }

    model_internal function set _idIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_idIsValid;         
        if (oldValue !== value)
        {
            model_internal::_idIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get idIsValid():Boolean
    {
        if (!model_internal::_idIsValidCacheInitialized)
        {
            model_internal::calculateIdIsValid();
        }

        return model_internal::_idIsValid;
    }

    model_internal function calculateIdIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_idValidator.validate(model_internal::_instance.id)
        model_internal::_idIsValid_der = (valRes.results == null);
        model_internal::_idIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::idValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::idValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get idValidationFailureMessages():Array
    {
        if (model_internal::_idValidationFailureMessages == null)
            model_internal::calculateIdIsValid();

        return _idValidationFailureMessages;
    }

    model_internal function set idValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_idValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_idValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get moduloPadreStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get moduloPadreValidator() : StyleValidator
    {
        return model_internal::_moduloPadreValidator;
    }

    model_internal function set _moduloPadreIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_moduloPadreIsValid;         
        if (oldValue !== value)
        {
            model_internal::_moduloPadreIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "moduloPadreIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get moduloPadreIsValid():Boolean
    {
        if (!model_internal::_moduloPadreIsValidCacheInitialized)
        {
            model_internal::calculateModuloPadreIsValid();
        }

        return model_internal::_moduloPadreIsValid;
    }

    model_internal function calculateModuloPadreIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_moduloPadreValidator.validate(model_internal::_instance.moduloPadre)
        model_internal::_moduloPadreIsValid_der = (valRes.results == null);
        model_internal::_moduloPadreIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::moduloPadreValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::moduloPadreValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get moduloPadreValidationFailureMessages():Array
    {
        if (model_internal::_moduloPadreValidationFailureMessages == null)
            model_internal::calculateModuloPadreIsValid();

        return _moduloPadreValidationFailureMessages;
    }

    model_internal function set moduloPadreValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_moduloPadreValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_moduloPadreValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "moduloPadreValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get ordenModuloStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get ordenModuloValidator() : StyleValidator
    {
        return model_internal::_ordenModuloValidator;
    }

    model_internal function set _ordenModuloIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_ordenModuloIsValid;         
        if (oldValue !== value)
        {
            model_internal::_ordenModuloIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ordenModuloIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get ordenModuloIsValid():Boolean
    {
        if (!model_internal::_ordenModuloIsValidCacheInitialized)
        {
            model_internal::calculateOrdenModuloIsValid();
        }

        return model_internal::_ordenModuloIsValid;
    }

    model_internal function calculateOrdenModuloIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_ordenModuloValidator.validate(model_internal::_instance.ordenModulo)
        model_internal::_ordenModuloIsValid_der = (valRes.results == null);
        model_internal::_ordenModuloIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::ordenModuloValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::ordenModuloValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get ordenModuloValidationFailureMessages():Array
    {
        if (model_internal::_ordenModuloValidationFailureMessages == null)
            model_internal::calculateOrdenModuloIsValid();

        return _ordenModuloValidationFailureMessages;
    }

    model_internal function set ordenModuloValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_ordenModuloValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_ordenModuloValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ordenModuloValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get esSubmoduloStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get esSubmoduloValidator() : StyleValidator
    {
        return model_internal::_esSubmoduloValidator;
    }

    model_internal function set _esSubmoduloIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_esSubmoduloIsValid;         
        if (oldValue !== value)
        {
            model_internal::_esSubmoduloIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "esSubmoduloIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get esSubmoduloIsValid():Boolean
    {
        if (!model_internal::_esSubmoduloIsValidCacheInitialized)
        {
            model_internal::calculateEsSubmoduloIsValid();
        }

        return model_internal::_esSubmoduloIsValid;
    }

    model_internal function calculateEsSubmoduloIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_esSubmoduloValidator.validate(model_internal::_instance.esSubmodulo)
        model_internal::_esSubmoduloIsValid_der = (valRes.results == null);
        model_internal::_esSubmoduloIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::esSubmoduloValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::esSubmoduloValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get esSubmoduloValidationFailureMessages():Array
    {
        if (model_internal::_esSubmoduloValidationFailureMessages == null)
            model_internal::calculateEsSubmoduloIsValid();

        return _esSubmoduloValidationFailureMessages;
    }

    model_internal function set esSubmoduloValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_esSubmoduloValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_esSubmoduloValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "esSubmoduloValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get usuarioStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get usuarioValidator() : StyleValidator
    {
        return model_internal::_usuarioValidator;
    }

    model_internal function set _usuarioIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_usuarioIsValid;         
        if (oldValue !== value)
        {
            model_internal::_usuarioIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usuarioIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get usuarioIsValid():Boolean
    {
        if (!model_internal::_usuarioIsValidCacheInitialized)
        {
            model_internal::calculateUsuarioIsValid();
        }

        return model_internal::_usuarioIsValid;
    }

    model_internal function calculateUsuarioIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_usuarioValidator.validate(model_internal::_instance.usuario)
        model_internal::_usuarioIsValid_der = (valRes.results == null);
        model_internal::_usuarioIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::usuarioValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::usuarioValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get usuarioValidationFailureMessages():Array
    {
        if (model_internal::_usuarioValidationFailureMessages == null)
            model_internal::calculateUsuarioIsValid();

        return _usuarioValidationFailureMessages;
    }

    model_internal function set usuarioValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_usuarioValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_usuarioValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usuarioValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get tareasStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get tareasValidator() : StyleValidator
    {
        return model_internal::_tareasValidator;
    }

    model_internal function set _tareasIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_tareasIsValid;         
        if (oldValue !== value)
        {
            model_internal::_tareasIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tareasIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get tareasIsValid():Boolean
    {
        if (!model_internal::_tareasIsValidCacheInitialized)
        {
            model_internal::calculateTareasIsValid();
        }

        return model_internal::_tareasIsValid;
    }

    model_internal function calculateTareasIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_tareasValidator.validate(model_internal::_instance.tareas)
        model_internal::_tareasIsValid_der = (valRes.results == null);
        model_internal::_tareasIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::tareasValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::tareasValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get tareasValidationFailureMessages():Array
    {
        if (model_internal::_tareasValidationFailureMessages == null)
            model_internal::calculateTareasIsValid();

        return _tareasValidationFailureMessages;
    }

    model_internal function set tareasValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_tareasValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_tareasValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tareasValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get descripcionModuloStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get descripcionModuloValidator() : StyleValidator
    {
        return model_internal::_descripcionModuloValidator;
    }

    model_internal function set _descripcionModuloIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_descripcionModuloIsValid;         
        if (oldValue !== value)
        {
            model_internal::_descripcionModuloIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descripcionModuloIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get descripcionModuloIsValid():Boolean
    {
        if (!model_internal::_descripcionModuloIsValidCacheInitialized)
        {
            model_internal::calculateDescripcionModuloIsValid();
        }

        return model_internal::_descripcionModuloIsValid;
    }

    model_internal function calculateDescripcionModuloIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_descripcionModuloValidator.validate(model_internal::_instance.descripcionModulo)
        model_internal::_descripcionModuloIsValid_der = (valRes.results == null);
        model_internal::_descripcionModuloIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::descripcionModuloValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::descripcionModuloValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get descripcionModuloValidationFailureMessages():Array
    {
        if (model_internal::_descripcionModuloValidationFailureMessages == null)
            model_internal::calculateDescripcionModuloIsValid();

        return _descripcionModuloValidationFailureMessages;
    }

    model_internal function set descripcionModuloValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_descripcionModuloValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_descripcionModuloValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descripcionModuloValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get subModulosStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get subModulosValidator() : StyleValidator
    {
        return model_internal::_subModulosValidator;
    }

    model_internal function set _subModulosIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_subModulosIsValid;         
        if (oldValue !== value)
        {
            model_internal::_subModulosIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "subModulosIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get subModulosIsValid():Boolean
    {
        if (!model_internal::_subModulosIsValidCacheInitialized)
        {
            model_internal::calculateSubModulosIsValid();
        }

        return model_internal::_subModulosIsValid;
    }

    model_internal function calculateSubModulosIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_subModulosValidator.validate(model_internal::_instance.subModulos)
        model_internal::_subModulosIsValid_der = (valRes.results == null);
        model_internal::_subModulosIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::subModulosValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::subModulosValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get subModulosValidationFailureMessages():Array
    {
        if (model_internal::_subModulosValidationFailureMessages == null)
            model_internal::calculateSubModulosIsValid();

        return _subModulosValidationFailureMessages;
    }

    model_internal function set subModulosValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_subModulosValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_subModulosValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "subModulosValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            case("id"):
            {
                return idValidationFailureMessages;
            }
            case("moduloPadre"):
            {
                return moduloPadreValidationFailureMessages;
            }
            case("ordenModulo"):
            {
                return ordenModuloValidationFailureMessages;
            }
            case("esSubmodulo"):
            {
                return esSubmoduloValidationFailureMessages;
            }
            case("usuario"):
            {
                return usuarioValidationFailureMessages;
            }
            case("tareas"):
            {
                return tareasValidationFailureMessages;
            }
            case("descripcionModulo"):
            {
                return descripcionModuloValidationFailureMessages;
            }
            case("subModulos"):
            {
                return subModulosValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
