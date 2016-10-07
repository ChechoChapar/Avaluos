
/**
 * This is a generated class and is not intended for modfication.  
 */
package valueObjects
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _InformacionInmuebleEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
	private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("altura", "usoInmuebleBUA", "departamentoEscritura", "otroUsoInmueble", "catastralSF", "matriculaInmobiliariaPpal2", "matriculaInmobiliariaPpal1", "avaluo", "claseInmueble", "tipoVivienda", "notaria", "fechaCreacion", "matriculaInmobiliariaGaraje2", "chip", "idInfinmueble", "ubicacion2", "matriculaInmobiliariaGaraje3", "matriculaInmobiliariaGaraje4", "ediContUso", "matriculaInmobiliariaGaraje5", "matriculaInmobiliariaDeposito2", "numeroEscritura", "usuarioTransaccion", "matriculaInmobiliariaDeposito1", "ubicacion3", "matriculaInmobiliariaGaraje1", "otroClase", "usuarioCreacion", "idCategoria", "ciudadEscritura", "fechaEscritura", "fechaTransaccion", "usoInmueble", "usoInmuebleSF");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("altura", "usoInmuebleBUA", "departamentoEscritura", "otroUsoInmueble", "catastralSF", "matriculaInmobiliariaPpal2", "matriculaInmobiliariaPpal1", "avaluo", "claseInmueble", "tipoVivienda", "notaria", "fechaCreacion", "matriculaInmobiliariaGaraje2", "chip", "idInfinmueble", "ubicacion2", "matriculaInmobiliariaGaraje3", "matriculaInmobiliariaGaraje4", "ediContUso", "matriculaInmobiliariaGaraje5", "matriculaInmobiliariaDeposito2", "numeroEscritura", "usuarioTransaccion", "matriculaInmobiliariaDeposito1", "ubicacion3", "matriculaInmobiliariaGaraje1", "otroClase", "usuarioCreacion", "idCategoria", "ciudadEscritura", "fechaEscritura", "fechaTransaccion", "usoInmueble", "usoInmuebleSF");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("altura", "usoInmuebleBUA", "departamentoEscritura", "otroUsoInmueble", "catastralSF", "matriculaInmobiliariaPpal2", "matriculaInmobiliariaPpal1", "avaluo", "claseInmueble", "tipoVivienda", "notaria", "fechaCreacion", "matriculaInmobiliariaGaraje2", "chip", "idInfinmueble", "ubicacion2", "matriculaInmobiliariaGaraje3", "matriculaInmobiliariaGaraje4", "ediContUso", "matriculaInmobiliariaGaraje5", "matriculaInmobiliariaDeposito2", "numeroEscritura", "usuarioTransaccion", "matriculaInmobiliariaDeposito1", "ubicacion3", "matriculaInmobiliariaGaraje1", "otroClase", "usuarioCreacion", "idCategoria", "ciudadEscritura", "fechaEscritura", "fechaTransaccion", "usoInmueble", "usoInmuebleSF");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("altura", "usoInmuebleBUA", "departamentoEscritura", "otroUsoInmueble", "catastralSF", "matriculaInmobiliariaPpal2", "matriculaInmobiliariaPpal1", "avaluo", "claseInmueble", "tipoVivienda", "notaria", "fechaCreacion", "matriculaInmobiliariaGaraje2", "chip", "idInfinmueble", "ubicacion2", "matriculaInmobiliariaGaraje3", "matriculaInmobiliariaGaraje4", "ediContUso", "matriculaInmobiliariaGaraje5", "matriculaInmobiliariaDeposito2", "numeroEscritura", "usuarioTransaccion", "matriculaInmobiliariaDeposito1", "ubicacion3", "matriculaInmobiliariaGaraje1", "otroClase", "usuarioCreacion", "idCategoria", "ciudadEscritura", "fechaEscritura", "fechaTransaccion", "usoInmueble", "usoInmuebleSF");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;    
    model_internal static var entityName:String = "InformacionInmueble";
    model_internal static var dependentsOnMap:Object;    
    model_internal static var dependedOnServices:Array =  new Array();
    
    
    model_internal var _instance:_Super_InformacionInmueble;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();
    
    public function _InformacionInmuebleEntityMetadata(informacionInmueble : _Super_InformacionInmueble)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["altura"] = new Array();
            model_internal::dependentsOnMap["usoInmuebleBUA"] = new Array();
            model_internal::dependentsOnMap["departamentoEscritura"] = new Array();
            model_internal::dependentsOnMap["otroUsoInmueble"] = new Array();
            model_internal::dependentsOnMap["catastralSF"] = new Array();
            model_internal::dependentsOnMap["matriculaInmobiliariaPpal2"] = new Array();
            model_internal::dependentsOnMap["matriculaInmobiliariaPpal1"] = new Array();
            model_internal::dependentsOnMap["avaluo"] = new Array();
            model_internal::dependentsOnMap["claseInmueble"] = new Array();
            model_internal::dependentsOnMap["tipoVivienda"] = new Array();
            model_internal::dependentsOnMap["notaria"] = new Array();
            model_internal::dependentsOnMap["fechaCreacion"] = new Array();
            model_internal::dependentsOnMap["matriculaInmobiliariaGaraje2"] = new Array();
            model_internal::dependentsOnMap["chip"] = new Array();
            model_internal::dependentsOnMap["idInfinmueble"] = new Array();
            model_internal::dependentsOnMap["ubicacion2"] = new Array();
            model_internal::dependentsOnMap["matriculaInmobiliariaGaraje3"] = new Array();
            model_internal::dependentsOnMap["matriculaInmobiliariaGaraje4"] = new Array();
            model_internal::dependentsOnMap["ediContUso"] = new Array();
            model_internal::dependentsOnMap["matriculaInmobiliariaGaraje5"] = new Array();
            model_internal::dependentsOnMap["matriculaInmobiliariaDeposito2"] = new Array();
            model_internal::dependentsOnMap["numeroEscritura"] = new Array();
            model_internal::dependentsOnMap["usuarioTransaccion"] = new Array();
            model_internal::dependentsOnMap["matriculaInmobiliariaDeposito1"] = new Array();
            model_internal::dependentsOnMap["ubicacion3"] = new Array();
            model_internal::dependentsOnMap["matriculaInmobiliariaGaraje1"] = new Array();
            model_internal::dependentsOnMap["otroClase"] = new Array();
            model_internal::dependentsOnMap["usuarioCreacion"] = new Array();
            model_internal::dependentsOnMap["idCategoria"] = new Array();
            model_internal::dependentsOnMap["ciudadEscritura"] = new Array();
            model_internal::dependentsOnMap["fechaEscritura"] = new Array();
            model_internal::dependentsOnMap["fechaTransaccion"] = new Array();
            model_internal::dependentsOnMap["usoInmueble"] = new Array();
            model_internal::dependentsOnMap["usoInmuebleSF"] = new Array();
                        
            // collection base map
            model_internal::collectionBaseMap = new Object()
        }                        
        
        model_internal::_instance = informacionInmueble;     
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
            throw new Error(propertyName + " is not a data property of entity InformacionInmueble");  
            
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
            throw new Error(propertyName + " is not a collection property of entity InformacionInmueble");  
            
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
         	throw new Error(propertyName + " does not exist for entity InformacionInmueble");
         }     
           
         return model_internal::_instance[propertyName];
     }       
     
     override public function setValue(propertyName:String, value:*):void   
     {
         if (model_internal::dataProperties.indexOf(propertyName) == -1)
         {
              throw new Error(propertyName + " is not a data property of entity InformacionInmueble");
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
         	throw new Error(propertyName + " does not exist for entity InformacionInmueble");
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
            model_internal::_instance.model_internal::_cacheInitialized_isValid = true;
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
            model_internal::_instance.model_internal::_cacheInitialized_isValid = true;
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
     public function get isAlturaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isUsoInmuebleBUAAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isDepartamentoEscrituraAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isOtroUsoInmuebleAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCatastralSFAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isMatriculaInmobiliariaPpal2Available():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isMatriculaInmobiliariaPpal1Available():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isAvaluoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isClaseInmuebleAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isTipoViviendaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isNotariaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isFechaCreacionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isMatriculaInmobiliariaGaraje2Available():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isChipAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isIdInfinmuebleAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isUbicacion2Available():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isMatriculaInmobiliariaGaraje3Available():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isMatriculaInmobiliariaGaraje4Available():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isEdiContUsoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isMatriculaInmobiliariaGaraje5Available():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isMatriculaInmobiliariaDeposito2Available():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isNumeroEscrituraAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isUsuarioTransaccionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isMatriculaInmobiliariaDeposito1Available():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isUbicacion3Available():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isMatriculaInmobiliariaGaraje1Available():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isOtroClaseAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isUsuarioCreacionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isIdCategoriaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCiudadEscrituraAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isFechaEscrituraAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isFechaTransaccionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isUsoInmuebleAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isUsoInmuebleSFAvailable():Boolean
     {
        return true;
     }                       
                  

    /**
     * derived property recalculation
     */

     model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
     {
     	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
     }

    [Bindable(event="propertyChange")]   
    public function get alturaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get usoInmuebleBUAStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get departamentoEscrituraStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get otroUsoInmuebleStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get catastralSFStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get matriculaInmobiliariaPpal2Style():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get matriculaInmobiliariaPpal1Style():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get avaluoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get claseInmuebleStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get tipoViviendaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get notariaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get fechaCreacionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get matriculaInmobiliariaGaraje2Style():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get chipStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get idInfinmuebleStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get ubicacion2Style():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get matriculaInmobiliariaGaraje3Style():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get matriculaInmobiliariaGaraje4Style():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get ediContUsoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get matriculaInmobiliariaGaraje5Style():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get matriculaInmobiliariaDeposito2Style():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get numeroEscrituraStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get usuarioTransaccionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get matriculaInmobiliariaDeposito1Style():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get ubicacion3Style():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get matriculaInmobiliariaGaraje1Style():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get otroClaseStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get usuarioCreacionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get idCategoriaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get ciudadEscrituraStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get fechaEscrituraStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get fechaTransaccionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get usoInmuebleStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get usoInmuebleSFStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
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
            default:
            {
                return emptyArray;
            }
         }
     }
    
}

}
