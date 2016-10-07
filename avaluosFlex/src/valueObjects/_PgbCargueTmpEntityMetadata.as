
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
internal class _PgbCargueTmpEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("nombreArchivo", "lineaPlano", "numeroRefCargue", "estadoCargue", "usuarioTransaccion", "consecutivoTmp", "contenidoLineaPlano", "tipoCargue", "fechaTransaccion", "mensajeError", "consecutivoBatch");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("nombreArchivo", "lineaPlano", "numeroRefCargue", "estadoCargue", "usuarioTransaccion", "consecutivoTmp", "contenidoLineaPlano", "tipoCargue", "fechaTransaccion", "mensajeError", "consecutivoBatch");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("nombreArchivo", "lineaPlano", "numeroRefCargue", "estadoCargue", "usuarioTransaccion", "consecutivoTmp", "contenidoLineaPlano", "tipoCargue", "fechaTransaccion", "mensajeError", "consecutivoBatch");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("nombreArchivo", "lineaPlano", "numeroRefCargue", "estadoCargue", "usuarioTransaccion", "consecutivoTmp", "contenidoLineaPlano", "tipoCargue", "fechaTransaccion", "mensajeError", "consecutivoBatch");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "PgbCargueTmp";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _nombreArchivoIsValid:Boolean;
    model_internal var _nombreArchivoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nombreArchivoIsValidCacheInitialized:Boolean = false;
    model_internal var _nombreArchivoValidationFailureMessages:Array;
    
    model_internal var _lineaPlanoIsValid:Boolean;
    model_internal var _lineaPlanoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _lineaPlanoIsValidCacheInitialized:Boolean = false;
    model_internal var _lineaPlanoValidationFailureMessages:Array;
    
    model_internal var _numeroRefCargueIsValid:Boolean;
    model_internal var _numeroRefCargueValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _numeroRefCargueIsValidCacheInitialized:Boolean = false;
    model_internal var _numeroRefCargueValidationFailureMessages:Array;
    
    model_internal var _estadoCargueIsValid:Boolean;
    model_internal var _estadoCargueValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _estadoCargueIsValidCacheInitialized:Boolean = false;
    model_internal var _estadoCargueValidationFailureMessages:Array;
    
    model_internal var _usuarioTransaccionIsValid:Boolean;
    model_internal var _usuarioTransaccionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _usuarioTransaccionIsValidCacheInitialized:Boolean = false;
    model_internal var _usuarioTransaccionValidationFailureMessages:Array;
    
    model_internal var _contenidoLineaPlanoIsValid:Boolean;
    model_internal var _contenidoLineaPlanoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _contenidoLineaPlanoIsValidCacheInitialized:Boolean = false;
    model_internal var _contenidoLineaPlanoValidationFailureMessages:Array;
    
    model_internal var _tipoCargueIsValid:Boolean;
    model_internal var _tipoCargueValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _tipoCargueIsValidCacheInitialized:Boolean = false;
    model_internal var _tipoCargueValidationFailureMessages:Array;
    
    model_internal var _fechaTransaccionIsValid:Boolean;
    model_internal var _fechaTransaccionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fechaTransaccionIsValidCacheInitialized:Boolean = false;
    model_internal var _fechaTransaccionValidationFailureMessages:Array;
    
    model_internal var _mensajeErrorIsValid:Boolean;
    model_internal var _mensajeErrorValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _mensajeErrorIsValidCacheInitialized:Boolean = false;
    model_internal var _mensajeErrorValidationFailureMessages:Array;
    
    model_internal var _consecutivoBatchIsValid:Boolean;
    model_internal var _consecutivoBatchValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _consecutivoBatchIsValidCacheInitialized:Boolean = false;
    model_internal var _consecutivoBatchValidationFailureMessages:Array;

    model_internal var _instance:_Super_PgbCargueTmp;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _PgbCargueTmpEntityMetadata(value : _Super_PgbCargueTmp)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["nombreArchivo"] = new Array();
            model_internal::dependentsOnMap["lineaPlano"] = new Array();
            model_internal::dependentsOnMap["numeroRefCargue"] = new Array();
            model_internal::dependentsOnMap["estadoCargue"] = new Array();
            model_internal::dependentsOnMap["usuarioTransaccion"] = new Array();
            model_internal::dependentsOnMap["consecutivoTmp"] = new Array();
            model_internal::dependentsOnMap["contenidoLineaPlano"] = new Array();
            model_internal::dependentsOnMap["tipoCargue"] = new Array();
            model_internal::dependentsOnMap["fechaTransaccion"] = new Array();
            model_internal::dependentsOnMap["mensajeError"] = new Array();
            model_internal::dependentsOnMap["consecutivoBatch"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
        }

        model_internal::_instance = value;
        model_internal::_nombreArchivoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNombreArchivo);
        model_internal::_nombreArchivoValidator.required = true;
        model_internal::_nombreArchivoValidator.requiredFieldError = "nombreArchivo is required";
        //model_internal::_nombreArchivoValidator.source = model_internal::_instance;
        //model_internal::_nombreArchivoValidator.property = "nombreArchivo";
        model_internal::_lineaPlanoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLineaPlano);
        model_internal::_lineaPlanoValidator.required = true;
        model_internal::_lineaPlanoValidator.requiredFieldError = "lineaPlano is required";
        //model_internal::_lineaPlanoValidator.source = model_internal::_instance;
        //model_internal::_lineaPlanoValidator.property = "lineaPlano";
        model_internal::_numeroRefCargueValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNumeroRefCargue);
        model_internal::_numeroRefCargueValidator.required = true;
        model_internal::_numeroRefCargueValidator.requiredFieldError = "numeroRefCargue is required";
        //model_internal::_numeroRefCargueValidator.source = model_internal::_instance;
        //model_internal::_numeroRefCargueValidator.property = "numeroRefCargue";
        model_internal::_estadoCargueValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForEstadoCargue);
        model_internal::_estadoCargueValidator.required = true;
        model_internal::_estadoCargueValidator.requiredFieldError = "estadoCargue is required";
        //model_internal::_estadoCargueValidator.source = model_internal::_instance;
        //model_internal::_estadoCargueValidator.property = "estadoCargue";
        model_internal::_usuarioTransaccionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUsuarioTransaccion);
        model_internal::_usuarioTransaccionValidator.required = true;
        model_internal::_usuarioTransaccionValidator.requiredFieldError = "usuarioTransaccion is required";
        //model_internal::_usuarioTransaccionValidator.source = model_internal::_instance;
        //model_internal::_usuarioTransaccionValidator.property = "usuarioTransaccion";
        model_internal::_contenidoLineaPlanoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForContenidoLineaPlano);
        model_internal::_contenidoLineaPlanoValidator.required = true;
        model_internal::_contenidoLineaPlanoValidator.requiredFieldError = "contenidoLineaPlano is required";
        //model_internal::_contenidoLineaPlanoValidator.source = model_internal::_instance;
        //model_internal::_contenidoLineaPlanoValidator.property = "contenidoLineaPlano";
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
        model_internal::_mensajeErrorValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForMensajeError);
        model_internal::_mensajeErrorValidator.required = true;
        model_internal::_mensajeErrorValidator.requiredFieldError = "mensajeError is required";
        //model_internal::_mensajeErrorValidator.source = model_internal::_instance;
        //model_internal::_mensajeErrorValidator.property = "mensajeError";
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
            throw new Error(propertyName + " is not a data property of entity PgbCargueTmp");  
            
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
            throw new Error(propertyName + " is not a collection property of entity PgbCargueTmp");  

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
            throw new Error(propertyName + " does not exist for entity PgbCargueTmp");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity PgbCargueTmp");
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
            throw new Error(propertyName + " does not exist for entity PgbCargueTmp");
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
    public function get isNombreArchivoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLineaPlanoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNumeroRefCargueAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEstadoCargueAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUsuarioTransaccionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isConsecutivoTmpAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isContenidoLineaPlanoAvailable():Boolean
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
    public function get isMensajeErrorAvailable():Boolean
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
    public function invalidateDependentOnNombreArchivo():void
    {
        if (model_internal::_nombreArchivoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNombreArchivo = null;
            model_internal::calculateNombreArchivoIsValid();
        }
    }
    public function invalidateDependentOnLineaPlano():void
    {
        if (model_internal::_lineaPlanoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLineaPlano = null;
            model_internal::calculateLineaPlanoIsValid();
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
    public function invalidateDependentOnEstadoCargue():void
    {
        if (model_internal::_estadoCargueIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfEstadoCargue = null;
            model_internal::calculateEstadoCargueIsValid();
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
    public function invalidateDependentOnContenidoLineaPlano():void
    {
        if (model_internal::_contenidoLineaPlanoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfContenidoLineaPlano = null;
            model_internal::calculateContenidoLineaPlanoIsValid();
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
    public function invalidateDependentOnMensajeError():void
    {
        if (model_internal::_mensajeErrorIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfMensajeError = null;
            model_internal::calculateMensajeErrorIsValid();
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
    public function get lineaPlanoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get lineaPlanoValidator() : StyleValidator
    {
        return model_internal::_lineaPlanoValidator;
    }

    model_internal function set _lineaPlanoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_lineaPlanoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_lineaPlanoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lineaPlanoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get lineaPlanoIsValid():Boolean
    {
        if (!model_internal::_lineaPlanoIsValidCacheInitialized)
        {
            model_internal::calculateLineaPlanoIsValid();
        }

        return model_internal::_lineaPlanoIsValid;
    }

    model_internal function calculateLineaPlanoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_lineaPlanoValidator.validate(model_internal::_instance.lineaPlano)
        model_internal::_lineaPlanoIsValid_der = (valRes.results == null);
        model_internal::_lineaPlanoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::lineaPlanoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::lineaPlanoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get lineaPlanoValidationFailureMessages():Array
    {
        if (model_internal::_lineaPlanoValidationFailureMessages == null)
            model_internal::calculateLineaPlanoIsValid();

        return _lineaPlanoValidationFailureMessages;
    }

    model_internal function set lineaPlanoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_lineaPlanoValidationFailureMessages;

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
            model_internal::_lineaPlanoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lineaPlanoValidationFailureMessages", oldValue, value));
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
    public function get estadoCargueStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get estadoCargueValidator() : StyleValidator
    {
        return model_internal::_estadoCargueValidator;
    }

    model_internal function set _estadoCargueIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_estadoCargueIsValid;         
        if (oldValue !== value)
        {
            model_internal::_estadoCargueIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoCargueIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get estadoCargueIsValid():Boolean
    {
        if (!model_internal::_estadoCargueIsValidCacheInitialized)
        {
            model_internal::calculateEstadoCargueIsValid();
        }

        return model_internal::_estadoCargueIsValid;
    }

    model_internal function calculateEstadoCargueIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_estadoCargueValidator.validate(model_internal::_instance.estadoCargue)
        model_internal::_estadoCargueIsValid_der = (valRes.results == null);
        model_internal::_estadoCargueIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::estadoCargueValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::estadoCargueValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get estadoCargueValidationFailureMessages():Array
    {
        if (model_internal::_estadoCargueValidationFailureMessages == null)
            model_internal::calculateEstadoCargueIsValid();

        return _estadoCargueValidationFailureMessages;
    }

    model_internal function set estadoCargueValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_estadoCargueValidationFailureMessages;

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
            model_internal::_estadoCargueValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoCargueValidationFailureMessages", oldValue, value));
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
    public function get consecutivoTmpStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get contenidoLineaPlanoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get contenidoLineaPlanoValidator() : StyleValidator
    {
        return model_internal::_contenidoLineaPlanoValidator;
    }

    model_internal function set _contenidoLineaPlanoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_contenidoLineaPlanoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_contenidoLineaPlanoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "contenidoLineaPlanoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get contenidoLineaPlanoIsValid():Boolean
    {
        if (!model_internal::_contenidoLineaPlanoIsValidCacheInitialized)
        {
            model_internal::calculateContenidoLineaPlanoIsValid();
        }

        return model_internal::_contenidoLineaPlanoIsValid;
    }

    model_internal function calculateContenidoLineaPlanoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_contenidoLineaPlanoValidator.validate(model_internal::_instance.contenidoLineaPlano)
        model_internal::_contenidoLineaPlanoIsValid_der = (valRes.results == null);
        model_internal::_contenidoLineaPlanoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::contenidoLineaPlanoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::contenidoLineaPlanoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get contenidoLineaPlanoValidationFailureMessages():Array
    {
        if (model_internal::_contenidoLineaPlanoValidationFailureMessages == null)
            model_internal::calculateContenidoLineaPlanoIsValid();

        return _contenidoLineaPlanoValidationFailureMessages;
    }

    model_internal function set contenidoLineaPlanoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_contenidoLineaPlanoValidationFailureMessages;

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
            model_internal::_contenidoLineaPlanoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "contenidoLineaPlanoValidationFailureMessages", oldValue, value));
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
    public function get mensajeErrorStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get mensajeErrorValidator() : StyleValidator
    {
        return model_internal::_mensajeErrorValidator;
    }

    model_internal function set _mensajeErrorIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_mensajeErrorIsValid;         
        if (oldValue !== value)
        {
            model_internal::_mensajeErrorIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "mensajeErrorIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get mensajeErrorIsValid():Boolean
    {
        if (!model_internal::_mensajeErrorIsValidCacheInitialized)
        {
            model_internal::calculateMensajeErrorIsValid();
        }

        return model_internal::_mensajeErrorIsValid;
    }

    model_internal function calculateMensajeErrorIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_mensajeErrorValidator.validate(model_internal::_instance.mensajeError)
        model_internal::_mensajeErrorIsValid_der = (valRes.results == null);
        model_internal::_mensajeErrorIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::mensajeErrorValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::mensajeErrorValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get mensajeErrorValidationFailureMessages():Array
    {
        if (model_internal::_mensajeErrorValidationFailureMessages == null)
            model_internal::calculateMensajeErrorIsValid();

        return _mensajeErrorValidationFailureMessages;
    }

    model_internal function set mensajeErrorValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_mensajeErrorValidationFailureMessages;

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
            model_internal::_mensajeErrorValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "mensajeErrorValidationFailureMessages", oldValue, value));
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
            case("nombreArchivo"):
            {
                return nombreArchivoValidationFailureMessages;
            }
            case("lineaPlano"):
            {
                return lineaPlanoValidationFailureMessages;
            }
            case("numeroRefCargue"):
            {
                return numeroRefCargueValidationFailureMessages;
            }
            case("estadoCargue"):
            {
                return estadoCargueValidationFailureMessages;
            }
            case("usuarioTransaccion"):
            {
                return usuarioTransaccionValidationFailureMessages;
            }
            case("contenidoLineaPlano"):
            {
                return contenidoLineaPlanoValidationFailureMessages;
            }
            case("tipoCargue"):
            {
                return tipoCargueValidationFailureMessages;
            }
            case("fechaTransaccion"):
            {
                return fechaTransaccionValidationFailureMessages;
            }
            case("mensajeError"):
            {
                return mensajeErrorValidationFailureMessages;
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
