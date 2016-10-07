
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
internal class _EstructuraArchivoPlanoEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("longitudVisualCampo", "columnaBd", "obligatoriedadLote", "funcionConversion", "esAsobancaria", "formato", "obligatoriedadCasa", "dominio", "obligatoriedadCasarural", "obligatoriedadOficina", "obligatoriedadLocal", "consecutivoPlano", "obligatoriedadApartamento", "tipoDato", "esId", "obligatoriedadBodega", "tablaBd", "obligatoriedadLoteurbano");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("longitudVisualCampo", "columnaBd", "obligatoriedadLote", "funcionConversion", "esAsobancaria", "formato", "obligatoriedadCasa", "dominio", "obligatoriedadCasarural", "obligatoriedadOficina", "obligatoriedadLocal", "consecutivoPlano", "obligatoriedadApartamento", "tipoDato", "esId", "obligatoriedadBodega", "tablaBd", "obligatoriedadLoteurbano");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("longitudVisualCampo", "columnaBd", "obligatoriedadLote", "funcionConversion", "esAsobancaria", "formato", "obligatoriedadCasa", "dominio", "obligatoriedadCasarural", "obligatoriedadOficina", "obligatoriedadLocal", "consecutivoPlano", "obligatoriedadApartamento", "tipoDato", "esId", "obligatoriedadBodega", "tablaBd", "obligatoriedadLoteurbano");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("longitudVisualCampo", "columnaBd", "obligatoriedadLote", "funcionConversion", "esAsobancaria", "formato", "obligatoriedadCasa", "dominio", "obligatoriedadCasarural", "obligatoriedadOficina", "obligatoriedadLocal", "consecutivoPlano", "obligatoriedadApartamento", "tipoDato", "esId", "obligatoriedadBodega", "tablaBd", "obligatoriedadLoteurbano");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "EstructuraArchivoPlano";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _longitudVisualCampoIsValid:Boolean;
    model_internal var _longitudVisualCampoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _longitudVisualCampoIsValidCacheInitialized:Boolean = false;
    model_internal var _longitudVisualCampoValidationFailureMessages:Array;
    
    model_internal var _columnaBdIsValid:Boolean;
    model_internal var _columnaBdValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _columnaBdIsValidCacheInitialized:Boolean = false;
    model_internal var _columnaBdValidationFailureMessages:Array;
    
    model_internal var _obligatoriedadLoteIsValid:Boolean;
    model_internal var _obligatoriedadLoteValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _obligatoriedadLoteIsValidCacheInitialized:Boolean = false;
    model_internal var _obligatoriedadLoteValidationFailureMessages:Array;
    
    model_internal var _funcionConversionIsValid:Boolean;
    model_internal var _funcionConversionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _funcionConversionIsValidCacheInitialized:Boolean = false;
    model_internal var _funcionConversionValidationFailureMessages:Array;
    
    model_internal var _esAsobancariaIsValid:Boolean;
    model_internal var _esAsobancariaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _esAsobancariaIsValidCacheInitialized:Boolean = false;
    model_internal var _esAsobancariaValidationFailureMessages:Array;
    
    model_internal var _formatoIsValid:Boolean;
    model_internal var _formatoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _formatoIsValidCacheInitialized:Boolean = false;
    model_internal var _formatoValidationFailureMessages:Array;
    
    model_internal var _obligatoriedadCasaIsValid:Boolean;
    model_internal var _obligatoriedadCasaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _obligatoriedadCasaIsValidCacheInitialized:Boolean = false;
    model_internal var _obligatoriedadCasaValidationFailureMessages:Array;
    
    model_internal var _dominioIsValid:Boolean;
    model_internal var _dominioValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _dominioIsValidCacheInitialized:Boolean = false;
    model_internal var _dominioValidationFailureMessages:Array;
    
    model_internal var _obligatoriedadCasaruralIsValid:Boolean;
    model_internal var _obligatoriedadCasaruralValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _obligatoriedadCasaruralIsValidCacheInitialized:Boolean = false;
    model_internal var _obligatoriedadCasaruralValidationFailureMessages:Array;
    
    model_internal var _obligatoriedadOficinaIsValid:Boolean;
    model_internal var _obligatoriedadOficinaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _obligatoriedadOficinaIsValidCacheInitialized:Boolean = false;
    model_internal var _obligatoriedadOficinaValidationFailureMessages:Array;
    
    model_internal var _obligatoriedadLocalIsValid:Boolean;
    model_internal var _obligatoriedadLocalValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _obligatoriedadLocalIsValidCacheInitialized:Boolean = false;
    model_internal var _obligatoriedadLocalValidationFailureMessages:Array;
    
    model_internal var _consecutivoPlanoIsValid:Boolean;
    model_internal var _consecutivoPlanoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _consecutivoPlanoIsValidCacheInitialized:Boolean = false;
    model_internal var _consecutivoPlanoValidationFailureMessages:Array;
    
    model_internal var _obligatoriedadApartamentoIsValid:Boolean;
    model_internal var _obligatoriedadApartamentoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _obligatoriedadApartamentoIsValidCacheInitialized:Boolean = false;
    model_internal var _obligatoriedadApartamentoValidationFailureMessages:Array;
    
    model_internal var _tipoDatoIsValid:Boolean;
    model_internal var _tipoDatoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _tipoDatoIsValidCacheInitialized:Boolean = false;
    model_internal var _tipoDatoValidationFailureMessages:Array;
    
    model_internal var _esIdIsValid:Boolean;
    model_internal var _esIdValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _esIdIsValidCacheInitialized:Boolean = false;
    model_internal var _esIdValidationFailureMessages:Array;
    
    model_internal var _obligatoriedadBodegaIsValid:Boolean;
    model_internal var _obligatoriedadBodegaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _obligatoriedadBodegaIsValidCacheInitialized:Boolean = false;
    model_internal var _obligatoriedadBodegaValidationFailureMessages:Array;
    
    model_internal var _tablaBdIsValid:Boolean;
    model_internal var _tablaBdValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _tablaBdIsValidCacheInitialized:Boolean = false;
    model_internal var _tablaBdValidationFailureMessages:Array;
    
    model_internal var _obligatoriedadLoteurbanoIsValid:Boolean;
    model_internal var _obligatoriedadLoteurbanoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _obligatoriedadLoteurbanoIsValidCacheInitialized:Boolean = false;
    model_internal var _obligatoriedadLoteurbanoValidationFailureMessages:Array;

    model_internal var _instance:_Super_EstructuraArchivoPlano;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _EstructuraArchivoPlanoEntityMetadata(value : _Super_EstructuraArchivoPlano)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["longitudVisualCampo"] = new Array();
            model_internal::dependentsOnMap["columnaBd"] = new Array();
            model_internal::dependentsOnMap["obligatoriedadLote"] = new Array();
            model_internal::dependentsOnMap["funcionConversion"] = new Array();
            model_internal::dependentsOnMap["esAsobancaria"] = new Array();
            model_internal::dependentsOnMap["formato"] = new Array();
            model_internal::dependentsOnMap["obligatoriedadCasa"] = new Array();
            model_internal::dependentsOnMap["dominio"] = new Array();
            model_internal::dependentsOnMap["obligatoriedadCasarural"] = new Array();
            model_internal::dependentsOnMap["obligatoriedadOficina"] = new Array();
            model_internal::dependentsOnMap["obligatoriedadLocal"] = new Array();
            model_internal::dependentsOnMap["consecutivoPlano"] = new Array();
            model_internal::dependentsOnMap["obligatoriedadApartamento"] = new Array();
            model_internal::dependentsOnMap["tipoDato"] = new Array();
            model_internal::dependentsOnMap["esId"] = new Array();
            model_internal::dependentsOnMap["obligatoriedadBodega"] = new Array();
            model_internal::dependentsOnMap["tablaBd"] = new Array();
            model_internal::dependentsOnMap["obligatoriedadLoteurbano"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
        }

        model_internal::_instance = value;
        model_internal::_longitudVisualCampoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLongitudVisualCampo);
        model_internal::_longitudVisualCampoValidator.required = true;
        model_internal::_longitudVisualCampoValidator.requiredFieldError = "longitudVisualCampo is required";
        //model_internal::_longitudVisualCampoValidator.source = model_internal::_instance;
        //model_internal::_longitudVisualCampoValidator.property = "longitudVisualCampo";
        model_internal::_columnaBdValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForColumnaBd);
        model_internal::_columnaBdValidator.required = true;
        model_internal::_columnaBdValidator.requiredFieldError = "columnaBd is required";
        //model_internal::_columnaBdValidator.source = model_internal::_instance;
        //model_internal::_columnaBdValidator.property = "columnaBd";
        model_internal::_obligatoriedadLoteValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForObligatoriedadLote);
        model_internal::_obligatoriedadLoteValidator.required = true;
        model_internal::_obligatoriedadLoteValidator.requiredFieldError = "obligatoriedadLote is required";
        //model_internal::_obligatoriedadLoteValidator.source = model_internal::_instance;
        //model_internal::_obligatoriedadLoteValidator.property = "obligatoriedadLote";
        model_internal::_funcionConversionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFuncionConversion);
        model_internal::_funcionConversionValidator.required = true;
        model_internal::_funcionConversionValidator.requiredFieldError = "funcionConversion is required";
        //model_internal::_funcionConversionValidator.source = model_internal::_instance;
        //model_internal::_funcionConversionValidator.property = "funcionConversion";
        model_internal::_esAsobancariaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForEsAsobancaria);
        model_internal::_esAsobancariaValidator.required = true;
        model_internal::_esAsobancariaValidator.requiredFieldError = "esAsobancaria is required";
        //model_internal::_esAsobancariaValidator.source = model_internal::_instance;
        //model_internal::_esAsobancariaValidator.property = "esAsobancaria";
        model_internal::_formatoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFormato);
        model_internal::_formatoValidator.required = true;
        model_internal::_formatoValidator.requiredFieldError = "formato is required";
        //model_internal::_formatoValidator.source = model_internal::_instance;
        //model_internal::_formatoValidator.property = "formato";
        model_internal::_obligatoriedadCasaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForObligatoriedadCasa);
        model_internal::_obligatoriedadCasaValidator.required = true;
        model_internal::_obligatoriedadCasaValidator.requiredFieldError = "obligatoriedadCasa is required";
        //model_internal::_obligatoriedadCasaValidator.source = model_internal::_instance;
        //model_internal::_obligatoriedadCasaValidator.property = "obligatoriedadCasa";
        model_internal::_dominioValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDominio);
        model_internal::_dominioValidator.required = true;
        model_internal::_dominioValidator.requiredFieldError = "dominio is required";
        //model_internal::_dominioValidator.source = model_internal::_instance;
        //model_internal::_dominioValidator.property = "dominio";
        model_internal::_obligatoriedadCasaruralValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForObligatoriedadCasarural);
        model_internal::_obligatoriedadCasaruralValidator.required = true;
        model_internal::_obligatoriedadCasaruralValidator.requiredFieldError = "obligatoriedadCasarural is required";
        //model_internal::_obligatoriedadCasaruralValidator.source = model_internal::_instance;
        //model_internal::_obligatoriedadCasaruralValidator.property = "obligatoriedadCasarural";
        model_internal::_obligatoriedadOficinaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForObligatoriedadOficina);
        model_internal::_obligatoriedadOficinaValidator.required = true;
        model_internal::_obligatoriedadOficinaValidator.requiredFieldError = "obligatoriedadOficina is required";
        //model_internal::_obligatoriedadOficinaValidator.source = model_internal::_instance;
        //model_internal::_obligatoriedadOficinaValidator.property = "obligatoriedadOficina";
        model_internal::_obligatoriedadLocalValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForObligatoriedadLocal);
        model_internal::_obligatoriedadLocalValidator.required = true;
        model_internal::_obligatoriedadLocalValidator.requiredFieldError = "obligatoriedadLocal is required";
        //model_internal::_obligatoriedadLocalValidator.source = model_internal::_instance;
        //model_internal::_obligatoriedadLocalValidator.property = "obligatoriedadLocal";
        model_internal::_consecutivoPlanoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForConsecutivoPlano);
        model_internal::_consecutivoPlanoValidator.required = true;
        model_internal::_consecutivoPlanoValidator.requiredFieldError = "consecutivoPlano is required";
        //model_internal::_consecutivoPlanoValidator.source = model_internal::_instance;
        //model_internal::_consecutivoPlanoValidator.property = "consecutivoPlano";
        model_internal::_obligatoriedadApartamentoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForObligatoriedadApartamento);
        model_internal::_obligatoriedadApartamentoValidator.required = true;
        model_internal::_obligatoriedadApartamentoValidator.requiredFieldError = "obligatoriedadApartamento is required";
        //model_internal::_obligatoriedadApartamentoValidator.source = model_internal::_instance;
        //model_internal::_obligatoriedadApartamentoValidator.property = "obligatoriedadApartamento";
        model_internal::_tipoDatoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTipoDato);
        model_internal::_tipoDatoValidator.required = true;
        model_internal::_tipoDatoValidator.requiredFieldError = "tipoDato is required";
        //model_internal::_tipoDatoValidator.source = model_internal::_instance;
        //model_internal::_tipoDatoValidator.property = "tipoDato";
        model_internal::_esIdValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForEsId);
        model_internal::_esIdValidator.required = true;
        model_internal::_esIdValidator.requiredFieldError = "esId is required";
        //model_internal::_esIdValidator.source = model_internal::_instance;
        //model_internal::_esIdValidator.property = "esId";
        model_internal::_obligatoriedadBodegaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForObligatoriedadBodega);
        model_internal::_obligatoriedadBodegaValidator.required = true;
        model_internal::_obligatoriedadBodegaValidator.requiredFieldError = "obligatoriedadBodega is required";
        //model_internal::_obligatoriedadBodegaValidator.source = model_internal::_instance;
        //model_internal::_obligatoriedadBodegaValidator.property = "obligatoriedadBodega";
        model_internal::_tablaBdValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTablaBd);
        model_internal::_tablaBdValidator.required = true;
        model_internal::_tablaBdValidator.requiredFieldError = "tablaBd is required";
        //model_internal::_tablaBdValidator.source = model_internal::_instance;
        //model_internal::_tablaBdValidator.property = "tablaBd";
        model_internal::_obligatoriedadLoteurbanoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForObligatoriedadLoteurbano);
        model_internal::_obligatoriedadLoteurbanoValidator.required = true;
        model_internal::_obligatoriedadLoteurbanoValidator.requiredFieldError = "obligatoriedadLoteurbano is required";
        //model_internal::_obligatoriedadLoteurbanoValidator.source = model_internal::_instance;
        //model_internal::_obligatoriedadLoteurbanoValidator.property = "obligatoriedadLoteurbano";
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
            throw new Error(propertyName + " is not a data property of entity EstructuraArchivoPlano");  
            
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
            throw new Error(propertyName + " is not a collection property of entity EstructuraArchivoPlano");  

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
            throw new Error(propertyName + " does not exist for entity EstructuraArchivoPlano");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity EstructuraArchivoPlano");
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
            throw new Error(propertyName + " does not exist for entity EstructuraArchivoPlano");
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
    public function get isLongitudVisualCampoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isColumnaBdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isObligatoriedadLoteAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFuncionConversionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEsAsobancariaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFormatoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isObligatoriedadCasaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDominioAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isObligatoriedadCasaruralAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isObligatoriedadOficinaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isObligatoriedadLocalAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isConsecutivoPlanoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isObligatoriedadApartamentoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTipoDatoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEsIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isObligatoriedadBodegaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTablaBdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isObligatoriedadLoteurbanoAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnLongitudVisualCampo():void
    {
        if (model_internal::_longitudVisualCampoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLongitudVisualCampo = null;
            model_internal::calculateLongitudVisualCampoIsValid();
        }
    }
    public function invalidateDependentOnColumnaBd():void
    {
        if (model_internal::_columnaBdIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfColumnaBd = null;
            model_internal::calculateColumnaBdIsValid();
        }
    }
    public function invalidateDependentOnObligatoriedadLote():void
    {
        if (model_internal::_obligatoriedadLoteIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfObligatoriedadLote = null;
            model_internal::calculateObligatoriedadLoteIsValid();
        }
    }
    public function invalidateDependentOnFuncionConversion():void
    {
        if (model_internal::_funcionConversionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFuncionConversion = null;
            model_internal::calculateFuncionConversionIsValid();
        }
    }
    public function invalidateDependentOnEsAsobancaria():void
    {
        if (model_internal::_esAsobancariaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfEsAsobancaria = null;
            model_internal::calculateEsAsobancariaIsValid();
        }
    }
    public function invalidateDependentOnFormato():void
    {
        if (model_internal::_formatoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFormato = null;
            model_internal::calculateFormatoIsValid();
        }
    }
    public function invalidateDependentOnObligatoriedadCasa():void
    {
        if (model_internal::_obligatoriedadCasaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfObligatoriedadCasa = null;
            model_internal::calculateObligatoriedadCasaIsValid();
        }
    }
    public function invalidateDependentOnDominio():void
    {
        if (model_internal::_dominioIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDominio = null;
            model_internal::calculateDominioIsValid();
        }
    }
    public function invalidateDependentOnObligatoriedadCasarural():void
    {
        if (model_internal::_obligatoriedadCasaruralIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfObligatoriedadCasarural = null;
            model_internal::calculateObligatoriedadCasaruralIsValid();
        }
    }
    public function invalidateDependentOnObligatoriedadOficina():void
    {
        if (model_internal::_obligatoriedadOficinaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfObligatoriedadOficina = null;
            model_internal::calculateObligatoriedadOficinaIsValid();
        }
    }
    public function invalidateDependentOnObligatoriedadLocal():void
    {
        if (model_internal::_obligatoriedadLocalIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfObligatoriedadLocal = null;
            model_internal::calculateObligatoriedadLocalIsValid();
        }
    }
    public function invalidateDependentOnConsecutivoPlano():void
    {
        if (model_internal::_consecutivoPlanoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfConsecutivoPlano = null;
            model_internal::calculateConsecutivoPlanoIsValid();
        }
    }
    public function invalidateDependentOnObligatoriedadApartamento():void
    {
        if (model_internal::_obligatoriedadApartamentoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfObligatoriedadApartamento = null;
            model_internal::calculateObligatoriedadApartamentoIsValid();
        }
    }
    public function invalidateDependentOnTipoDato():void
    {
        if (model_internal::_tipoDatoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTipoDato = null;
            model_internal::calculateTipoDatoIsValid();
        }
    }
    public function invalidateDependentOnEsId():void
    {
        if (model_internal::_esIdIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfEsId = null;
            model_internal::calculateEsIdIsValid();
        }
    }
    public function invalidateDependentOnObligatoriedadBodega():void
    {
        if (model_internal::_obligatoriedadBodegaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfObligatoriedadBodega = null;
            model_internal::calculateObligatoriedadBodegaIsValid();
        }
    }
    public function invalidateDependentOnTablaBd():void
    {
        if (model_internal::_tablaBdIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTablaBd = null;
            model_internal::calculateTablaBdIsValid();
        }
    }
    public function invalidateDependentOnObligatoriedadLoteurbano():void
    {
        if (model_internal::_obligatoriedadLoteurbanoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfObligatoriedadLoteurbano = null;
            model_internal::calculateObligatoriedadLoteurbanoIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get longitudVisualCampoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get longitudVisualCampoValidator() : StyleValidator
    {
        return model_internal::_longitudVisualCampoValidator;
    }

    model_internal function set _longitudVisualCampoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_longitudVisualCampoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_longitudVisualCampoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "longitudVisualCampoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get longitudVisualCampoIsValid():Boolean
    {
        if (!model_internal::_longitudVisualCampoIsValidCacheInitialized)
        {
            model_internal::calculateLongitudVisualCampoIsValid();
        }

        return model_internal::_longitudVisualCampoIsValid;
    }

    model_internal function calculateLongitudVisualCampoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_longitudVisualCampoValidator.validate(model_internal::_instance.longitudVisualCampo)
        model_internal::_longitudVisualCampoIsValid_der = (valRes.results == null);
        model_internal::_longitudVisualCampoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::longitudVisualCampoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::longitudVisualCampoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get longitudVisualCampoValidationFailureMessages():Array
    {
        if (model_internal::_longitudVisualCampoValidationFailureMessages == null)
            model_internal::calculateLongitudVisualCampoIsValid();

        return _longitudVisualCampoValidationFailureMessages;
    }

    model_internal function set longitudVisualCampoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_longitudVisualCampoValidationFailureMessages;

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
            model_internal::_longitudVisualCampoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "longitudVisualCampoValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get columnaBdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get columnaBdValidator() : StyleValidator
    {
        return model_internal::_columnaBdValidator;
    }

    model_internal function set _columnaBdIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_columnaBdIsValid;         
        if (oldValue !== value)
        {
            model_internal::_columnaBdIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "columnaBdIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get columnaBdIsValid():Boolean
    {
        if (!model_internal::_columnaBdIsValidCacheInitialized)
        {
            model_internal::calculateColumnaBdIsValid();
        }

        return model_internal::_columnaBdIsValid;
    }

    model_internal function calculateColumnaBdIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_columnaBdValidator.validate(model_internal::_instance.columnaBd)
        model_internal::_columnaBdIsValid_der = (valRes.results == null);
        model_internal::_columnaBdIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::columnaBdValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::columnaBdValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get columnaBdValidationFailureMessages():Array
    {
        if (model_internal::_columnaBdValidationFailureMessages == null)
            model_internal::calculateColumnaBdIsValid();

        return _columnaBdValidationFailureMessages;
    }

    model_internal function set columnaBdValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_columnaBdValidationFailureMessages;

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
            model_internal::_columnaBdValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "columnaBdValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get obligatoriedadLoteStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get obligatoriedadLoteValidator() : StyleValidator
    {
        return model_internal::_obligatoriedadLoteValidator;
    }

    model_internal function set _obligatoriedadLoteIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_obligatoriedadLoteIsValid;         
        if (oldValue !== value)
        {
            model_internal::_obligatoriedadLoteIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadLoteIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadLoteIsValid():Boolean
    {
        if (!model_internal::_obligatoriedadLoteIsValidCacheInitialized)
        {
            model_internal::calculateObligatoriedadLoteIsValid();
        }

        return model_internal::_obligatoriedadLoteIsValid;
    }

    model_internal function calculateObligatoriedadLoteIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_obligatoriedadLoteValidator.validate(model_internal::_instance.obligatoriedadLote)
        model_internal::_obligatoriedadLoteIsValid_der = (valRes.results == null);
        model_internal::_obligatoriedadLoteIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::obligatoriedadLoteValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::obligatoriedadLoteValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadLoteValidationFailureMessages():Array
    {
        if (model_internal::_obligatoriedadLoteValidationFailureMessages == null)
            model_internal::calculateObligatoriedadLoteIsValid();

        return _obligatoriedadLoteValidationFailureMessages;
    }

    model_internal function set obligatoriedadLoteValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_obligatoriedadLoteValidationFailureMessages;

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
            model_internal::_obligatoriedadLoteValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadLoteValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get funcionConversionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get funcionConversionValidator() : StyleValidator
    {
        return model_internal::_funcionConversionValidator;
    }

    model_internal function set _funcionConversionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_funcionConversionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_funcionConversionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "funcionConversionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get funcionConversionIsValid():Boolean
    {
        if (!model_internal::_funcionConversionIsValidCacheInitialized)
        {
            model_internal::calculateFuncionConversionIsValid();
        }

        return model_internal::_funcionConversionIsValid;
    }

    model_internal function calculateFuncionConversionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_funcionConversionValidator.validate(model_internal::_instance.funcionConversion)
        model_internal::_funcionConversionIsValid_der = (valRes.results == null);
        model_internal::_funcionConversionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::funcionConversionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::funcionConversionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get funcionConversionValidationFailureMessages():Array
    {
        if (model_internal::_funcionConversionValidationFailureMessages == null)
            model_internal::calculateFuncionConversionIsValid();

        return _funcionConversionValidationFailureMessages;
    }

    model_internal function set funcionConversionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_funcionConversionValidationFailureMessages;

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
            model_internal::_funcionConversionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "funcionConversionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get esAsobancariaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get esAsobancariaValidator() : StyleValidator
    {
        return model_internal::_esAsobancariaValidator;
    }

    model_internal function set _esAsobancariaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_esAsobancariaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_esAsobancariaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "esAsobancariaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get esAsobancariaIsValid():Boolean
    {
        if (!model_internal::_esAsobancariaIsValidCacheInitialized)
        {
            model_internal::calculateEsAsobancariaIsValid();
        }

        return model_internal::_esAsobancariaIsValid;
    }

    model_internal function calculateEsAsobancariaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_esAsobancariaValidator.validate(model_internal::_instance.esAsobancaria)
        model_internal::_esAsobancariaIsValid_der = (valRes.results == null);
        model_internal::_esAsobancariaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::esAsobancariaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::esAsobancariaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get esAsobancariaValidationFailureMessages():Array
    {
        if (model_internal::_esAsobancariaValidationFailureMessages == null)
            model_internal::calculateEsAsobancariaIsValid();

        return _esAsobancariaValidationFailureMessages;
    }

    model_internal function set esAsobancariaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_esAsobancariaValidationFailureMessages;

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
            model_internal::_esAsobancariaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "esAsobancariaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get formatoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get formatoValidator() : StyleValidator
    {
        return model_internal::_formatoValidator;
    }

    model_internal function set _formatoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_formatoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_formatoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "formatoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get formatoIsValid():Boolean
    {
        if (!model_internal::_formatoIsValidCacheInitialized)
        {
            model_internal::calculateFormatoIsValid();
        }

        return model_internal::_formatoIsValid;
    }

    model_internal function calculateFormatoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_formatoValidator.validate(model_internal::_instance.formato)
        model_internal::_formatoIsValid_der = (valRes.results == null);
        model_internal::_formatoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::formatoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::formatoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get formatoValidationFailureMessages():Array
    {
        if (model_internal::_formatoValidationFailureMessages == null)
            model_internal::calculateFormatoIsValid();

        return _formatoValidationFailureMessages;
    }

    model_internal function set formatoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_formatoValidationFailureMessages;

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
            model_internal::_formatoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "formatoValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get obligatoriedadCasaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get obligatoriedadCasaValidator() : StyleValidator
    {
        return model_internal::_obligatoriedadCasaValidator;
    }

    model_internal function set _obligatoriedadCasaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_obligatoriedadCasaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_obligatoriedadCasaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadCasaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadCasaIsValid():Boolean
    {
        if (!model_internal::_obligatoriedadCasaIsValidCacheInitialized)
        {
            model_internal::calculateObligatoriedadCasaIsValid();
        }

        return model_internal::_obligatoriedadCasaIsValid;
    }

    model_internal function calculateObligatoriedadCasaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_obligatoriedadCasaValidator.validate(model_internal::_instance.obligatoriedadCasa)
        model_internal::_obligatoriedadCasaIsValid_der = (valRes.results == null);
        model_internal::_obligatoriedadCasaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::obligatoriedadCasaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::obligatoriedadCasaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadCasaValidationFailureMessages():Array
    {
        if (model_internal::_obligatoriedadCasaValidationFailureMessages == null)
            model_internal::calculateObligatoriedadCasaIsValid();

        return _obligatoriedadCasaValidationFailureMessages;
    }

    model_internal function set obligatoriedadCasaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_obligatoriedadCasaValidationFailureMessages;

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
            model_internal::_obligatoriedadCasaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadCasaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get dominioStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get dominioValidator() : StyleValidator
    {
        return model_internal::_dominioValidator;
    }

    model_internal function set _dominioIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_dominioIsValid;         
        if (oldValue !== value)
        {
            model_internal::_dominioIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dominioIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get dominioIsValid():Boolean
    {
        if (!model_internal::_dominioIsValidCacheInitialized)
        {
            model_internal::calculateDominioIsValid();
        }

        return model_internal::_dominioIsValid;
    }

    model_internal function calculateDominioIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_dominioValidator.validate(model_internal::_instance.dominio)
        model_internal::_dominioIsValid_der = (valRes.results == null);
        model_internal::_dominioIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::dominioValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::dominioValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get dominioValidationFailureMessages():Array
    {
        if (model_internal::_dominioValidationFailureMessages == null)
            model_internal::calculateDominioIsValid();

        return _dominioValidationFailureMessages;
    }

    model_internal function set dominioValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_dominioValidationFailureMessages;

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
            model_internal::_dominioValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dominioValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get obligatoriedadCasaruralStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get obligatoriedadCasaruralValidator() : StyleValidator
    {
        return model_internal::_obligatoriedadCasaruralValidator;
    }

    model_internal function set _obligatoriedadCasaruralIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_obligatoriedadCasaruralIsValid;         
        if (oldValue !== value)
        {
            model_internal::_obligatoriedadCasaruralIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadCasaruralIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadCasaruralIsValid():Boolean
    {
        if (!model_internal::_obligatoriedadCasaruralIsValidCacheInitialized)
        {
            model_internal::calculateObligatoriedadCasaruralIsValid();
        }

        return model_internal::_obligatoriedadCasaruralIsValid;
    }

    model_internal function calculateObligatoriedadCasaruralIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_obligatoriedadCasaruralValidator.validate(model_internal::_instance.obligatoriedadCasarural)
        model_internal::_obligatoriedadCasaruralIsValid_der = (valRes.results == null);
        model_internal::_obligatoriedadCasaruralIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::obligatoriedadCasaruralValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::obligatoriedadCasaruralValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadCasaruralValidationFailureMessages():Array
    {
        if (model_internal::_obligatoriedadCasaruralValidationFailureMessages == null)
            model_internal::calculateObligatoriedadCasaruralIsValid();

        return _obligatoriedadCasaruralValidationFailureMessages;
    }

    model_internal function set obligatoriedadCasaruralValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_obligatoriedadCasaruralValidationFailureMessages;

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
            model_internal::_obligatoriedadCasaruralValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadCasaruralValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get obligatoriedadOficinaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get obligatoriedadOficinaValidator() : StyleValidator
    {
        return model_internal::_obligatoriedadOficinaValidator;
    }

    model_internal function set _obligatoriedadOficinaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_obligatoriedadOficinaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_obligatoriedadOficinaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadOficinaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadOficinaIsValid():Boolean
    {
        if (!model_internal::_obligatoriedadOficinaIsValidCacheInitialized)
        {
            model_internal::calculateObligatoriedadOficinaIsValid();
        }

        return model_internal::_obligatoriedadOficinaIsValid;
    }

    model_internal function calculateObligatoriedadOficinaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_obligatoriedadOficinaValidator.validate(model_internal::_instance.obligatoriedadOficina)
        model_internal::_obligatoriedadOficinaIsValid_der = (valRes.results == null);
        model_internal::_obligatoriedadOficinaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::obligatoriedadOficinaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::obligatoriedadOficinaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadOficinaValidationFailureMessages():Array
    {
        if (model_internal::_obligatoriedadOficinaValidationFailureMessages == null)
            model_internal::calculateObligatoriedadOficinaIsValid();

        return _obligatoriedadOficinaValidationFailureMessages;
    }

    model_internal function set obligatoriedadOficinaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_obligatoriedadOficinaValidationFailureMessages;

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
            model_internal::_obligatoriedadOficinaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadOficinaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get obligatoriedadLocalStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get obligatoriedadLocalValidator() : StyleValidator
    {
        return model_internal::_obligatoriedadLocalValidator;
    }

    model_internal function set _obligatoriedadLocalIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_obligatoriedadLocalIsValid;         
        if (oldValue !== value)
        {
            model_internal::_obligatoriedadLocalIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadLocalIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadLocalIsValid():Boolean
    {
        if (!model_internal::_obligatoriedadLocalIsValidCacheInitialized)
        {
            model_internal::calculateObligatoriedadLocalIsValid();
        }

        return model_internal::_obligatoriedadLocalIsValid;
    }

    model_internal function calculateObligatoriedadLocalIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_obligatoriedadLocalValidator.validate(model_internal::_instance.obligatoriedadLocal)
        model_internal::_obligatoriedadLocalIsValid_der = (valRes.results == null);
        model_internal::_obligatoriedadLocalIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::obligatoriedadLocalValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::obligatoriedadLocalValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadLocalValidationFailureMessages():Array
    {
        if (model_internal::_obligatoriedadLocalValidationFailureMessages == null)
            model_internal::calculateObligatoriedadLocalIsValid();

        return _obligatoriedadLocalValidationFailureMessages;
    }

    model_internal function set obligatoriedadLocalValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_obligatoriedadLocalValidationFailureMessages;

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
            model_internal::_obligatoriedadLocalValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadLocalValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get consecutivoPlanoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get consecutivoPlanoValidator() : StyleValidator
    {
        return model_internal::_consecutivoPlanoValidator;
    }

    model_internal function set _consecutivoPlanoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_consecutivoPlanoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_consecutivoPlanoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "consecutivoPlanoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get consecutivoPlanoIsValid():Boolean
    {
        if (!model_internal::_consecutivoPlanoIsValidCacheInitialized)
        {
            model_internal::calculateConsecutivoPlanoIsValid();
        }

        return model_internal::_consecutivoPlanoIsValid;
    }

    model_internal function calculateConsecutivoPlanoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_consecutivoPlanoValidator.validate(model_internal::_instance.consecutivoPlano)
        model_internal::_consecutivoPlanoIsValid_der = (valRes.results == null);
        model_internal::_consecutivoPlanoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::consecutivoPlanoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::consecutivoPlanoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get consecutivoPlanoValidationFailureMessages():Array
    {
        if (model_internal::_consecutivoPlanoValidationFailureMessages == null)
            model_internal::calculateConsecutivoPlanoIsValid();

        return _consecutivoPlanoValidationFailureMessages;
    }

    model_internal function set consecutivoPlanoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_consecutivoPlanoValidationFailureMessages;

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
            model_internal::_consecutivoPlanoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "consecutivoPlanoValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get obligatoriedadApartamentoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get obligatoriedadApartamentoValidator() : StyleValidator
    {
        return model_internal::_obligatoriedadApartamentoValidator;
    }

    model_internal function set _obligatoriedadApartamentoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_obligatoriedadApartamentoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_obligatoriedadApartamentoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadApartamentoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadApartamentoIsValid():Boolean
    {
        if (!model_internal::_obligatoriedadApartamentoIsValidCacheInitialized)
        {
            model_internal::calculateObligatoriedadApartamentoIsValid();
        }

        return model_internal::_obligatoriedadApartamentoIsValid;
    }

    model_internal function calculateObligatoriedadApartamentoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_obligatoriedadApartamentoValidator.validate(model_internal::_instance.obligatoriedadApartamento)
        model_internal::_obligatoriedadApartamentoIsValid_der = (valRes.results == null);
        model_internal::_obligatoriedadApartamentoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::obligatoriedadApartamentoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::obligatoriedadApartamentoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadApartamentoValidationFailureMessages():Array
    {
        if (model_internal::_obligatoriedadApartamentoValidationFailureMessages == null)
            model_internal::calculateObligatoriedadApartamentoIsValid();

        return _obligatoriedadApartamentoValidationFailureMessages;
    }

    model_internal function set obligatoriedadApartamentoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_obligatoriedadApartamentoValidationFailureMessages;

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
            model_internal::_obligatoriedadApartamentoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadApartamentoValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get tipoDatoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get tipoDatoValidator() : StyleValidator
    {
        return model_internal::_tipoDatoValidator;
    }

    model_internal function set _tipoDatoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_tipoDatoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_tipoDatoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoDatoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get tipoDatoIsValid():Boolean
    {
        if (!model_internal::_tipoDatoIsValidCacheInitialized)
        {
            model_internal::calculateTipoDatoIsValid();
        }

        return model_internal::_tipoDatoIsValid;
    }

    model_internal function calculateTipoDatoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_tipoDatoValidator.validate(model_internal::_instance.tipoDato)
        model_internal::_tipoDatoIsValid_der = (valRes.results == null);
        model_internal::_tipoDatoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::tipoDatoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::tipoDatoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get tipoDatoValidationFailureMessages():Array
    {
        if (model_internal::_tipoDatoValidationFailureMessages == null)
            model_internal::calculateTipoDatoIsValid();

        return _tipoDatoValidationFailureMessages;
    }

    model_internal function set tipoDatoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_tipoDatoValidationFailureMessages;

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
            model_internal::_tipoDatoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoDatoValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get esIdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get esIdValidator() : StyleValidator
    {
        return model_internal::_esIdValidator;
    }

    model_internal function set _esIdIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_esIdIsValid;         
        if (oldValue !== value)
        {
            model_internal::_esIdIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "esIdIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get esIdIsValid():Boolean
    {
        if (!model_internal::_esIdIsValidCacheInitialized)
        {
            model_internal::calculateEsIdIsValid();
        }

        return model_internal::_esIdIsValid;
    }

    model_internal function calculateEsIdIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_esIdValidator.validate(model_internal::_instance.esId)
        model_internal::_esIdIsValid_der = (valRes.results == null);
        model_internal::_esIdIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::esIdValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::esIdValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get esIdValidationFailureMessages():Array
    {
        if (model_internal::_esIdValidationFailureMessages == null)
            model_internal::calculateEsIdIsValid();

        return _esIdValidationFailureMessages;
    }

    model_internal function set esIdValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_esIdValidationFailureMessages;

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
            model_internal::_esIdValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "esIdValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get obligatoriedadBodegaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get obligatoriedadBodegaValidator() : StyleValidator
    {
        return model_internal::_obligatoriedadBodegaValidator;
    }

    model_internal function set _obligatoriedadBodegaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_obligatoriedadBodegaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_obligatoriedadBodegaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadBodegaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadBodegaIsValid():Boolean
    {
        if (!model_internal::_obligatoriedadBodegaIsValidCacheInitialized)
        {
            model_internal::calculateObligatoriedadBodegaIsValid();
        }

        return model_internal::_obligatoriedadBodegaIsValid;
    }

    model_internal function calculateObligatoriedadBodegaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_obligatoriedadBodegaValidator.validate(model_internal::_instance.obligatoriedadBodega)
        model_internal::_obligatoriedadBodegaIsValid_der = (valRes.results == null);
        model_internal::_obligatoriedadBodegaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::obligatoriedadBodegaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::obligatoriedadBodegaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadBodegaValidationFailureMessages():Array
    {
        if (model_internal::_obligatoriedadBodegaValidationFailureMessages == null)
            model_internal::calculateObligatoriedadBodegaIsValid();

        return _obligatoriedadBodegaValidationFailureMessages;
    }

    model_internal function set obligatoriedadBodegaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_obligatoriedadBodegaValidationFailureMessages;

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
            model_internal::_obligatoriedadBodegaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadBodegaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get tablaBdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get tablaBdValidator() : StyleValidator
    {
        return model_internal::_tablaBdValidator;
    }

    model_internal function set _tablaBdIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_tablaBdIsValid;         
        if (oldValue !== value)
        {
            model_internal::_tablaBdIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tablaBdIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get tablaBdIsValid():Boolean
    {
        if (!model_internal::_tablaBdIsValidCacheInitialized)
        {
            model_internal::calculateTablaBdIsValid();
        }

        return model_internal::_tablaBdIsValid;
    }

    model_internal function calculateTablaBdIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_tablaBdValidator.validate(model_internal::_instance.tablaBd)
        model_internal::_tablaBdIsValid_der = (valRes.results == null);
        model_internal::_tablaBdIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::tablaBdValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::tablaBdValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get tablaBdValidationFailureMessages():Array
    {
        if (model_internal::_tablaBdValidationFailureMessages == null)
            model_internal::calculateTablaBdIsValid();

        return _tablaBdValidationFailureMessages;
    }

    model_internal function set tablaBdValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_tablaBdValidationFailureMessages;

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
            model_internal::_tablaBdValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tablaBdValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get obligatoriedadLoteurbanoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get obligatoriedadLoteurbanoValidator() : StyleValidator
    {
        return model_internal::_obligatoriedadLoteurbanoValidator;
    }

    model_internal function set _obligatoriedadLoteurbanoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_obligatoriedadLoteurbanoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_obligatoriedadLoteurbanoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadLoteurbanoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadLoteurbanoIsValid():Boolean
    {
        if (!model_internal::_obligatoriedadLoteurbanoIsValidCacheInitialized)
        {
            model_internal::calculateObligatoriedadLoteurbanoIsValid();
        }

        return model_internal::_obligatoriedadLoteurbanoIsValid;
    }

    model_internal function calculateObligatoriedadLoteurbanoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_obligatoriedadLoteurbanoValidator.validate(model_internal::_instance.obligatoriedadLoteurbano)
        model_internal::_obligatoriedadLoteurbanoIsValid_der = (valRes.results == null);
        model_internal::_obligatoriedadLoteurbanoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::obligatoriedadLoteurbanoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::obligatoriedadLoteurbanoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadLoteurbanoValidationFailureMessages():Array
    {
        if (model_internal::_obligatoriedadLoteurbanoValidationFailureMessages == null)
            model_internal::calculateObligatoriedadLoteurbanoIsValid();

        return _obligatoriedadLoteurbanoValidationFailureMessages;
    }

    model_internal function set obligatoriedadLoteurbanoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_obligatoriedadLoteurbanoValidationFailureMessages;

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
            model_internal::_obligatoriedadLoteurbanoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadLoteurbanoValidationFailureMessages", oldValue, value));
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
            case("longitudVisualCampo"):
            {
                return longitudVisualCampoValidationFailureMessages;
            }
            case("columnaBd"):
            {
                return columnaBdValidationFailureMessages;
            }
            case("obligatoriedadLote"):
            {
                return obligatoriedadLoteValidationFailureMessages;
            }
            case("funcionConversion"):
            {
                return funcionConversionValidationFailureMessages;
            }
            case("esAsobancaria"):
            {
                return esAsobancariaValidationFailureMessages;
            }
            case("formato"):
            {
                return formatoValidationFailureMessages;
            }
            case("obligatoriedadCasa"):
            {
                return obligatoriedadCasaValidationFailureMessages;
            }
            case("dominio"):
            {
                return dominioValidationFailureMessages;
            }
            case("obligatoriedadCasarural"):
            {
                return obligatoriedadCasaruralValidationFailureMessages;
            }
            case("obligatoriedadOficina"):
            {
                return obligatoriedadOficinaValidationFailureMessages;
            }
            case("obligatoriedadLocal"):
            {
                return obligatoriedadLocalValidationFailureMessages;
            }
            case("consecutivoPlano"):
            {
                return consecutivoPlanoValidationFailureMessages;
            }
            case("obligatoriedadApartamento"):
            {
                return obligatoriedadApartamentoValidationFailureMessages;
            }
            case("tipoDato"):
            {
                return tipoDatoValidationFailureMessages;
            }
            case("esId"):
            {
                return esIdValidationFailureMessages;
            }
            case("obligatoriedadBodega"):
            {
                return obligatoriedadBodegaValidationFailureMessages;
            }
            case("tablaBd"):
            {
                return tablaBdValidationFailureMessages;
            }
            case("obligatoriedadLoteurbano"):
            {
                return obligatoriedadLoteurbanoValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
