
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
import valueObjects.Ciudad;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _DepartamentoEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
	private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("ciudadesDepto", "codAsobancaria", "usuarioTransaccion", "idDepartamento", "departamento", "fechaCreacion", "codDane", "fechaTransaccion", "usuarioCreacion", "codDivpol");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("ciudadesDepto", "codAsobancaria", "usuarioTransaccion", "idDepartamento", "departamento", "fechaCreacion", "codDane", "fechaTransaccion", "usuarioCreacion", "codDivpol");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("ciudadesDepto", "codAsobancaria", "usuarioTransaccion", "idDepartamento", "departamento", "fechaCreacion", "codDane", "fechaTransaccion", "usuarioCreacion", "codDivpol");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("ciudadesDepto", "codAsobancaria", "usuarioTransaccion", "idDepartamento", "departamento", "fechaCreacion", "codDane", "fechaTransaccion", "usuarioCreacion", "codDivpol");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("ciudadesDepto");
    model_internal static var collectionBaseMap:Object;    
    model_internal static var entityName:String = "Departamento";
    model_internal static var dependentsOnMap:Object;    
    model_internal static var dependedOnServices:Array =  new Array();
    
    
    model_internal var _instance:_Super_Departamento;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();
    
    public function _DepartamentoEntityMetadata(departamento : _Super_Departamento)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["ciudadesDepto"] = new Array();
            model_internal::dependentsOnMap["codAsobancaria"] = new Array();
            model_internal::dependentsOnMap["usuarioTransaccion"] = new Array();
            model_internal::dependentsOnMap["idDepartamento"] = new Array();
            model_internal::dependentsOnMap["departamento"] = new Array();
            model_internal::dependentsOnMap["fechaCreacion"] = new Array();
            model_internal::dependentsOnMap["codDane"] = new Array();
            model_internal::dependentsOnMap["fechaTransaccion"] = new Array();
            model_internal::dependentsOnMap["usuarioCreacion"] = new Array();
            model_internal::dependentsOnMap["codDivpol"] = new Array();
                        
            // collection base map
            model_internal::collectionBaseMap = new Object()
            model_internal::collectionBaseMap["ciudadesDepto"] = "valueObjects.Ciudad";
        }                        
        
        model_internal::_instance = departamento;     
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
            throw new Error(propertyName + " is not a data property of entity Departamento");  
            
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
            throw new Error(propertyName + " is not a collection property of entity Departamento");  
            
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
         	throw new Error(propertyName + " does not exist for entity Departamento");
         }     
           
         return model_internal::_instance[propertyName];
     }       
     
     override public function setValue(propertyName:String, value:*):void   
     {
         if (model_internal::dataProperties.indexOf(propertyName) == -1)
         {
              throw new Error(propertyName + " is not a data property of entity Departamento");
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
         	throw new Error(propertyName + " does not exist for entity Departamento");
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
     public function get isCiudadesDeptoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCodAsobancariaAvailable():Boolean
     {
        return true;
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
     public function get isDepartamentoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isFechaCreacionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCodDaneAvailable():Boolean
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
                  
     [Bindable(event="propertyChange")] 
     public function get isCodDivpolAvailable():Boolean
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
    public function get ciudadesDeptoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get codAsobancariaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get usuarioTransaccionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get idDepartamentoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get departamentoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get fechaCreacionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get codDaneStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get fechaTransaccionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get usuarioCreacionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get codDivpolStyle():com.adobe.fiber.styles.Style
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
