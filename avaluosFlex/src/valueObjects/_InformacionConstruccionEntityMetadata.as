
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
import valueObjects.Dominios;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _InformacionConstruccionEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
	private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("construidoUsoActual", "textoCubierta", "balcon", "rangoConstruccionSF", "deposito", "usoExclusivo", "oficina", "estructuraReforzadaSF", "textoEstructura", "irregularidadPlantaBUA", "textoFachada", "estructuraReforzadaBUA", "estadoCocina", "comedor", "fechaCreacion", "iluminacion", "clubHouse", "shutBasuras", "numeroEdificios", "piscina", "parapetosCubierta", "vetustez", "avanceObra", "materialEstructura", "altura", "porteria", "danoPrevio", "otrosDotacion2", "calidMetal", "privado", "pisos", "calidadTecho", "estadoMadera", "bodega", "calidadMuro", "reparadosBUA", "sencillo", "banioPrivado", "avaluo", "danoPrevioBUA", "estadoTerminadaNueva", "presion", "numeroHabitaciones", "numeroAscensores", "squash", "irregularidadAlturaBUA", "salonComunal", "gimnasio", "propiedadHorizontal", "calidadPiso", "banioSocial", "usuarioCreacion", "estadoTerminadoUsado", "planta", "fachada", "citofono", "cuartoServicio", "simetriaPlantaSF", "simetriaPlanta", "ventilacion", "sinTerminar", "enObra", "bombaEyectora", "unidadPorPiso", "terraza", "ubicacionNivelVia", "jardin", "bahiaComunal", "simetriaAltura", "idInformacionConstruccion", "asentamientos", "golfito", "usuarioTransaccion", "zonaVerdePrivada", "descubierto", "banioServicio", "sala", "ubicacionInmueble", "estadoRemodelacion", "doble", "ascensor", "totalGarajes", "estudio", "conjuntoAgrupacionCerrada", "luces", "materialConstruccionBUA", "fechaTransaccion", "sotanos", "pisoInmueble", "canchaMultiple", "ubicacionFuentesHidricas", "cubierta", "estadoPisos", "otraUbicacionTanque", "golpeteo", "estadoMuros", "ubicacionTanque", "servidumbre", "pisosBodega", "estadoMetal", "estadoConservacion", "estadoBanios", "simetriaAlturaSF", "estructuraTechos", "danoReparadoSF", "tanqueAgua", "cocina", "garajeVisitante", "juegoNinos", "danoPrevioSF", "otroMaterial", "detalleMaterialSFBUA", "materialConstruccionSF", "calidadMadera", "zonasVerdes", "totalUnidades", "estructura", "calidadCocina", "bicicletero", "aireAcondicionado", "estadoConstruccion", "otrosDotacion", "estarHabitacion", "cubierto", "anoConstruccionBUA", "patioInterior", "local", "sobrePeso", "calidadBanio", "tipoFachada", "detallemat");
    model_internal static var allAssociationProperties:Array = new Array("detallemat");
    model_internal static var allRequiredProperties:Array = new Array("construidoUsoActual", "textoCubierta", "balcon", "rangoConstruccionSF", "deposito", "usoExclusivo", "oficina", "estructuraReforzadaSF", "textoEstructura", "irregularidadPlantaBUA", "textoFachada", "estructuraReforzadaBUA", "estadoCocina", "comedor", "fechaCreacion", "iluminacion", "clubHouse", "shutBasuras", "numeroEdificios", "piscina", "parapetosCubierta", "vetustez", "avanceObra", "materialEstructura", "altura", "porteria", "danoPrevio", "otrosDotacion2", "calidMetal", "privado", "pisos", "calidadTecho", "estadoMadera", "bodega", "calidadMuro", "reparadosBUA", "sencillo", "banioPrivado", "avaluo", "danoPrevioBUA", "estadoTerminadaNueva", "presion", "numeroHabitaciones", "numeroAscensores", "squash", "irregularidadAlturaBUA", "salonComunal", "gimnasio", "propiedadHorizontal", "calidadPiso", "banioSocial", "usuarioCreacion", "estadoTerminadoUsado", "planta", "fachada", "citofono", "cuartoServicio", "simetriaPlantaSF", "simetriaPlanta", "ventilacion", "sinTerminar", "enObra", "bombaEyectora", "unidadPorPiso", "terraza", "ubicacionNivelVia", "jardin", "bahiaComunal", "simetriaAltura", "idInformacionConstruccion", "asentamientos", "golfito", "usuarioTransaccion", "zonaVerdePrivada", "descubierto", "banioServicio", "sala", "ubicacionInmueble", "estadoRemodelacion", "doble", "ascensor", "totalGarajes", "estudio", "conjuntoAgrupacionCerrada", "luces", "materialConstruccionBUA", "fechaTransaccion", "sotanos", "pisoInmueble", "canchaMultiple", "ubicacionFuentesHidricas", "cubierta", "estadoPisos", "otraUbicacionTanque", "golpeteo", "estadoMuros", "ubicacionTanque", "servidumbre", "pisosBodega", "estadoMetal", "estadoConservacion", "estadoBanios", "simetriaAlturaSF", "estructuraTechos", "danoReparadoSF", "tanqueAgua", "cocina", "garajeVisitante", "juegoNinos", "danoPrevioSF", "otroMaterial", "detalleMaterialSFBUA", "materialConstruccionSF", "calidadMadera", "zonasVerdes", "totalUnidades", "estructura", "calidadCocina", "bicicletero", "aireAcondicionado", "estadoConstruccion", "otrosDotacion", "estarHabitacion", "cubierto", "anoConstruccionBUA", "patioInterior", "local", "sobrePeso", "calidadBanio", "tipoFachada", "detallemat");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("construidoUsoActual", "textoCubierta", "balcon", "rangoConstruccionSF", "deposito", "usoExclusivo", "oficina", "estructuraReforzadaSF", "textoEstructura", "irregularidadPlantaBUA", "textoFachada", "estructuraReforzadaBUA", "estadoCocina", "comedor", "fechaCreacion", "iluminacion", "clubHouse", "shutBasuras", "numeroEdificios", "piscina", "parapetosCubierta", "vetustez", "avanceObra", "materialEstructura", "altura", "porteria", "danoPrevio", "otrosDotacion2", "calidMetal", "privado", "pisos", "calidadTecho", "estadoMadera", "bodega", "calidadMuro", "reparadosBUA", "sencillo", "banioPrivado", "avaluo", "danoPrevioBUA", "estadoTerminadaNueva", "presion", "numeroHabitaciones", "numeroAscensores", "squash", "irregularidadAlturaBUA", "salonComunal", "gimnasio", "propiedadHorizontal", "calidadPiso", "banioSocial", "usuarioCreacion", "estadoTerminadoUsado", "planta", "fachada", "citofono", "cuartoServicio", "simetriaPlantaSF", "simetriaPlanta", "ventilacion", "sinTerminar", "enObra", "bombaEyectora", "unidadPorPiso", "terraza", "ubicacionNivelVia", "jardin", "bahiaComunal", "simetriaAltura", "idInformacionConstruccion", "asentamientos", "golfito", "usuarioTransaccion", "zonaVerdePrivada", "descubierto", "banioServicio", "sala", "ubicacionInmueble", "estadoRemodelacion", "doble", "ascensor", "totalGarajes", "estudio", "conjuntoAgrupacionCerrada", "luces", "materialConstruccionBUA", "fechaTransaccion", "sotanos", "pisoInmueble", "canchaMultiple", "ubicacionFuentesHidricas", "cubierta", "estadoPisos", "otraUbicacionTanque", "golpeteo", "estadoMuros", "ubicacionTanque", "servidumbre", "pisosBodega", "estadoMetal", "estadoConservacion", "estadoBanios", "simetriaAlturaSF", "estructuraTechos", "danoReparadoSF", "tanqueAgua", "cocina", "garajeVisitante", "juegoNinos", "danoPrevioSF", "otroMaterial", "detalleMaterialSFBUA", "materialConstruccionSF", "calidadMadera", "zonasVerdes", "totalUnidades", "estructura", "calidadCocina", "bicicletero", "aireAcondicionado", "estadoConstruccion", "otrosDotacion", "estarHabitacion", "cubierto", "anoConstruccionBUA", "patioInterior", "local", "sobrePeso", "calidadBanio", "tipoFachada", "detallemat");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("construidoUsoActual", "textoCubierta", "balcon", "rangoConstruccionSF", "deposito", "usoExclusivo", "oficina", "estructuraReforzadaSF", "textoEstructura", "irregularidadPlantaBUA", "textoFachada", "estructuraReforzadaBUA", "estadoCocina", "comedor", "fechaCreacion", "iluminacion", "clubHouse", "shutBasuras", "numeroEdificios", "piscina", "parapetosCubierta", "vetustez", "avanceObra", "materialEstructura", "altura", "porteria", "danoPrevio", "otrosDotacion2", "calidMetal", "privado", "pisos", "calidadTecho", "estadoMadera", "bodega", "calidadMuro", "reparadosBUA", "sencillo", "banioPrivado", "avaluo", "danoPrevioBUA", "estadoTerminadaNueva", "presion", "numeroHabitaciones", "numeroAscensores", "squash", "irregularidadAlturaBUA", "salonComunal", "gimnasio", "propiedadHorizontal", "calidadPiso", "banioSocial", "usuarioCreacion", "estadoTerminadoUsado", "planta", "fachada", "citofono", "cuartoServicio", "simetriaPlantaSF", "simetriaPlanta", "ventilacion", "sinTerminar", "enObra", "bombaEyectora", "unidadPorPiso", "terraza", "ubicacionNivelVia", "jardin", "bahiaComunal", "simetriaAltura", "idInformacionConstruccion", "asentamientos", "golfito", "usuarioTransaccion", "zonaVerdePrivada", "descubierto", "banioServicio", "sala", "ubicacionInmueble", "estadoRemodelacion", "doble", "ascensor", "totalGarajes", "estudio", "conjuntoAgrupacionCerrada", "luces", "materialConstruccionBUA", "fechaTransaccion", "sotanos", "pisoInmueble", "canchaMultiple", "ubicacionFuentesHidricas", "cubierta", "estadoPisos", "otraUbicacionTanque", "golpeteo", "estadoMuros", "ubicacionTanque", "servidumbre", "pisosBodega", "estadoMetal", "estadoConservacion", "estadoBanios", "simetriaAlturaSF", "estructuraTechos", "danoReparadoSF", "tanqueAgua", "cocina", "garajeVisitante", "juegoNinos", "danoPrevioSF", "otroMaterial", "detalleMaterialSFBUA", "materialConstruccionSF", "calidadMadera", "zonasVerdes", "totalUnidades", "estructura", "calidadCocina", "bicicletero", "aireAcondicionado", "estadoConstruccion", "otrosDotacion", "estarHabitacion", "cubierto", "anoConstruccionBUA", "patioInterior", "local", "sobrePeso", "calidadBanio", "tipoFachada", "detallemat");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("detallemat");
    model_internal static var collectionBaseMap:Object;    
    model_internal static var entityName:String = "InformacionConstruccion";
    model_internal static var dependentsOnMap:Object;    
    model_internal static var dependedOnServices:Array =  new Array();
    
    
    model_internal var _instance:_Super_InformacionConstruccion;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();
    
    public function _InformacionConstruccionEntityMetadata(informacionConstruccion : _Super_InformacionConstruccion)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["construidoUsoActual"] = new Array();
            model_internal::dependentsOnMap["textoCubierta"] = new Array();
            model_internal::dependentsOnMap["balcon"] = new Array();
            model_internal::dependentsOnMap["rangoConstruccionSF"] = new Array();
            model_internal::dependentsOnMap["deposito"] = new Array();
            model_internal::dependentsOnMap["usoExclusivo"] = new Array();
            model_internal::dependentsOnMap["oficina"] = new Array();
            model_internal::dependentsOnMap["estructuraReforzadaSF"] = new Array();
            model_internal::dependentsOnMap["textoEstructura"] = new Array();
            model_internal::dependentsOnMap["irregularidadPlantaBUA"] = new Array();
            model_internal::dependentsOnMap["textoFachada"] = new Array();
            model_internal::dependentsOnMap["estructuraReforzadaBUA"] = new Array();
            model_internal::dependentsOnMap["estadoCocina"] = new Array();
            model_internal::dependentsOnMap["comedor"] = new Array();
            model_internal::dependentsOnMap["fechaCreacion"] = new Array();
            model_internal::dependentsOnMap["iluminacion"] = new Array();
            model_internal::dependentsOnMap["clubHouse"] = new Array();
            model_internal::dependentsOnMap["shutBasuras"] = new Array();
            model_internal::dependentsOnMap["numeroEdificios"] = new Array();
            model_internal::dependentsOnMap["piscina"] = new Array();
            model_internal::dependentsOnMap["parapetosCubierta"] = new Array();
            model_internal::dependentsOnMap["vetustez"] = new Array();
            model_internal::dependentsOnMap["avanceObra"] = new Array();
            model_internal::dependentsOnMap["materialEstructura"] = new Array();
            model_internal::dependentsOnMap["altura"] = new Array();
            model_internal::dependentsOnMap["porteria"] = new Array();
            model_internal::dependentsOnMap["danoPrevio"] = new Array();
            model_internal::dependentsOnMap["otrosDotacion2"] = new Array();
            model_internal::dependentsOnMap["calidMetal"] = new Array();
            model_internal::dependentsOnMap["privado"] = new Array();
            model_internal::dependentsOnMap["pisos"] = new Array();
            model_internal::dependentsOnMap["calidadTecho"] = new Array();
            model_internal::dependentsOnMap["estadoMadera"] = new Array();
            model_internal::dependentsOnMap["bodega"] = new Array();
            model_internal::dependentsOnMap["calidadMuro"] = new Array();
            model_internal::dependentsOnMap["reparadosBUA"] = new Array();
            model_internal::dependentsOnMap["sencillo"] = new Array();
            model_internal::dependentsOnMap["banioPrivado"] = new Array();
            model_internal::dependentsOnMap["avaluo"] = new Array();
            model_internal::dependentsOnMap["danoPrevioBUA"] = new Array();
            model_internal::dependentsOnMap["estadoTerminadaNueva"] = new Array();
            model_internal::dependentsOnMap["presion"] = new Array();
            model_internal::dependentsOnMap["numeroHabitaciones"] = new Array();
            model_internal::dependentsOnMap["numeroAscensores"] = new Array();
            model_internal::dependentsOnMap["squash"] = new Array();
            model_internal::dependentsOnMap["irregularidadAlturaBUA"] = new Array();
            model_internal::dependentsOnMap["salonComunal"] = new Array();
            model_internal::dependentsOnMap["gimnasio"] = new Array();
            model_internal::dependentsOnMap["propiedadHorizontal"] = new Array();
            model_internal::dependentsOnMap["calidadPiso"] = new Array();
            model_internal::dependentsOnMap["banioSocial"] = new Array();
            model_internal::dependentsOnMap["usuarioCreacion"] = new Array();
            model_internal::dependentsOnMap["estadoTerminadoUsado"] = new Array();
            model_internal::dependentsOnMap["planta"] = new Array();
            model_internal::dependentsOnMap["fachada"] = new Array();
            model_internal::dependentsOnMap["citofono"] = new Array();
            model_internal::dependentsOnMap["cuartoServicio"] = new Array();
            model_internal::dependentsOnMap["simetriaPlantaSF"] = new Array();
            model_internal::dependentsOnMap["simetriaPlanta"] = new Array();
            model_internal::dependentsOnMap["ventilacion"] = new Array();
            model_internal::dependentsOnMap["sinTerminar"] = new Array();
            model_internal::dependentsOnMap["enObra"] = new Array();
            model_internal::dependentsOnMap["bombaEyectora"] = new Array();
            model_internal::dependentsOnMap["unidadPorPiso"] = new Array();
            model_internal::dependentsOnMap["terraza"] = new Array();
            model_internal::dependentsOnMap["ubicacionNivelVia"] = new Array();
            model_internal::dependentsOnMap["jardin"] = new Array();
            model_internal::dependentsOnMap["bahiaComunal"] = new Array();
            model_internal::dependentsOnMap["simetriaAltura"] = new Array();
            model_internal::dependentsOnMap["idInformacionConstruccion"] = new Array();
            model_internal::dependentsOnMap["asentamientos"] = new Array();
            model_internal::dependentsOnMap["golfito"] = new Array();
            model_internal::dependentsOnMap["usuarioTransaccion"] = new Array();
            model_internal::dependentsOnMap["zonaVerdePrivada"] = new Array();
            model_internal::dependentsOnMap["descubierto"] = new Array();
            model_internal::dependentsOnMap["banioServicio"] = new Array();
            model_internal::dependentsOnMap["sala"] = new Array();
            model_internal::dependentsOnMap["ubicacionInmueble"] = new Array();
            model_internal::dependentsOnMap["estadoRemodelacion"] = new Array();
            model_internal::dependentsOnMap["doble"] = new Array();
            model_internal::dependentsOnMap["ascensor"] = new Array();
            model_internal::dependentsOnMap["totalGarajes"] = new Array();
            model_internal::dependentsOnMap["estudio"] = new Array();
            model_internal::dependentsOnMap["conjuntoAgrupacionCerrada"] = new Array();
            model_internal::dependentsOnMap["luces"] = new Array();
            model_internal::dependentsOnMap["materialConstruccionBUA"] = new Array();
            model_internal::dependentsOnMap["fechaTransaccion"] = new Array();
            model_internal::dependentsOnMap["sotanos"] = new Array();
            model_internal::dependentsOnMap["pisoInmueble"] = new Array();
            model_internal::dependentsOnMap["canchaMultiple"] = new Array();
            model_internal::dependentsOnMap["ubicacionFuentesHidricas"] = new Array();
            model_internal::dependentsOnMap["cubierta"] = new Array();
            model_internal::dependentsOnMap["estadoPisos"] = new Array();
            model_internal::dependentsOnMap["otraUbicacionTanque"] = new Array();
            model_internal::dependentsOnMap["golpeteo"] = new Array();
            model_internal::dependentsOnMap["estadoMuros"] = new Array();
            model_internal::dependentsOnMap["ubicacionTanque"] = new Array();
            model_internal::dependentsOnMap["servidumbre"] = new Array();
            model_internal::dependentsOnMap["pisosBodega"] = new Array();
            model_internal::dependentsOnMap["estadoMetal"] = new Array();
            model_internal::dependentsOnMap["estadoConservacion"] = new Array();
            model_internal::dependentsOnMap["estadoBanios"] = new Array();
            model_internal::dependentsOnMap["simetriaAlturaSF"] = new Array();
            model_internal::dependentsOnMap["estructuraTechos"] = new Array();
            model_internal::dependentsOnMap["danoReparadoSF"] = new Array();
            model_internal::dependentsOnMap["tanqueAgua"] = new Array();
            model_internal::dependentsOnMap["cocina"] = new Array();
            model_internal::dependentsOnMap["garajeVisitante"] = new Array();
            model_internal::dependentsOnMap["juegoNinos"] = new Array();
            model_internal::dependentsOnMap["danoPrevioSF"] = new Array();
            model_internal::dependentsOnMap["otroMaterial"] = new Array();
            model_internal::dependentsOnMap["detalleMaterialSFBUA"] = new Array();
            model_internal::dependentsOnMap["materialConstruccionSF"] = new Array();
            model_internal::dependentsOnMap["calidadMadera"] = new Array();
            model_internal::dependentsOnMap["zonasVerdes"] = new Array();
            model_internal::dependentsOnMap["totalUnidades"] = new Array();
            model_internal::dependentsOnMap["estructura"] = new Array();
            model_internal::dependentsOnMap["calidadCocina"] = new Array();
            model_internal::dependentsOnMap["bicicletero"] = new Array();
            model_internal::dependentsOnMap["aireAcondicionado"] = new Array();
            model_internal::dependentsOnMap["estadoConstruccion"] = new Array();
            model_internal::dependentsOnMap["otrosDotacion"] = new Array();
            model_internal::dependentsOnMap["estarHabitacion"] = new Array();
            model_internal::dependentsOnMap["cubierto"] = new Array();
            model_internal::dependentsOnMap["anoConstruccionBUA"] = new Array();
            model_internal::dependentsOnMap["patioInterior"] = new Array();
            model_internal::dependentsOnMap["local"] = new Array();
            model_internal::dependentsOnMap["sobrePeso"] = new Array();
            model_internal::dependentsOnMap["calidadBanio"] = new Array();
            model_internal::dependentsOnMap["tipoFachada"] = new Array();
            model_internal::dependentsOnMap["detallemat"] = new Array();
                        
            // collection base map
            model_internal::collectionBaseMap = new Object()
            model_internal::collectionBaseMap["detallemat"] = "valueObjects.Dominios";
        }                        
        
        model_internal::_instance = informacionConstruccion;     
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
            throw new Error(propertyName + " is not a data property of entity InformacionConstruccion");  
            
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
            throw new Error(propertyName + " is not a collection property of entity InformacionConstruccion");  
            
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
         	throw new Error(propertyName + " does not exist for entity InformacionConstruccion");
         }     
           
         return model_internal::_instance[propertyName];
     }       
     
     override public function setValue(propertyName:String, value:*):void   
     {
         if (model_internal::dataProperties.indexOf(propertyName) == -1)
         {
              throw new Error(propertyName + " is not a data property of entity InformacionConstruccion");
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
         	throw new Error(propertyName + " does not exist for entity InformacionConstruccion");
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
     public function get isConstruidoUsoActualAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isTextoCubiertaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isBalconAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isRangoConstruccionSFAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isDepositoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isUsoExclusivoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isOficinaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isEstructuraReforzadaSFAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isTextoEstructuraAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isIrregularidadPlantaBUAAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isTextoFachadaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isEstructuraReforzadaBUAAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isEstadoCocinaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isComedorAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isFechaCreacionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isIluminacionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isClubHouseAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isShutBasurasAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isNumeroEdificiosAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isPiscinaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isParapetosCubiertaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isVetustezAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isAvanceObraAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isMaterialEstructuraAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isAlturaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isPorteriaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isDanoPrevioAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isOtrosDotacion2Available():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCalidMetalAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isPrivadoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isPisosAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCalidadTechoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isEstadoMaderaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isBodegaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCalidadMuroAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isReparadosBUAAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isSencilloAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isBanioPrivadoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isAvaluoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isDanoPrevioBUAAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isEstadoTerminadaNuevaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isPresionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isNumeroHabitacionesAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isNumeroAscensoresAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isSquashAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isIrregularidadAlturaBUAAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isSalonComunalAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isGimnasioAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isPropiedadHorizontalAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCalidadPisoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isBanioSocialAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isUsuarioCreacionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isEstadoTerminadoUsadoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isPlantaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isFachadaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCitofonoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCuartoServicioAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isSimetriaPlantaSFAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isSimetriaPlantaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isVentilacionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isSinTerminarAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isEnObraAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isBombaEyectoraAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isUnidadPorPisoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isTerrazaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isUbicacionNivelViaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isJardinAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isBahiaComunalAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isSimetriaAlturaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isIdInformacionConstruccionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isAsentamientosAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isGolfitoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isUsuarioTransaccionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isZonaVerdePrivadaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isDescubiertoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isBanioServicioAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isSalaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isUbicacionInmuebleAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isEstadoRemodelacionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isDobleAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isAscensorAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isTotalGarajesAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isEstudioAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isConjuntoAgrupacionCerradaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isLucesAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isMaterialConstruccionBUAAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isFechaTransaccionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isSotanosAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isPisoInmuebleAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCanchaMultipleAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isUbicacionFuentesHidricasAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCubiertaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isEstadoPisosAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isOtraUbicacionTanqueAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isGolpeteoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isEstadoMurosAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isUbicacionTanqueAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isServidumbreAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isPisosBodegaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isEstadoMetalAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isEstadoConservacionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isEstadoBaniosAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isSimetriaAlturaSFAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isEstructuraTechosAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isDanoReparadoSFAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isTanqueAguaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCocinaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isGarajeVisitanteAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isJuegoNinosAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isDanoPrevioSFAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isOtroMaterialAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isDetalleMaterialSFBUAAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isMaterialConstruccionSFAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCalidadMaderaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isZonasVerdesAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isTotalUnidadesAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isEstructuraAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCalidadCocinaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isBicicleteroAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isAireAcondicionadoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isEstadoConstruccionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isOtrosDotacionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isEstarHabitacionAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCubiertoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isAnoConstruccionBUAAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isPatioInteriorAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isLocalAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isSobrePesoAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isCalidadBanioAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isTipoFachadaAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isDetallematAvailable():Boolean
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
    public function get construidoUsoActualStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get textoCubiertaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get balconStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get rangoConstruccionSFStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get depositoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get usoExclusivoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get oficinaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get estructuraReforzadaSFStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get textoEstructuraStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get irregularidadPlantaBUAStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get textoFachadaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get estructuraReforzadaBUAStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get estadoCocinaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get comedorStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get fechaCreacionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get iluminacionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get clubHouseStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get shutBasurasStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get numeroEdificiosStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get piscinaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get parapetosCubiertaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get vetustezStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get avanceObraStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get materialEstructuraStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get alturaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get porteriaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get danoPrevioStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get otrosDotacion2Style():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get calidMetalStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get privadoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get pisosStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get calidadTechoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get estadoMaderaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get bodegaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get calidadMuroStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get reparadosBUAStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get sencilloStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get banioPrivadoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get avaluoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get danoPrevioBUAStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get estadoTerminadaNuevaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get presionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get numeroHabitacionesStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get numeroAscensoresStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get squashStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get irregularidadAlturaBUAStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get salonComunalStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get gimnasioStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get propiedadHorizontalStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get calidadPisoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get banioSocialStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get usuarioCreacionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get estadoTerminadoUsadoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get plantaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get fachadaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get citofonoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get cuartoServicioStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get simetriaPlantaSFStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get simetriaPlantaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get ventilacionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get sinTerminarStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get enObraStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get bombaEyectoraStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get unidadPorPisoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get terrazaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get ubicacionNivelViaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get jardinStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get bahiaComunalStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get simetriaAlturaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get idInformacionConstruccionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get asentamientosStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get golfitoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get usuarioTransaccionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get zonaVerdePrivadaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get descubiertoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get banioServicioStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get salaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get ubicacionInmuebleStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get estadoRemodelacionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get dobleStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get ascensorStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get totalGarajesStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get estudioStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get conjuntoAgrupacionCerradaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get lucesStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get materialConstruccionBUAStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get fechaTransaccionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get sotanosStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get pisoInmuebleStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get canchaMultipleStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get ubicacionFuentesHidricasStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get cubiertaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get estadoPisosStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get otraUbicacionTanqueStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get golpeteoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get estadoMurosStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get ubicacionTanqueStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get servidumbreStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get pisosBodegaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get estadoMetalStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get estadoConservacionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get estadoBaniosStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get simetriaAlturaSFStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get estructuraTechosStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get danoReparadoSFStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get tanqueAguaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get cocinaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get garajeVisitanteStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get juegoNinosStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get danoPrevioSFStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get otroMaterialStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get detalleMaterialSFBUAStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get materialConstruccionSFStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get calidadMaderaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get zonasVerdesStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get totalUnidadesStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get estructuraStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get calidadCocinaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get bicicleteroStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get aireAcondicionadoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get estadoConstruccionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get otrosDotacionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get estarHabitacionStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get cubiertoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get anoConstruccionBUAStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get patioInteriorStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get localStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get sobrePesoStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get calidadBanioStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get tipoFachadaStyle():com.adobe.fiber.styles.Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get detallematStyle():com.adobe.fiber.styles.Style
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
