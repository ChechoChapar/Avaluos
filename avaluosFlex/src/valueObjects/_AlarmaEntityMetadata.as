
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
internal class _AlarmaEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("descripcionAlerta", "numDias", "usuarioTransaccion", "idAlarma", "fechaCreacion", "fechaTransaccion", "usuarioCreacion");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("descripcionAlerta", "numDias", "usuarioTransaccion", "idAlarma", "fechaCreacion", "fechaTransaccion", "usuarioCreacion");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("descripcionAlerta", "numDias", "usuarioTransaccion", "idAlarma", "fechaCreacion", "fechaTransaccion", "usuarioCreacion");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("descripcionAlerta", "numDias", "usuarioTransaccion", "idAlarma", "fechaCreacion", "fechaTransaccion", "usuarioCreacion");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Alarma";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _descripcionAlertaIsValid:Boolean;
    model_internal var _descripcionAlertaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _descripcionAlertaIsValidCacheInitialized:Boolean = false;
    model_internal var _descripcionAlertaValidationFailureMessages:Array;
    
    model_internal var _numDiasIsValid:Boolean;
    model_internal var _numDiasValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _numDiasIsValidCacheInitialized:Boolean = false;
    model_internal var _numDiasValidationFailureMessages:Array;
    
    model_internal var _usuarioTransaccionIsValid:Boolean;
    model_internal var _usuarioTransaccionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _usuarioTransaccionIsValidCacheInitialized:Boolean = false;
    model_internal var _usuarioTransaccionValidationFailureMessages:Array;
    
    model_internal var _idAlarmaIsValid:Boolean;
    model_internal var _idAlarmaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _idAlarmaIsValidCacheInitialized:Boolean = false;
    model_internal var _idAlarmaValidationFailureMessages:Array;
    
    model_internal var _fechaCreacionIsValid:Boolean;
    model_internal var _fechaCreacionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fechaCreacionIsValidCacheInitialized:Boolean = false;
    model_internal var _fechaCreacionValidationFailureMessages:Array;
    
    model_internal var _fechaTransaccionIsValid:Boolean;
    model_internal var _fechaTransaccionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fechaTransaccionIsValidCacheInitialized:Boolean = false;
    model_internal var _fechaTransaccionValidationFailureMessages:Array;
    
    model_internal var _usuarioCreacionIsValid:Boolean;
    model_internal var _usuarioCreacionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _usuarioCreacionIsValidCacheInitialized:Boolean = false;
    model_internal var _usuarioCreacionValidationFailureMessages:Array;

    model_internal var _instance:_Super_Alarma;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _AlarmaEntityMetadata(value : _Super_Alarma)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["descripcionAlerta"] = new Array();
            model_internal::dependentsOnMap["numDias"] = new Array();
            model_internal::dependentsOnMap["usuarioTransaccion"] = new Array();
            model_internal::dependentsOnMap["idAlarma"] = new Array();
            model_internal::dependentsOnMap["fechaCreacion"] = new Array();
            model_internal::dependentsOnMap["fechaTransaccion"] = new Array();
            model_internal::dependentsOnMap["usuarioCreacion"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
        }

        model_internal::_instance = value;
        model_internal::_descripcionAlertaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDescripcionAlerta);
        model_internal::_descripcionAlertaValidator.required = true;
        model_internal::_descripcionAlertaValidator.requiredFieldError = "descripcionAlerta is required";
        //model_internal::_descripcionAlertaValidator.source = model_internal::_instance;
        //model_internal::_descripcionAlertaValidator.property = "descripcionAlerta";
        model_internal::_numDiasValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNumDias);
        model_internal::_numDiasValidator.required = true;
        model_internal::_numDiasValidator.requiredFieldError = "numDias is required";
        //model_internal::_numDiasValidator.source = model_internal::_instance;
        //model_internal::_numDiasValidator.property = "numDias";
        model_internal::_usuarioTransaccionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUsuarioTransaccion);
        model_internal::_usuarioTransaccionValidator.required = true;
        model_internal::_usuarioTransaccionValidator.requiredFieldError = "usuarioTransaccion is required";
        //model_internal::_usuarioTransaccionValidator.source = model_internal::_instance;
        //model_internal::_usuarioTransaccionValidator.property = "usuarioTransaccion";
        model_internal::_idAlarmaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForIdAlarma);
        model_internal::_idAlarmaValidator.required = true;
        model_internal::_idAlarmaValidator.requiredFieldError = "idAlarma is required";
        //model_internal::_idAlarmaValidator.source = model_internal::_instance;
        //model_internal::_idAlarmaValidator.property = "idAlarma";
        model_internal::_fechaCreacionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFechaCreacion);
        model_internal::_fechaCreacionValidator.required = true;
        model_internal::_fechaCreacionValidator.requiredFieldError = "fechaCreacion is required";
        //model_internal::_fechaCreacionValidator.source = model_internal::_instance;
        //model_internal::_fechaCreacionValidator.property = "fechaCreacion";
        model_internal::_fechaTransaccionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFechaTransaccion);
        model_internal::_fechaTransaccionValidator.required = true;
        model_internal::_fechaTransaccionValidator.requiredFieldError = "fechaTransaccion is required";
        //model_internal::_fechaTransaccionValidator.source = model_internal::_instance;
        //model_internal::_fechaTransaccionValidator.property = "fechaTransaccion";
        model_internal::_usuarioCreacionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUsuarioCreacion);
        model_internal::_usuarioCreacionValidator.required = true;
        model_internal::_usuarioCreacionValidator.requiredFieldError = "usuarioCreacion is required";
        //model_internal::_usuarioCreacionValidator.source = model_internal::_instance;
        //model_internal::_usuarioCreacionValidator.property = "usuarioCreacion";
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
            throw new Error(propertyName + " is not a data property of entity Alarma");  
            
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
            throw new Error(propertyName + " is not a collection property of entity Alarma");  

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
            throw new Error(propertyName + " does not exist for entity Alarma");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity Alarma");
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
            throw new Error(propertyName + " does not exist for entity Alarma");
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
    public function get isDescripcionAlertaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNumDiasAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUsuarioTransaccionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIdAlarmaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFechaCreacionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFechaTransaccionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUsuarioCreacionAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnDescripcionAlerta():void
    {
        if (model_internal::_descripcionAlertaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDescripcionAlerta = null;
            model_internal::calculateDescripcionAlertaIsValid();
        }
    }
    public function invalidateDependentOnNumDias():void
    {
        if (model_internal::_numDiasIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNumDias = null;
            model_internal::calculateNumDiasIsValid();
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
    public function invalidateDependentOnIdAlarma():void
    {
        if (model_internal::_idAlarmaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfIdAlarma = null;
            model_internal::calculateIdAlarmaIsValid();
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
    public function invalidateDependentOnFechaTransaccion():void
    {
        if (model_internal::_fechaTransaccionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFechaTransaccion = null;
            model_internal::calculateFechaTransaccionIsValid();
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

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get descripcionAlertaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get descripcionAlertaValidator() : StyleValidator
    {
        return model_internal::_descripcionAlertaValidator;
    }

    model_internal function set _descripcionAlertaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_descripcionAlertaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_descripcionAlertaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descripcionAlertaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get descripcionAlertaIsValid():Boolean
    {
        if (!model_internal::_descripcionAlertaIsValidCacheInitialized)
        {
            model_internal::calculateDescripcionAlertaIsValid();
        }

        return model_internal::_descripcionAlertaIsValid;
    }

    model_internal function calculateDescripcionAlertaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_descripcionAlertaValidator.validate(model_internal::_instance.descripcionAlerta)
        model_internal::_descripcionAlertaIsValid_der = (valRes.results == null);
        model_internal::_descripcionAlertaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::descripcionAlertaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::descripcionAlertaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get descripcionAlertaValidationFailureMessages():Array
    {
        if (model_internal::_descripcionAlertaValidationFailureMessages == null)
            model_internal::calculateDescripcionAlertaIsValid();

        return _descripcionAlertaValidationFailureMessages;
    }

    model_internal function set descripcionAlertaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_descripcionAlertaValidationFailureMessages;

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
            model_internal::_descripcionAlertaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descripcionAlertaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get numDiasStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get numDiasValidator() : StyleValidator
    {
        return model_internal::_numDiasValidator;
    }

    model_internal function set _numDiasIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_numDiasIsValid;         
        if (oldValue !== value)
        {
            model_internal::_numDiasIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numDiasIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get numDiasIsValid():Boolean
    {
        if (!model_internal::_numDiasIsValidCacheInitialized)
        {
            model_internal::calculateNumDiasIsValid();
        }

        return model_internal::_numDiasIsValid;
    }

    model_internal function calculateNumDiasIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_numDiasValidator.validate(model_internal::_instance.numDias)
        model_internal::_numDiasIsValid_der = (valRes.results == null);
        model_internal::_numDiasIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::numDiasValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::numDiasValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get numDiasValidationFailureMessages():Array
    {
        if (model_internal::_numDiasValidationFailureMessages == null)
            model_internal::calculateNumDiasIsValid();

        return _numDiasValidationFailureMessages;
    }

    model_internal function set numDiasValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_numDiasValidationFailureMessages;

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
            model_internal::_numDiasValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numDiasValidationFailureMessages", oldValue, value));
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
    public function get idAlarmaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get idAlarmaValidator() : StyleValidator
    {
        return model_internal::_idAlarmaValidator;
    }

    model_internal function set _idAlarmaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_idAlarmaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_idAlarmaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idAlarmaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get idAlarmaIsValid():Boolean
    {
        if (!model_internal::_idAlarmaIsValidCacheInitialized)
        {
            model_internal::calculateIdAlarmaIsValid();
        }

        return model_internal::_idAlarmaIsValid;
    }

    model_internal function calculateIdAlarmaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_idAlarmaValidator.validate(model_internal::_instance.idAlarma)
        model_internal::_idAlarmaIsValid_der = (valRes.results == null);
        model_internal::_idAlarmaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::idAlarmaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::idAlarmaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get idAlarmaValidationFailureMessages():Array
    {
        if (model_internal::_idAlarmaValidationFailureMessages == null)
            model_internal::calculateIdAlarmaIsValid();

        return _idAlarmaValidationFailureMessages;
    }

    model_internal function set idAlarmaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_idAlarmaValidationFailureMessages;

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
            model_internal::_idAlarmaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idAlarmaValidationFailureMessages", oldValue, value));
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
            case("descripcionAlerta"):
            {
                return descripcionAlertaValidationFailureMessages;
            }
            case("numDias"):
            {
                return numDiasValidationFailureMessages;
            }
            case("usuarioTransaccion"):
            {
                return usuarioTransaccionValidationFailureMessages;
            }
            case("idAlarma"):
            {
                return idAlarmaValidationFailureMessages;
            }
            case("fechaCreacion"):
            {
                return fechaCreacionValidationFailureMessages;
            }
            case("fechaTransaccion"):
            {
                return fechaTransaccionValidationFailureMessages;
            }
            case("usuarioCreacion"):
            {
                return usuarioCreacionValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
