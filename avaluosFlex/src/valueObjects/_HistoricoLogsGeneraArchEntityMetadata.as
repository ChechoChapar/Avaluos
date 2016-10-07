
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
internal class _HistoricoLogsGeneraArchEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("codigoError", "fechaDesde", "usuarioTransaccion", "fechaHasta", "fechaFinCreacion", "fechaInicioCreacion", "usuarioCreacion", "linkDescarga", "enviado", "nombreArchivo", "estado", "idLogArchivos", "nombrePlano", "descError", "idHistLogsGeneraArch", "fechaTransaccion");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("codigoError", "fechaDesde", "usuarioTransaccion", "fechaHasta", "fechaFinCreacion", "fechaInicioCreacion", "usuarioCreacion", "linkDescarga", "enviado", "nombreArchivo", "estado", "idLogArchivos", "nombrePlano", "descError", "idHistLogsGeneraArch", "fechaTransaccion");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("codigoError", "fechaDesde", "usuarioTransaccion", "fechaHasta", "fechaFinCreacion", "fechaInicioCreacion", "usuarioCreacion", "linkDescarga", "enviado", "nombreArchivo", "estado", "idLogArchivos", "nombrePlano", "descError", "idHistLogsGeneraArch", "fechaTransaccion");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("codigoError", "fechaDesde", "usuarioTransaccion", "fechaHasta", "fechaFinCreacion", "fechaInicioCreacion", "usuarioCreacion", "linkDescarga", "enviado", "nombreArchivo", "estado", "idLogArchivos", "nombrePlano", "descError", "idHistLogsGeneraArch", "fechaTransaccion");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "HistoricoLogsGeneraArch";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _codigoErrorIsValid:Boolean;
    model_internal var _codigoErrorValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _codigoErrorIsValidCacheInitialized:Boolean = false;
    model_internal var _codigoErrorValidationFailureMessages:Array;
    
    model_internal var _fechaDesdeIsValid:Boolean;
    model_internal var _fechaDesdeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fechaDesdeIsValidCacheInitialized:Boolean = false;
    model_internal var _fechaDesdeValidationFailureMessages:Array;
    
    model_internal var _usuarioTransaccionIsValid:Boolean;
    model_internal var _usuarioTransaccionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _usuarioTransaccionIsValidCacheInitialized:Boolean = false;
    model_internal var _usuarioTransaccionValidationFailureMessages:Array;
    
    model_internal var _fechaHastaIsValid:Boolean;
    model_internal var _fechaHastaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fechaHastaIsValidCacheInitialized:Boolean = false;
    model_internal var _fechaHastaValidationFailureMessages:Array;
    
    model_internal var _fechaFinCreacionIsValid:Boolean;
    model_internal var _fechaFinCreacionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fechaFinCreacionIsValidCacheInitialized:Boolean = false;
    model_internal var _fechaFinCreacionValidationFailureMessages:Array;
    
    model_internal var _fechaInicioCreacionIsValid:Boolean;
    model_internal var _fechaInicioCreacionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fechaInicioCreacionIsValidCacheInitialized:Boolean = false;
    model_internal var _fechaInicioCreacionValidationFailureMessages:Array;
    
    model_internal var _usuarioCreacionIsValid:Boolean;
    model_internal var _usuarioCreacionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _usuarioCreacionIsValidCacheInitialized:Boolean = false;
    model_internal var _usuarioCreacionValidationFailureMessages:Array;
    
    model_internal var _linkDescargaIsValid:Boolean;
    model_internal var _linkDescargaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _linkDescargaIsValidCacheInitialized:Boolean = false;
    model_internal var _linkDescargaValidationFailureMessages:Array;
    
    model_internal var _enviadoIsValid:Boolean;
    model_internal var _enviadoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _enviadoIsValidCacheInitialized:Boolean = false;
    model_internal var _enviadoValidationFailureMessages:Array;
    
    model_internal var _nombreArchivoIsValid:Boolean;
    model_internal var _nombreArchivoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nombreArchivoIsValidCacheInitialized:Boolean = false;
    model_internal var _nombreArchivoValidationFailureMessages:Array;
    
    model_internal var _estadoIsValid:Boolean;
    model_internal var _estadoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _estadoIsValidCacheInitialized:Boolean = false;
    model_internal var _estadoValidationFailureMessages:Array;
    
    model_internal var _idLogArchivosIsValid:Boolean;
    model_internal var _idLogArchivosValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _idLogArchivosIsValidCacheInitialized:Boolean = false;
    model_internal var _idLogArchivosValidationFailureMessages:Array;
    
    model_internal var _nombrePlanoIsValid:Boolean;
    model_internal var _nombrePlanoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nombrePlanoIsValidCacheInitialized:Boolean = false;
    model_internal var _nombrePlanoValidationFailureMessages:Array;
    
    model_internal var _descErrorIsValid:Boolean;
    model_internal var _descErrorValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _descErrorIsValidCacheInitialized:Boolean = false;
    model_internal var _descErrorValidationFailureMessages:Array;
    
    model_internal var _idHistLogsGeneraArchIsValid:Boolean;
    model_internal var _idHistLogsGeneraArchValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _idHistLogsGeneraArchIsValidCacheInitialized:Boolean = false;
    model_internal var _idHistLogsGeneraArchValidationFailureMessages:Array;
    
    model_internal var _fechaTransaccionIsValid:Boolean;
    model_internal var _fechaTransaccionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fechaTransaccionIsValidCacheInitialized:Boolean = false;
    model_internal var _fechaTransaccionValidationFailureMessages:Array;

    model_internal var _instance:_Super_HistoricoLogsGeneraArch;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _HistoricoLogsGeneraArchEntityMetadata(value : _Super_HistoricoLogsGeneraArch)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["codigoError"] = new Array();
            model_internal::dependentsOnMap["fechaDesde"] = new Array();
            model_internal::dependentsOnMap["usuarioTransaccion"] = new Array();
            model_internal::dependentsOnMap["fechaHasta"] = new Array();
            model_internal::dependentsOnMap["fechaFinCreacion"] = new Array();
            model_internal::dependentsOnMap["fechaInicioCreacion"] = new Array();
            model_internal::dependentsOnMap["usuarioCreacion"] = new Array();
            model_internal::dependentsOnMap["linkDescarga"] = new Array();
            model_internal::dependentsOnMap["enviado"] = new Array();
            model_internal::dependentsOnMap["nombreArchivo"] = new Array();
            model_internal::dependentsOnMap["estado"] = new Array();
            model_internal::dependentsOnMap["idLogArchivos"] = new Array();
            model_internal::dependentsOnMap["nombrePlano"] = new Array();
            model_internal::dependentsOnMap["descError"] = new Array();
            model_internal::dependentsOnMap["idHistLogsGeneraArch"] = new Array();
            model_internal::dependentsOnMap["fechaTransaccion"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
        }

        model_internal::_instance = value;
        model_internal::_codigoErrorValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCodigoError);
        model_internal::_codigoErrorValidator.required = true;
        model_internal::_codigoErrorValidator.requiredFieldError = "codigoError is required";
        //model_internal::_codigoErrorValidator.source = model_internal::_instance;
        //model_internal::_codigoErrorValidator.property = "codigoError";
        model_internal::_fechaDesdeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFechaDesde);
        model_internal::_fechaDesdeValidator.required = true;
        model_internal::_fechaDesdeValidator.requiredFieldError = "fechaDesde is required";
        //model_internal::_fechaDesdeValidator.source = model_internal::_instance;
        //model_internal::_fechaDesdeValidator.property = "fechaDesde";
        model_internal::_usuarioTransaccionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUsuarioTransaccion);
        model_internal::_usuarioTransaccionValidator.required = true;
        model_internal::_usuarioTransaccionValidator.requiredFieldError = "usuarioTransaccion is required";
        //model_internal::_usuarioTransaccionValidator.source = model_internal::_instance;
        //model_internal::_usuarioTransaccionValidator.property = "usuarioTransaccion";
        model_internal::_fechaHastaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFechaHasta);
        model_internal::_fechaHastaValidator.required = true;
        model_internal::_fechaHastaValidator.requiredFieldError = "fechaHasta is required";
        //model_internal::_fechaHastaValidator.source = model_internal::_instance;
        //model_internal::_fechaHastaValidator.property = "fechaHasta";
        model_internal::_fechaFinCreacionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFechaFinCreacion);
        model_internal::_fechaFinCreacionValidator.required = true;
        model_internal::_fechaFinCreacionValidator.requiredFieldError = "fechaFinCreacion is required";
        //model_internal::_fechaFinCreacionValidator.source = model_internal::_instance;
        //model_internal::_fechaFinCreacionValidator.property = "fechaFinCreacion";
        model_internal::_fechaInicioCreacionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFechaInicioCreacion);
        model_internal::_fechaInicioCreacionValidator.required = true;
        model_internal::_fechaInicioCreacionValidator.requiredFieldError = "fechaInicioCreacion is required";
        //model_internal::_fechaInicioCreacionValidator.source = model_internal::_instance;
        //model_internal::_fechaInicioCreacionValidator.property = "fechaInicioCreacion";
        model_internal::_usuarioCreacionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUsuarioCreacion);
        model_internal::_usuarioCreacionValidator.required = true;
        model_internal::_usuarioCreacionValidator.requiredFieldError = "usuarioCreacion is required";
        //model_internal::_usuarioCreacionValidator.source = model_internal::_instance;
        //model_internal::_usuarioCreacionValidator.property = "usuarioCreacion";
        model_internal::_linkDescargaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLinkDescarga);
        model_internal::_linkDescargaValidator.required = true;
        model_internal::_linkDescargaValidator.requiredFieldError = "linkDescarga is required";
        //model_internal::_linkDescargaValidator.source = model_internal::_instance;
        //model_internal::_linkDescargaValidator.property = "linkDescarga";
        model_internal::_enviadoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForEnviado);
        model_internal::_enviadoValidator.required = true;
        model_internal::_enviadoValidator.requiredFieldError = "enviado is required";
        //model_internal::_enviadoValidator.source = model_internal::_instance;
        //model_internal::_enviadoValidator.property = "enviado";
        model_internal::_nombreArchivoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNombreArchivo);
        model_internal::_nombreArchivoValidator.required = true;
        model_internal::_nombreArchivoValidator.requiredFieldError = "nombreArchivo is required";
        //model_internal::_nombreArchivoValidator.source = model_internal::_instance;
        //model_internal::_nombreArchivoValidator.property = "nombreArchivo";
        model_internal::_estadoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForEstado);
        model_internal::_estadoValidator.required = true;
        model_internal::_estadoValidator.requiredFieldError = "estado is required";
        //model_internal::_estadoValidator.source = model_internal::_instance;
        //model_internal::_estadoValidator.property = "estado";
        model_internal::_idLogArchivosValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForIdLogArchivos);
        model_internal::_idLogArchivosValidator.required = true;
        model_internal::_idLogArchivosValidator.requiredFieldError = "idLogArchivos is required";
        //model_internal::_idLogArchivosValidator.source = model_internal::_instance;
        //model_internal::_idLogArchivosValidator.property = "idLogArchivos";
        model_internal::_nombrePlanoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNombrePlano);
        model_internal::_nombrePlanoValidator.required = true;
        model_internal::_nombrePlanoValidator.requiredFieldError = "nombrePlano is required";
        //model_internal::_nombrePlanoValidator.source = model_internal::_instance;
        //model_internal::_nombrePlanoValidator.property = "nombrePlano";
        model_internal::_descErrorValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDescError);
        model_internal::_descErrorValidator.required = true;
        model_internal::_descErrorValidator.requiredFieldError = "descError is required";
        //model_internal::_descErrorValidator.source = model_internal::_instance;
        //model_internal::_descErrorValidator.property = "descError";
        model_internal::_idHistLogsGeneraArchValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForIdHistLogsGeneraArch);
        model_internal::_idHistLogsGeneraArchValidator.required = true;
        model_internal::_idHistLogsGeneraArchValidator.requiredFieldError = "idHistLogsGeneraArch is required";
        //model_internal::_idHistLogsGeneraArchValidator.source = model_internal::_instance;
        //model_internal::_idHistLogsGeneraArchValidator.property = "idHistLogsGeneraArch";
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
            throw new Error(propertyName + " is not a data property of entity HistoricoLogsGeneraArch");  
            
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
            throw new Error(propertyName + " is not a collection property of entity HistoricoLogsGeneraArch");  

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
            throw new Error(propertyName + " does not exist for entity HistoricoLogsGeneraArch");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity HistoricoLogsGeneraArch");
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
            throw new Error(propertyName + " does not exist for entity HistoricoLogsGeneraArch");
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
    public function get isCodigoErrorAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFechaDesdeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUsuarioTransaccionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFechaHastaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFechaFinCreacionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFechaInicioCreacionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUsuarioCreacionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLinkDescargaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEnviadoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNombreArchivoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEstadoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIdLogArchivosAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNombrePlanoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDescErrorAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIdHistLogsGeneraArchAvailable():Boolean
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
    public function invalidateDependentOnCodigoError():void
    {
        if (model_internal::_codigoErrorIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCodigoError = null;
            model_internal::calculateCodigoErrorIsValid();
        }
    }
    public function invalidateDependentOnFechaDesde():void
    {
        if (model_internal::_fechaDesdeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFechaDesde = null;
            model_internal::calculateFechaDesdeIsValid();
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
    public function invalidateDependentOnFechaHasta():void
    {
        if (model_internal::_fechaHastaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFechaHasta = null;
            model_internal::calculateFechaHastaIsValid();
        }
    }
    public function invalidateDependentOnFechaFinCreacion():void
    {
        if (model_internal::_fechaFinCreacionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFechaFinCreacion = null;
            model_internal::calculateFechaFinCreacionIsValid();
        }
    }
    public function invalidateDependentOnFechaInicioCreacion():void
    {
        if (model_internal::_fechaInicioCreacionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFechaInicioCreacion = null;
            model_internal::calculateFechaInicioCreacionIsValid();
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
    public function invalidateDependentOnLinkDescarga():void
    {
        if (model_internal::_linkDescargaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLinkDescarga = null;
            model_internal::calculateLinkDescargaIsValid();
        }
    }
    public function invalidateDependentOnEnviado():void
    {
        if (model_internal::_enviadoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfEnviado = null;
            model_internal::calculateEnviadoIsValid();
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
    public function invalidateDependentOnEstado():void
    {
        if (model_internal::_estadoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfEstado = null;
            model_internal::calculateEstadoIsValid();
        }
    }
    public function invalidateDependentOnIdLogArchivos():void
    {
        if (model_internal::_idLogArchivosIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfIdLogArchivos = null;
            model_internal::calculateIdLogArchivosIsValid();
        }
    }
    public function invalidateDependentOnNombrePlano():void
    {
        if (model_internal::_nombrePlanoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNombrePlano = null;
            model_internal::calculateNombrePlanoIsValid();
        }
    }
    public function invalidateDependentOnDescError():void
    {
        if (model_internal::_descErrorIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDescError = null;
            model_internal::calculateDescErrorIsValid();
        }
    }
    public function invalidateDependentOnIdHistLogsGeneraArch():void
    {
        if (model_internal::_idHistLogsGeneraArchIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfIdHistLogsGeneraArch = null;
            model_internal::calculateIdHistLogsGeneraArchIsValid();
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
    public function get codigoErrorStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get codigoErrorValidator() : StyleValidator
    {
        return model_internal::_codigoErrorValidator;
    }

    model_internal function set _codigoErrorIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_codigoErrorIsValid;         
        if (oldValue !== value)
        {
            model_internal::_codigoErrorIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codigoErrorIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get codigoErrorIsValid():Boolean
    {
        if (!model_internal::_codigoErrorIsValidCacheInitialized)
        {
            model_internal::calculateCodigoErrorIsValid();
        }

        return model_internal::_codigoErrorIsValid;
    }

    model_internal function calculateCodigoErrorIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_codigoErrorValidator.validate(model_internal::_instance.codigoError)
        model_internal::_codigoErrorIsValid_der = (valRes.results == null);
        model_internal::_codigoErrorIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::codigoErrorValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::codigoErrorValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get codigoErrorValidationFailureMessages():Array
    {
        if (model_internal::_codigoErrorValidationFailureMessages == null)
            model_internal::calculateCodigoErrorIsValid();

        return _codigoErrorValidationFailureMessages;
    }

    model_internal function set codigoErrorValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_codigoErrorValidationFailureMessages;

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
            model_internal::_codigoErrorValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codigoErrorValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get fechaDesdeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get fechaDesdeValidator() : StyleValidator
    {
        return model_internal::_fechaDesdeValidator;
    }

    model_internal function set _fechaDesdeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_fechaDesdeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_fechaDesdeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaDesdeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get fechaDesdeIsValid():Boolean
    {
        if (!model_internal::_fechaDesdeIsValidCacheInitialized)
        {
            model_internal::calculateFechaDesdeIsValid();
        }

        return model_internal::_fechaDesdeIsValid;
    }

    model_internal function calculateFechaDesdeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_fechaDesdeValidator.validate(model_internal::_instance.fechaDesde)
        model_internal::_fechaDesdeIsValid_der = (valRes.results == null);
        model_internal::_fechaDesdeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::fechaDesdeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::fechaDesdeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get fechaDesdeValidationFailureMessages():Array
    {
        if (model_internal::_fechaDesdeValidationFailureMessages == null)
            model_internal::calculateFechaDesdeIsValid();

        return _fechaDesdeValidationFailureMessages;
    }

    model_internal function set fechaDesdeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_fechaDesdeValidationFailureMessages;

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
            model_internal::_fechaDesdeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaDesdeValidationFailureMessages", oldValue, value));
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
    public function get fechaHastaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get fechaHastaValidator() : StyleValidator
    {
        return model_internal::_fechaHastaValidator;
    }

    model_internal function set _fechaHastaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_fechaHastaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_fechaHastaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaHastaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get fechaHastaIsValid():Boolean
    {
        if (!model_internal::_fechaHastaIsValidCacheInitialized)
        {
            model_internal::calculateFechaHastaIsValid();
        }

        return model_internal::_fechaHastaIsValid;
    }

    model_internal function calculateFechaHastaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_fechaHastaValidator.validate(model_internal::_instance.fechaHasta)
        model_internal::_fechaHastaIsValid_der = (valRes.results == null);
        model_internal::_fechaHastaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::fechaHastaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::fechaHastaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get fechaHastaValidationFailureMessages():Array
    {
        if (model_internal::_fechaHastaValidationFailureMessages == null)
            model_internal::calculateFechaHastaIsValid();

        return _fechaHastaValidationFailureMessages;
    }

    model_internal function set fechaHastaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_fechaHastaValidationFailureMessages;

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
            model_internal::_fechaHastaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaHastaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get fechaFinCreacionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get fechaFinCreacionValidator() : StyleValidator
    {
        return model_internal::_fechaFinCreacionValidator;
    }

    model_internal function set _fechaFinCreacionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_fechaFinCreacionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_fechaFinCreacionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaFinCreacionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get fechaFinCreacionIsValid():Boolean
    {
        if (!model_internal::_fechaFinCreacionIsValidCacheInitialized)
        {
            model_internal::calculateFechaFinCreacionIsValid();
        }

        return model_internal::_fechaFinCreacionIsValid;
    }

    model_internal function calculateFechaFinCreacionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_fechaFinCreacionValidator.validate(model_internal::_instance.fechaFinCreacion)
        model_internal::_fechaFinCreacionIsValid_der = (valRes.results == null);
        model_internal::_fechaFinCreacionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::fechaFinCreacionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::fechaFinCreacionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get fechaFinCreacionValidationFailureMessages():Array
    {
        if (model_internal::_fechaFinCreacionValidationFailureMessages == null)
            model_internal::calculateFechaFinCreacionIsValid();

        return _fechaFinCreacionValidationFailureMessages;
    }

    model_internal function set fechaFinCreacionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_fechaFinCreacionValidationFailureMessages;

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
            model_internal::_fechaFinCreacionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaFinCreacionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get fechaInicioCreacionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get fechaInicioCreacionValidator() : StyleValidator
    {
        return model_internal::_fechaInicioCreacionValidator;
    }

    model_internal function set _fechaInicioCreacionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_fechaInicioCreacionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_fechaInicioCreacionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaInicioCreacionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get fechaInicioCreacionIsValid():Boolean
    {
        if (!model_internal::_fechaInicioCreacionIsValidCacheInitialized)
        {
            model_internal::calculateFechaInicioCreacionIsValid();
        }

        return model_internal::_fechaInicioCreacionIsValid;
    }

    model_internal function calculateFechaInicioCreacionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_fechaInicioCreacionValidator.validate(model_internal::_instance.fechaInicioCreacion)
        model_internal::_fechaInicioCreacionIsValid_der = (valRes.results == null);
        model_internal::_fechaInicioCreacionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::fechaInicioCreacionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::fechaInicioCreacionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get fechaInicioCreacionValidationFailureMessages():Array
    {
        if (model_internal::_fechaInicioCreacionValidationFailureMessages == null)
            model_internal::calculateFechaInicioCreacionIsValid();

        return _fechaInicioCreacionValidationFailureMessages;
    }

    model_internal function set fechaInicioCreacionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_fechaInicioCreacionValidationFailureMessages;

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
            model_internal::_fechaInicioCreacionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaInicioCreacionValidationFailureMessages", oldValue, value));
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
    public function get linkDescargaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get linkDescargaValidator() : StyleValidator
    {
        return model_internal::_linkDescargaValidator;
    }

    model_internal function set _linkDescargaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_linkDescargaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_linkDescargaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "linkDescargaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get linkDescargaIsValid():Boolean
    {
        if (!model_internal::_linkDescargaIsValidCacheInitialized)
        {
            model_internal::calculateLinkDescargaIsValid();
        }

        return model_internal::_linkDescargaIsValid;
    }

    model_internal function calculateLinkDescargaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_linkDescargaValidator.validate(model_internal::_instance.linkDescarga)
        model_internal::_linkDescargaIsValid_der = (valRes.results == null);
        model_internal::_linkDescargaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::linkDescargaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::linkDescargaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get linkDescargaValidationFailureMessages():Array
    {
        if (model_internal::_linkDescargaValidationFailureMessages == null)
            model_internal::calculateLinkDescargaIsValid();

        return _linkDescargaValidationFailureMessages;
    }

    model_internal function set linkDescargaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_linkDescargaValidationFailureMessages;

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
            model_internal::_linkDescargaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "linkDescargaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get enviadoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get enviadoValidator() : StyleValidator
    {
        return model_internal::_enviadoValidator;
    }

    model_internal function set _enviadoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_enviadoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_enviadoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "enviadoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get enviadoIsValid():Boolean
    {
        if (!model_internal::_enviadoIsValidCacheInitialized)
        {
            model_internal::calculateEnviadoIsValid();
        }

        return model_internal::_enviadoIsValid;
    }

    model_internal function calculateEnviadoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_enviadoValidator.validate(model_internal::_instance.enviado)
        model_internal::_enviadoIsValid_der = (valRes.results == null);
        model_internal::_enviadoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::enviadoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::enviadoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get enviadoValidationFailureMessages():Array
    {
        if (model_internal::_enviadoValidationFailureMessages == null)
            model_internal::calculateEnviadoIsValid();

        return _enviadoValidationFailureMessages;
    }

    model_internal function set enviadoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_enviadoValidationFailureMessages;

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
            model_internal::_enviadoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "enviadoValidationFailureMessages", oldValue, value));
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
    public function get idLogArchivosStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get idLogArchivosValidator() : StyleValidator
    {
        return model_internal::_idLogArchivosValidator;
    }

    model_internal function set _idLogArchivosIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_idLogArchivosIsValid;         
        if (oldValue !== value)
        {
            model_internal::_idLogArchivosIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idLogArchivosIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get idLogArchivosIsValid():Boolean
    {
        if (!model_internal::_idLogArchivosIsValidCacheInitialized)
        {
            model_internal::calculateIdLogArchivosIsValid();
        }

        return model_internal::_idLogArchivosIsValid;
    }

    model_internal function calculateIdLogArchivosIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_idLogArchivosValidator.validate(model_internal::_instance.idLogArchivos)
        model_internal::_idLogArchivosIsValid_der = (valRes.results == null);
        model_internal::_idLogArchivosIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::idLogArchivosValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::idLogArchivosValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get idLogArchivosValidationFailureMessages():Array
    {
        if (model_internal::_idLogArchivosValidationFailureMessages == null)
            model_internal::calculateIdLogArchivosIsValid();

        return _idLogArchivosValidationFailureMessages;
    }

    model_internal function set idLogArchivosValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_idLogArchivosValidationFailureMessages;

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
            model_internal::_idLogArchivosValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idLogArchivosValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get nombrePlanoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get nombrePlanoValidator() : StyleValidator
    {
        return model_internal::_nombrePlanoValidator;
    }

    model_internal function set _nombrePlanoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_nombrePlanoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_nombrePlanoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombrePlanoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get nombrePlanoIsValid():Boolean
    {
        if (!model_internal::_nombrePlanoIsValidCacheInitialized)
        {
            model_internal::calculateNombrePlanoIsValid();
        }

        return model_internal::_nombrePlanoIsValid;
    }

    model_internal function calculateNombrePlanoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_nombrePlanoValidator.validate(model_internal::_instance.nombrePlano)
        model_internal::_nombrePlanoIsValid_der = (valRes.results == null);
        model_internal::_nombrePlanoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::nombrePlanoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::nombrePlanoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get nombrePlanoValidationFailureMessages():Array
    {
        if (model_internal::_nombrePlanoValidationFailureMessages == null)
            model_internal::calculateNombrePlanoIsValid();

        return _nombrePlanoValidationFailureMessages;
    }

    model_internal function set nombrePlanoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_nombrePlanoValidationFailureMessages;

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
            model_internal::_nombrePlanoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombrePlanoValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get descErrorStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get descErrorValidator() : StyleValidator
    {
        return model_internal::_descErrorValidator;
    }

    model_internal function set _descErrorIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_descErrorIsValid;         
        if (oldValue !== value)
        {
            model_internal::_descErrorIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descErrorIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get descErrorIsValid():Boolean
    {
        if (!model_internal::_descErrorIsValidCacheInitialized)
        {
            model_internal::calculateDescErrorIsValid();
        }

        return model_internal::_descErrorIsValid;
    }

    model_internal function calculateDescErrorIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_descErrorValidator.validate(model_internal::_instance.descError)
        model_internal::_descErrorIsValid_der = (valRes.results == null);
        model_internal::_descErrorIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::descErrorValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::descErrorValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get descErrorValidationFailureMessages():Array
    {
        if (model_internal::_descErrorValidationFailureMessages == null)
            model_internal::calculateDescErrorIsValid();

        return _descErrorValidationFailureMessages;
    }

    model_internal function set descErrorValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_descErrorValidationFailureMessages;

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
            model_internal::_descErrorValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descErrorValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get idHistLogsGeneraArchStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get idHistLogsGeneraArchValidator() : StyleValidator
    {
        return model_internal::_idHistLogsGeneraArchValidator;
    }

    model_internal function set _idHistLogsGeneraArchIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_idHistLogsGeneraArchIsValid;         
        if (oldValue !== value)
        {
            model_internal::_idHistLogsGeneraArchIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idHistLogsGeneraArchIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get idHistLogsGeneraArchIsValid():Boolean
    {
        if (!model_internal::_idHistLogsGeneraArchIsValidCacheInitialized)
        {
            model_internal::calculateIdHistLogsGeneraArchIsValid();
        }

        return model_internal::_idHistLogsGeneraArchIsValid;
    }

    model_internal function calculateIdHistLogsGeneraArchIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_idHistLogsGeneraArchValidator.validate(model_internal::_instance.idHistLogsGeneraArch)
        model_internal::_idHistLogsGeneraArchIsValid_der = (valRes.results == null);
        model_internal::_idHistLogsGeneraArchIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::idHistLogsGeneraArchValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::idHistLogsGeneraArchValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get idHistLogsGeneraArchValidationFailureMessages():Array
    {
        if (model_internal::_idHistLogsGeneraArchValidationFailureMessages == null)
            model_internal::calculateIdHistLogsGeneraArchIsValid();

        return _idHistLogsGeneraArchValidationFailureMessages;
    }

    model_internal function set idHistLogsGeneraArchValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_idHistLogsGeneraArchValidationFailureMessages;

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
            model_internal::_idHistLogsGeneraArchValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idHistLogsGeneraArchValidationFailureMessages", oldValue, value));
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
            case("codigoError"):
            {
                return codigoErrorValidationFailureMessages;
            }
            case("fechaDesde"):
            {
                return fechaDesdeValidationFailureMessages;
            }
            case("usuarioTransaccion"):
            {
                return usuarioTransaccionValidationFailureMessages;
            }
            case("fechaHasta"):
            {
                return fechaHastaValidationFailureMessages;
            }
            case("fechaFinCreacion"):
            {
                return fechaFinCreacionValidationFailureMessages;
            }
            case("fechaInicioCreacion"):
            {
                return fechaInicioCreacionValidationFailureMessages;
            }
            case("usuarioCreacion"):
            {
                return usuarioCreacionValidationFailureMessages;
            }
            case("linkDescarga"):
            {
                return linkDescargaValidationFailureMessages;
            }
            case("enviado"):
            {
                return enviadoValidationFailureMessages;
            }
            case("nombreArchivo"):
            {
                return nombreArchivoValidationFailureMessages;
            }
            case("estado"):
            {
                return estadoValidationFailureMessages;
            }
            case("idLogArchivos"):
            {
                return idLogArchivosValidationFailureMessages;
            }
            case("nombrePlano"):
            {
                return nombrePlanoValidationFailureMessages;
            }
            case("descError"):
            {
                return descErrorValidationFailureMessages;
            }
            case("idHistLogsGeneraArch"):
            {
                return idHistLogsGeneraArchValidationFailureMessages;
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
