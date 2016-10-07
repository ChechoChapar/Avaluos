
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
import valueObjects.PeritosEmpresa;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _EmpresasAvaluosEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("logo", "cargaArchivoPlano", "usuarioTransaccion", "idEmpresaAvaluo", "numeroDocumento", "usuarioCreacion", "registroPrivado", "estado", "peritosEmpresas", "registroSic", "sucursalDavivienda", "tipoDocumento", "fechaCreacion", "firma", "descEmpresa", "fechaTransaccion");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("logo", "cargaArchivoPlano", "usuarioTransaccion", "idEmpresaAvaluo", "numeroDocumento", "usuarioCreacion", "registroPrivado", "estado", "peritosEmpresas", "registroSic", "sucursalDavivienda", "tipoDocumento", "fechaCreacion", "firma", "descEmpresa", "fechaTransaccion");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("logo", "cargaArchivoPlano", "usuarioTransaccion", "idEmpresaAvaluo", "numeroDocumento", "usuarioCreacion", "registroPrivado", "estado", "peritosEmpresas", "registroSic", "sucursalDavivienda", "tipoDocumento", "fechaCreacion", "firma", "descEmpresa", "fechaTransaccion");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("logo", "cargaArchivoPlano", "usuarioTransaccion", "idEmpresaAvaluo", "numeroDocumento", "usuarioCreacion", "registroPrivado", "estado", "peritosEmpresas", "registroSic", "sucursalDavivienda", "tipoDocumento", "fechaCreacion", "firma", "descEmpresa", "fechaTransaccion");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("peritosEmpresas");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "EmpresasAvaluos";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _logoIsValid:Boolean;
    model_internal var _logoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _logoIsValidCacheInitialized:Boolean = false;
    model_internal var _logoValidationFailureMessages:Array;
    
    model_internal var _cargaArchivoPlanoIsValid:Boolean;
    model_internal var _cargaArchivoPlanoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _cargaArchivoPlanoIsValidCacheInitialized:Boolean = false;
    model_internal var _cargaArchivoPlanoValidationFailureMessages:Array;
    
    model_internal var _usuarioTransaccionIsValid:Boolean;
    model_internal var _usuarioTransaccionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _usuarioTransaccionIsValidCacheInitialized:Boolean = false;
    model_internal var _usuarioTransaccionValidationFailureMessages:Array;
    
    model_internal var _idEmpresaAvaluoIsValid:Boolean;
    model_internal var _idEmpresaAvaluoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _idEmpresaAvaluoIsValidCacheInitialized:Boolean = false;
    model_internal var _idEmpresaAvaluoValidationFailureMessages:Array;
    
    model_internal var _numeroDocumentoIsValid:Boolean;
    model_internal var _numeroDocumentoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _numeroDocumentoIsValidCacheInitialized:Boolean = false;
    model_internal var _numeroDocumentoValidationFailureMessages:Array;
    
    model_internal var _usuarioCreacionIsValid:Boolean;
    model_internal var _usuarioCreacionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _usuarioCreacionIsValidCacheInitialized:Boolean = false;
    model_internal var _usuarioCreacionValidationFailureMessages:Array;
    
    model_internal var _registroPrivadoIsValid:Boolean;
    model_internal var _registroPrivadoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _registroPrivadoIsValidCacheInitialized:Boolean = false;
    model_internal var _registroPrivadoValidationFailureMessages:Array;
    
    model_internal var _estadoIsValid:Boolean;
    model_internal var _estadoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _estadoIsValidCacheInitialized:Boolean = false;
    model_internal var _estadoValidationFailureMessages:Array;
    
    model_internal var _peritosEmpresasIsValid:Boolean;
    model_internal var _peritosEmpresasValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _peritosEmpresasIsValidCacheInitialized:Boolean = false;
    model_internal var _peritosEmpresasValidationFailureMessages:Array;
    
    model_internal var _registroSicIsValid:Boolean;
    model_internal var _registroSicValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _registroSicIsValidCacheInitialized:Boolean = false;
    model_internal var _registroSicValidationFailureMessages:Array;
    
    model_internal var _sucursalDaviviendaIsValid:Boolean;
    model_internal var _sucursalDaviviendaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _sucursalDaviviendaIsValidCacheInitialized:Boolean = false;
    model_internal var _sucursalDaviviendaValidationFailureMessages:Array;
    
    model_internal var _tipoDocumentoIsValid:Boolean;
    model_internal var _tipoDocumentoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _tipoDocumentoIsValidCacheInitialized:Boolean = false;
    model_internal var _tipoDocumentoValidationFailureMessages:Array;
    
    model_internal var _fechaCreacionIsValid:Boolean;
    model_internal var _fechaCreacionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fechaCreacionIsValidCacheInitialized:Boolean = false;
    model_internal var _fechaCreacionValidationFailureMessages:Array;
    
    model_internal var _firmaIsValid:Boolean;
    model_internal var _firmaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _firmaIsValidCacheInitialized:Boolean = false;
    model_internal var _firmaValidationFailureMessages:Array;
    
    model_internal var _descEmpresaIsValid:Boolean;
    model_internal var _descEmpresaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _descEmpresaIsValidCacheInitialized:Boolean = false;
    model_internal var _descEmpresaValidationFailureMessages:Array;
    
    model_internal var _fechaTransaccionIsValid:Boolean;
    model_internal var _fechaTransaccionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fechaTransaccionIsValidCacheInitialized:Boolean = false;
    model_internal var _fechaTransaccionValidationFailureMessages:Array;

    model_internal var _instance:_Super_EmpresasAvaluos;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _EmpresasAvaluosEntityMetadata(value : _Super_EmpresasAvaluos)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["logo"] = new Array();
            model_internal::dependentsOnMap["cargaArchivoPlano"] = new Array();
            model_internal::dependentsOnMap["usuarioTransaccion"] = new Array();
            model_internal::dependentsOnMap["idEmpresaAvaluo"] = new Array();
            model_internal::dependentsOnMap["numeroDocumento"] = new Array();
            model_internal::dependentsOnMap["usuarioCreacion"] = new Array();
            model_internal::dependentsOnMap["registroPrivado"] = new Array();
            model_internal::dependentsOnMap["estado"] = new Array();
            model_internal::dependentsOnMap["peritosEmpresas"] = new Array();
            model_internal::dependentsOnMap["registroSic"] = new Array();
            model_internal::dependentsOnMap["sucursalDavivienda"] = new Array();
            model_internal::dependentsOnMap["tipoDocumento"] = new Array();
            model_internal::dependentsOnMap["fechaCreacion"] = new Array();
            model_internal::dependentsOnMap["firma"] = new Array();
            model_internal::dependentsOnMap["descEmpresa"] = new Array();
            model_internal::dependentsOnMap["fechaTransaccion"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
            model_internal::collectionBaseMap["peritosEmpresas"] = "valueObjects.PeritosEmpresa";
        }

        model_internal::_instance = value;
        model_internal::_logoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLogo);
        model_internal::_logoValidator.required = true;
        model_internal::_logoValidator.requiredFieldError = "logo is required";
        //model_internal::_logoValidator.source = model_internal::_instance;
        //model_internal::_logoValidator.property = "logo";
        model_internal::_cargaArchivoPlanoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCargaArchivoPlano);
        model_internal::_cargaArchivoPlanoValidator.required = true;
        model_internal::_cargaArchivoPlanoValidator.requiredFieldError = "cargaArchivoPlano is required";
        //model_internal::_cargaArchivoPlanoValidator.source = model_internal::_instance;
        //model_internal::_cargaArchivoPlanoValidator.property = "cargaArchivoPlano";
        model_internal::_usuarioTransaccionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUsuarioTransaccion);
        model_internal::_usuarioTransaccionValidator.required = true;
        model_internal::_usuarioTransaccionValidator.requiredFieldError = "usuarioTransaccion is required";
        //model_internal::_usuarioTransaccionValidator.source = model_internal::_instance;
        //model_internal::_usuarioTransaccionValidator.property = "usuarioTransaccion";
        model_internal::_idEmpresaAvaluoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForIdEmpresaAvaluo);
        model_internal::_idEmpresaAvaluoValidator.required = true;
        model_internal::_idEmpresaAvaluoValidator.requiredFieldError = "idEmpresaAvaluo is required";
        //model_internal::_idEmpresaAvaluoValidator.source = model_internal::_instance;
        //model_internal::_idEmpresaAvaluoValidator.property = "idEmpresaAvaluo";
        model_internal::_numeroDocumentoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNumeroDocumento);
        model_internal::_numeroDocumentoValidator.required = true;
        model_internal::_numeroDocumentoValidator.requiredFieldError = "numeroDocumento is required";
        //model_internal::_numeroDocumentoValidator.source = model_internal::_instance;
        //model_internal::_numeroDocumentoValidator.property = "numeroDocumento";
        model_internal::_usuarioCreacionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUsuarioCreacion);
        model_internal::_usuarioCreacionValidator.required = true;
        model_internal::_usuarioCreacionValidator.requiredFieldError = "usuarioCreacion is required";
        //model_internal::_usuarioCreacionValidator.source = model_internal::_instance;
        //model_internal::_usuarioCreacionValidator.property = "usuarioCreacion";
        model_internal::_registroPrivadoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRegistroPrivado);
        model_internal::_registroPrivadoValidator.required = true;
        model_internal::_registroPrivadoValidator.requiredFieldError = "registroPrivado is required";
        //model_internal::_registroPrivadoValidator.source = model_internal::_instance;
        //model_internal::_registroPrivadoValidator.property = "registroPrivado";
        model_internal::_estadoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForEstado);
        model_internal::_estadoValidator.required = true;
        model_internal::_estadoValidator.requiredFieldError = "estado is required";
        //model_internal::_estadoValidator.source = model_internal::_instance;
        //model_internal::_estadoValidator.property = "estado";
        model_internal::_peritosEmpresasValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPeritosEmpresas);
        model_internal::_peritosEmpresasValidator.required = true;
        model_internal::_peritosEmpresasValidator.requiredFieldError = "peritosEmpresas is required";
        //model_internal::_peritosEmpresasValidator.source = model_internal::_instance;
        //model_internal::_peritosEmpresasValidator.property = "peritosEmpresas";
        model_internal::_registroSicValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRegistroSic);
        model_internal::_registroSicValidator.required = true;
        model_internal::_registroSicValidator.requiredFieldError = "registroSic is required";
        //model_internal::_registroSicValidator.source = model_internal::_instance;
        //model_internal::_registroSicValidator.property = "registroSic";
        model_internal::_sucursalDaviviendaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSucursalDavivienda);
        model_internal::_sucursalDaviviendaValidator.required = true;
        model_internal::_sucursalDaviviendaValidator.requiredFieldError = "sucursalDavivienda is required";
        //model_internal::_sucursalDaviviendaValidator.source = model_internal::_instance;
        //model_internal::_sucursalDaviviendaValidator.property = "sucursalDavivienda";
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
        model_internal::_firmaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFirma);
        model_internal::_firmaValidator.required = true;
        model_internal::_firmaValidator.requiredFieldError = "firma is required";
        //model_internal::_firmaValidator.source = model_internal::_instance;
        //model_internal::_firmaValidator.property = "firma";
        model_internal::_descEmpresaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDescEmpresa);
        model_internal::_descEmpresaValidator.required = true;
        model_internal::_descEmpresaValidator.requiredFieldError = "descEmpresa is required";
        //model_internal::_descEmpresaValidator.source = model_internal::_instance;
        //model_internal::_descEmpresaValidator.property = "descEmpresa";
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
            throw new Error(propertyName + " is not a data property of entity EmpresasAvaluos");  
            
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
            throw new Error(propertyName + " is not a collection property of entity EmpresasAvaluos");  

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
            throw new Error(propertyName + " does not exist for entity EmpresasAvaluos");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity EmpresasAvaluos");
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
            throw new Error(propertyName + " does not exist for entity EmpresasAvaluos");
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
    public function get isLogoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCargaArchivoPlanoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUsuarioTransaccionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIdEmpresaAvaluoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNumeroDocumentoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUsuarioCreacionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRegistroPrivadoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEstadoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPeritosEmpresasAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRegistroSicAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSucursalDaviviendaAvailable():Boolean
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
    public function get isFirmaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDescEmpresaAvailable():Boolean
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
    public function invalidateDependentOnLogo():void
    {
        if (model_internal::_logoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLogo = null;
            model_internal::calculateLogoIsValid();
        }
    }
    public function invalidateDependentOnCargaArchivoPlano():void
    {
        if (model_internal::_cargaArchivoPlanoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCargaArchivoPlano = null;
            model_internal::calculateCargaArchivoPlanoIsValid();
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
    public function invalidateDependentOnIdEmpresaAvaluo():void
    {
        if (model_internal::_idEmpresaAvaluoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfIdEmpresaAvaluo = null;
            model_internal::calculateIdEmpresaAvaluoIsValid();
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
    public function invalidateDependentOnUsuarioCreacion():void
    {
        if (model_internal::_usuarioCreacionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUsuarioCreacion = null;
            model_internal::calculateUsuarioCreacionIsValid();
        }
    }
    public function invalidateDependentOnRegistroPrivado():void
    {
        if (model_internal::_registroPrivadoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRegistroPrivado = null;
            model_internal::calculateRegistroPrivadoIsValid();
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
    public function invalidateDependentOnPeritosEmpresas():void
    {
        if (model_internal::_peritosEmpresasIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPeritosEmpresas = null;
            model_internal::calculatePeritosEmpresasIsValid();
        }
    }
    public function invalidateDependentOnRegistroSic():void
    {
        if (model_internal::_registroSicIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRegistroSic = null;
            model_internal::calculateRegistroSicIsValid();
        }
    }
    public function invalidateDependentOnSucursalDavivienda():void
    {
        if (model_internal::_sucursalDaviviendaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSucursalDavivienda = null;
            model_internal::calculateSucursalDaviviendaIsValid();
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
    public function invalidateDependentOnFirma():void
    {
        if (model_internal::_firmaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFirma = null;
            model_internal::calculateFirmaIsValid();
        }
    }
    public function invalidateDependentOnDescEmpresa():void
    {
        if (model_internal::_descEmpresaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDescEmpresa = null;
            model_internal::calculateDescEmpresaIsValid();
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
    public function get logoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get logoValidator() : StyleValidator
    {
        return model_internal::_logoValidator;
    }

    model_internal function set _logoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_logoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_logoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "logoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get logoIsValid():Boolean
    {
        if (!model_internal::_logoIsValidCacheInitialized)
        {
            model_internal::calculateLogoIsValid();
        }

        return model_internal::_logoIsValid;
    }

    model_internal function calculateLogoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_logoValidator.validate(model_internal::_instance.logo)
        model_internal::_logoIsValid_der = (valRes.results == null);
        model_internal::_logoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::logoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::logoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get logoValidationFailureMessages():Array
    {
        if (model_internal::_logoValidationFailureMessages == null)
            model_internal::calculateLogoIsValid();

        return _logoValidationFailureMessages;
    }

    model_internal function set logoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_logoValidationFailureMessages;

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
            model_internal::_logoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "logoValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get cargaArchivoPlanoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get cargaArchivoPlanoValidator() : StyleValidator
    {
        return model_internal::_cargaArchivoPlanoValidator;
    }

    model_internal function set _cargaArchivoPlanoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_cargaArchivoPlanoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_cargaArchivoPlanoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cargaArchivoPlanoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get cargaArchivoPlanoIsValid():Boolean
    {
        if (!model_internal::_cargaArchivoPlanoIsValidCacheInitialized)
        {
            model_internal::calculateCargaArchivoPlanoIsValid();
        }

        return model_internal::_cargaArchivoPlanoIsValid;
    }

    model_internal function calculateCargaArchivoPlanoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_cargaArchivoPlanoValidator.validate(model_internal::_instance.cargaArchivoPlano)
        model_internal::_cargaArchivoPlanoIsValid_der = (valRes.results == null);
        model_internal::_cargaArchivoPlanoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::cargaArchivoPlanoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::cargaArchivoPlanoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get cargaArchivoPlanoValidationFailureMessages():Array
    {
        if (model_internal::_cargaArchivoPlanoValidationFailureMessages == null)
            model_internal::calculateCargaArchivoPlanoIsValid();

        return _cargaArchivoPlanoValidationFailureMessages;
    }

    model_internal function set cargaArchivoPlanoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_cargaArchivoPlanoValidationFailureMessages;

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
            model_internal::_cargaArchivoPlanoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cargaArchivoPlanoValidationFailureMessages", oldValue, value));
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
    public function get idEmpresaAvaluoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get idEmpresaAvaluoValidator() : StyleValidator
    {
        return model_internal::_idEmpresaAvaluoValidator;
    }

    model_internal function set _idEmpresaAvaluoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_idEmpresaAvaluoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_idEmpresaAvaluoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idEmpresaAvaluoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get idEmpresaAvaluoIsValid():Boolean
    {
        if (!model_internal::_idEmpresaAvaluoIsValidCacheInitialized)
        {
            model_internal::calculateIdEmpresaAvaluoIsValid();
        }

        return model_internal::_idEmpresaAvaluoIsValid;
    }

    model_internal function calculateIdEmpresaAvaluoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_idEmpresaAvaluoValidator.validate(model_internal::_instance.idEmpresaAvaluo)
        model_internal::_idEmpresaAvaluoIsValid_der = (valRes.results == null);
        model_internal::_idEmpresaAvaluoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::idEmpresaAvaluoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::idEmpresaAvaluoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get idEmpresaAvaluoValidationFailureMessages():Array
    {
        if (model_internal::_idEmpresaAvaluoValidationFailureMessages == null)
            model_internal::calculateIdEmpresaAvaluoIsValid();

        return _idEmpresaAvaluoValidationFailureMessages;
    }

    model_internal function set idEmpresaAvaluoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_idEmpresaAvaluoValidationFailureMessages;

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
            model_internal::_idEmpresaAvaluoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idEmpresaAvaluoValidationFailureMessages", oldValue, value));
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
    public function get registroPrivadoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get registroPrivadoValidator() : StyleValidator
    {
        return model_internal::_registroPrivadoValidator;
    }

    model_internal function set _registroPrivadoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_registroPrivadoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_registroPrivadoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "registroPrivadoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get registroPrivadoIsValid():Boolean
    {
        if (!model_internal::_registroPrivadoIsValidCacheInitialized)
        {
            model_internal::calculateRegistroPrivadoIsValid();
        }

        return model_internal::_registroPrivadoIsValid;
    }

    model_internal function calculateRegistroPrivadoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_registroPrivadoValidator.validate(model_internal::_instance.registroPrivado)
        model_internal::_registroPrivadoIsValid_der = (valRes.results == null);
        model_internal::_registroPrivadoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::registroPrivadoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::registroPrivadoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get registroPrivadoValidationFailureMessages():Array
    {
        if (model_internal::_registroPrivadoValidationFailureMessages == null)
            model_internal::calculateRegistroPrivadoIsValid();

        return _registroPrivadoValidationFailureMessages;
    }

    model_internal function set registroPrivadoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_registroPrivadoValidationFailureMessages;

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
            model_internal::_registroPrivadoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "registroPrivadoValidationFailureMessages", oldValue, value));
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
    public function get peritosEmpresasStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get peritosEmpresasValidator() : StyleValidator
    {
        return model_internal::_peritosEmpresasValidator;
    }

    model_internal function set _peritosEmpresasIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_peritosEmpresasIsValid;         
        if (oldValue !== value)
        {
            model_internal::_peritosEmpresasIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "peritosEmpresasIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get peritosEmpresasIsValid():Boolean
    {
        if (!model_internal::_peritosEmpresasIsValidCacheInitialized)
        {
            model_internal::calculatePeritosEmpresasIsValid();
        }

        return model_internal::_peritosEmpresasIsValid;
    }

    model_internal function calculatePeritosEmpresasIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_peritosEmpresasValidator.validate(model_internal::_instance.peritosEmpresas)
        model_internal::_peritosEmpresasIsValid_der = (valRes.results == null);
        model_internal::_peritosEmpresasIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::peritosEmpresasValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::peritosEmpresasValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get peritosEmpresasValidationFailureMessages():Array
    {
        if (model_internal::_peritosEmpresasValidationFailureMessages == null)
            model_internal::calculatePeritosEmpresasIsValid();

        return _peritosEmpresasValidationFailureMessages;
    }

    model_internal function set peritosEmpresasValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_peritosEmpresasValidationFailureMessages;

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
            model_internal::_peritosEmpresasValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "peritosEmpresasValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get registroSicStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get registroSicValidator() : StyleValidator
    {
        return model_internal::_registroSicValidator;
    }

    model_internal function set _registroSicIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_registroSicIsValid;         
        if (oldValue !== value)
        {
            model_internal::_registroSicIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "registroSicIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get registroSicIsValid():Boolean
    {
        if (!model_internal::_registroSicIsValidCacheInitialized)
        {
            model_internal::calculateRegistroSicIsValid();
        }

        return model_internal::_registroSicIsValid;
    }

    model_internal function calculateRegistroSicIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_registroSicValidator.validate(model_internal::_instance.registroSic)
        model_internal::_registroSicIsValid_der = (valRes.results == null);
        model_internal::_registroSicIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::registroSicValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::registroSicValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get registroSicValidationFailureMessages():Array
    {
        if (model_internal::_registroSicValidationFailureMessages == null)
            model_internal::calculateRegistroSicIsValid();

        return _registroSicValidationFailureMessages;
    }

    model_internal function set registroSicValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_registroSicValidationFailureMessages;

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
            model_internal::_registroSicValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "registroSicValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get sucursalDaviviendaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get sucursalDaviviendaValidator() : StyleValidator
    {
        return model_internal::_sucursalDaviviendaValidator;
    }

    model_internal function set _sucursalDaviviendaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_sucursalDaviviendaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_sucursalDaviviendaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sucursalDaviviendaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get sucursalDaviviendaIsValid():Boolean
    {
        if (!model_internal::_sucursalDaviviendaIsValidCacheInitialized)
        {
            model_internal::calculateSucursalDaviviendaIsValid();
        }

        return model_internal::_sucursalDaviviendaIsValid;
    }

    model_internal function calculateSucursalDaviviendaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_sucursalDaviviendaValidator.validate(model_internal::_instance.sucursalDavivienda)
        model_internal::_sucursalDaviviendaIsValid_der = (valRes.results == null);
        model_internal::_sucursalDaviviendaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::sucursalDaviviendaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::sucursalDaviviendaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get sucursalDaviviendaValidationFailureMessages():Array
    {
        if (model_internal::_sucursalDaviviendaValidationFailureMessages == null)
            model_internal::calculateSucursalDaviviendaIsValid();

        return _sucursalDaviviendaValidationFailureMessages;
    }

    model_internal function set sucursalDaviviendaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_sucursalDaviviendaValidationFailureMessages;

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
            model_internal::_sucursalDaviviendaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sucursalDaviviendaValidationFailureMessages", oldValue, value));
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
    public function get firmaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get firmaValidator() : StyleValidator
    {
        return model_internal::_firmaValidator;
    }

    model_internal function set _firmaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_firmaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_firmaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "firmaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get firmaIsValid():Boolean
    {
        if (!model_internal::_firmaIsValidCacheInitialized)
        {
            model_internal::calculateFirmaIsValid();
        }

        return model_internal::_firmaIsValid;
    }

    model_internal function calculateFirmaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_firmaValidator.validate(model_internal::_instance.firma)
        model_internal::_firmaIsValid_der = (valRes.results == null);
        model_internal::_firmaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::firmaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::firmaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get firmaValidationFailureMessages():Array
    {
        if (model_internal::_firmaValidationFailureMessages == null)
            model_internal::calculateFirmaIsValid();

        return _firmaValidationFailureMessages;
    }

    model_internal function set firmaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_firmaValidationFailureMessages;

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
            model_internal::_firmaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "firmaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get descEmpresaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get descEmpresaValidator() : StyleValidator
    {
        return model_internal::_descEmpresaValidator;
    }

    model_internal function set _descEmpresaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_descEmpresaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_descEmpresaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descEmpresaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get descEmpresaIsValid():Boolean
    {
        if (!model_internal::_descEmpresaIsValidCacheInitialized)
        {
            model_internal::calculateDescEmpresaIsValid();
        }

        return model_internal::_descEmpresaIsValid;
    }

    model_internal function calculateDescEmpresaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_descEmpresaValidator.validate(model_internal::_instance.descEmpresa)
        model_internal::_descEmpresaIsValid_der = (valRes.results == null);
        model_internal::_descEmpresaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::descEmpresaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::descEmpresaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get descEmpresaValidationFailureMessages():Array
    {
        if (model_internal::_descEmpresaValidationFailureMessages == null)
            model_internal::calculateDescEmpresaIsValid();

        return _descEmpresaValidationFailureMessages;
    }

    model_internal function set descEmpresaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_descEmpresaValidationFailureMessages;

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
            model_internal::_descEmpresaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descEmpresaValidationFailureMessages", oldValue, value));
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
            case("logo"):
            {
                return logoValidationFailureMessages;
            }
            case("cargaArchivoPlano"):
            {
                return cargaArchivoPlanoValidationFailureMessages;
            }
            case("usuarioTransaccion"):
            {
                return usuarioTransaccionValidationFailureMessages;
            }
            case("idEmpresaAvaluo"):
            {
                return idEmpresaAvaluoValidationFailureMessages;
            }
            case("numeroDocumento"):
            {
                return numeroDocumentoValidationFailureMessages;
            }
            case("usuarioCreacion"):
            {
                return usuarioCreacionValidationFailureMessages;
            }
            case("registroPrivado"):
            {
                return registroPrivadoValidationFailureMessages;
            }
            case("estado"):
            {
                return estadoValidationFailureMessages;
            }
            case("peritosEmpresas"):
            {
                return peritosEmpresasValidationFailureMessages;
            }
            case("registroSic"):
            {
                return registroSicValidationFailureMessages;
            }
            case("sucursalDavivienda"):
            {
                return sucursalDaviviendaValidationFailureMessages;
            }
            case("tipoDocumento"):
            {
                return tipoDocumentoValidationFailureMessages;
            }
            case("fechaCreacion"):
            {
                return fechaCreacionValidationFailureMessages;
            }
            case("firma"):
            {
                return firmaValidationFailureMessages;
            }
            case("descEmpresa"):
            {
                return descEmpresaValidationFailureMessages;
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
