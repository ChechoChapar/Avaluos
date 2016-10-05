
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
import valueObjects.AnexoFotografico;
import valueObjects.ComportamientoOfertaDemanda;
import valueObjects.CondicionesSalubridad;
import valueObjects.HistoricoAvaluo;
import valueObjects.InformacionBarrio;
import valueObjects.InformacionConstruccion;
import valueObjects.InformacionInmueble;
import valueObjects.LiquidacionAvaluo;
import valueObjects.LiquidacionAvaluoTotal;
import valueObjects.Observaciones;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _AvaluoEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
	private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("ciudad", "nombreConjuntoEdificio", "sector", "latitudSFBUA", "objCiudad", "numeroIdentificacion", "TUsuario", "estadoAvaluo", "sistemaCoordenadasBUA", "nombreBanco", "fechaCreacion", "consecutivoBanco", "liquidacionTotal", "usuarioTransaccion", "anexosFotograficos", "idCiudad", "telefonoSolicitante", "liquidacionAvaluos", "dominioMetodologia", "longitudSFBUA", "idMetodologia", "dominioTipoIdentificacion", "barrio", "fechaTransaccion", "fechaAvaluo", "justificacion", "fechaAvaluoTetxo", "codigoDaneDepartamento", "idTipoIdentificacion", "idDepartamento", "compOfertaDemanda", "matriculaInmobiliariaPpal1", "informacionConstruccion", "sistemaCoordenadasTxtBUA", "observacion", "historicosAvaluo", "tipoDocumento", "numLinea", "idObjetoAvaluo", "codigoBanco", "ubicacionGps", "correoSolicitante", "usuarioCreacion", "tipoInforme", "informacionInmueble", "condicionSalubridad", "logsGeneraArchivo", "direccionInmueble", "celularSolicitante", "informacionBarrio", "nombreSolicitante", "codigoDaneCiudad", "idAvaluo");
    model_internal static var allAssociationProperties:Array = new Array("dominioMetodologia", "dominioTipoIdentificacion");
    model_internal static var allRequiredProperties:Array = new Array("ciudad", "nombreConjuntoEdificio", "sector", "latitudSFBUA", "objCiudad", "numeroIdentificacion", "TUsuario", "estadoAvaluo", "sistemaCoordenadasBUA", "nombreBanco", "fechaCreacion", "consecutivoBanco", "liquidacionTotal", "usuarioTransaccion", "anexosFotograficos", "idCiudad", "telefonoSolicitante", "liquidacionAvaluos", "dominioMetodologia", "longitudSFBUA", "idMetodologia", "dominioTipoIdentificacion", "barrio", "fechaTransaccion", "fechaAvaluo", "justificacion", "fechaAvaluoTetxo", "codigoDaneDepartamento", "idTipoIdentificacion", "idDepartamento", "compOfertaDemanda", "matriculaInmobiliariaPpal1", "informacionConstruccion", "sistemaCoordenadasTxtBUA", "observacion", "historicosAvaluo", "tipoDocumento", "numLinea", "idObjetoAvaluo", "codigoBanco", "ubicacionGps", "correoSolicitante", "usuarioCreacion", "tipoInforme", "informacionInmueble", "condicionSalubridad", "logsGeneraArchivo", "direccionInmueble", "celularSolicitante", "informacionBarrio", "nombreSolicitante", "codigoDaneCiudad", "idAvaluo");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("ciudad", "nombreConjuntoEdificio", "sector", "latitudSFBUA", "objCiudad", "numeroIdentificacion", "TUsuario", "estadoAvaluo", "sistemaCoordenadasBUA", "nombreBanco", "fechaCreacion", "consecutivoBanco", "liquidacionTotal", "usuarioTransaccion", "anexosFotograficos", "idCiudad", "telefonoSolicitante", "liquidacionAvaluos", "dominioMetodologia", "longitudSFBUA", "idMetodologia", "dominioTipoIdentificacion", "barrio", "fechaTransaccion", "fechaAvaluo", "justificacion", "fechaAvaluoTetxo", "codigoDaneDepartamento", "idTipoIdentificacion", "idDepartamento", "compOfertaDemanda", "matriculaInmobiliariaPpal1", "informacionConstruccion", "sistemaCoordenadasTxtBUA", "observacion", "historicosAvaluo", "tipoDocumento", "numLinea", "idObjetoAvaluo", "codigoBanco", "ubicacionGps", "correoSolicitante", "usuarioCreacion", "tipoInforme", "informacionInmueble", "condicionSalubridad", "logsGeneraArchivo", "direccionInmueble", "celularSolicitante", "informacionBarrio", "nombreSolicitante", "codigoDaneCiudad", "idAvaluo");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("ciudad", "nombreConjuntoEdificio", "sector", "latitudSFBUA", "objCiudad", "numeroIdentificacion", "TUsuario", "estadoAvaluo", "sistemaCoordenadasBUA", "nombreBanco", "fechaCreacion", "consecutivoBanco", "liquidacionTotal", "usuarioTransaccion", "anexosFotograficos", "idCiudad", "telefonoSolicitante", "liquidacionAvaluos", "dominioMetodologia", "longitudSFBUA", "idMetodologia", "dominioTipoIdentificacion", "barrio", "fechaTransaccion", "fechaAvaluo", "justificacion", "fechaAvaluoTetxo", "codigoDaneDepartamento", "idTipoIdentificacion", "idDepartamento", "compOfertaDemanda", "matriculaInmobiliariaPpal1", "informacionConstruccion", "sistemaCoordenadasTxtBUA", "observacion", "historicosAvaluo", "tipoDocumento", "numLinea", "idObjetoAvaluo", "codigoBanco", "ubicacionGps", "correoSolicitante", "usuarioCreacion", "tipoInforme", "informacionInmueble", "condicionSalubridad", "logsGeneraArchivo", "direccionInmueble", "celularSolicitante", "informacionBarrio", "nombreSolicitante", "codigoDaneCiudad", "idAvaluo");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("liquidacionTotal", "anexosFotograficos", "liquidacionAvaluos", "compOfertaDemanda", "informacionConstruccion", "observacion", "historicosAvaluo", "informacionInmueble", "condicionSalubridad", "informacionBarrio");
    model_internal static var collectionBaseMap:Object;    
    model_internal static var entityName:String = "Avaluo";
    model_internal static var dependentsOnMap:Object;    
    model_internal static var dependedOnServices:Array =  new Array();
    
    
    model_internal var _instance:_Super_Avaluo;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();
    
    public function _AvaluoEntityMetadata(avaluo : _Super_Avaluo)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["ciudad"] = new Array();
            model_internal::dependentsOnMap["nombreConjuntoEdificio"] = new Array();
            model_internal::dependentsOnMap["sector"] = new Array();
            model_internal::dependentsOnMap["latitudSFBUA"] = new Array();
            model_internal::dependentsOnMap["objCiudad"] = new Array();
            model_internal::dependentsOnMap["numeroIdentificacion"] = new Array();
            model_internal::dependentsOnMap["TUsuario"] = new Array();
            model_internal::dependentsOnMap["estadoAvaluo"] = new Array();
            model_internal::dependentsOnMap["sistemaCoordenadasBUA"] = new Array();
            model_internal::dependentsOnMap["nombreBanco"] = new Array();
            model_internal::dependentsOnMap["fechaCreacion"] = new Array();
            model_internal::dependentsOnMap["consecutivoBanco"] = new Array();
            model_internal::dependentsOnMap["liquidacionTotal"] = new Array();
            model_internal::dependentsOnMap["usuarioTransaccion"] = new Array();
            model_internal::dependentsOnMap["anexosFotograficos"] = new Array();
            model_internal::dependentsOnMap["idCiudad"] = new Array();
            model_internal::dependentsOnMap["telefonoSolicitante"] = new Array();
            model_internal::dependentsOnMap["liquidacionAvaluos"] = new Array();
            model_internal::dependentsOnMap["dominioMetodologia"] = new Array();
            model_internal::dependentsOnMap["longitudSFBUA"] = new Array();
            model_internal::dependentsOnMap["idMetodologia"] = new Array();
            model_internal::dependentsOnMap["dominioTipoIdentificacion"] = new Array();
            model_internal::dependentsOnMap["barrio"] = new Array();
            model_internal::dependentsOnMap["fechaTransaccion"] = new Array();
            model_internal::dependentsOnMap["fechaAvaluo"] = new Array();
            model_internal::dependentsOnMap["justificacion"] = new Array();
            model_internal::dependentsOnMap["fechaAvaluoTetxo"] = new Array();
            model_internal::dependentsOnMap["codigoDaneDepartamento"] = new Array();
            model_internal::dependentsOnMap["idTipoIdentificacion"] = new Array();
            model_internal::dependentsOnMap["idDepartamento"] = new Array();
            model_internal::dependentsOnMap["compOfertaDemanda"] = new Array();
            model_internal::dependentsOnMap["matriculaInmobiliariaPpal1"] = new Array();
            model_internal::dependentsOnMap["informacionConstruccion"] = new Array();
            model_internal::dependentsOnMap["sistemaCoordenadasTxtBUA"] = new Array();
            model_internal::dependentsOnMap["observacion"] = new Array();
            model_internal::dependentsOnMap["historicosAvaluo"] = new Array();
            model_internal::dependentsOnMap["tipoDocumento"] = new Array();
            model_internal::dependentsOnMap["numLinea"] = new Array();
            model_internal::dependentsOnMap["idObjetoAvaluo"] = new Array();
            model_internal::dependentsOnMap["codigoBanco"] = new Array();
            model_internal::dependentsOnMap["ubicacionGps"] = new Array();
            model_internal::dependentsOnMap["correoSolicitante"] = new Array();
            model_internal::dependentsOnMap["usuarioCreacion"] = new Array();
            model_internal::dependentsOnMap["tipoInforme"] = new Array();
            model_internal::dependentsOnMap["informacionInmueble"] = new Array();
            model_internal::dependentsOnMap["condicionSalubridad"] = new Array();
            model_internal::dependentsOnMap["logsGeneraArchivo"] = new Array();
            model_internal::dependentsOnMap["direccionInmueble"] = new Array();
            model_internal::dependentsOnMap["celularSolicitante"] = new Array();
            model_internal::dependentsOnMap["informacionBarrio"] = new Array();
            model_internal::dependentsOnMap["nombreSolicitante"] = new Array();
            model_internal::dependentsOnMap["codigoDaneCiudad"] = new Array();
            model_internal::dependentsOnMap["idAvaluo"] = new Array();
                        
            // collection base map
            model_internal::collectionBaseMap = new Object()
            model_internal::collectionBaseMap["liquidacionTotal"] = "valueObjects.LiquidacionAvaluoTotal";
            model_internal::collectionBaseMap["anexosFotograficos"] = "valueObjects.AnexoFotografico";
            model_internal::collectionBaseMap["liquidacionAvaluos"] = "valueObjects.LiquidacionAvaluo";
            model_internal::collectionBaseMap["compOfertaDemanda"] = "valueObjects.ComportamientoOfertaDemanda";
            model_internal::collectionBaseMap["informacionConstruccion"] = "valueObjects.InformacionConstruccion";
            model_internal::collectionBaseMap["observacion"] = "valueObjects.Observaciones";
            model_internal::collectionBaseMap["historicosAvaluo"] = "valueObjects.HistoricoAvaluo";
            model_internal::collectionBaseMap["informacionInmueble"] = "valueObjects.InformacionInmueble";
            model_internal::collectionBaseMap["condicionSalubridad"] = "valueObjects.CondicionesSalubridad";
            model_internal::collectionBaseMap["informacionBarrio"] = "valueObjects.InformacionBarrio";
        }                        
        
        model_internal::_instance = avaluo;     
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
            throw new Error(propertyName + " is not a data property of entity Avaluo");  
            
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
            throw new Error(propertyName + " is not a collection property of entity Avaluo");  
            
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
         	throw new Error(propertyName + " does not exist for entity Avaluo");
         }     
           
         return model_internal::_instance[propertyName];
     }       
     
     override public function setValue(propertyName:String, value:*):void   
     {
         if (model_internal::dataProperties.indexOf(propertyName) == -1)
         {
              throw new Error(propertyName + " is not a data property of entity Avaluo");
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
         	throw new Error(propertyName + " does not exist for entity Avaluo");
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
     public function get isCiudadAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isNombreConjuntoEdificioAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isSectorAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isLatitudSFBUAAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isObjCiudadAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isNumeroIdentificacionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isTUsuarioAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isEstadoAvaluoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isSistemaCoordenadasBUAAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isNombreBancoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isFechaCreacionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isConsecutivoBancoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isLiquidacionTotalAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isUsuarioTransaccionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isAnexosFotograficosAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isIdCiudadAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isTelefonoSolicitanteAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isLiquidacionAvaluosAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isDominioMetodologiaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isLongitudSFBUAAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isIdMetodologiaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isDominioTipoIdentificacionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isBarrioAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isFechaTransaccionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isFechaAvaluoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isJustificacionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isFechaAvaluoTetxoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCodigoDaneDepartamentoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isIdTipoIdentificacionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isIdDepartamentoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCompOfertaDemandaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isMatriculaInmobiliariaPpal1Available():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isInformacionConstruccionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isSistemaCoordenadasTxtBUAAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isObservacionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isHistoricosAvaluoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isTipoDocumentoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isNumLineaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isIdObjetoAvaluoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCodigoBancoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isUbicacionGpsAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCorreoSolicitanteAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isUsuarioCreacionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isTipoInformeAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isInformacionInmuebleAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCondicionSalubridadAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isLogsGeneraArchivoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isDireccionInmuebleAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCelularSolicitanteAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isInformacionBarrioAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isNombreSolicitanteAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCodigoDaneCiudadAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isIdAvaluoAvailable():Boolean
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
    public function get ciudadStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get nombreConjuntoEdificioStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get sectorStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get latitudSFBUAStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get objCiudadStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get numeroIdentificacionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get TUsuarioStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get estadoAvaluoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get sistemaCoordenadasBUAStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get nombreBancoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get fechaCreacionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get consecutivoBancoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get liquidacionTotalStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get usuarioTransaccionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get anexosFotograficosStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get idCiudadStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get telefonoSolicitanteStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get liquidacionAvaluosStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get dominioMetodologiaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get longitudSFBUAStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get idMetodologiaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get dominioTipoIdentificacionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get barrioStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get fechaTransaccionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get fechaAvaluoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get justificacionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get fechaAvaluoTetxoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get codigoDaneDepartamentoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get idTipoIdentificacionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get idDepartamentoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get compOfertaDemandaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get matriculaInmobiliariaPpal1Style():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get informacionConstruccionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get sistemaCoordenadasTxtBUAStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get observacionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get historicosAvaluoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get tipoDocumentoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get numLineaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get idObjetoAvaluoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get codigoBancoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get ubicacionGpsStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get correoSolicitanteStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get usuarioCreacionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get tipoInformeStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get informacionInmuebleStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get condicionSalubridadStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get logsGeneraArchivoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get direccionInmuebleStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get celularSolicitanteStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get informacionBarrioStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get nombreSolicitanteStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get codigoDaneCiudadStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get idAvaluoStyle():com.adobe.fiber.styles.Style
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
