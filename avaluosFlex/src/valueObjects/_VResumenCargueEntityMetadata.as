
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
internal class _VResumenCargueEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("total", "numeroRefCargue", "nombreArchivo", "rechazados", "empresaAvaluos", "usuarioTransaccion", "sinEstado", "aplicados", "tipoCargue", "fechaTransaccion", "consecutivoBatch");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("total", "numeroRefCargue", "nombreArchivo", "rechazados", "empresaAvaluos", "usuarioTransaccion", "sinEstado", "aplicados", "tipoCargue", "fechaTransaccion", "consecutivoBatch");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("total", "numeroRefCargue", "nombreArchivo", "rechazados", "empresaAvaluos", "usuarioTransaccion", "sinEstado", "aplicados", "tipoCargue", "fechaTransaccion", "consecutivoBatch");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("total", "numeroRefCargue", "nombreArchivo", "rechazados", "empresaAvaluos", "usuarioTransaccion", "sinEstado", "aplicados", "tipoCargue", "fechaTransaccion", "consecutivoBatch");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "VResumenCargue";
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
    
    model_internal var _nombreArchivoIsValid:Boolean;
    model_internal var _nombreArchivoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nombreArchivoIsValidCacheInitialized:Boolean = false;
    model_internal var _nombreArchivoValidationFailureMessages:Array;
    
    model_internal var _rechazadosIsValid:Boolean;
    model_internal var _rechazadosValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _rechazadosIsValidCacheInitialized:Boolean = false;
    model_internal var _rechazadosValidationFailureMessages:Array;
    
    model_internal var _empresaAvaluosIsValid:Boolean;
    model_internal var _empresaAvaluosValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _empresaAvaluosIsValidCacheInitialized:Boolean = false;
    model_internal var _empresaAvaluosValidationFailureMessages:Array;
    
    model_internal var _usuarioTransaccionIsValid:Boolean;
    model_internal var _usuarioTransaccionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _usuarioTransaccionIsValidCacheInitialized:Boolean = false;
    model_internal var _usuarioTransaccionValidationFailureMessages:Array;
    
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
    
    model_internal var _consecutivoBatchIsValid:Boolean;
    model_internal var _consecutivoBatchValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _consecutivoBatchIsValidCacheInitialized:Boolean = false;
    model_internal var _consecutivoBatchValidationFailureMessages:Array;

    model_internal var _instance:_Super_VResumenCargue;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _VResumenCargueEntityMetadata(value : _Super_VResumenCargue)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["total"] = new Array();
            model_internal::dependentsOnMap["numeroRefCargue"] = new Array();
            model_internal::dependentsOnMap["nombreArchivo"] = new Array();
            model_internal::dependentsOnMap["rechazados"] = new Array();
            model_internal::dependentsOnMap["empresaAvaluos"] = new Array();
            model_internal::dependentsOnMap["usuarioTransaccion"] = new Array();
            model_internal::dependentsOnMap["sinEstado"] = new Array();
            model_internal::dependentsOnMap["aplicados"] = new Array();
            model_internal::dependentsOnMap["tipoCargue"] = new Array();
            model_internal::dependentsOnMap["fechaTransaccion"] = new Array();
            model_internal::dependentsOnMap["consecutivoBatch"] = new Array();

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
        model_internal::_nombreArchivoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNombreArchivo);
        model_internal::_nombreArchivoValidator.required = true;
        model_internal::_nombreArchivoValidator.requiredFieldError = "nombreArchivo is required";
        //model_internal::_nombreArchivoValidator.source = model_internal::_instance;
        //model_internal::_nombreArchivoValidator.property = "nombreArchivo";
        model_internal::_rechazadosValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRechazados);
        model_internal::_rechazadosValidator.required = true;
        model_internal::_rechazadosValidator.requiredFieldError = "rechazados is required";
        //model_internal::_rechazadosValidator.source = model_internal::_instance;
        //model_internal::_rechazadosValidator.property = "rechazados";
        model_internal::_empresaAvaluosValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForEmpresaAvaluos);
        model_internal::_empresaAvaluosValidator.required = true;
        model_internal::_empresaAvaluosValidator.requiredFieldError = "empresaAvaluos is required";
        //model_internal::_empresaAvaluosValidator.source = model_internal::_instance;
        //model_internal::_empresaAvaluosValidator.property = "empresaAvaluos";
        model_internal::_usuarioTransaccionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUsuarioTransaccion);
        model_internal::_usuarioTransaccionValidator.required = true;
        model_internal::_usuarioTransaccionValidator.requiredFieldError = "usuarioTransaccion is required";
        //model_internal::_usuarioTransaccionValidator.source = model_internal::_instance;
        //model_internal::_usuarioTransaccionValidator.property = "usuarioTransaccion";
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
        model_internal::_consecutivoBatchValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForConsecutivoBatch);
        model_internal::_consecutivoBatchValidator.required = true;
        model_internal::_consecutivoBatchValidator.requiredFieldError = "consecutivoBatch is required";
        //model_internal::_consecutivoBatchValidator.source = model_internal::_instance;
        //model_internal::_consecutivoBatchValidator.property = "consecutivoBatch";
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
            throw new Error(propertyName + " is not a data property of entity VResumenCargue");  
            
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
            throw new Error(propertyName + " is not a collection property of entity VResumenCargue");  

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
            throw new Error(propertyName + " does not exist for entity VResumenCargue");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity VResumenCargue");
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
            throw new Error(propertyName + " does not exist for entity VResumenCargue");
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
    public function get isNombreArchivoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRechazadosAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEmpresaAvaluosAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUsuarioTransaccionAvailable():Boolean
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

    [Bindable(event="propertyChange")]
    public function get isConsecutivoBatchAvailable():Boolean
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
    public function invalidateDependentOnNombreArchivo():void
    {
        if (model_internal::_nombreArchivoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNombreArchivo = null;
            model_internal::calculateNombreArchivoIsValid();
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
    public function invalidateDependentOnEmpresaAvaluos():void
    {
        if (model_internal::_empresaAvaluosIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfEmpresaAvaluos = null;
            model_internal::calculateEmpresaAvaluosIsValid();
        }
    }
    public function invalidateDependentOnUsuarioTransaccion():void
    {
        if (model_internal::_usuarioTransaccionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUsuarioTransaccion = null;
            model_internal::calculateUsuarioTransaccionIsValid();
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
    public function invalidateDependentOnConsecutivoBatch():void
    {
        if (model_internal::_consecutivoBatchIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfConsecutivoBatch = null;
            model_internal::calculateConsecutivoBatchIsValid();
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
    public function get nombreArchivoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get nombreArchivoValidator() : StyleValidator
    {
        return model_internal::_nombreArchivoValidator;
    }

    model_internal function set _nombreArchivoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_nombreArchivoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_nombreArchivoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreArchivoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get nombreArchivoIsValid():Boolean
    {
        if (!model_internal::_nombreArchivoIsValidCacheInitialized)
        {
            model_internal::calculateNombreArchivoIsValid();
        }

        return model_internal::_nombreArchivoIsValid;
    }

    model_internal function calculateNombreArchivoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_nombreArchivoValidator.validate(model_internal::_instance.nombreArchivo)
        model_internal::_nombreArchivoIsValid_der = (valRes.results == null);
        model_internal::_nombreArchivoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::nombreArchivoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::nombreArchivoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get nombreArchivoValidationFailureMessages():Array
    {
        if (model_internal::_nombreArchivoValidationFailureMessages == null)
            model_internal::calculateNombreArchivoIsValid();

        return _nombreArchivoValidationFailureMessages;
    }

    model_internal function set nombreArchivoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_nombreArchivoValidationFailureMessages;

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
            model_internal::_nombreArchivoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreArchivoValidationFailureMessages", oldValue, value));
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
    public function get empresaAvaluosStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get empresaAvaluosValidator() : StyleValidator
    {
        return model_internal::_empresaAvaluosValidator;
    }

    model_internal function set _empresaAvaluosIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_empresaAvaluosIsValid;         
        if (oldValue !== value)
        {
            model_internal::_empresaAvaluosIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "empresaAvaluosIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get empresaAvaluosIsValid():Boolean
    {
        if (!model_internal::_empresaAvaluosIsValidCacheInitialized)
        {
            model_internal::calculateEmpresaAvaluosIsValid();
        }

        return model_internal::_empresaAvaluosIsValid;
    }

    model_internal function calculateEmpresaAvaluosIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_empresaAvaluosValidator.validate(model_internal::_instance.empresaAvaluos)
        model_internal::_empresaAvaluosIsValid_der = (valRes.results == null);
        model_internal::_empresaAvaluosIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::empresaAvaluosValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::empresaAvaluosValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get empresaAvaluosValidationFailureMessages():Array
    {
        if (model_internal::_empresaAvaluosValidationFailureMessages == null)
            model_internal::calculateEmpresaAvaluosIsValid();

        return _empresaAvaluosValidationFailureMessages;
    }

    model_internal function set empresaAvaluosValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_empresaAvaluosValidationFailureMessages;

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
            model_internal::_empresaAvaluosValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "empresaAvaluosValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get usuarioTransaccionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get usuarioTransaccionValidator() : StyleValidator
    {
        return model_internal::_usuarioTransaccionValidator;
    }

    model_internal function set _usuarioTransaccionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_usuarioTransaccionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_usuarioTransaccionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usuarioTransaccionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get usuarioTransaccionIsValid():Boolean
    {
        if (!model_internal::_usuarioTransaccionIsValidCacheInitialized)
        {
            model_internal::calculateUsuarioTransaccionIsValid();
        }

        return model_internal::_usuarioTransaccionIsValid;
    }

    model_internal function calculateUsuarioTransaccionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_usuarioTransaccionValidator.validate(model_internal::_instance.usuarioTransaccion)
        model_internal::_usuarioTransaccionIsValid_der = (valRes.results == null);
        model_internal::_usuarioTransaccionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::usuarioTransaccionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::usuarioTransaccionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get usuarioTransaccionValidationFailureMessages():Array
    {
        if (model_internal::_usuarioTransaccionValidationFailureMessages == null)
            model_internal::calculateUsuarioTransaccionIsValid();

        return _usuarioTransaccionValidationFailureMessages;
    }

    model_internal function set usuarioTransaccionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_usuarioTransaccionValidationFailureMessages;

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
            model_internal::_usuarioTransaccionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usuarioTransaccionValidationFailureMessages", oldValue, value));
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

    [Bindable(event="propertyChange")]   
    public function get consecutivoBatchStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get consecutivoBatchValidator() : StyleValidator
    {
        return model_internal::_consecutivoBatchValidator;
    }

    model_internal function set _consecutivoBatchIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_consecutivoBatchIsValid;         
        if (oldValue !== value)
        {
            model_internal::_consecutivoBatchIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "consecutivoBatchIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get consecutivoBatchIsValid():Boolean
    {
        if (!model_internal::_consecutivoBatchIsValidCacheInitialized)
        {
            model_internal::calculateConsecutivoBatchIsValid();
        }

        return model_internal::_consecutivoBatchIsValid;
    }

    model_internal function calculateConsecutivoBatchIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_consecutivoBatchValidator.validate(model_internal::_instance.consecutivoBatch)
        model_internal::_consecutivoBatchIsValid_der = (valRes.results == null);
        model_internal::_consecutivoBatchIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::consecutivoBatchValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::consecutivoBatchValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get consecutivoBatchValidationFailureMessages():Array
    {
        if (model_internal::_consecutivoBatchValidationFailureMessages == null)
            model_internal::calculateConsecutivoBatchIsValid();

        return _consecutivoBatchValidationFailureMessages;
    }

    model_internal function set consecutivoBatchValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_consecutivoBatchValidationFailureMessages;

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
            model_internal::_consecutivoBatchValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "consecutivoBatchValidationFailureMessages", oldValue, value));
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
            case("nombreArchivo"):
            {
                return nombreArchivoValidationFailureMessages;
            }
            case("rechazados"):
            {
                return rechazadosValidationFailureMessages;
            }
            case("empresaAvaluos"):
            {
                return empresaAvaluosValidationFailureMessages;
            }
            case("usuarioTransaccion"):
            {
                return usuarioTransaccionValidationFailureMessages;
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
            case("consecutivoBatch"):
            {
                return consecutivoBatchValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
