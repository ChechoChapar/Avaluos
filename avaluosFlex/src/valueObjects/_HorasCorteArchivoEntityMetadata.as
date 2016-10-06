
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
internal class _HorasCorteArchivoEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("horaCorte", "idHorasCorteArchivo", "estado", "usuarioTransaccion", "fechaCreacion", "minutosCorte", "usuarioCreacion", "fechaTransaccion");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("horaCorte", "idHorasCorteArchivo", "estado", "usuarioTransaccion", "fechaCreacion", "minutosCorte", "usuarioCreacion", "fechaTransaccion");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("horaCorte", "idHorasCorteArchivo", "estado", "usuarioTransaccion", "fechaCreacion", "minutosCorte", "usuarioCreacion", "fechaTransaccion");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("horaCorte", "idHorasCorteArchivo", "estado", "usuarioTransaccion", "fechaCreacion", "minutosCorte", "usuarioCreacion", "fechaTransaccion");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "HorasCorteArchivo";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _horaCorteIsValid:Boolean;
    model_internal var _horaCorteValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _horaCorteIsValidCacheInitialized:Boolean = false;
    model_internal var _horaCorteValidationFailureMessages:Array;
    
    model_internal var _estadoIsValid:Boolean;
    model_internal var _estadoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _estadoIsValidCacheInitialized:Boolean = false;
    model_internal var _estadoValidationFailureMessages:Array;
    
    model_internal var _usuarioTransaccionIsValid:Boolean;
    model_internal var _usuarioTransaccionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _usuarioTransaccionIsValidCacheInitialized:Boolean = false;
    model_internal var _usuarioTransaccionValidationFailureMessages:Array;
    
    model_internal var _fechaCreacionIsValid:Boolean;
    model_internal var _fechaCreacionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fechaCreacionIsValidCacheInitialized:Boolean = false;
    model_internal var _fechaCreacionValidationFailureMessages:Array;
    
    model_internal var _minutosCorteIsValid:Boolean;
    model_internal var _minutosCorteValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _minutosCorteIsValidCacheInitialized:Boolean = false;
    model_internal var _minutosCorteValidationFailureMessages:Array;
    
    model_internal var _usuarioCreacionIsValid:Boolean;
    model_internal var _usuarioCreacionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _usuarioCreacionIsValidCacheInitialized:Boolean = false;
    model_internal var _usuarioCreacionValidationFailureMessages:Array;
    
    model_internal var _fechaTransaccionIsValid:Boolean;
    model_internal var _fechaTransaccionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fechaTransaccionIsValidCacheInitialized:Boolean = false;
    model_internal var _fechaTransaccionValidationFailureMessages:Array;

    model_internal var _instance:_Super_HorasCorteArchivo;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _HorasCorteArchivoEntityMetadata(value : _Super_HorasCorteArchivo)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["horaCorte"] = new Array();
            model_internal::dependentsOnMap["idHorasCorteArchivo"] = new Array();
            model_internal::dependentsOnMap["estado"] = new Array();
            model_internal::dependentsOnMap["usuarioTransaccion"] = new Array();
            model_internal::dependentsOnMap["fechaCreacion"] = new Array();
            model_internal::dependentsOnMap["minutosCorte"] = new Array();
            model_internal::dependentsOnMap["usuarioCreacion"] = new Array();
            model_internal::dependentsOnMap["fechaTransaccion"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
        }

        model_internal::_instance = value;
        model_internal::_horaCorteValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForHoraCorte);
        model_internal::_horaCorteValidator.required = true;
        model_internal::_horaCorteValidator.requiredFieldError = "horaCorte is required";
        //model_internal::_horaCorteValidator.source = model_internal::_instance;
        //model_internal::_horaCorteValidator.property = "horaCorte";
        model_internal::_estadoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForEstado);
        model_internal::_estadoValidator.required = true;
        model_internal::_estadoValidator.requiredFieldError = "estado is required";
        //model_internal::_estadoValidator.source = model_internal::_instance;
        //model_internal::_estadoValidator.property = "estado";
        model_internal::_usuarioTransaccionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUsuarioTransaccion);
        model_internal::_usuarioTransaccionValidator.required = true;
        model_internal::_usuarioTransaccionValidator.requiredFieldError = "usuarioTransaccion is required";
        //model_internal::_usuarioTransaccionValidator.source = model_internal::_instance;
        //model_internal::_usuarioTransaccionValidator.property = "usuarioTransaccion";
        model_internal::_fechaCreacionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFechaCreacion);
        model_internal::_fechaCreacionValidator.required = true;
        model_internal::_fechaCreacionValidator.requiredFieldError = "fechaCreacion is required";
        //model_internal::_fechaCreacionValidator.source = model_internal::_instance;
        //model_internal::_fechaCreacionValidator.property = "fechaCreacion";
        model_internal::_minutosCorteValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForMinutosCorte);
        model_internal::_minutosCorteValidator.required = true;
        model_internal::_minutosCorteValidator.requiredFieldError = "minutosCorte is required";
        //model_internal::_minutosCorteValidator.source = model_internal::_instance;
        //model_internal::_minutosCorteValidator.property = "minutosCorte";
        model_internal::_usuarioCreacionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUsuarioCreacion);
        model_internal::_usuarioCreacionValidator.required = true;
        model_internal::_usuarioCreacionValidator.requiredFieldError = "usuarioCreacion is required";
        //model_internal::_usuarioCreacionValidator.source = model_internal::_instance;
        //model_internal::_usuarioCreacionValidator.property = "usuarioCreacion";
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
            throw new Error(propertyName + " is not a data property of entity HorasCorteArchivo");  
            
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
            throw new Error(propertyName + " is not a collection property of entity HorasCorteArchivo");  

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
            throw new Error(propertyName + " does not exist for entity HorasCorteArchivo");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity HorasCorteArchivo");
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
            throw new Error(propertyName + " does not exist for entity HorasCorteArchivo");
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
        returnMap["idHorasCorteArchivo"] = model_internal::_instance.idHorasCorteArchivo;

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
    public function get isHoraCorteAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIdHorasCorteArchivoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEstadoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUsuarioTransaccionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFechaCreacionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isMinutosCorteAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUsuarioCreacionAvailable():Boolean
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
    public function invalidateDependentOnHoraCorte():void
    {
        if (model_internal::_horaCorteIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfHoraCorte = null;
            model_internal::calculateHoraCorteIsValid();
        }
    }
    public function invalidateDependentOnEstado():void
    {
        if (model_internal::_estadoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfEstado = null;
            model_internal::calculateEstadoIsValid();
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
    public function invalidateDependentOnFechaCreacion():void
    {
        if (model_internal::_fechaCreacionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFechaCreacion = null;
            model_internal::calculateFechaCreacionIsValid();
        }
    }
    public function invalidateDependentOnMinutosCorte():void
    {
        if (model_internal::_minutosCorteIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfMinutosCorte = null;
            model_internal::calculateMinutosCorteIsValid();
        }
    }
    public function invalidateDependentOnUsuarioCreacion():void
    {
        if (model_internal::_usuarioCreacionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUsuarioCreacion = null;
            model_internal::calculateUsuarioCreacionIsValid();
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
    public function get horaCorteStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get horaCorteValidator() : StyleValidator
    {
        return model_internal::_horaCorteValidator;
    }

    model_internal function set _horaCorteIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_horaCorteIsValid;         
        if (oldValue !== value)
        {
            model_internal::_horaCorteIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "horaCorteIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get horaCorteIsValid():Boolean
    {
        if (!model_internal::_horaCorteIsValidCacheInitialized)
        {
            model_internal::calculateHoraCorteIsValid();
        }

        return model_internal::_horaCorteIsValid;
    }

    model_internal function calculateHoraCorteIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_horaCorteValidator.validate(model_internal::_instance.horaCorte)
        model_internal::_horaCorteIsValid_der = (valRes.results == null);
        model_internal::_horaCorteIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::horaCorteValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::horaCorteValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get horaCorteValidationFailureMessages():Array
    {
        if (model_internal::_horaCorteValidationFailureMessages == null)
            model_internal::calculateHoraCorteIsValid();

        return _horaCorteValidationFailureMessages;
    }

    model_internal function set horaCorteValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_horaCorteValidationFailureMessages;

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
            model_internal::_horaCorteValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "horaCorteValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get idHorasCorteArchivoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get estadoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get estadoValidator() : StyleValidator
    {
        return model_internal::_estadoValidator;
    }

    model_internal function set _estadoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_estadoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_estadoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get estadoIsValid():Boolean
    {
        if (!model_internal::_estadoIsValidCacheInitialized)
        {
            model_internal::calculateEstadoIsValid();
        }

        return model_internal::_estadoIsValid;
    }

    model_internal function calculateEstadoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_estadoValidator.validate(model_internal::_instance.estado)
        model_internal::_estadoIsValid_der = (valRes.results == null);
        model_internal::_estadoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::estadoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::estadoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get estadoValidationFailureMessages():Array
    {
        if (model_internal::_estadoValidationFailureMessages == null)
            model_internal::calculateEstadoIsValid();

        return _estadoValidationFailureMessages;
    }

    model_internal function set estadoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_estadoValidationFailureMessages;

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
            model_internal::_estadoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoValidationFailureMessages", oldValue, value));
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
    public function get fechaCreacionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get fechaCreacionValidator() : StyleValidator
    {
        return model_internal::_fechaCreacionValidator;
    }

    model_internal function set _fechaCreacionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_fechaCreacionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_fechaCreacionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaCreacionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get fechaCreacionIsValid():Boolean
    {
        if (!model_internal::_fechaCreacionIsValidCacheInitialized)
        {
            model_internal::calculateFechaCreacionIsValid();
        }

        return model_internal::_fechaCreacionIsValid;
    }

    model_internal function calculateFechaCreacionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_fechaCreacionValidator.validate(model_internal::_instance.fechaCreacion)
        model_internal::_fechaCreacionIsValid_der = (valRes.results == null);
        model_internal::_fechaCreacionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::fechaCreacionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::fechaCreacionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get fechaCreacionValidationFailureMessages():Array
    {
        if (model_internal::_fechaCreacionValidationFailureMessages == null)
            model_internal::calculateFechaCreacionIsValid();

        return _fechaCreacionValidationFailureMessages;
    }

    model_internal function set fechaCreacionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_fechaCreacionValidationFailureMessages;

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
            model_internal::_fechaCreacionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaCreacionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get minutosCorteStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get minutosCorteValidator() : StyleValidator
    {
        return model_internal::_minutosCorteValidator;
    }

    model_internal function set _minutosCorteIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_minutosCorteIsValid;         
        if (oldValue !== value)
        {
            model_internal::_minutosCorteIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "minutosCorteIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get minutosCorteIsValid():Boolean
    {
        if (!model_internal::_minutosCorteIsValidCacheInitialized)
        {
            model_internal::calculateMinutosCorteIsValid();
        }

        return model_internal::_minutosCorteIsValid;
    }

    model_internal function calculateMinutosCorteIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_minutosCorteValidator.validate(model_internal::_instance.minutosCorte)
        model_internal::_minutosCorteIsValid_der = (valRes.results == null);
        model_internal::_minutosCorteIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::minutosCorteValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::minutosCorteValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get minutosCorteValidationFailureMessages():Array
    {
        if (model_internal::_minutosCorteValidationFailureMessages == null)
            model_internal::calculateMinutosCorteIsValid();

        return _minutosCorteValidationFailureMessages;
    }

    model_internal function set minutosCorteValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_minutosCorteValidationFailureMessages;

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
            model_internal::_minutosCorteValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "minutosCorteValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get usuarioCreacionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get usuarioCreacionValidator() : StyleValidator
    {
        return model_internal::_usuarioCreacionValidator;
    }

    model_internal function set _usuarioCreacionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_usuarioCreacionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_usuarioCreacionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usuarioCreacionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get usuarioCreacionIsValid():Boolean
    {
        if (!model_internal::_usuarioCreacionIsValidCacheInitialized)
        {
            model_internal::calculateUsuarioCreacionIsValid();
        }

        return model_internal::_usuarioCreacionIsValid;
    }

    model_internal function calculateUsuarioCreacionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_usuarioCreacionValidator.validate(model_internal::_instance.usuarioCreacion)
        model_internal::_usuarioCreacionIsValid_der = (valRes.results == null);
        model_internal::_usuarioCreacionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::usuarioCreacionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::usuarioCreacionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get usuarioCreacionValidationFailureMessages():Array
    {
        if (model_internal::_usuarioCreacionValidationFailureMessages == null)
            model_internal::calculateUsuarioCreacionIsValid();

        return _usuarioCreacionValidationFailureMessages;
    }

    model_internal function set usuarioCreacionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_usuarioCreacionValidationFailureMessages;

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
            model_internal::_usuarioCreacionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usuarioCreacionValidationFailureMessages", oldValue, value));
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
            case("horaCorte"):
            {
                return horaCorteValidationFailureMessages;
            }
            case("estado"):
            {
                return estadoValidationFailureMessages;
            }
            case("usuarioTransaccion"):
            {
                return usuarioTransaccionValidationFailureMessages;
            }
            case("fechaCreacion"):
            {
                return fechaCreacionValidationFailureMessages;
            }
            case("minutosCorte"):
            {
                return minutosCorteValidationFailureMessages;
            }
            case("usuarioCreacion"):
            {
                return usuarioCreacionValidationFailureMessages;
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
