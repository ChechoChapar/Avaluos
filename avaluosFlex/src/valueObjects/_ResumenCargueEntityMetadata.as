
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
internal class _ResumenCargueEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("total", "numeroRefCargue", "rechazados", "sinEstado", "aplicados", "tipoCargue", "fechaTransaccion");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("total", "numeroRefCargue", "rechazados", "sinEstado", "aplicados", "tipoCargue", "fechaTransaccion");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("total", "numeroRefCargue", "rechazados", "sinEstado", "aplicados", "tipoCargue", "fechaTransaccion");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("total", "numeroRefCargue", "rechazados", "sinEstado", "aplicados", "tipoCargue", "fechaTransaccion");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "ResumenCargue";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _totalIsValid:Boolean;
    model_internal var _totalValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _totalIsValidCacheInitialized:Boolean = false;
    model_internal var _totalValidationFailureMessages:Array;
    
    model_internal var _numeroRefCargueIsValid:Boolean;
    model_internal var _numeroRefCargueValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _numeroRefCargueIsValidCacheInitialized:Boolean = false;
    model_internal var _numeroRefCargueValidationFailureMessages:Array;
    
    model_internal var _rechazadosIsValid:Boolean;
    model_internal var _rechazadosValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _rechazadosIsValidCacheInitialized:Boolean = false;
    model_internal var _rechazadosValidationFailureMessages:Array;
    
    model_internal var _sinEstadoIsValid:Boolean;
    model_internal var _sinEstadoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _sinEstadoIsValidCacheInitialized:Boolean = false;
    model_internal var _sinEstadoValidationFailureMessages:Array;
    
    model_internal var _aplicadosIsValid:Boolean;
    model_internal var _aplicadosValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _aplicadosIsValidCacheInitialized:Boolean = false;
    model_internal var _aplicadosValidationFailureMessages:Array;
    
    model_internal var _tipoCargueIsValid:Boolean;
    model_internal var _tipoCargueValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _tipoCargueIsValidCacheInitialized:Boolean = false;
    model_internal var _tipoCargueValidationFailureMessages:Array;
    
    model_internal var _fechaTransaccionIsValid:Boolean;
    model_internal var _fechaTransaccionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fechaTransaccionIsValidCacheInitialized:Boolean = false;
    model_internal var _fechaTransaccionValidationFailureMessages:Array;

    model_internal var _instance:_Super_ResumenCargue;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _ResumenCargueEntityMetadata(value : _Super_ResumenCargue)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["total"] = new Array();
            model_internal::dependentsOnMap["numeroRefCargue"] = new Array();
            model_internal::dependentsOnMap["rechazados"] = new Array();
            model_internal::dependentsOnMap["sinEstado"] = new Array();
            model_internal::dependentsOnMap["aplicados"] = new Array();
            model_internal::dependentsOnMap["tipoCargue"] = new Array();
            model_internal::dependentsOnMap["fechaTransaccion"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
        }

        model_internal::_instance = value;
        model_internal::_totalValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTotal);
        model_internal::_totalValidator.required = true;
        model_internal::_totalValidator.requiredFieldError = "total is required";
        //model_internal::_totalValidator.source = model_internal::_instance;
        //model_internal::_totalValidator.property = "total";
        model_internal::_numeroRefCargueValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNumeroRefCargue);
        model_internal::_numeroRefCargueValidator.required = true;
        model_internal::_numeroRefCargueValidator.requiredFieldError = "numeroRefCargue is required";
        //model_internal::_numeroRefCargueValidator.source = model_internal::_instance;
        //model_internal::_numeroRefCargueValidator.property = "numeroRefCargue";
        model_internal::_rechazadosValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRechazados);
        model_internal::_rechazadosValidator.required = true;
        model_internal::_rechazadosValidator.requiredFieldError = "rechazados is required";
        //model_internal::_rechazadosValidator.source = model_internal::_instance;
        //model_internal::_rechazadosValidator.property = "rechazados";
        model_internal::_sinEstadoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSinEstado);
        model_internal::_sinEstadoValidator.required = true;
        model_internal::_sinEstadoValidator.requiredFieldError = "sinEstado is required";
        //model_internal::_sinEstadoValidator.source = model_internal::_instance;
        //model_internal::_sinEstadoValidator.property = "sinEstado";
        model_internal::_aplicadosValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAplicados);
        model_internal::_aplicadosValidator.required = true;
        model_internal::_aplicadosValidator.requiredFieldError = "aplicados is required";
        //model_internal::_aplicadosValidator.source = model_internal::_instance;
        //model_internal::_aplicadosValidator.property = "aplicados";
        model_internal::_tipoCargueValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTipoCargue);
        model_internal::_tipoCargueValidator.required = true;
        model_internal::_tipoCargueValidator.requiredFieldError = "tipoCargue is required";
        //model_internal::_tipoCargueValidator.source = model_internal::_instance;
        //model_internal::_tipoCargueValidator.property = "tipoCargue";
        model_internal::_fechaTransaccionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFechaTransaccion);
        model_internal::_fechaTransaccionValidator.required = true;
        model_internal::_fechaTransaccionValidator.requiredFieldError = "fechaTransaccion is required";
        //model_internal::_fechaTransaccionValidator.source = model_internal::_instance;
        //model_internal::_fechaTransaccionValidator.property = "fechaTransaccion";
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
            throw new Error(propertyName + " is not a data property of entity ResumenCargue");  
            
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
            throw new Error(propertyName + " is not a collection property of entity ResumenCargue");  

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
            throw new Error(propertyName + " does not exist for entity ResumenCargue");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity ResumenCargue");
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
            throw new Error(propertyName + " does not exist for entity ResumenCargue");
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
    public function get isTotalAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNumeroRefCargueAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRechazadosAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSinEstadoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAplicadosAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTipoCargueAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFechaTransaccionAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnTotal():void
    {
        if (model_internal::_totalIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTotal = null;
            model_internal::calculateTotalIsValid();
        }
    }
    public function invalidateDependentOnNumeroRefCargue():void
    {
        if (model_internal::_numeroRefCargueIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNumeroRefCargue = null;
            model_internal::calculateNumeroRefCargueIsValid();
        }
    }
    public function invalidateDependentOnRechazados():void
    {
        if (model_internal::_rechazadosIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRechazados = null;
            model_internal::calculateRechazadosIsValid();
        }
    }
    public function invalidateDependentOnSinEstado():void
    {
        if (model_internal::_sinEstadoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSinEstado = null;
            model_internal::calculateSinEstadoIsValid();
        }
    }
    public function invalidateDependentOnAplicados():void
    {
        if (model_internal::_aplicadosIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAplicados = null;
            model_internal::calculateAplicadosIsValid();
        }
    }
    public function invalidateDependentOnTipoCargue():void
    {
        if (model_internal::_tipoCargueIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTipoCargue = null;
            model_internal::calculateTipoCargueIsValid();
        }
    }
    public function invalidateDependentOnFechaTransaccion():void
    {
        if (model_internal::_fechaTransaccionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFechaTransaccion = null;
            model_internal::calculateFechaTransaccionIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get totalStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get totalValidator() : StyleValidator
    {
        return model_internal::_totalValidator;
    }

    model_internal function set _totalIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_totalIsValid;         
        if (oldValue !== value)
        {
            model_internal::_totalIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "totalIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get totalIsValid():Boolean
    {
        if (!model_internal::_totalIsValidCacheInitialized)
        {
            model_internal::calculateTotalIsValid();
        }

        return model_internal::_totalIsValid;
    }

    model_internal function calculateTotalIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_totalValidator.validate(model_internal::_instance.total)
        model_internal::_totalIsValid_der = (valRes.results == null);
        model_internal::_totalIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::totalValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::totalValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get totalValidationFailureMessages():Array
    {
        if (model_internal::_totalValidationFailureMessages == null)
            model_internal::calculateTotalIsValid();

        return _totalValidationFailureMessages;
    }

    model_internal function set totalValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_totalValidationFailureMessages;

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
            model_internal::_totalValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "totalValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get numeroRefCargueStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get numeroRefCargueValidator() : StyleValidator
    {
        return model_internal::_numeroRefCargueValidator;
    }

    model_internal function set _numeroRefCargueIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_numeroRefCargueIsValid;         
        if (oldValue !== value)
        {
            model_internal::_numeroRefCargueIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numeroRefCargueIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get numeroRefCargueIsValid():Boolean
    {
        if (!model_internal::_numeroRefCargueIsValidCacheInitialized)
        {
            model_internal::calculateNumeroRefCargueIsValid();
        }

        return model_internal::_numeroRefCargueIsValid;
    }

    model_internal function calculateNumeroRefCargueIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_numeroRefCargueValidator.validate(model_internal::_instance.numeroRefCargue)
        model_internal::_numeroRefCargueIsValid_der = (valRes.results == null);
        model_internal::_numeroRefCargueIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::numeroRefCargueValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::numeroRefCargueValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get numeroRefCargueValidationFailureMessages():Array
    {
        if (model_internal::_numeroRefCargueValidationFailureMessages == null)
            model_internal::calculateNumeroRefCargueIsValid();

        return _numeroRefCargueValidationFailureMessages;
    }

    model_internal function set numeroRefCargueValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_numeroRefCargueValidationFailureMessages;

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
            model_internal::_numeroRefCargueValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numeroRefCargueValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get rechazadosStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get rechazadosValidator() : StyleValidator
    {
        return model_internal::_rechazadosValidator;
    }

    model_internal function set _rechazadosIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_rechazadosIsValid;         
        if (oldValue !== value)
        {
            model_internal::_rechazadosIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rechazadosIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get rechazadosIsValid():Boolean
    {
        if (!model_internal::_rechazadosIsValidCacheInitialized)
        {
            model_internal::calculateRechazadosIsValid();
        }

        return model_internal::_rechazadosIsValid;
    }

    model_internal function calculateRechazadosIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_rechazadosValidator.validate(model_internal::_instance.rechazados)
        model_internal::_rechazadosIsValid_der = (valRes.results == null);
        model_internal::_rechazadosIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::rechazadosValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::rechazadosValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get rechazadosValidationFailureMessages():Array
    {
        if (model_internal::_rechazadosValidationFailureMessages == null)
            model_internal::calculateRechazadosIsValid();

        return _rechazadosValidationFailureMessages;
    }

    model_internal function set rechazadosValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_rechazadosValidationFailureMessages;

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
            model_internal::_rechazadosValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rechazadosValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get sinEstadoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get sinEstadoValidator() : StyleValidator
    {
        return model_internal::_sinEstadoValidator;
    }

    model_internal function set _sinEstadoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_sinEstadoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_sinEstadoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sinEstadoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get sinEstadoIsValid():Boolean
    {
        if (!model_internal::_sinEstadoIsValidCacheInitialized)
        {
            model_internal::calculateSinEstadoIsValid();
        }

        return model_internal::_sinEstadoIsValid;
    }

    model_internal function calculateSinEstadoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_sinEstadoValidator.validate(model_internal::_instance.sinEstado)
        model_internal::_sinEstadoIsValid_der = (valRes.results == null);
        model_internal::_sinEstadoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::sinEstadoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::sinEstadoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get sinEstadoValidationFailureMessages():Array
    {
        if (model_internal::_sinEstadoValidationFailureMessages == null)
            model_internal::calculateSinEstadoIsValid();

        return _sinEstadoValidationFailureMessages;
    }

    model_internal function set sinEstadoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_sinEstadoValidationFailureMessages;

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
            model_internal::_sinEstadoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sinEstadoValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get aplicadosStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get aplicadosValidator() : StyleValidator
    {
        return model_internal::_aplicadosValidator;
    }

    model_internal function set _aplicadosIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_aplicadosIsValid;         
        if (oldValue !== value)
        {
            model_internal::_aplicadosIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "aplicadosIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get aplicadosIsValid():Boolean
    {
        if (!model_internal::_aplicadosIsValidCacheInitialized)
        {
            model_internal::calculateAplicadosIsValid();
        }

        return model_internal::_aplicadosIsValid;
    }

    model_internal function calculateAplicadosIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_aplicadosValidator.validate(model_internal::_instance.aplicados)
        model_internal::_aplicadosIsValid_der = (valRes.results == null);
        model_internal::_aplicadosIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::aplicadosValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::aplicadosValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get aplicadosValidationFailureMessages():Array
    {
        if (model_internal::_aplicadosValidationFailureMessages == null)
            model_internal::calculateAplicadosIsValid();

        return _aplicadosValidationFailureMessages;
    }

    model_internal function set aplicadosValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_aplicadosValidationFailureMessages;

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
            model_internal::_aplicadosValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "aplicadosValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get tipoCargueStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get tipoCargueValidator() : StyleValidator
    {
        return model_internal::_tipoCargueValidator;
    }

    model_internal function set _tipoCargueIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_tipoCargueIsValid;         
        if (oldValue !== value)
        {
            model_internal::_tipoCargueIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoCargueIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get tipoCargueIsValid():Boolean
    {
        if (!model_internal::_tipoCargueIsValidCacheInitialized)
        {
            model_internal::calculateTipoCargueIsValid();
        }

        return model_internal::_tipoCargueIsValid;
    }

    model_internal function calculateTipoCargueIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_tipoCargueValidator.validate(model_internal::_instance.tipoCargue)
        model_internal::_tipoCargueIsValid_der = (valRes.results == null);
        model_internal::_tipoCargueIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::tipoCargueValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::tipoCargueValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get tipoCargueValidationFailureMessages():Array
    {
        if (model_internal::_tipoCargueValidationFailureMessages == null)
            model_internal::calculateTipoCargueIsValid();

        return _tipoCargueValidationFailureMessages;
    }

    model_internal function set tipoCargueValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_tipoCargueValidationFailureMessages;

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
            model_internal::_tipoCargueValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoCargueValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get fechaTransaccionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get fechaTransaccionValidator() : StyleValidator
    {
        return model_internal::_fechaTransaccionValidator;
    }

    model_internal function set _fechaTransaccionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_fechaTransaccionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_fechaTransaccionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaTransaccionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get fechaTransaccionIsValid():Boolean
    {
        if (!model_internal::_fechaTransaccionIsValidCacheInitialized)
        {
            model_internal::calculateFechaTransaccionIsValid();
        }

        return model_internal::_fechaTransaccionIsValid;
    }

    model_internal function calculateFechaTransaccionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_fechaTransaccionValidator.validate(model_internal::_instance.fechaTransaccion)
        model_internal::_fechaTransaccionIsValid_der = (valRes.results == null);
        model_internal::_fechaTransaccionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::fechaTransaccionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::fechaTransaccionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get fechaTransaccionValidationFailureMessages():Array
    {
        if (model_internal::_fechaTransaccionValidationFailureMessages == null)
            model_internal::calculateFechaTransaccionIsValid();

        return _fechaTransaccionValidationFailureMessages;
    }

    model_internal function set fechaTransaccionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_fechaTransaccionValidationFailureMessages;

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
            model_internal::_fechaTransaccionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaTransaccionValidationFailureMessages", oldValue, value));
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
            case("total"):
            {
                return totalValidationFailureMessages;
            }
            case("numeroRefCargue"):
            {
                return numeroRefCargueValidationFailureMessages;
            }
            case("rechazados"):
            {
                return rechazadosValidationFailureMessages;
            }
            case("sinEstado"):
            {
                return sinEstadoValidationFailureMessages;
            }
            case("aplicados"):
            {
                return aplicadosValidationFailureMessages;
            }
            case("tipoCargue"):
            {
                return tipoCargueValidationFailureMessages;
            }
            case("fechaTransaccion"):
            {
                return fechaTransaccionValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
