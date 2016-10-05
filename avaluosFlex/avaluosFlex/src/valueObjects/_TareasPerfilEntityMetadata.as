
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
internal class _TareasPerfilEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("id", "adiciona", "actualiza", "idTareasPerfil", "imprime", "nombrePelicula", "elimina", "modulo", "consulta", "descripcionTransaccion", "ejecuta", "ordenTransaccion");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("id", "adiciona", "actualiza", "idTareasPerfil", "imprime", "nombrePelicula", "elimina", "modulo", "consulta", "descripcionTransaccion", "ejecuta", "ordenTransaccion");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("id", "adiciona", "actualiza", "idTareasPerfil", "imprime", "nombrePelicula", "elimina", "modulo", "consulta", "descripcionTransaccion", "ejecuta", "ordenTransaccion");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("id", "adiciona", "actualiza", "idTareasPerfil", "imprime", "nombrePelicula", "elimina", "modulo", "consulta", "descripcionTransaccion", "ejecuta", "ordenTransaccion");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "TareasPerfil";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _idIsValid:Boolean;
    model_internal var _idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _idIsValidCacheInitialized:Boolean = false;
    model_internal var _idValidationFailureMessages:Array;
    
    model_internal var _adicionaIsValid:Boolean;
    model_internal var _adicionaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _adicionaIsValidCacheInitialized:Boolean = false;
    model_internal var _adicionaValidationFailureMessages:Array;
    
    model_internal var _actualizaIsValid:Boolean;
    model_internal var _actualizaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _actualizaIsValidCacheInitialized:Boolean = false;
    model_internal var _actualizaValidationFailureMessages:Array;
    
    model_internal var _idTareasPerfilIsValid:Boolean;
    model_internal var _idTareasPerfilValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _idTareasPerfilIsValidCacheInitialized:Boolean = false;
    model_internal var _idTareasPerfilValidationFailureMessages:Array;
    
    model_internal var _imprimeIsValid:Boolean;
    model_internal var _imprimeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _imprimeIsValidCacheInitialized:Boolean = false;
    model_internal var _imprimeValidationFailureMessages:Array;
    
    model_internal var _nombrePeliculaIsValid:Boolean;
    model_internal var _nombrePeliculaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nombrePeliculaIsValidCacheInitialized:Boolean = false;
    model_internal var _nombrePeliculaValidationFailureMessages:Array;
    
    model_internal var _eliminaIsValid:Boolean;
    model_internal var _eliminaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _eliminaIsValidCacheInitialized:Boolean = false;
    model_internal var _eliminaValidationFailureMessages:Array;
    
    model_internal var _moduloIsValid:Boolean;
    model_internal var _moduloValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _moduloIsValidCacheInitialized:Boolean = false;
    model_internal var _moduloValidationFailureMessages:Array;
    
    model_internal var _consultaIsValid:Boolean;
    model_internal var _consultaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _consultaIsValidCacheInitialized:Boolean = false;
    model_internal var _consultaValidationFailureMessages:Array;
    
    model_internal var _descripcionTransaccionIsValid:Boolean;
    model_internal var _descripcionTransaccionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _descripcionTransaccionIsValidCacheInitialized:Boolean = false;
    model_internal var _descripcionTransaccionValidationFailureMessages:Array;
    
    model_internal var _ejecutaIsValid:Boolean;
    model_internal var _ejecutaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _ejecutaIsValidCacheInitialized:Boolean = false;
    model_internal var _ejecutaValidationFailureMessages:Array;
    
    model_internal var _ordenTransaccionIsValid:Boolean;
    model_internal var _ordenTransaccionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _ordenTransaccionIsValidCacheInitialized:Boolean = false;
    model_internal var _ordenTransaccionValidationFailureMessages:Array;

    model_internal var _instance:_Super_TareasPerfil;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _TareasPerfilEntityMetadata(value : _Super_TareasPerfil)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["id"] = new Array();
            model_internal::dependentsOnMap["adiciona"] = new Array();
            model_internal::dependentsOnMap["actualiza"] = new Array();
            model_internal::dependentsOnMap["idTareasPerfil"] = new Array();
            model_internal::dependentsOnMap["imprime"] = new Array();
            model_internal::dependentsOnMap["nombrePelicula"] = new Array();
            model_internal::dependentsOnMap["elimina"] = new Array();
            model_internal::dependentsOnMap["modulo"] = new Array();
            model_internal::dependentsOnMap["consulta"] = new Array();
            model_internal::dependentsOnMap["descripcionTransaccion"] = new Array();
            model_internal::dependentsOnMap["ejecuta"] = new Array();
            model_internal::dependentsOnMap["ordenTransaccion"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
        }

        model_internal::_instance = value;
        model_internal::_idValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForId);
        model_internal::_idValidator.required = true;
        model_internal::_idValidator.requiredFieldError = "id is required";
        //model_internal::_idValidator.source = model_internal::_instance;
        //model_internal::_idValidator.property = "id";
        model_internal::_adicionaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAdiciona);
        model_internal::_adicionaValidator.required = true;
        model_internal::_adicionaValidator.requiredFieldError = "adiciona is required";
        //model_internal::_adicionaValidator.source = model_internal::_instance;
        //model_internal::_adicionaValidator.property = "adiciona";
        model_internal::_actualizaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForActualiza);
        model_internal::_actualizaValidator.required = true;
        model_internal::_actualizaValidator.requiredFieldError = "actualiza is required";
        //model_internal::_actualizaValidator.source = model_internal::_instance;
        //model_internal::_actualizaValidator.property = "actualiza";
        model_internal::_idTareasPerfilValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForIdTareasPerfil);
        model_internal::_idTareasPerfilValidator.required = true;
        model_internal::_idTareasPerfilValidator.requiredFieldError = "idTareasPerfil is required";
        //model_internal::_idTareasPerfilValidator.source = model_internal::_instance;
        //model_internal::_idTareasPerfilValidator.property = "idTareasPerfil";
        model_internal::_imprimeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForImprime);
        model_internal::_imprimeValidator.required = true;
        model_internal::_imprimeValidator.requiredFieldError = "imprime is required";
        //model_internal::_imprimeValidator.source = model_internal::_instance;
        //model_internal::_imprimeValidator.property = "imprime";
        model_internal::_nombrePeliculaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNombrePelicula);
        model_internal::_nombrePeliculaValidator.required = true;
        model_internal::_nombrePeliculaValidator.requiredFieldError = "nombrePelicula is required";
        //model_internal::_nombrePeliculaValidator.source = model_internal::_instance;
        //model_internal::_nombrePeliculaValidator.property = "nombrePelicula";
        model_internal::_eliminaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForElimina);
        model_internal::_eliminaValidator.required = true;
        model_internal::_eliminaValidator.requiredFieldError = "elimina is required";
        //model_internal::_eliminaValidator.source = model_internal::_instance;
        //model_internal::_eliminaValidator.property = "elimina";
        model_internal::_moduloValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForModulo);
        model_internal::_moduloValidator.required = true;
        model_internal::_moduloValidator.requiredFieldError = "modulo is required";
        //model_internal::_moduloValidator.source = model_internal::_instance;
        //model_internal::_moduloValidator.property = "modulo";
        model_internal::_consultaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForConsulta);
        model_internal::_consultaValidator.required = true;
        model_internal::_consultaValidator.requiredFieldError = "consulta is required";
        //model_internal::_consultaValidator.source = model_internal::_instance;
        //model_internal::_consultaValidator.property = "consulta";
        model_internal::_descripcionTransaccionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDescripcionTransaccion);
        model_internal::_descripcionTransaccionValidator.required = true;
        model_internal::_descripcionTransaccionValidator.requiredFieldError = "descripcionTransaccion is required";
        //model_internal::_descripcionTransaccionValidator.source = model_internal::_instance;
        //model_internal::_descripcionTransaccionValidator.property = "descripcionTransaccion";
        model_internal::_ejecutaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForEjecuta);
        model_internal::_ejecutaValidator.required = true;
        model_internal::_ejecutaValidator.requiredFieldError = "ejecuta is required";
        //model_internal::_ejecutaValidator.source = model_internal::_instance;
        //model_internal::_ejecutaValidator.property = "ejecuta";
        model_internal::_ordenTransaccionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForOrdenTransaccion);
        model_internal::_ordenTransaccionValidator.required = true;
        model_internal::_ordenTransaccionValidator.requiredFieldError = "ordenTransaccion is required";
        //model_internal::_ordenTransaccionValidator.source = model_internal::_instance;
        //model_internal::_ordenTransaccionValidator.property = "ordenTransaccion";
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
            throw new Error(propertyName + " is not a data property of entity TareasPerfil");  
            
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
            throw new Error(propertyName + " is not a collection property of entity TareasPerfil");  

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
            throw new Error(propertyName + " does not exist for entity TareasPerfil");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity TareasPerfil");
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
            throw new Error(propertyName + " does not exist for entity TareasPerfil");
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
    public function get isIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAdicionaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isActualizaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIdTareasPerfilAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isImprimeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNombrePeliculaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEliminaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isModuloAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isConsultaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDescripcionTransaccionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEjecutaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isOrdenTransaccionAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnId():void
    {
        if (model_internal::_idIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfId = null;
            model_internal::calculateIdIsValid();
        }
    }
    public function invalidateDependentOnAdiciona():void
    {
        if (model_internal::_adicionaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAdiciona = null;
            model_internal::calculateAdicionaIsValid();
        }
    }
    public function invalidateDependentOnActualiza():void
    {
        if (model_internal::_actualizaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfActualiza = null;
            model_internal::calculateActualizaIsValid();
        }
    }
    public function invalidateDependentOnIdTareasPerfil():void
    {
        if (model_internal::_idTareasPerfilIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfIdTareasPerfil = null;
            model_internal::calculateIdTareasPerfilIsValid();
        }
    }
    public function invalidateDependentOnImprime():void
    {
        if (model_internal::_imprimeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfImprime = null;
            model_internal::calculateImprimeIsValid();
        }
    }
    public function invalidateDependentOnNombrePelicula():void
    {
        if (model_internal::_nombrePeliculaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNombrePelicula = null;
            model_internal::calculateNombrePeliculaIsValid();
        }
    }
    public function invalidateDependentOnElimina():void
    {
        if (model_internal::_eliminaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfElimina = null;
            model_internal::calculateEliminaIsValid();
        }
    }
    public function invalidateDependentOnModulo():void
    {
        if (model_internal::_moduloIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfModulo = null;
            model_internal::calculateModuloIsValid();
        }
    }
    public function invalidateDependentOnConsulta():void
    {
        if (model_internal::_consultaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfConsulta = null;
            model_internal::calculateConsultaIsValid();
        }
    }
    public function invalidateDependentOnDescripcionTransaccion():void
    {
        if (model_internal::_descripcionTransaccionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDescripcionTransaccion = null;
            model_internal::calculateDescripcionTransaccionIsValid();
        }
    }
    public function invalidateDependentOnEjecuta():void
    {
        if (model_internal::_ejecutaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfEjecuta = null;
            model_internal::calculateEjecutaIsValid();
        }
    }
    public function invalidateDependentOnOrdenTransaccion():void
    {
        if (model_internal::_ordenTransaccionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfOrdenTransaccion = null;
            model_internal::calculateOrdenTransaccionIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get idStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get idValidator() : StyleValidator
    {
        return model_internal::_idValidator;
    }

    model_internal function set _idIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_idIsValid;         
        if (oldValue !== value)
        {
            model_internal::_idIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get idIsValid():Boolean
    {
        if (!model_internal::_idIsValidCacheInitialized)
        {
            model_internal::calculateIdIsValid();
        }

        return model_internal::_idIsValid;
    }

    model_internal function calculateIdIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_idValidator.validate(model_internal::_instance.id)
        model_internal::_idIsValid_der = (valRes.results == null);
        model_internal::_idIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::idValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::idValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get idValidationFailureMessages():Array
    {
        if (model_internal::_idValidationFailureMessages == null)
            model_internal::calculateIdIsValid();

        return _idValidationFailureMessages;
    }

    model_internal function set idValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_idValidationFailureMessages;

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
            model_internal::_idValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get adicionaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get adicionaValidator() : StyleValidator
    {
        return model_internal::_adicionaValidator;
    }

    model_internal function set _adicionaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_adicionaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_adicionaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "adicionaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get adicionaIsValid():Boolean
    {
        if (!model_internal::_adicionaIsValidCacheInitialized)
        {
            model_internal::calculateAdicionaIsValid();
        }

        return model_internal::_adicionaIsValid;
    }

    model_internal function calculateAdicionaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_adicionaValidator.validate(model_internal::_instance.adiciona)
        model_internal::_adicionaIsValid_der = (valRes.results == null);
        model_internal::_adicionaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::adicionaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::adicionaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get adicionaValidationFailureMessages():Array
    {
        if (model_internal::_adicionaValidationFailureMessages == null)
            model_internal::calculateAdicionaIsValid();

        return _adicionaValidationFailureMessages;
    }

    model_internal function set adicionaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_adicionaValidationFailureMessages;

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
            model_internal::_adicionaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "adicionaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get actualizaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get actualizaValidator() : StyleValidator
    {
        return model_internal::_actualizaValidator;
    }

    model_internal function set _actualizaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_actualizaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_actualizaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "actualizaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get actualizaIsValid():Boolean
    {
        if (!model_internal::_actualizaIsValidCacheInitialized)
        {
            model_internal::calculateActualizaIsValid();
        }

        return model_internal::_actualizaIsValid;
    }

    model_internal function calculateActualizaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_actualizaValidator.validate(model_internal::_instance.actualiza)
        model_internal::_actualizaIsValid_der = (valRes.results == null);
        model_internal::_actualizaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::actualizaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::actualizaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get actualizaValidationFailureMessages():Array
    {
        if (model_internal::_actualizaValidationFailureMessages == null)
            model_internal::calculateActualizaIsValid();

        return _actualizaValidationFailureMessages;
    }

    model_internal function set actualizaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_actualizaValidationFailureMessages;

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
            model_internal::_actualizaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "actualizaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get idTareasPerfilStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get idTareasPerfilValidator() : StyleValidator
    {
        return model_internal::_idTareasPerfilValidator;
    }

    model_internal function set _idTareasPerfilIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_idTareasPerfilIsValid;         
        if (oldValue !== value)
        {
            model_internal::_idTareasPerfilIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idTareasPerfilIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get idTareasPerfilIsValid():Boolean
    {
        if (!model_internal::_idTareasPerfilIsValidCacheInitialized)
        {
            model_internal::calculateIdTareasPerfilIsValid();
        }

        return model_internal::_idTareasPerfilIsValid;
    }

    model_internal function calculateIdTareasPerfilIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_idTareasPerfilValidator.validate(model_internal::_instance.idTareasPerfil)
        model_internal::_idTareasPerfilIsValid_der = (valRes.results == null);
        model_internal::_idTareasPerfilIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::idTareasPerfilValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::idTareasPerfilValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get idTareasPerfilValidationFailureMessages():Array
    {
        if (model_internal::_idTareasPerfilValidationFailureMessages == null)
            model_internal::calculateIdTareasPerfilIsValid();

        return _idTareasPerfilValidationFailureMessages;
    }

    model_internal function set idTareasPerfilValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_idTareasPerfilValidationFailureMessages;

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
            model_internal::_idTareasPerfilValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idTareasPerfilValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get imprimeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get imprimeValidator() : StyleValidator
    {
        return model_internal::_imprimeValidator;
    }

    model_internal function set _imprimeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_imprimeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_imprimeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "imprimeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get imprimeIsValid():Boolean
    {
        if (!model_internal::_imprimeIsValidCacheInitialized)
        {
            model_internal::calculateImprimeIsValid();
        }

        return model_internal::_imprimeIsValid;
    }

    model_internal function calculateImprimeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_imprimeValidator.validate(model_internal::_instance.imprime)
        model_internal::_imprimeIsValid_der = (valRes.results == null);
        model_internal::_imprimeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::imprimeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::imprimeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get imprimeValidationFailureMessages():Array
    {
        if (model_internal::_imprimeValidationFailureMessages == null)
            model_internal::calculateImprimeIsValid();

        return _imprimeValidationFailureMessages;
    }

    model_internal function set imprimeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_imprimeValidationFailureMessages;

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
            model_internal::_imprimeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "imprimeValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get nombrePeliculaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get nombrePeliculaValidator() : StyleValidator
    {
        return model_internal::_nombrePeliculaValidator;
    }

    model_internal function set _nombrePeliculaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_nombrePeliculaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_nombrePeliculaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombrePeliculaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get nombrePeliculaIsValid():Boolean
    {
        if (!model_internal::_nombrePeliculaIsValidCacheInitialized)
        {
            model_internal::calculateNombrePeliculaIsValid();
        }

        return model_internal::_nombrePeliculaIsValid;
    }

    model_internal function calculateNombrePeliculaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_nombrePeliculaValidator.validate(model_internal::_instance.nombrePelicula)
        model_internal::_nombrePeliculaIsValid_der = (valRes.results == null);
        model_internal::_nombrePeliculaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::nombrePeliculaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::nombrePeliculaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get nombrePeliculaValidationFailureMessages():Array
    {
        if (model_internal::_nombrePeliculaValidationFailureMessages == null)
            model_internal::calculateNombrePeliculaIsValid();

        return _nombrePeliculaValidationFailureMessages;
    }

    model_internal function set nombrePeliculaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_nombrePeliculaValidationFailureMessages;

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
            model_internal::_nombrePeliculaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombrePeliculaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get eliminaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get eliminaValidator() : StyleValidator
    {
        return model_internal::_eliminaValidator;
    }

    model_internal function set _eliminaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_eliminaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_eliminaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "eliminaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get eliminaIsValid():Boolean
    {
        if (!model_internal::_eliminaIsValidCacheInitialized)
        {
            model_internal::calculateEliminaIsValid();
        }

        return model_internal::_eliminaIsValid;
    }

    model_internal function calculateEliminaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_eliminaValidator.validate(model_internal::_instance.elimina)
        model_internal::_eliminaIsValid_der = (valRes.results == null);
        model_internal::_eliminaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::eliminaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::eliminaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get eliminaValidationFailureMessages():Array
    {
        if (model_internal::_eliminaValidationFailureMessages == null)
            model_internal::calculateEliminaIsValid();

        return _eliminaValidationFailureMessages;
    }

    model_internal function set eliminaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_eliminaValidationFailureMessages;

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
            model_internal::_eliminaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "eliminaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get moduloStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get moduloValidator() : StyleValidator
    {
        return model_internal::_moduloValidator;
    }

    model_internal function set _moduloIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_moduloIsValid;         
        if (oldValue !== value)
        {
            model_internal::_moduloIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "moduloIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get moduloIsValid():Boolean
    {
        if (!model_internal::_moduloIsValidCacheInitialized)
        {
            model_internal::calculateModuloIsValid();
        }

        return model_internal::_moduloIsValid;
    }

    model_internal function calculateModuloIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_moduloValidator.validate(model_internal::_instance.modulo)
        model_internal::_moduloIsValid_der = (valRes.results == null);
        model_internal::_moduloIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::moduloValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::moduloValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get moduloValidationFailureMessages():Array
    {
        if (model_internal::_moduloValidationFailureMessages == null)
            model_internal::calculateModuloIsValid();

        return _moduloValidationFailureMessages;
    }

    model_internal function set moduloValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_moduloValidationFailureMessages;

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
            model_internal::_moduloValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "moduloValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get consultaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get consultaValidator() : StyleValidator
    {
        return model_internal::_consultaValidator;
    }

    model_internal function set _consultaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_consultaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_consultaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "consultaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get consultaIsValid():Boolean
    {
        if (!model_internal::_consultaIsValidCacheInitialized)
        {
            model_internal::calculateConsultaIsValid();
        }

        return model_internal::_consultaIsValid;
    }

    model_internal function calculateConsultaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_consultaValidator.validate(model_internal::_instance.consulta)
        model_internal::_consultaIsValid_der = (valRes.results == null);
        model_internal::_consultaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::consultaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::consultaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get consultaValidationFailureMessages():Array
    {
        if (model_internal::_consultaValidationFailureMessages == null)
            model_internal::calculateConsultaIsValid();

        return _consultaValidationFailureMessages;
    }

    model_internal function set consultaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_consultaValidationFailureMessages;

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
            model_internal::_consultaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "consultaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get descripcionTransaccionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get descripcionTransaccionValidator() : StyleValidator
    {
        return model_internal::_descripcionTransaccionValidator;
    }

    model_internal function set _descripcionTransaccionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_descripcionTransaccionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_descripcionTransaccionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descripcionTransaccionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get descripcionTransaccionIsValid():Boolean
    {
        if (!model_internal::_descripcionTransaccionIsValidCacheInitialized)
        {
            model_internal::calculateDescripcionTransaccionIsValid();
        }

        return model_internal::_descripcionTransaccionIsValid;
    }

    model_internal function calculateDescripcionTransaccionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_descripcionTransaccionValidator.validate(model_internal::_instance.descripcionTransaccion)
        model_internal::_descripcionTransaccionIsValid_der = (valRes.results == null);
        model_internal::_descripcionTransaccionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::descripcionTransaccionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::descripcionTransaccionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get descripcionTransaccionValidationFailureMessages():Array
    {
        if (model_internal::_descripcionTransaccionValidationFailureMessages == null)
            model_internal::calculateDescripcionTransaccionIsValid();

        return _descripcionTransaccionValidationFailureMessages;
    }

    model_internal function set descripcionTransaccionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_descripcionTransaccionValidationFailureMessages;

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
            model_internal::_descripcionTransaccionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descripcionTransaccionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get ejecutaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get ejecutaValidator() : StyleValidator
    {
        return model_internal::_ejecutaValidator;
    }

    model_internal function set _ejecutaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_ejecutaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_ejecutaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ejecutaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get ejecutaIsValid():Boolean
    {
        if (!model_internal::_ejecutaIsValidCacheInitialized)
        {
            model_internal::calculateEjecutaIsValid();
        }

        return model_internal::_ejecutaIsValid;
    }

    model_internal function calculateEjecutaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_ejecutaValidator.validate(model_internal::_instance.ejecuta)
        model_internal::_ejecutaIsValid_der = (valRes.results == null);
        model_internal::_ejecutaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::ejecutaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::ejecutaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get ejecutaValidationFailureMessages():Array
    {
        if (model_internal::_ejecutaValidationFailureMessages == null)
            model_internal::calculateEjecutaIsValid();

        return _ejecutaValidationFailureMessages;
    }

    model_internal function set ejecutaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_ejecutaValidationFailureMessages;

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
            model_internal::_ejecutaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ejecutaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get ordenTransaccionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get ordenTransaccionValidator() : StyleValidator
    {
        return model_internal::_ordenTransaccionValidator;
    }

    model_internal function set _ordenTransaccionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_ordenTransaccionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_ordenTransaccionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ordenTransaccionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get ordenTransaccionIsValid():Boolean
    {
        if (!model_internal::_ordenTransaccionIsValidCacheInitialized)
        {
            model_internal::calculateOrdenTransaccionIsValid();
        }

        return model_internal::_ordenTransaccionIsValid;
    }

    model_internal function calculateOrdenTransaccionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_ordenTransaccionValidator.validate(model_internal::_instance.ordenTransaccion)
        model_internal::_ordenTransaccionIsValid_der = (valRes.results == null);
        model_internal::_ordenTransaccionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::ordenTransaccionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::ordenTransaccionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get ordenTransaccionValidationFailureMessages():Array
    {
        if (model_internal::_ordenTransaccionValidationFailureMessages == null)
            model_internal::calculateOrdenTransaccionIsValid();

        return _ordenTransaccionValidationFailureMessages;
    }

    model_internal function set ordenTransaccionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_ordenTransaccionValidationFailureMessages;

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
            model_internal::_ordenTransaccionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ordenTransaccionValidationFailureMessages", oldValue, value));
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
            case("id"):
            {
                return idValidationFailureMessages;
            }
            case("adiciona"):
            {
                return adicionaValidationFailureMessages;
            }
            case("actualiza"):
            {
                return actualizaValidationFailureMessages;
            }
            case("idTareasPerfil"):
            {
                return idTareasPerfilValidationFailureMessages;
            }
            case("imprime"):
            {
                return imprimeValidationFailureMessages;
            }
            case("nombrePelicula"):
            {
                return nombrePeliculaValidationFailureMessages;
            }
            case("elimina"):
            {
                return eliminaValidationFailureMessages;
            }
            case("modulo"):
            {
                return moduloValidationFailureMessages;
            }
            case("consulta"):
            {
                return consultaValidationFailureMessages;
            }
            case("descripcionTransaccion"):
            {
                return descripcionTransaccionValidationFailureMessages;
            }
            case("ejecuta"):
            {
                return ejecutaValidationFailureMessages;
            }
            case("ordenTransaccion"):
            {
                return ordenTransaccionValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
