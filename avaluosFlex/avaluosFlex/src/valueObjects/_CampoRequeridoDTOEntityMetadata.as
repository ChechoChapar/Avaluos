
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
internal class _CampoRequeridoDTOEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("nombreComponente", "categoriaInmueble", "nombretablaBD", "requerido", "nombrecampoBD");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("nombreComponente", "categoriaInmueble", "nombretablaBD", "requerido", "nombrecampoBD");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("nombreComponente", "categoriaInmueble", "nombretablaBD", "requerido", "nombrecampoBD");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("nombreComponente", "categoriaInmueble", "nombretablaBD", "requerido", "nombrecampoBD");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "CampoRequeridoDTO";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _nombreComponenteIsValid:Boolean;
    model_internal var _nombreComponenteValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nombreComponenteIsValidCacheInitialized:Boolean = false;
    model_internal var _nombreComponenteValidationFailureMessages:Array;
    
    model_internal var _categoriaInmuebleIsValid:Boolean;
    model_internal var _categoriaInmuebleValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _categoriaInmuebleIsValidCacheInitialized:Boolean = false;
    model_internal var _categoriaInmuebleValidationFailureMessages:Array;
    
    model_internal var _nombretablaBDIsValid:Boolean;
    model_internal var _nombretablaBDValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nombretablaBDIsValidCacheInitialized:Boolean = false;
    model_internal var _nombretablaBDValidationFailureMessages:Array;
    
    model_internal var _nombrecampoBDIsValid:Boolean;
    model_internal var _nombrecampoBDValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nombrecampoBDIsValidCacheInitialized:Boolean = false;
    model_internal var _nombrecampoBDValidationFailureMessages:Array;

    model_internal var _instance:_Super_CampoRequeridoDTO;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _CampoRequeridoDTOEntityMetadata(value : _Super_CampoRequeridoDTO)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["nombreComponente"] = new Array();
            model_internal::dependentsOnMap["categoriaInmueble"] = new Array();
            model_internal::dependentsOnMap["nombretablaBD"] = new Array();
            model_internal::dependentsOnMap["requerido"] = new Array();
            model_internal::dependentsOnMap["nombrecampoBD"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
        }

        model_internal::_instance = value;
        model_internal::_nombreComponenteValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNombreComponente);
        model_internal::_nombreComponenteValidator.required = true;
        model_internal::_nombreComponenteValidator.requiredFieldError = "nombreComponente is required";
        //model_internal::_nombreComponenteValidator.source = model_internal::_instance;
        //model_internal::_nombreComponenteValidator.property = "nombreComponente";
        model_internal::_categoriaInmuebleValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCategoriaInmueble);
        model_internal::_categoriaInmuebleValidator.required = true;
        model_internal::_categoriaInmuebleValidator.requiredFieldError = "categoriaInmueble is required";
        //model_internal::_categoriaInmuebleValidator.source = model_internal::_instance;
        //model_internal::_categoriaInmuebleValidator.property = "categoriaInmueble";
        model_internal::_nombretablaBDValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNombretablaBD);
        model_internal::_nombretablaBDValidator.required = true;
        model_internal::_nombretablaBDValidator.requiredFieldError = "nombretablaBD is required";
        //model_internal::_nombretablaBDValidator.source = model_internal::_instance;
        //model_internal::_nombretablaBDValidator.property = "nombretablaBD";
        model_internal::_nombrecampoBDValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNombrecampoBD);
        model_internal::_nombrecampoBDValidator.required = true;
        model_internal::_nombrecampoBDValidator.requiredFieldError = "nombrecampoBD is required";
        //model_internal::_nombrecampoBDValidator.source = model_internal::_instance;
        //model_internal::_nombrecampoBDValidator.property = "nombrecampoBD";
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
            throw new Error(propertyName + " is not a data property of entity CampoRequeridoDTO");  
            
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
            throw new Error(propertyName + " is not a collection property of entity CampoRequeridoDTO");  

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
            throw new Error(propertyName + " does not exist for entity CampoRequeridoDTO");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity CampoRequeridoDTO");
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
            throw new Error(propertyName + " does not exist for entity CampoRequeridoDTO");
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
    public function get isNombreComponenteAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCategoriaInmuebleAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNombretablaBDAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRequeridoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNombrecampoBDAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnNombreComponente():void
    {
        if (model_internal::_nombreComponenteIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNombreComponente = null;
            model_internal::calculateNombreComponenteIsValid();
        }
    }
    public function invalidateDependentOnCategoriaInmueble():void
    {
        if (model_internal::_categoriaInmuebleIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCategoriaInmueble = null;
            model_internal::calculateCategoriaInmuebleIsValid();
        }
    }
    public function invalidateDependentOnNombretablaBD():void
    {
        if (model_internal::_nombretablaBDIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNombretablaBD = null;
            model_internal::calculateNombretablaBDIsValid();
        }
    }
    public function invalidateDependentOnNombrecampoBD():void
    {
        if (model_internal::_nombrecampoBDIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNombrecampoBD = null;
            model_internal::calculateNombrecampoBDIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get nombreComponenteStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get nombreComponenteValidator() : StyleValidator
    {
        return model_internal::_nombreComponenteValidator;
    }

    model_internal function set _nombreComponenteIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_nombreComponenteIsValid;         
        if (oldValue !== value)
        {
            model_internal::_nombreComponenteIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreComponenteIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get nombreComponenteIsValid():Boolean
    {
        if (!model_internal::_nombreComponenteIsValidCacheInitialized)
        {
            model_internal::calculateNombreComponenteIsValid();
        }

        return model_internal::_nombreComponenteIsValid;
    }

    model_internal function calculateNombreComponenteIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_nombreComponenteValidator.validate(model_internal::_instance.nombreComponente)
        model_internal::_nombreComponenteIsValid_der = (valRes.results == null);
        model_internal::_nombreComponenteIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::nombreComponenteValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::nombreComponenteValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get nombreComponenteValidationFailureMessages():Array
    {
        if (model_internal::_nombreComponenteValidationFailureMessages == null)
            model_internal::calculateNombreComponenteIsValid();

        return _nombreComponenteValidationFailureMessages;
    }

    model_internal function set nombreComponenteValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_nombreComponenteValidationFailureMessages;

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
            model_internal::_nombreComponenteValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreComponenteValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get categoriaInmuebleStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get categoriaInmuebleValidator() : StyleValidator
    {
        return model_internal::_categoriaInmuebleValidator;
    }

    model_internal function set _categoriaInmuebleIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_categoriaInmuebleIsValid;         
        if (oldValue !== value)
        {
            model_internal::_categoriaInmuebleIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "categoriaInmuebleIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get categoriaInmuebleIsValid():Boolean
    {
        if (!model_internal::_categoriaInmuebleIsValidCacheInitialized)
        {
            model_internal::calculateCategoriaInmuebleIsValid();
        }

        return model_internal::_categoriaInmuebleIsValid;
    }

    model_internal function calculateCategoriaInmuebleIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_categoriaInmuebleValidator.validate(model_internal::_instance.categoriaInmueble)
        model_internal::_categoriaInmuebleIsValid_der = (valRes.results == null);
        model_internal::_categoriaInmuebleIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::categoriaInmuebleValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::categoriaInmuebleValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get categoriaInmuebleValidationFailureMessages():Array
    {
        if (model_internal::_categoriaInmuebleValidationFailureMessages == null)
            model_internal::calculateCategoriaInmuebleIsValid();

        return _categoriaInmuebleValidationFailureMessages;
    }

    model_internal function set categoriaInmuebleValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_categoriaInmuebleValidationFailureMessages;

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
            model_internal::_categoriaInmuebleValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "categoriaInmuebleValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get nombretablaBDStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get nombretablaBDValidator() : StyleValidator
    {
        return model_internal::_nombretablaBDValidator;
    }

    model_internal function set _nombretablaBDIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_nombretablaBDIsValid;         
        if (oldValue !== value)
        {
            model_internal::_nombretablaBDIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombretablaBDIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get nombretablaBDIsValid():Boolean
    {
        if (!model_internal::_nombretablaBDIsValidCacheInitialized)
        {
            model_internal::calculateNombretablaBDIsValid();
        }

        return model_internal::_nombretablaBDIsValid;
    }

    model_internal function calculateNombretablaBDIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_nombretablaBDValidator.validate(model_internal::_instance.nombretablaBD)
        model_internal::_nombretablaBDIsValid_der = (valRes.results == null);
        model_internal::_nombretablaBDIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::nombretablaBDValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::nombretablaBDValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get nombretablaBDValidationFailureMessages():Array
    {
        if (model_internal::_nombretablaBDValidationFailureMessages == null)
            model_internal::calculateNombretablaBDIsValid();

        return _nombretablaBDValidationFailureMessages;
    }

    model_internal function set nombretablaBDValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_nombretablaBDValidationFailureMessages;

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
            model_internal::_nombretablaBDValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombretablaBDValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get requeridoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get nombrecampoBDStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get nombrecampoBDValidator() : StyleValidator
    {
        return model_internal::_nombrecampoBDValidator;
    }

    model_internal function set _nombrecampoBDIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_nombrecampoBDIsValid;         
        if (oldValue !== value)
        {
            model_internal::_nombrecampoBDIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombrecampoBDIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get nombrecampoBDIsValid():Boolean
    {
        if (!model_internal::_nombrecampoBDIsValidCacheInitialized)
        {
            model_internal::calculateNombrecampoBDIsValid();
        }

        return model_internal::_nombrecampoBDIsValid;
    }

    model_internal function calculateNombrecampoBDIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_nombrecampoBDValidator.validate(model_internal::_instance.nombrecampoBD)
        model_internal::_nombrecampoBDIsValid_der = (valRes.results == null);
        model_internal::_nombrecampoBDIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::nombrecampoBDValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::nombrecampoBDValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get nombrecampoBDValidationFailureMessages():Array
    {
        if (model_internal::_nombrecampoBDValidationFailureMessages == null)
            model_internal::calculateNombrecampoBDIsValid();

        return _nombrecampoBDValidationFailureMessages;
    }

    model_internal function set nombrecampoBDValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_nombrecampoBDValidationFailureMessages;

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
            model_internal::_nombrecampoBDValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombrecampoBDValidationFailureMessages", oldValue, value));
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
            case("nombreComponente"):
            {
                return nombreComponenteValidationFailureMessages;
            }
            case("categoriaInmueble"):
            {
                return categoriaInmuebleValidationFailureMessages;
            }
            case("nombretablaBD"):
            {
                return nombretablaBDValidationFailureMessages;
            }
            case("nombrecampoBD"):
            {
                return nombrecampoBDValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
