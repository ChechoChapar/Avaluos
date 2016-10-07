
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
internal class _PeritosEmpresaEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("idPeritoEmpresa", "empresasAvaluo", "usuarioTransaccion", "estadoAsociacion", "numeroDocumento", "tipoDocumento", "fechaCreacion", "fechaTransaccion", "usuarioCreacion");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("idPeritoEmpresa", "empresasAvaluo", "usuarioTransaccion", "estadoAsociacion", "numeroDocumento", "tipoDocumento", "fechaCreacion", "fechaTransaccion", "usuarioCreacion");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("idPeritoEmpresa", "empresasAvaluo", "usuarioTransaccion", "estadoAsociacion", "numeroDocumento", "tipoDocumento", "fechaCreacion", "fechaTransaccion", "usuarioCreacion");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("idPeritoEmpresa", "empresasAvaluo", "usuarioTransaccion", "estadoAsociacion", "numeroDocumento", "tipoDocumento", "fechaCreacion", "fechaTransaccion", "usuarioCreacion");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "PeritosEmpresa";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _idPeritoEmpresaIsValid:Boolean;
    model_internal var _idPeritoEmpresaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _idPeritoEmpresaIsValidCacheInitialized:Boolean = false;
    model_internal var _idPeritoEmpresaValidationFailureMessages:Array;
    
    model_internal var _empresasAvaluoIsValid:Boolean;
    model_internal var _empresasAvaluoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _empresasAvaluoIsValidCacheInitialized:Boolean = false;
    model_internal var _empresasAvaluoValidationFailureMessages:Array;
    
    model_internal var _usuarioTransaccionIsValid:Boolean;
    model_internal var _usuarioTransaccionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _usuarioTransaccionIsValidCacheInitialized:Boolean = false;
    model_internal var _usuarioTransaccionValidationFailureMessages:Array;
    
    model_internal var _estadoAsociacionIsValid:Boolean;
    model_internal var _estadoAsociacionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _estadoAsociacionIsValidCacheInitialized:Boolean = false;
    model_internal var _estadoAsociacionValidationFailureMessages:Array;
    
    model_internal var _numeroDocumentoIsValid:Boolean;
    model_internal var _numeroDocumentoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _numeroDocumentoIsValidCacheInitialized:Boolean = false;
    model_internal var _numeroDocumentoValidationFailureMessages:Array;
    
    model_internal var _tipoDocumentoIsValid:Boolean;
    model_internal var _tipoDocumentoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _tipoDocumentoIsValidCacheInitialized:Boolean = false;
    model_internal var _tipoDocumentoValidationFailureMessages:Array;
    
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

    model_internal var _instance:_Super_PeritosEmpresa;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _PeritosEmpresaEntityMetadata(value : _Super_PeritosEmpresa)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["idPeritoEmpresa"] = new Array();
            model_internal::dependentsOnMap["empresasAvaluo"] = new Array();
            model_internal::dependentsOnMap["usuarioTransaccion"] = new Array();
            model_internal::dependentsOnMap["estadoAsociacion"] = new Array();
            model_internal::dependentsOnMap["numeroDocumento"] = new Array();
            model_internal::dependentsOnMap["tipoDocumento"] = new Array();
            model_internal::dependentsOnMap["fechaCreacion"] = new Array();
            model_internal::dependentsOnMap["fechaTransaccion"] = new Array();
            model_internal::dependentsOnMap["usuarioCreacion"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
        }

        model_internal::_instance = value;
        model_internal::_idPeritoEmpresaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForIdPeritoEmpresa);
        model_internal::_idPeritoEmpresaValidator.required = true;
        model_internal::_idPeritoEmpresaValidator.requiredFieldError = "idPeritoEmpresa is required";
        //model_internal::_idPeritoEmpresaValidator.source = model_internal::_instance;
        //model_internal::_idPeritoEmpresaValidator.property = "idPeritoEmpresa";
        model_internal::_empresasAvaluoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForEmpresasAvaluo);
        model_internal::_empresasAvaluoValidator.required = true;
        model_internal::_empresasAvaluoValidator.requiredFieldError = "empresasAvaluo is required";
        //model_internal::_empresasAvaluoValidator.source = model_internal::_instance;
        //model_internal::_empresasAvaluoValidator.property = "empresasAvaluo";
        model_internal::_usuarioTransaccionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUsuarioTransaccion);
        model_internal::_usuarioTransaccionValidator.required = true;
        model_internal::_usuarioTransaccionValidator.requiredFieldError = "usuarioTransaccion is required";
        //model_internal::_usuarioTransaccionValidator.source = model_internal::_instance;
        //model_internal::_usuarioTransaccionValidator.property = "usuarioTransaccion";
        model_internal::_estadoAsociacionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForEstadoAsociacion);
        model_internal::_estadoAsociacionValidator.required = true;
        model_internal::_estadoAsociacionValidator.requiredFieldError = "estadoAsociacion is required";
        //model_internal::_estadoAsociacionValidator.source = model_internal::_instance;
        //model_internal::_estadoAsociacionValidator.property = "estadoAsociacion";
        model_internal::_numeroDocumentoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNumeroDocumento);
        model_internal::_numeroDocumentoValidator.required = true;
        model_internal::_numeroDocumentoValidator.requiredFieldError = "numeroDocumento is required";
        //model_internal::_numeroDocumentoValidator.source = model_internal::_instance;
        //model_internal::_numeroDocumentoValidator.property = "numeroDocumento";
        model_internal::_tipoDocumentoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTipoDocumento);
        model_internal::_tipoDocumentoValidator.required = true;
        model_internal::_tipoDocumentoValidator.requiredFieldError = "tipoDocumento is required";
        //model_internal::_tipoDocumentoValidator.source = model_internal::_instance;
        //model_internal::_tipoDocumentoValidator.property = "tipoDocumento";
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
            throw new Error(propertyName + " is not a data property of entity PeritosEmpresa");  
            
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
            throw new Error(propertyName + " is not a collection property of entity PeritosEmpresa");  

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
            throw new Error(propertyName + " does not exist for entity PeritosEmpresa");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity PeritosEmpresa");
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
            throw new Error(propertyName + " does not exist for entity PeritosEmpresa");
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
    public function get isIdPeritoEmpresaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEmpresasAvaluoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUsuarioTransaccionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEstadoAsociacionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNumeroDocumentoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTipoDocumentoAvailable():Boolean
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
    public function invalidateDependentOnIdPeritoEmpresa():void
    {
        if (model_internal::_idPeritoEmpresaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfIdPeritoEmpresa = null;
            model_internal::calculateIdPeritoEmpresaIsValid();
        }
    }
    public function invalidateDependentOnEmpresasAvaluo():void
    {
        if (model_internal::_empresasAvaluoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfEmpresasAvaluo = null;
            model_internal::calculateEmpresasAvaluoIsValid();
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
    public function invalidateDependentOnEstadoAsociacion():void
    {
        if (model_internal::_estadoAsociacionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfEstadoAsociacion = null;
            model_internal::calculateEstadoAsociacionIsValid();
        }
    }
    public function invalidateDependentOnNumeroDocumento():void
    {
        if (model_internal::_numeroDocumentoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNumeroDocumento = null;
            model_internal::calculateNumeroDocumentoIsValid();
        }
    }
    public function invalidateDependentOnTipoDocumento():void
    {
        if (model_internal::_tipoDocumentoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTipoDocumento = null;
            model_internal::calculateTipoDocumentoIsValid();
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
    public function get idPeritoEmpresaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get idPeritoEmpresaValidator() : StyleValidator
    {
        return model_internal::_idPeritoEmpresaValidator;
    }

    model_internal function set _idPeritoEmpresaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_idPeritoEmpresaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_idPeritoEmpresaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idPeritoEmpresaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get idPeritoEmpresaIsValid():Boolean
    {
        if (!model_internal::_idPeritoEmpresaIsValidCacheInitialized)
        {
            model_internal::calculateIdPeritoEmpresaIsValid();
        }

        return model_internal::_idPeritoEmpresaIsValid;
    }

    model_internal function calculateIdPeritoEmpresaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_idPeritoEmpresaValidator.validate(model_internal::_instance.idPeritoEmpresa)
        model_internal::_idPeritoEmpresaIsValid_der = (valRes.results == null);
        model_internal::_idPeritoEmpresaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::idPeritoEmpresaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::idPeritoEmpresaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get idPeritoEmpresaValidationFailureMessages():Array
    {
        if (model_internal::_idPeritoEmpresaValidationFailureMessages == null)
            model_internal::calculateIdPeritoEmpresaIsValid();

        return _idPeritoEmpresaValidationFailureMessages;
    }

    model_internal function set idPeritoEmpresaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_idPeritoEmpresaValidationFailureMessages;

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
            model_internal::_idPeritoEmpresaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idPeritoEmpresaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get empresasAvaluoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get empresasAvaluoValidator() : StyleValidator
    {
        return model_internal::_empresasAvaluoValidator;
    }

    model_internal function set _empresasAvaluoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_empresasAvaluoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_empresasAvaluoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "empresasAvaluoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get empresasAvaluoIsValid():Boolean
    {
        if (!model_internal::_empresasAvaluoIsValidCacheInitialized)
        {
            model_internal::calculateEmpresasAvaluoIsValid();
        }

        return model_internal::_empresasAvaluoIsValid;
    }

    model_internal function calculateEmpresasAvaluoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_empresasAvaluoValidator.validate(model_internal::_instance.empresasAvaluo)
        model_internal::_empresasAvaluoIsValid_der = (valRes.results == null);
        model_internal::_empresasAvaluoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::empresasAvaluoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::empresasAvaluoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get empresasAvaluoValidationFailureMessages():Array
    {
        if (model_internal::_empresasAvaluoValidationFailureMessages == null)
            model_internal::calculateEmpresasAvaluoIsValid();

        return _empresasAvaluoValidationFailureMessages;
    }

    model_internal function set empresasAvaluoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_empresasAvaluoValidationFailureMessages;

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
            model_internal::_empresasAvaluoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "empresasAvaluoValidationFailureMessages", oldValue, value));
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
    public function get estadoAsociacionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get estadoAsociacionValidator() : StyleValidator
    {
        return model_internal::_estadoAsociacionValidator;
    }

    model_internal function set _estadoAsociacionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_estadoAsociacionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_estadoAsociacionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoAsociacionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get estadoAsociacionIsValid():Boolean
    {
        if (!model_internal::_estadoAsociacionIsValidCacheInitialized)
        {
            model_internal::calculateEstadoAsociacionIsValid();
        }

        return model_internal::_estadoAsociacionIsValid;
    }

    model_internal function calculateEstadoAsociacionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_estadoAsociacionValidator.validate(model_internal::_instance.estadoAsociacion)
        model_internal::_estadoAsociacionIsValid_der = (valRes.results == null);
        model_internal::_estadoAsociacionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::estadoAsociacionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::estadoAsociacionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get estadoAsociacionValidationFailureMessages():Array
    {
        if (model_internal::_estadoAsociacionValidationFailureMessages == null)
            model_internal::calculateEstadoAsociacionIsValid();

        return _estadoAsociacionValidationFailureMessages;
    }

    model_internal function set estadoAsociacionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_estadoAsociacionValidationFailureMessages;

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
            model_internal::_estadoAsociacionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoAsociacionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get numeroDocumentoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get numeroDocumentoValidator() : StyleValidator
    {
        return model_internal::_numeroDocumentoValidator;
    }

    model_internal function set _numeroDocumentoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_numeroDocumentoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_numeroDocumentoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numeroDocumentoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get numeroDocumentoIsValid():Boolean
    {
        if (!model_internal::_numeroDocumentoIsValidCacheInitialized)
        {
            model_internal::calculateNumeroDocumentoIsValid();
        }

        return model_internal::_numeroDocumentoIsValid;
    }

    model_internal function calculateNumeroDocumentoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_numeroDocumentoValidator.validate(model_internal::_instance.numeroDocumento)
        model_internal::_numeroDocumentoIsValid_der = (valRes.results == null);
        model_internal::_numeroDocumentoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::numeroDocumentoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::numeroDocumentoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get numeroDocumentoValidationFailureMessages():Array
    {
        if (model_internal::_numeroDocumentoValidationFailureMessages == null)
            model_internal::calculateNumeroDocumentoIsValid();

        return _numeroDocumentoValidationFailureMessages;
    }

    model_internal function set numeroDocumentoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_numeroDocumentoValidationFailureMessages;

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
            model_internal::_numeroDocumentoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numeroDocumentoValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get tipoDocumentoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get tipoDocumentoValidator() : StyleValidator
    {
        return model_internal::_tipoDocumentoValidator;
    }

    model_internal function set _tipoDocumentoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_tipoDocumentoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_tipoDocumentoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoDocumentoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get tipoDocumentoIsValid():Boolean
    {
        if (!model_internal::_tipoDocumentoIsValidCacheInitialized)
        {
            model_internal::calculateTipoDocumentoIsValid();
        }

        return model_internal::_tipoDocumentoIsValid;
    }

    model_internal function calculateTipoDocumentoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_tipoDocumentoValidator.validate(model_internal::_instance.tipoDocumento)
        model_internal::_tipoDocumentoIsValid_der = (valRes.results == null);
        model_internal::_tipoDocumentoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::tipoDocumentoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::tipoDocumentoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get tipoDocumentoValidationFailureMessages():Array
    {
        if (model_internal::_tipoDocumentoValidationFailureMessages == null)
            model_internal::calculateTipoDocumentoIsValid();

        return _tipoDocumentoValidationFailureMessages;
    }

    model_internal function set tipoDocumentoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_tipoDocumentoValidationFailureMessages;

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
            model_internal::_tipoDocumentoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoDocumentoValidationFailureMessages", oldValue, value));
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
            case("idPeritoEmpresa"):
            {
                return idPeritoEmpresaValidationFailureMessages;
            }
            case("empresasAvaluo"):
            {
                return empresasAvaluoValidationFailureMessages;
            }
            case("usuarioTransaccion"):
            {
                return usuarioTransaccionValidationFailureMessages;
            }
            case("estadoAsociacion"):
            {
                return estadoAsociacionValidationFailureMessages;
            }
            case("numeroDocumento"):
            {
                return numeroDocumentoValidationFailureMessages;
            }
            case("tipoDocumento"):
            {
                return tipoDocumentoValidationFailureMessages;
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
