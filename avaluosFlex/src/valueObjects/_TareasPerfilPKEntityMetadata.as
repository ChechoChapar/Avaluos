
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
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _TareasPerfilPKEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("codigoTransaccion", "perfil", "modulo");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("codigoTransaccion", "perfil", "modulo");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("codigoTransaccion", "perfil", "modulo");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("codigoTransaccion", "perfil", "modulo");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "TareasPerfilPK";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _codigoTransaccionIsValid:Boolean;
    model_internal var _codigoTransaccionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _codigoTransaccionIsValidCacheInitialized:Boolean = false;
    model_internal var _codigoTransaccionValidationFailureMessages:Array;
    
    model_internal var _perfilIsValid:Boolean;
    model_internal var _perfilValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _perfilIsValidCacheInitialized:Boolean = false;
    model_internal var _perfilValidationFailureMessages:Array;
    
    model_internal var _moduloIsValid:Boolean;
    model_internal var _moduloValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _moduloIsValidCacheInitialized:Boolean = false;
    model_internal var _moduloValidationFailureMessages:Array;

    model_internal var _instance:_Super_TareasPerfilPK;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _TareasPerfilPKEntityMetadata(value : _Super_TareasPerfilPK)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["codigoTransaccion"] = new Array();
            model_internal::dependentsOnMap["perfil"] = new Array();
            model_internal::dependentsOnMap["modulo"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
        }

        model_internal::_instance = value;
        model_internal::_codigoTransaccionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCodigoTransaccion);
        model_internal::_codigoTransaccionValidator.required = true;
        model_internal::_codigoTransaccionValidator.requiredFieldError = "codigoTransaccion is required";
        //model_internal::_codigoTransaccionValidator.source = model_internal::_instance;
        //model_internal::_codigoTransaccionValidator.property = "codigoTransaccion";
        model_internal::_perfilValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPerfil);
        model_internal::_perfilValidator.required = true;
        model_internal::_perfilValidator.requiredFieldError = "perfil is required";
        //model_internal::_perfilValidator.source = model_internal::_instance;
        //model_internal::_perfilValidator.property = "perfil";
        model_internal::_moduloValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForModulo);
        model_internal::_moduloValidator.required = true;
        model_internal::_moduloValidator.requiredFieldError = "modulo is required";
        //model_internal::_moduloValidator.source = model_internal::_instance;
        //model_internal::_moduloValidator.property = "modulo";
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
            throw new Error(propertyName + " is not a data property of entity TareasPerfilPK");  
            
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
            throw new Error(propertyName + " is not a collection property of entity TareasPerfilPK");  

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
            throw new Error(propertyName + " does not exist for entity TareasPerfilPK");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity TareasPerfilPK");
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
            throw new Error(propertyName + " does not exist for entity TareasPerfilPK");
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
    public function get isCodigoTransaccionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPerfilAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isModuloAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnCodigoTransaccion():void
    {
        if (model_internal::_codigoTransaccionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCodigoTransaccion = null;
            model_internal::calculateCodigoTransaccionIsValid();
        }
    }
    public function invalidateDependentOnPerfil():void
    {
        if (model_internal::_perfilIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPerfil = null;
            model_internal::calculatePerfilIsValid();
        }
    }
    public function invalidateDependentOnModulo():void
    {
        if (model_internal::_moduloIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfModulo = null;
            model_internal::calculateModuloIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get codigoTransaccionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get codigoTransaccionValidator() : StyleValidator
    {
        return model_internal::_codigoTransaccionValidator;
    }

    model_internal function set _codigoTransaccionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_codigoTransaccionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_codigoTransaccionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codigoTransaccionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get codigoTransaccionIsValid():Boolean
    {
        if (!model_internal::_codigoTransaccionIsValidCacheInitialized)
        {
            model_internal::calculateCodigoTransaccionIsValid();
        }

        return model_internal::_codigoTransaccionIsValid;
    }

    model_internal function calculateCodigoTransaccionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_codigoTransaccionValidator.validate(model_internal::_instance.codigoTransaccion)
        model_internal::_codigoTransaccionIsValid_der = (valRes.results == null);
        model_internal::_codigoTransaccionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::codigoTransaccionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::codigoTransaccionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get codigoTransaccionValidationFailureMessages():Array
    {
        if (model_internal::_codigoTransaccionValidationFailureMessages == null)
            model_internal::calculateCodigoTransaccionIsValid();

        return _codigoTransaccionValidationFailureMessages;
    }

    model_internal function set codigoTransaccionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_codigoTransaccionValidationFailureMessages;

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
            model_internal::_codigoTransaccionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codigoTransaccionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get perfilStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get perfilValidator() : StyleValidator
    {
        return model_internal::_perfilValidator;
    }

    model_internal function set _perfilIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_perfilIsValid;         
        if (oldValue !== value)
        {
            model_internal::_perfilIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "perfilIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get perfilIsValid():Boolean
    {
        if (!model_internal::_perfilIsValidCacheInitialized)
        {
            model_internal::calculatePerfilIsValid();
        }

        return model_internal::_perfilIsValid;
    }

    model_internal function calculatePerfilIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_perfilValidator.validate(model_internal::_instance.perfil)
        model_internal::_perfilIsValid_der = (valRes.results == null);
        model_internal::_perfilIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::perfilValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::perfilValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get perfilValidationFailureMessages():Array
    {
        if (model_internal::_perfilValidationFailureMessages == null)
            model_internal::calculatePerfilIsValid();

        return _perfilValidationFailureMessages;
    }

    model_internal function set perfilValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_perfilValidationFailureMessages;

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
            model_internal::_perfilValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "perfilValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get moduloStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get moduloValidator() : StyleValidator
    {
        return model_internal::_moduloValidator;
    }

    model_internal function set _moduloIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_moduloIsValid;         
        if (oldValue !== value)
        {
            model_internal::_moduloIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "moduloIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get moduloIsValid():Boolean
    {
        if (!model_internal::_moduloIsValidCacheInitialized)
        {
            model_internal::calculateModuloIsValid();
        }

        return model_internal::_moduloIsValid;
    }

    model_internal function calculateModuloIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_moduloValidator.validate(model_internal::_instance.modulo)
        model_internal::_moduloIsValid_der = (valRes.results == null);
        model_internal::_moduloIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::moduloValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::moduloValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get moduloValidationFailureMessages():Array
    {
        if (model_internal::_moduloValidationFailureMessages == null)
            model_internal::calculateModuloIsValid();

        return _moduloValidationFailureMessages;
    }

    model_internal function set moduloValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_moduloValidationFailureMessages;

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
            model_internal::_moduloValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "moduloValidationFailureMessages", oldValue, value));
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
            case("codigoTransaccion"):
            {
                return codigoTransaccionValidationFailureMessages;
            }
            case("perfil"):
            {
                return perfilValidationFailureMessages;
            }
            case("modulo"):
            {
                return moduloValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
