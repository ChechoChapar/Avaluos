
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
internal class _HistoricoAuxDaoEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("usuarioTransaccion", "idDepartamento", "idCiudad", "fechaAvaluoDesde", "fechaCreacionDesde", "numeroIdentificacion", "matriculaInmobiliaria", "direccionInmueble", "usuarioAprueba", "estadoAvaluo", "fechaAvaluoHasta", "fechaCreacionHasta", "nombreSolicitante", "fechaTransaccionHasta", "fechaTransaccionDesde", "tipoDocumento");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("usuarioTransaccion", "idDepartamento", "idCiudad", "fechaAvaluoDesde", "fechaCreacionDesde", "numeroIdentificacion", "matriculaInmobiliaria", "direccionInmueble", "usuarioAprueba", "estadoAvaluo", "fechaAvaluoHasta", "fechaCreacionHasta", "nombreSolicitante", "fechaTransaccionHasta", "fechaTransaccionDesde", "tipoDocumento");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("usuarioTransaccion", "idDepartamento", "idCiudad", "fechaAvaluoDesde", "fechaCreacionDesde", "numeroIdentificacion", "matriculaInmobiliaria", "direccionInmueble", "usuarioAprueba", "estadoAvaluo", "fechaAvaluoHasta", "fechaCreacionHasta", "nombreSolicitante", "fechaTransaccionHasta", "fechaTransaccionDesde", "tipoDocumento");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("usuarioTransaccion", "idDepartamento", "idCiudad", "fechaAvaluoDesde", "fechaCreacionDesde", "numeroIdentificacion", "matriculaInmobiliaria", "direccionInmueble", "usuarioAprueba", "estadoAvaluo", "fechaAvaluoHasta", "fechaCreacionHasta", "nombreSolicitante", "fechaTransaccionHasta", "fechaTransaccionDesde", "tipoDocumento");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "HistoricoAuxDao";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _usuarioTransaccionIsValid:Boolean;
    model_internal var _usuarioTransaccionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _usuarioTransaccionIsValidCacheInitialized:Boolean = false;
    model_internal var _usuarioTransaccionValidationFailureMessages:Array;
    
    model_internal var _idDepartamentoIsValid:Boolean;
    model_internal var _idDepartamentoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _idDepartamentoIsValidCacheInitialized:Boolean = false;
    model_internal var _idDepartamentoValidationFailureMessages:Array;
    
    model_internal var _idCiudadIsValid:Boolean;
    model_internal var _idCiudadValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _idCiudadIsValidCacheInitialized:Boolean = false;
    model_internal var _idCiudadValidationFailureMessages:Array;
    
    model_internal var _fechaAvaluoDesdeIsValid:Boolean;
    model_internal var _fechaAvaluoDesdeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fechaAvaluoDesdeIsValidCacheInitialized:Boolean = false;
    model_internal var _fechaAvaluoDesdeValidationFailureMessages:Array;
    
    model_internal var _fechaCreacionDesdeIsValid:Boolean;
    model_internal var _fechaCreacionDesdeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fechaCreacionDesdeIsValidCacheInitialized:Boolean = false;
    model_internal var _fechaCreacionDesdeValidationFailureMessages:Array;
    
    model_internal var _numeroIdentificacionIsValid:Boolean;
    model_internal var _numeroIdentificacionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _numeroIdentificacionIsValidCacheInitialized:Boolean = false;
    model_internal var _numeroIdentificacionValidationFailureMessages:Array;
    
    model_internal var _matriculaInmobiliariaIsValid:Boolean;
    model_internal var _matriculaInmobiliariaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _matriculaInmobiliariaIsValidCacheInitialized:Boolean = false;
    model_internal var _matriculaInmobiliariaValidationFailureMessages:Array;
    
    model_internal var _direccionInmuebleIsValid:Boolean;
    model_internal var _direccionInmuebleValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _direccionInmuebleIsValidCacheInitialized:Boolean = false;
    model_internal var _direccionInmuebleValidationFailureMessages:Array;
    
    model_internal var _usuarioApruebaIsValid:Boolean;
    model_internal var _usuarioApruebaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _usuarioApruebaIsValidCacheInitialized:Boolean = false;
    model_internal var _usuarioApruebaValidationFailureMessages:Array;
    
    model_internal var _estadoAvaluoIsValid:Boolean;
    model_internal var _estadoAvaluoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _estadoAvaluoIsValidCacheInitialized:Boolean = false;
    model_internal var _estadoAvaluoValidationFailureMessages:Array;
    
    model_internal var _fechaAvaluoHastaIsValid:Boolean;
    model_internal var _fechaAvaluoHastaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fechaAvaluoHastaIsValidCacheInitialized:Boolean = false;
    model_internal var _fechaAvaluoHastaValidationFailureMessages:Array;
    
    model_internal var _fechaCreacionHastaIsValid:Boolean;
    model_internal var _fechaCreacionHastaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fechaCreacionHastaIsValidCacheInitialized:Boolean = false;
    model_internal var _fechaCreacionHastaValidationFailureMessages:Array;
    
    model_internal var _nombreSolicitanteIsValid:Boolean;
    model_internal var _nombreSolicitanteValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nombreSolicitanteIsValidCacheInitialized:Boolean = false;
    model_internal var _nombreSolicitanteValidationFailureMessages:Array;
    
    model_internal var _fechaTransaccionHastaIsValid:Boolean;
    model_internal var _fechaTransaccionHastaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fechaTransaccionHastaIsValidCacheInitialized:Boolean = false;
    model_internal var _fechaTransaccionHastaValidationFailureMessages:Array;
    
    model_internal var _fechaTransaccionDesdeIsValid:Boolean;
    model_internal var _fechaTransaccionDesdeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fechaTransaccionDesdeIsValidCacheInitialized:Boolean = false;
    model_internal var _fechaTransaccionDesdeValidationFailureMessages:Array;
    
    model_internal var _tipoDocumentoIsValid:Boolean;
    model_internal var _tipoDocumentoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _tipoDocumentoIsValidCacheInitialized:Boolean = false;
    model_internal var _tipoDocumentoValidationFailureMessages:Array;

    model_internal var _instance:_Super_HistoricoAuxDao;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _HistoricoAuxDaoEntityMetadata(value : _Super_HistoricoAuxDao)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["usuarioTransaccion"] = new Array();
            model_internal::dependentsOnMap["idDepartamento"] = new Array();
            model_internal::dependentsOnMap["idCiudad"] = new Array();
            model_internal::dependentsOnMap["fechaAvaluoDesde"] = new Array();
            model_internal::dependentsOnMap["fechaCreacionDesde"] = new Array();
            model_internal::dependentsOnMap["numeroIdentificacion"] = new Array();
            model_internal::dependentsOnMap["matriculaInmobiliaria"] = new Array();
            model_internal::dependentsOnMap["direccionInmueble"] = new Array();
            model_internal::dependentsOnMap["usuarioAprueba"] = new Array();
            model_internal::dependentsOnMap["estadoAvaluo"] = new Array();
            model_internal::dependentsOnMap["fechaAvaluoHasta"] = new Array();
            model_internal::dependentsOnMap["fechaCreacionHasta"] = new Array();
            model_internal::dependentsOnMap["nombreSolicitante"] = new Array();
            model_internal::dependentsOnMap["fechaTransaccionHasta"] = new Array();
            model_internal::dependentsOnMap["fechaTransaccionDesde"] = new Array();
            model_internal::dependentsOnMap["tipoDocumento"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
        }

        model_internal::_instance = value;
        model_internal::_usuarioTransaccionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUsuarioTransaccion);
        model_internal::_usuarioTransaccionValidator.required = true;
        model_internal::_usuarioTransaccionValidator.requiredFieldError = "usuarioTransaccion is required";
        //model_internal::_usuarioTransaccionValidator.source = model_internal::_instance;
        //model_internal::_usuarioTransaccionValidator.property = "usuarioTransaccion";
        model_internal::_idDepartamentoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForIdDepartamento);
        model_internal::_idDepartamentoValidator.required = true;
        model_internal::_idDepartamentoValidator.requiredFieldError = "idDepartamento is required";
        //model_internal::_idDepartamentoValidator.source = model_internal::_instance;
        //model_internal::_idDepartamentoValidator.property = "idDepartamento";
        model_internal::_idCiudadValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForIdCiudad);
        model_internal::_idCiudadValidator.required = true;
        model_internal::_idCiudadValidator.requiredFieldError = "idCiudad is required";
        //model_internal::_idCiudadValidator.source = model_internal::_instance;
        //model_internal::_idCiudadValidator.property = "idCiudad";
        model_internal::_fechaAvaluoDesdeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFechaAvaluoDesde);
        model_internal::_fechaAvaluoDesdeValidator.required = true;
        model_internal::_fechaAvaluoDesdeValidator.requiredFieldError = "fechaAvaluoDesde is required";
        //model_internal::_fechaAvaluoDesdeValidator.source = model_internal::_instance;
        //model_internal::_fechaAvaluoDesdeValidator.property = "fechaAvaluoDesde";
        model_internal::_fechaCreacionDesdeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFechaCreacionDesde);
        model_internal::_fechaCreacionDesdeValidator.required = true;
        model_internal::_fechaCreacionDesdeValidator.requiredFieldError = "fechaCreacionDesde is required";
        //model_internal::_fechaCreacionDesdeValidator.source = model_internal::_instance;
        //model_internal::_fechaCreacionDesdeValidator.property = "fechaCreacionDesde";
        model_internal::_numeroIdentificacionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNumeroIdentificacion);
        model_internal::_numeroIdentificacionValidator.required = true;
        model_internal::_numeroIdentificacionValidator.requiredFieldError = "numeroIdentificacion is required";
        //model_internal::_numeroIdentificacionValidator.source = model_internal::_instance;
        //model_internal::_numeroIdentificacionValidator.property = "numeroIdentificacion";
        model_internal::_matriculaInmobiliariaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForMatriculaInmobiliaria);
        model_internal::_matriculaInmobiliariaValidator.required = true;
        model_internal::_matriculaInmobiliariaValidator.requiredFieldError = "matriculaInmobiliaria is required";
        //model_internal::_matriculaInmobiliariaValidator.source = model_internal::_instance;
        //model_internal::_matriculaInmobiliariaValidator.property = "matriculaInmobiliaria";
        model_internal::_direccionInmuebleValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDireccionInmueble);
        model_internal::_direccionInmuebleValidator.required = true;
        model_internal::_direccionInmuebleValidator.requiredFieldError = "direccionInmueble is required";
        //model_internal::_direccionInmuebleValidator.source = model_internal::_instance;
        //model_internal::_direccionInmuebleValidator.property = "direccionInmueble";
        model_internal::_usuarioApruebaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUsuarioAprueba);
        model_internal::_usuarioApruebaValidator.required = true;
        model_internal::_usuarioApruebaValidator.requiredFieldError = "usuarioAprueba is required";
        //model_internal::_usuarioApruebaValidator.source = model_internal::_instance;
        //model_internal::_usuarioApruebaValidator.property = "usuarioAprueba";
        model_internal::_estadoAvaluoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForEstadoAvaluo);
        model_internal::_estadoAvaluoValidator.required = true;
        model_internal::_estadoAvaluoValidator.requiredFieldError = "estadoAvaluo is required";
        //model_internal::_estadoAvaluoValidator.source = model_internal::_instance;
        //model_internal::_estadoAvaluoValidator.property = "estadoAvaluo";
        model_internal::_fechaAvaluoHastaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFechaAvaluoHasta);
        model_internal::_fechaAvaluoHastaValidator.required = true;
        model_internal::_fechaAvaluoHastaValidator.requiredFieldError = "fechaAvaluoHasta is required";
        //model_internal::_fechaAvaluoHastaValidator.source = model_internal::_instance;
        //model_internal::_fechaAvaluoHastaValidator.property = "fechaAvaluoHasta";
        model_internal::_fechaCreacionHastaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFechaCreacionHasta);
        model_internal::_fechaCreacionHastaValidator.required = true;
        model_internal::_fechaCreacionHastaValidator.requiredFieldError = "fechaCreacionHasta is required";
        //model_internal::_fechaCreacionHastaValidator.source = model_internal::_instance;
        //model_internal::_fechaCreacionHastaValidator.property = "fechaCreacionHasta";
        model_internal::_nombreSolicitanteValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNombreSolicitante);
        model_internal::_nombreSolicitanteValidator.required = true;
        model_internal::_nombreSolicitanteValidator.requiredFieldError = "nombreSolicitante is required";
        //model_internal::_nombreSolicitanteValidator.source = model_internal::_instance;
        //model_internal::_nombreSolicitanteValidator.property = "nombreSolicitante";
        model_internal::_fechaTransaccionHastaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFechaTransaccionHasta);
        model_internal::_fechaTransaccionHastaValidator.required = true;
        model_internal::_fechaTransaccionHastaValidator.requiredFieldError = "fechaTransaccionHasta is required";
        //model_internal::_fechaTransaccionHastaValidator.source = model_internal::_instance;
        //model_internal::_fechaTransaccionHastaValidator.property = "fechaTransaccionHasta";
        model_internal::_fechaTransaccionDesdeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFechaTransaccionDesde);
        model_internal::_fechaTransaccionDesdeValidator.required = true;
        model_internal::_fechaTransaccionDesdeValidator.requiredFieldError = "fechaTransaccionDesde is required";
        //model_internal::_fechaTransaccionDesdeValidator.source = model_internal::_instance;
        //model_internal::_fechaTransaccionDesdeValidator.property = "fechaTransaccionDesde";
        model_internal::_tipoDocumentoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTipoDocumento);
        model_internal::_tipoDocumentoValidator.required = true;
        model_internal::_tipoDocumentoValidator.requiredFieldError = "tipoDocumento is required";
        //model_internal::_tipoDocumentoValidator.source = model_internal::_instance;
        //model_internal::_tipoDocumentoValidator.property = "tipoDocumento";
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
            throw new Error(propertyName + " is not a data property of entity HistoricoAuxDao");  
            
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
            throw new Error(propertyName + " is not a collection property of entity HistoricoAuxDao");  

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
            throw new Error(propertyName + " does not exist for entity HistoricoAuxDao");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity HistoricoAuxDao");
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
            throw new Error(propertyName + " does not exist for entity HistoricoAuxDao");
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
    public function get isUsuarioTransaccionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIdDepartamentoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIdCiudadAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFechaAvaluoDesdeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFechaCreacionDesdeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNumeroIdentificacionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isMatriculaInmobiliariaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDireccionInmuebleAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUsuarioApruebaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEstadoAvaluoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFechaAvaluoHastaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFechaCreacionHastaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNombreSolicitanteAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFechaTransaccionHastaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFechaTransaccionDesdeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTipoDocumentoAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnUsuarioTransaccion():void
    {
        if (model_internal::_usuarioTransaccionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUsuarioTransaccion = null;
            model_internal::calculateUsuarioTransaccionIsValid();
        }
    }
    public function invalidateDependentOnIdDepartamento():void
    {
        if (model_internal::_idDepartamentoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfIdDepartamento = null;
            model_internal::calculateIdDepartamentoIsValid();
        }
    }
    public function invalidateDependentOnIdCiudad():void
    {
        if (model_internal::_idCiudadIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfIdCiudad = null;
            model_internal::calculateIdCiudadIsValid();
        }
    }
    public function invalidateDependentOnFechaAvaluoDesde():void
    {
        if (model_internal::_fechaAvaluoDesdeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFechaAvaluoDesde = null;
            model_internal::calculateFechaAvaluoDesdeIsValid();
        }
    }
    public function invalidateDependentOnFechaCreacionDesde():void
    {
        if (model_internal::_fechaCreacionDesdeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFechaCreacionDesde = null;
            model_internal::calculateFechaCreacionDesdeIsValid();
        }
    }
    public function invalidateDependentOnNumeroIdentificacion():void
    {
        if (model_internal::_numeroIdentificacionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNumeroIdentificacion = null;
            model_internal::calculateNumeroIdentificacionIsValid();
        }
    }
    public function invalidateDependentOnMatriculaInmobiliaria():void
    {
        if (model_internal::_matriculaInmobiliariaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfMatriculaInmobiliaria = null;
            model_internal::calculateMatriculaInmobiliariaIsValid();
        }
    }
    public function invalidateDependentOnDireccionInmueble():void
    {
        if (model_internal::_direccionInmuebleIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDireccionInmueble = null;
            model_internal::calculateDireccionInmuebleIsValid();
        }
    }
    public function invalidateDependentOnUsuarioAprueba():void
    {
        if (model_internal::_usuarioApruebaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUsuarioAprueba = null;
            model_internal::calculateUsuarioApruebaIsValid();
        }
    }
    public function invalidateDependentOnEstadoAvaluo():void
    {
        if (model_internal::_estadoAvaluoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfEstadoAvaluo = null;
            model_internal::calculateEstadoAvaluoIsValid();
        }
    }
    public function invalidateDependentOnFechaAvaluoHasta():void
    {
        if (model_internal::_fechaAvaluoHastaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFechaAvaluoHasta = null;
            model_internal::calculateFechaAvaluoHastaIsValid();
        }
    }
    public function invalidateDependentOnFechaCreacionHasta():void
    {
        if (model_internal::_fechaCreacionHastaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFechaCreacionHasta = null;
            model_internal::calculateFechaCreacionHastaIsValid();
        }
    }
    public function invalidateDependentOnNombreSolicitante():void
    {
        if (model_internal::_nombreSolicitanteIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNombreSolicitante = null;
            model_internal::calculateNombreSolicitanteIsValid();
        }
    }
    public function invalidateDependentOnFechaTransaccionHasta():void
    {
        if (model_internal::_fechaTransaccionHastaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFechaTransaccionHasta = null;
            model_internal::calculateFechaTransaccionHastaIsValid();
        }
    }
    public function invalidateDependentOnFechaTransaccionDesde():void
    {
        if (model_internal::_fechaTransaccionDesdeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFechaTransaccionDesde = null;
            model_internal::calculateFechaTransaccionDesdeIsValid();
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

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
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
    public function get idDepartamentoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get idDepartamentoValidator() : StyleValidator
    {
        return model_internal::_idDepartamentoValidator;
    }

    model_internal function set _idDepartamentoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_idDepartamentoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_idDepartamentoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idDepartamentoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get idDepartamentoIsValid():Boolean
    {
        if (!model_internal::_idDepartamentoIsValidCacheInitialized)
        {
            model_internal::calculateIdDepartamentoIsValid();
        }

        return model_internal::_idDepartamentoIsValid;
    }

    model_internal function calculateIdDepartamentoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_idDepartamentoValidator.validate(model_internal::_instance.idDepartamento)
        model_internal::_idDepartamentoIsValid_der = (valRes.results == null);
        model_internal::_idDepartamentoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::idDepartamentoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::idDepartamentoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get idDepartamentoValidationFailureMessages():Array
    {
        if (model_internal::_idDepartamentoValidationFailureMessages == null)
            model_internal::calculateIdDepartamentoIsValid();

        return _idDepartamentoValidationFailureMessages;
    }

    model_internal function set idDepartamentoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_idDepartamentoValidationFailureMessages;

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
            model_internal::_idDepartamentoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idDepartamentoValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get idCiudadStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get idCiudadValidator() : StyleValidator
    {
        return model_internal::_idCiudadValidator;
    }

    model_internal function set _idCiudadIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_idCiudadIsValid;         
        if (oldValue !== value)
        {
            model_internal::_idCiudadIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idCiudadIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get idCiudadIsValid():Boolean
    {
        if (!model_internal::_idCiudadIsValidCacheInitialized)
        {
            model_internal::calculateIdCiudadIsValid();
        }

        return model_internal::_idCiudadIsValid;
    }

    model_internal function calculateIdCiudadIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_idCiudadValidator.validate(model_internal::_instance.idCiudad)
        model_internal::_idCiudadIsValid_der = (valRes.results == null);
        model_internal::_idCiudadIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::idCiudadValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::idCiudadValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get idCiudadValidationFailureMessages():Array
    {
        if (model_internal::_idCiudadValidationFailureMessages == null)
            model_internal::calculateIdCiudadIsValid();

        return _idCiudadValidationFailureMessages;
    }

    model_internal function set idCiudadValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_idCiudadValidationFailureMessages;

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
            model_internal::_idCiudadValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idCiudadValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get fechaAvaluoDesdeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get fechaAvaluoDesdeValidator() : StyleValidator
    {
        return model_internal::_fechaAvaluoDesdeValidator;
    }

    model_internal function set _fechaAvaluoDesdeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_fechaAvaluoDesdeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_fechaAvaluoDesdeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaAvaluoDesdeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get fechaAvaluoDesdeIsValid():Boolean
    {
        if (!model_internal::_fechaAvaluoDesdeIsValidCacheInitialized)
        {
            model_internal::calculateFechaAvaluoDesdeIsValid();
        }

        return model_internal::_fechaAvaluoDesdeIsValid;
    }

    model_internal function calculateFechaAvaluoDesdeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_fechaAvaluoDesdeValidator.validate(model_internal::_instance.fechaAvaluoDesde)
        model_internal::_fechaAvaluoDesdeIsValid_der = (valRes.results == null);
        model_internal::_fechaAvaluoDesdeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::fechaAvaluoDesdeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::fechaAvaluoDesdeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get fechaAvaluoDesdeValidationFailureMessages():Array
    {
        if (model_internal::_fechaAvaluoDesdeValidationFailureMessages == null)
            model_internal::calculateFechaAvaluoDesdeIsValid();

        return _fechaAvaluoDesdeValidationFailureMessages;
    }

    model_internal function set fechaAvaluoDesdeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_fechaAvaluoDesdeValidationFailureMessages;

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
            model_internal::_fechaAvaluoDesdeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaAvaluoDesdeValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get fechaCreacionDesdeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get fechaCreacionDesdeValidator() : StyleValidator
    {
        return model_internal::_fechaCreacionDesdeValidator;
    }

    model_internal function set _fechaCreacionDesdeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_fechaCreacionDesdeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_fechaCreacionDesdeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaCreacionDesdeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get fechaCreacionDesdeIsValid():Boolean
    {
        if (!model_internal::_fechaCreacionDesdeIsValidCacheInitialized)
        {
            model_internal::calculateFechaCreacionDesdeIsValid();
        }

        return model_internal::_fechaCreacionDesdeIsValid;
    }

    model_internal function calculateFechaCreacionDesdeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_fechaCreacionDesdeValidator.validate(model_internal::_instance.fechaCreacionDesde)
        model_internal::_fechaCreacionDesdeIsValid_der = (valRes.results == null);
        model_internal::_fechaCreacionDesdeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::fechaCreacionDesdeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::fechaCreacionDesdeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get fechaCreacionDesdeValidationFailureMessages():Array
    {
        if (model_internal::_fechaCreacionDesdeValidationFailureMessages == null)
            model_internal::calculateFechaCreacionDesdeIsValid();

        return _fechaCreacionDesdeValidationFailureMessages;
    }

    model_internal function set fechaCreacionDesdeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_fechaCreacionDesdeValidationFailureMessages;

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
            model_internal::_fechaCreacionDesdeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaCreacionDesdeValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get numeroIdentificacionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get numeroIdentificacionValidator() : StyleValidator
    {
        return model_internal::_numeroIdentificacionValidator;
    }

    model_internal function set _numeroIdentificacionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_numeroIdentificacionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_numeroIdentificacionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numeroIdentificacionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get numeroIdentificacionIsValid():Boolean
    {
        if (!model_internal::_numeroIdentificacionIsValidCacheInitialized)
        {
            model_internal::calculateNumeroIdentificacionIsValid();
        }

        return model_internal::_numeroIdentificacionIsValid;
    }

    model_internal function calculateNumeroIdentificacionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_numeroIdentificacionValidator.validate(model_internal::_instance.numeroIdentificacion)
        model_internal::_numeroIdentificacionIsValid_der = (valRes.results == null);
        model_internal::_numeroIdentificacionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::numeroIdentificacionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::numeroIdentificacionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get numeroIdentificacionValidationFailureMessages():Array
    {
        if (model_internal::_numeroIdentificacionValidationFailureMessages == null)
            model_internal::calculateNumeroIdentificacionIsValid();

        return _numeroIdentificacionValidationFailureMessages;
    }

    model_internal function set numeroIdentificacionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_numeroIdentificacionValidationFailureMessages;

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
            model_internal::_numeroIdentificacionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numeroIdentificacionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get matriculaInmobiliariaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get matriculaInmobiliariaValidator() : StyleValidator
    {
        return model_internal::_matriculaInmobiliariaValidator;
    }

    model_internal function set _matriculaInmobiliariaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_matriculaInmobiliariaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_matriculaInmobiliariaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "matriculaInmobiliariaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get matriculaInmobiliariaIsValid():Boolean
    {
        if (!model_internal::_matriculaInmobiliariaIsValidCacheInitialized)
        {
            model_internal::calculateMatriculaInmobiliariaIsValid();
        }

        return model_internal::_matriculaInmobiliariaIsValid;
    }

    model_internal function calculateMatriculaInmobiliariaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_matriculaInmobiliariaValidator.validate(model_internal::_instance.matriculaInmobiliaria)
        model_internal::_matriculaInmobiliariaIsValid_der = (valRes.results == null);
        model_internal::_matriculaInmobiliariaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::matriculaInmobiliariaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::matriculaInmobiliariaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get matriculaInmobiliariaValidationFailureMessages():Array
    {
        if (model_internal::_matriculaInmobiliariaValidationFailureMessages == null)
            model_internal::calculateMatriculaInmobiliariaIsValid();

        return _matriculaInmobiliariaValidationFailureMessages;
    }

    model_internal function set matriculaInmobiliariaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_matriculaInmobiliariaValidationFailureMessages;

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
            model_internal::_matriculaInmobiliariaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "matriculaInmobiliariaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get direccionInmuebleStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get direccionInmuebleValidator() : StyleValidator
    {
        return model_internal::_direccionInmuebleValidator;
    }

    model_internal function set _direccionInmuebleIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_direccionInmuebleIsValid;         
        if (oldValue !== value)
        {
            model_internal::_direccionInmuebleIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "direccionInmuebleIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get direccionInmuebleIsValid():Boolean
    {
        if (!model_internal::_direccionInmuebleIsValidCacheInitialized)
        {
            model_internal::calculateDireccionInmuebleIsValid();
        }

        return model_internal::_direccionInmuebleIsValid;
    }

    model_internal function calculateDireccionInmuebleIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_direccionInmuebleValidator.validate(model_internal::_instance.direccionInmueble)
        model_internal::_direccionInmuebleIsValid_der = (valRes.results == null);
        model_internal::_direccionInmuebleIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::direccionInmuebleValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::direccionInmuebleValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get direccionInmuebleValidationFailureMessages():Array
    {
        if (model_internal::_direccionInmuebleValidationFailureMessages == null)
            model_internal::calculateDireccionInmuebleIsValid();

        return _direccionInmuebleValidationFailureMessages;
    }

    model_internal function set direccionInmuebleValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_direccionInmuebleValidationFailureMessages;

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
            model_internal::_direccionInmuebleValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "direccionInmuebleValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get usuarioApruebaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get usuarioApruebaValidator() : StyleValidator
    {
        return model_internal::_usuarioApruebaValidator;
    }

    model_internal function set _usuarioApruebaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_usuarioApruebaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_usuarioApruebaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usuarioApruebaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get usuarioApruebaIsValid():Boolean
    {
        if (!model_internal::_usuarioApruebaIsValidCacheInitialized)
        {
            model_internal::calculateUsuarioApruebaIsValid();
        }

        return model_internal::_usuarioApruebaIsValid;
    }

    model_internal function calculateUsuarioApruebaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_usuarioApruebaValidator.validate(model_internal::_instance.usuarioAprueba)
        model_internal::_usuarioApruebaIsValid_der = (valRes.results == null);
        model_internal::_usuarioApruebaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::usuarioApruebaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::usuarioApruebaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get usuarioApruebaValidationFailureMessages():Array
    {
        if (model_internal::_usuarioApruebaValidationFailureMessages == null)
            model_internal::calculateUsuarioApruebaIsValid();

        return _usuarioApruebaValidationFailureMessages;
    }

    model_internal function set usuarioApruebaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_usuarioApruebaValidationFailureMessages;

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
            model_internal::_usuarioApruebaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usuarioApruebaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get estadoAvaluoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get estadoAvaluoValidator() : StyleValidator
    {
        return model_internal::_estadoAvaluoValidator;
    }

    model_internal function set _estadoAvaluoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_estadoAvaluoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_estadoAvaluoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoAvaluoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get estadoAvaluoIsValid():Boolean
    {
        if (!model_internal::_estadoAvaluoIsValidCacheInitialized)
        {
            model_internal::calculateEstadoAvaluoIsValid();
        }

        return model_internal::_estadoAvaluoIsValid;
    }

    model_internal function calculateEstadoAvaluoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_estadoAvaluoValidator.validate(model_internal::_instance.estadoAvaluo)
        model_internal::_estadoAvaluoIsValid_der = (valRes.results == null);
        model_internal::_estadoAvaluoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::estadoAvaluoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::estadoAvaluoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get estadoAvaluoValidationFailureMessages():Array
    {
        if (model_internal::_estadoAvaluoValidationFailureMessages == null)
            model_internal::calculateEstadoAvaluoIsValid();

        return _estadoAvaluoValidationFailureMessages;
    }

    model_internal function set estadoAvaluoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_estadoAvaluoValidationFailureMessages;

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
            model_internal::_estadoAvaluoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoAvaluoValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get fechaAvaluoHastaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get fechaAvaluoHastaValidator() : StyleValidator
    {
        return model_internal::_fechaAvaluoHastaValidator;
    }

    model_internal function set _fechaAvaluoHastaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_fechaAvaluoHastaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_fechaAvaluoHastaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaAvaluoHastaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get fechaAvaluoHastaIsValid():Boolean
    {
        if (!model_internal::_fechaAvaluoHastaIsValidCacheInitialized)
        {
            model_internal::calculateFechaAvaluoHastaIsValid();
        }

        return model_internal::_fechaAvaluoHastaIsValid;
    }

    model_internal function calculateFechaAvaluoHastaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_fechaAvaluoHastaValidator.validate(model_internal::_instance.fechaAvaluoHasta)
        model_internal::_fechaAvaluoHastaIsValid_der = (valRes.results == null);
        model_internal::_fechaAvaluoHastaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::fechaAvaluoHastaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::fechaAvaluoHastaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get fechaAvaluoHastaValidationFailureMessages():Array
    {
        if (model_internal::_fechaAvaluoHastaValidationFailureMessages == null)
            model_internal::calculateFechaAvaluoHastaIsValid();

        return _fechaAvaluoHastaValidationFailureMessages;
    }

    model_internal function set fechaAvaluoHastaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_fechaAvaluoHastaValidationFailureMessages;

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
            model_internal::_fechaAvaluoHastaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaAvaluoHastaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get fechaCreacionHastaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get fechaCreacionHastaValidator() : StyleValidator
    {
        return model_internal::_fechaCreacionHastaValidator;
    }

    model_internal function set _fechaCreacionHastaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_fechaCreacionHastaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_fechaCreacionHastaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaCreacionHastaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get fechaCreacionHastaIsValid():Boolean
    {
        if (!model_internal::_fechaCreacionHastaIsValidCacheInitialized)
        {
            model_internal::calculateFechaCreacionHastaIsValid();
        }

        return model_internal::_fechaCreacionHastaIsValid;
    }

    model_internal function calculateFechaCreacionHastaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_fechaCreacionHastaValidator.validate(model_internal::_instance.fechaCreacionHasta)
        model_internal::_fechaCreacionHastaIsValid_der = (valRes.results == null);
        model_internal::_fechaCreacionHastaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::fechaCreacionHastaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::fechaCreacionHastaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get fechaCreacionHastaValidationFailureMessages():Array
    {
        if (model_internal::_fechaCreacionHastaValidationFailureMessages == null)
            model_internal::calculateFechaCreacionHastaIsValid();

        return _fechaCreacionHastaValidationFailureMessages;
    }

    model_internal function set fechaCreacionHastaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_fechaCreacionHastaValidationFailureMessages;

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
            model_internal::_fechaCreacionHastaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaCreacionHastaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get nombreSolicitanteStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get nombreSolicitanteValidator() : StyleValidator
    {
        return model_internal::_nombreSolicitanteValidator;
    }

    model_internal function set _nombreSolicitanteIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_nombreSolicitanteIsValid;         
        if (oldValue !== value)
        {
            model_internal::_nombreSolicitanteIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreSolicitanteIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get nombreSolicitanteIsValid():Boolean
    {
        if (!model_internal::_nombreSolicitanteIsValidCacheInitialized)
        {
            model_internal::calculateNombreSolicitanteIsValid();
        }

        return model_internal::_nombreSolicitanteIsValid;
    }

    model_internal function calculateNombreSolicitanteIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_nombreSolicitanteValidator.validate(model_internal::_instance.nombreSolicitante)
        model_internal::_nombreSolicitanteIsValid_der = (valRes.results == null);
        model_internal::_nombreSolicitanteIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::nombreSolicitanteValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::nombreSolicitanteValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get nombreSolicitanteValidationFailureMessages():Array
    {
        if (model_internal::_nombreSolicitanteValidationFailureMessages == null)
            model_internal::calculateNombreSolicitanteIsValid();

        return _nombreSolicitanteValidationFailureMessages;
    }

    model_internal function set nombreSolicitanteValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_nombreSolicitanteValidationFailureMessages;

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
            model_internal::_nombreSolicitanteValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreSolicitanteValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get fechaTransaccionHastaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get fechaTransaccionHastaValidator() : StyleValidator
    {
        return model_internal::_fechaTransaccionHastaValidator;
    }

    model_internal function set _fechaTransaccionHastaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_fechaTransaccionHastaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_fechaTransaccionHastaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaTransaccionHastaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get fechaTransaccionHastaIsValid():Boolean
    {
        if (!model_internal::_fechaTransaccionHastaIsValidCacheInitialized)
        {
            model_internal::calculateFechaTransaccionHastaIsValid();
        }

        return model_internal::_fechaTransaccionHastaIsValid;
    }

    model_internal function calculateFechaTransaccionHastaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_fechaTransaccionHastaValidator.validate(model_internal::_instance.fechaTransaccionHasta)
        model_internal::_fechaTransaccionHastaIsValid_der = (valRes.results == null);
        model_internal::_fechaTransaccionHastaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::fechaTransaccionHastaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::fechaTransaccionHastaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get fechaTransaccionHastaValidationFailureMessages():Array
    {
        if (model_internal::_fechaTransaccionHastaValidationFailureMessages == null)
            model_internal::calculateFechaTransaccionHastaIsValid();

        return _fechaTransaccionHastaValidationFailureMessages;
    }

    model_internal function set fechaTransaccionHastaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_fechaTransaccionHastaValidationFailureMessages;

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
            model_internal::_fechaTransaccionHastaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaTransaccionHastaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get fechaTransaccionDesdeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get fechaTransaccionDesdeValidator() : StyleValidator
    {
        return model_internal::_fechaTransaccionDesdeValidator;
    }

    model_internal function set _fechaTransaccionDesdeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_fechaTransaccionDesdeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_fechaTransaccionDesdeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaTransaccionDesdeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get fechaTransaccionDesdeIsValid():Boolean
    {
        if (!model_internal::_fechaTransaccionDesdeIsValidCacheInitialized)
        {
            model_internal::calculateFechaTransaccionDesdeIsValid();
        }

        return model_internal::_fechaTransaccionDesdeIsValid;
    }

    model_internal function calculateFechaTransaccionDesdeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_fechaTransaccionDesdeValidator.validate(model_internal::_instance.fechaTransaccionDesde)
        model_internal::_fechaTransaccionDesdeIsValid_der = (valRes.results == null);
        model_internal::_fechaTransaccionDesdeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::fechaTransaccionDesdeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::fechaTransaccionDesdeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get fechaTransaccionDesdeValidationFailureMessages():Array
    {
        if (model_internal::_fechaTransaccionDesdeValidationFailureMessages == null)
            model_internal::calculateFechaTransaccionDesdeIsValid();

        return _fechaTransaccionDesdeValidationFailureMessages;
    }

    model_internal function set fechaTransaccionDesdeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_fechaTransaccionDesdeValidationFailureMessages;

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
            model_internal::_fechaTransaccionDesdeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaTransaccionDesdeValidationFailureMessages", oldValue, value));
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
            case("usuarioTransaccion"):
            {
                return usuarioTransaccionValidationFailureMessages;
            }
            case("idDepartamento"):
            {
                return idDepartamentoValidationFailureMessages;
            }
            case("idCiudad"):
            {
                return idCiudadValidationFailureMessages;
            }
            case("fechaAvaluoDesde"):
            {
                return fechaAvaluoDesdeValidationFailureMessages;
            }
            case("fechaCreacionDesde"):
            {
                return fechaCreacionDesdeValidationFailureMessages;
            }
            case("numeroIdentificacion"):
            {
                return numeroIdentificacionValidationFailureMessages;
            }
            case("matriculaInmobiliaria"):
            {
                return matriculaInmobiliariaValidationFailureMessages;
            }
            case("direccionInmueble"):
            {
                return direccionInmuebleValidationFailureMessages;
            }
            case("usuarioAprueba"):
            {
                return usuarioApruebaValidationFailureMessages;
            }
            case("estadoAvaluo"):
            {
                return estadoAvaluoValidationFailureMessages;
            }
            case("fechaAvaluoHasta"):
            {
                return fechaAvaluoHastaValidationFailureMessages;
            }
            case("fechaCreacionHasta"):
            {
                return fechaCreacionHastaValidationFailureMessages;
            }
            case("nombreSolicitante"):
            {
                return nombreSolicitanteValidationFailureMessages;
            }
            case("fechaTransaccionHasta"):
            {
                return fechaTransaccionHastaValidationFailureMessages;
            }
            case("fechaTransaccionDesde"):
            {
                return fechaTransaccionDesdeValidationFailureMessages;
            }
            case("tipoDocumento"):
            {
                return tipoDocumentoValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
