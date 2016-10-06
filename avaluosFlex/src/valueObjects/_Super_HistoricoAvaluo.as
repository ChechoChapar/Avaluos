/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - HistoricoAvaluo.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.events.PropertyChangeEvent;
import valueObjects.Avaluo;
import valueObjects.Ciudad;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_HistoricoAvaluo extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void 
    {
        try 
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.entities.HistoricoAvaluo") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.HistoricoAvaluo", cz);
            } 
        }
        catch (e:Error) 
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.HistoricoAvaluo", cz); 
        }
    }   
     
    model_internal static function initRemoteClassAliasAllRelated() : void 
    {
        valueObjects.Ciudad.initRemoteClassAliasSingleChild();
        valueObjects.Avaluo.initRemoteClassAliasSingleChild();
    }

	model_internal var _dminternal_model : _HistoricoAvaluoEntityMetadata;

	/**
	 * properties
	 */
	private var _internal_nombreConjuntoEdificio : String;
	private var _internal_fechaAvaluo : Date;
	private var _internal_justificacion : String;
	private var _internal_sector : String;
	private var _internal_idTipoIdentificacion : String;
	private var _internal_usuario : String;
	private var _internal_idDepartamento : String;
	private var _internal_objCiudad : valueObjects.Ciudad;
	private var _internal_numeroIdentificacion : String;
	private var _internal_avaluo : valueObjects.Avaluo;
	private var _internal_estadoAvaluo : String;
	private var _internal_nombreBanco : String;
	private var _internal_tipoDocumento : String;
	private var _internal_consecutivoBanco : String;
	private var _internal_fechaCreacion : Date;
	private var _internal_idObjetoAvaluo : String;
	private var _internal_usuarioTransaccion : String;
	private var _internal_codigoBanco : String;
	private var _internal_idCiudad : String;
	private var _internal_telefonoSolicitante : String;
	private var _internal_ubicacionGps : String;
	private var _internal_secuenciaHistorico : String;
	private var _internal_correoSolicitante : String;
	private var _internal_matriculaInmobiliaria : String;
	private var _internal_tipoInforme : String;
	private var _internal_codigoDaneDepto : String;
	private var _internal_direccionInmueble : String;
	private var _internal_celularSolicitante : String;
	private var _internal_idMetodologia : String;
	private var _internal_nombreSolicitante : String;
	private var _internal_codigoDaneCiudad : String;
	private var _internal_barrio : String;
	private var _internal_fechaTransaccion : Date;

    private static var emptyArray:Array = new Array();

    /**
     * derived property cache initialization
     */  
    model_internal var _cacheInitialized_isValid:Boolean = false;   
    
	model_internal var _changeWatcherArray:Array = new Array();   

	public function _Super_HistoricoAvaluo() 
	{	
		_model = new _HistoricoAvaluoEntityMetadata(this);
	
		// Bind to own data properties for cache invalidation triggering  
       
	}

    /**
     * data property getters
     */
	[Bindable(event="propertyChange")] 
    public function get nombreConjuntoEdificio() : String    
    {
            return _internal_nombreConjuntoEdificio;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaAvaluo() : Date    
    {
            return _internal_fechaAvaluo;
    }    
	[Bindable(event="propertyChange")] 
    public function get justificacion() : String    
    {
            return _internal_justificacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get sector() : String    
    {
            return _internal_sector;
    }    
	[Bindable(event="propertyChange")] 
    public function get idTipoIdentificacion() : String    
    {
            return _internal_idTipoIdentificacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get usuario() : String    
    {
            return _internal_usuario;
    }    
	[Bindable(event="propertyChange")] 
    public function get idDepartamento() : String    
    {
            return _internal_idDepartamento;
    }    
	[Bindable(event="propertyChange")] 
    public function get objCiudad() : valueObjects.Ciudad    
    {
            return _internal_objCiudad;
    }    
	[Bindable(event="propertyChange")] 
    public function get numeroIdentificacion() : String    
    {
            return _internal_numeroIdentificacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get avaluo() : valueObjects.Avaluo    
    {
            return _internal_avaluo;
    }    
	[Bindable(event="propertyChange")] 
    public function get estadoAvaluo() : String    
    {
            return _internal_estadoAvaluo;
    }    
	[Bindable(event="propertyChange")] 
    public function get nombreBanco() : String    
    {
            return _internal_nombreBanco;
    }    
	[Bindable(event="propertyChange")] 
    public function get tipoDocumento() : String    
    {
            return _internal_tipoDocumento;
    }    
	[Bindable(event="propertyChange")] 
    public function get consecutivoBanco() : String    
    {
            return _internal_consecutivoBanco;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaCreacion() : Date    
    {
            return _internal_fechaCreacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get idObjetoAvaluo() : String    
    {
            return _internal_idObjetoAvaluo;
    }    
	[Bindable(event="propertyChange")] 
    public function get usuarioTransaccion() : String    
    {
            return _internal_usuarioTransaccion;
    }    
	[Bindable(event="propertyChange")] 
    public function get codigoBanco() : String    
    {
            return _internal_codigoBanco;
    }    
	[Bindable(event="propertyChange")] 
    public function get idCiudad() : String    
    {
            return _internal_idCiudad;
    }    
	[Bindable(event="propertyChange")] 
    public function get telefonoSolicitante() : String    
    {
            return _internal_telefonoSolicitante;
    }    
	[Bindable(event="propertyChange")] 
    public function get ubicacionGps() : String    
    {
            return _internal_ubicacionGps;
    }    
	[Bindable(event="propertyChange")] 
    public function get secuenciaHistorico() : String    
    {
            return _internal_secuenciaHistorico;
    }    
	[Bindable(event="propertyChange")] 
    public function get correoSolicitante() : String    
    {
            return _internal_correoSolicitante;
    }    
	[Bindable(event="propertyChange")] 
    public function get matriculaInmobiliaria() : String    
    {
            return _internal_matriculaInmobiliaria;
    }    
	[Bindable(event="propertyChange")] 
    public function get tipoInforme() : String    
    {
            return _internal_tipoInforme;
    }    
	[Bindable(event="propertyChange")] 
    public function get codigoDaneDepto() : String    
    {
            return _internal_codigoDaneDepto;
    }    
	[Bindable(event="propertyChange")] 
    public function get direccionInmueble() : String    
    {
            return _internal_direccionInmueble;
    }    
	[Bindable(event="propertyChange")] 
    public function get celularSolicitante() : String    
    {
            return _internal_celularSolicitante;
    }    
	[Bindable(event="propertyChange")] 
    public function get idMetodologia() : String    
    {
            return _internal_idMetodologia;
    }    
	[Bindable(event="propertyChange")] 
    public function get nombreSolicitante() : String    
    {
            return _internal_nombreSolicitante;
    }    
	[Bindable(event="propertyChange")] 
    public function get codigoDaneCiudad() : String    
    {
            return _internal_codigoDaneCiudad;
    }    
	[Bindable(event="propertyChange")] 
    public function get barrio() : String    
    {
            return _internal_barrio;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaTransaccion() : Date    
    {
            return _internal_fechaTransaccion;
    }    

    /**
     * data property setters
     */      
    public function set nombreConjuntoEdificio(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_nombreConjuntoEdificio == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_nombreConjuntoEdificio;               
        if (oldValue !== value)
        {
            _internal_nombreConjuntoEdificio = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreConjuntoEdificio", oldValue, _internal_nombreConjuntoEdificio));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set fechaAvaluo(value:Date) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_fechaAvaluo == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:Date = _internal_fechaAvaluo;               
        if (oldValue !== value)
        {
            _internal_fechaAvaluo = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaAvaluo", oldValue, _internal_fechaAvaluo));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set justificacion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_justificacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_justificacion;               
        if (oldValue !== value)
        {
            _internal_justificacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "justificacion", oldValue, _internal_justificacion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set sector(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_sector == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_sector;               
        if (oldValue !== value)
        {
            _internal_sector = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sector", oldValue, _internal_sector));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set idTipoIdentificacion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_idTipoIdentificacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_idTipoIdentificacion;               
        if (oldValue !== value)
        {
            _internal_idTipoIdentificacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idTipoIdentificacion", oldValue, _internal_idTipoIdentificacion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set usuario(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_usuario == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_usuario;               
        if (oldValue !== value)
        {
            _internal_usuario = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usuario", oldValue, _internal_usuario));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set idDepartamento(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_idDepartamento == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_idDepartamento;               
        if (oldValue !== value)
        {
            _internal_idDepartamento = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idDepartamento", oldValue, _internal_idDepartamento));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set objCiudad(value:valueObjects.Ciudad) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_objCiudad == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:valueObjects.Ciudad = _internal_objCiudad;               
        if (oldValue !== value)
        {
            _internal_objCiudad = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "objCiudad", oldValue, _internal_objCiudad));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set numeroIdentificacion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_numeroIdentificacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_numeroIdentificacion;               
        if (oldValue !== value)
        {
            _internal_numeroIdentificacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numeroIdentificacion", oldValue, _internal_numeroIdentificacion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set avaluo(value:valueObjects.Avaluo) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_avaluo == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:valueObjects.Avaluo = _internal_avaluo;               
        if (oldValue !== value)
        {
            _internal_avaluo = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "avaluo", oldValue, _internal_avaluo));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set estadoAvaluo(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_estadoAvaluo == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_estadoAvaluo;               
        if (oldValue !== value)
        {
            _internal_estadoAvaluo = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoAvaluo", oldValue, _internal_estadoAvaluo));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set nombreBanco(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_nombreBanco == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_nombreBanco;               
        if (oldValue !== value)
        {
            _internal_nombreBanco = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreBanco", oldValue, _internal_nombreBanco));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set tipoDocumento(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_tipoDocumento == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_tipoDocumento;               
        if (oldValue !== value)
        {
            _internal_tipoDocumento = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoDocumento", oldValue, _internal_tipoDocumento));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set consecutivoBanco(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_consecutivoBanco == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_consecutivoBanco;               
        if (oldValue !== value)
        {
            _internal_consecutivoBanco = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "consecutivoBanco", oldValue, _internal_consecutivoBanco));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set fechaCreacion(value:Date) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_fechaCreacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:Date = _internal_fechaCreacion;               
        if (oldValue !== value)
        {
            _internal_fechaCreacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaCreacion", oldValue, _internal_fechaCreacion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set idObjetoAvaluo(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_idObjetoAvaluo == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_idObjetoAvaluo;               
        if (oldValue !== value)
        {
            _internal_idObjetoAvaluo = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idObjetoAvaluo", oldValue, _internal_idObjetoAvaluo));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set usuarioTransaccion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_usuarioTransaccion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_usuarioTransaccion;               
        if (oldValue !== value)
        {
            _internal_usuarioTransaccion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usuarioTransaccion", oldValue, _internal_usuarioTransaccion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set codigoBanco(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_codigoBanco == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_codigoBanco;               
        if (oldValue !== value)
        {
            _internal_codigoBanco = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codigoBanco", oldValue, _internal_codigoBanco));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set idCiudad(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_idCiudad == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_idCiudad;               
        if (oldValue !== value)
        {
            _internal_idCiudad = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idCiudad", oldValue, _internal_idCiudad));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set telefonoSolicitante(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_telefonoSolicitante == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_telefonoSolicitante;               
        if (oldValue !== value)
        {
            _internal_telefonoSolicitante = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "telefonoSolicitante", oldValue, _internal_telefonoSolicitante));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set ubicacionGps(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_ubicacionGps == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_ubicacionGps;               
        if (oldValue !== value)
        {
            _internal_ubicacionGps = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ubicacionGps", oldValue, _internal_ubicacionGps));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set secuenciaHistorico(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_secuenciaHistorico == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_secuenciaHistorico;               
        if (oldValue !== value)
        {
            _internal_secuenciaHistorico = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "secuenciaHistorico", oldValue, _internal_secuenciaHistorico));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set correoSolicitante(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_correoSolicitante == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_correoSolicitante;               
        if (oldValue !== value)
        {
            _internal_correoSolicitante = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "correoSolicitante", oldValue, _internal_correoSolicitante));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set matriculaInmobiliaria(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_matriculaInmobiliaria == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_matriculaInmobiliaria;               
        if (oldValue !== value)
        {
            _internal_matriculaInmobiliaria = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "matriculaInmobiliaria", oldValue, _internal_matriculaInmobiliaria));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set tipoInforme(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_tipoInforme == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_tipoInforme;               
        if (oldValue !== value)
        {
            _internal_tipoInforme = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoInforme", oldValue, _internal_tipoInforme));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set codigoDaneDepto(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_codigoDaneDepto == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_codigoDaneDepto;               
        if (oldValue !== value)
        {
            _internal_codigoDaneDepto = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codigoDaneDepto", oldValue, _internal_codigoDaneDepto));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set direccionInmueble(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_direccionInmueble == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_direccionInmueble;               
        if (oldValue !== value)
        {
            _internal_direccionInmueble = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "direccionInmueble", oldValue, _internal_direccionInmueble));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set celularSolicitante(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_celularSolicitante == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_celularSolicitante;               
        if (oldValue !== value)
        {
            _internal_celularSolicitante = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "celularSolicitante", oldValue, _internal_celularSolicitante));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set idMetodologia(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_idMetodologia == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_idMetodologia;               
        if (oldValue !== value)
        {
            _internal_idMetodologia = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idMetodologia", oldValue, _internal_idMetodologia));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set nombreSolicitante(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_nombreSolicitante == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_nombreSolicitante;               
        if (oldValue !== value)
        {
            _internal_nombreSolicitante = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreSolicitante", oldValue, _internal_nombreSolicitante));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set codigoDaneCiudad(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_codigoDaneCiudad == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_codigoDaneCiudad;               
        if (oldValue !== value)
        {
            _internal_codigoDaneCiudad = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codigoDaneCiudad", oldValue, _internal_codigoDaneCiudad));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set barrio(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_barrio == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_barrio;               
        if (oldValue !== value)
        {
            _internal_barrio = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "barrio", oldValue, _internal_barrio));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set fechaTransaccion(value:Date) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_fechaTransaccion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:Date = _internal_fechaTransaccion;               
        if (oldValue !== value)
        {
            _internal_fechaTransaccion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaTransaccion", oldValue, _internal_fechaTransaccion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    

    /**
     * data property setter listeners
     */   

   model_internal function setterListenerAnyConstraint(value:flash.events.Event):void
   {
        if (model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }        
   }   

    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();    
        var validationFailureMessages:Array = new Array();    

		if (_model.isNombreConjuntoEdificioAvailable && _internal_nombreConjuntoEdificio == null)
		{
			violatedConsts.push("nombreConjuntoEdificioIsRequired");
			validationFailureMessages.push("nombreConjuntoEdificio is required");
		}
		if (_model.isFechaAvaluoAvailable && _internal_fechaAvaluo == null)
		{
			violatedConsts.push("fechaAvaluoIsRequired");
			validationFailureMessages.push("fechaAvaluo is required");
		}
		if (_model.isJustificacionAvailable && _internal_justificacion == null)
		{
			violatedConsts.push("justificacionIsRequired");
			validationFailureMessages.push("justificacion is required");
		}
		if (_model.isSectorAvailable && _internal_sector == null)
		{
			violatedConsts.push("sectorIsRequired");
			validationFailureMessages.push("sector is required");
		}
		if (_model.isIdTipoIdentificacionAvailable && _internal_idTipoIdentificacion == null)
		{
			violatedConsts.push("idTipoIdentificacionIsRequired");
			validationFailureMessages.push("idTipoIdentificacion is required");
		}
		if (_model.isUsuarioAvailable && _internal_usuario == null)
		{
			violatedConsts.push("usuarioIsRequired");
			validationFailureMessages.push("usuario is required");
		}
		if (_model.isIdDepartamentoAvailable && _internal_idDepartamento == null)
		{
			violatedConsts.push("idDepartamentoIsRequired");
			validationFailureMessages.push("idDepartamento is required");
		}
		if (_model.isObjCiudadAvailable && _internal_objCiudad == null)
		{
			violatedConsts.push("objCiudadIsRequired");
			validationFailureMessages.push("objCiudad is required");
		}
		if (_model.isNumeroIdentificacionAvailable && _internal_numeroIdentificacion == null)
		{
			violatedConsts.push("numeroIdentificacionIsRequired");
			validationFailureMessages.push("numeroIdentificacion is required");
		}
		if (_model.isAvaluoAvailable && _internal_avaluo == null)
		{
			violatedConsts.push("avaluoIsRequired");
			validationFailureMessages.push("avaluo is required");
		}
		if (_model.isEstadoAvaluoAvailable && _internal_estadoAvaluo == null)
		{
			violatedConsts.push("estadoAvaluoIsRequired");
			validationFailureMessages.push("estadoAvaluo is required");
		}
		if (_model.isNombreBancoAvailable && _internal_nombreBanco == null)
		{
			violatedConsts.push("nombreBancoIsRequired");
			validationFailureMessages.push("nombreBanco is required");
		}
		if (_model.isTipoDocumentoAvailable && _internal_tipoDocumento == null)
		{
			violatedConsts.push("tipoDocumentoIsRequired");
			validationFailureMessages.push("tipoDocumento is required");
		}
		if (_model.isConsecutivoBancoAvailable && _internal_consecutivoBanco == null)
		{
			violatedConsts.push("consecutivoBancoIsRequired");
			validationFailureMessages.push("consecutivoBanco is required");
		}
		if (_model.isFechaCreacionAvailable && _internal_fechaCreacion == null)
		{
			violatedConsts.push("fechaCreacionIsRequired");
			validationFailureMessages.push("fechaCreacion is required");
		}
		if (_model.isIdObjetoAvaluoAvailable && _internal_idObjetoAvaluo == null)
		{
			violatedConsts.push("idObjetoAvaluoIsRequired");
			validationFailureMessages.push("idObjetoAvaluo is required");
		}
		if (_model.isUsuarioTransaccionAvailable && _internal_usuarioTransaccion == null)
		{
			violatedConsts.push("usuarioTransaccionIsRequired");
			validationFailureMessages.push("usuarioTransaccion is required");
		}
		if (_model.isCodigoBancoAvailable && _internal_codigoBanco == null)
		{
			violatedConsts.push("codigoBancoIsRequired");
			validationFailureMessages.push("codigoBanco is required");
		}
		if (_model.isIdCiudadAvailable && _internal_idCiudad == null)
		{
			violatedConsts.push("idCiudadIsRequired");
			validationFailureMessages.push("idCiudad is required");
		}
		if (_model.isTelefonoSolicitanteAvailable && _internal_telefonoSolicitante == null)
		{
			violatedConsts.push("telefonoSolicitanteIsRequired");
			validationFailureMessages.push("telefonoSolicitante is required");
		}
		if (_model.isUbicacionGpsAvailable && _internal_ubicacionGps == null)
		{
			violatedConsts.push("ubicacionGpsIsRequired");
			validationFailureMessages.push("ubicacionGps is required");
		}
		if (_model.isSecuenciaHistoricoAvailable && _internal_secuenciaHistorico == null)
		{
			violatedConsts.push("secuenciaHistoricoIsRequired");
			validationFailureMessages.push("secuenciaHistorico is required");
		}
		if (_model.isCorreoSolicitanteAvailable && _internal_correoSolicitante == null)
		{
			violatedConsts.push("correoSolicitanteIsRequired");
			validationFailureMessages.push("correoSolicitante is required");
		}
		if (_model.isMatriculaInmobiliariaAvailable && _internal_matriculaInmobiliaria == null)
		{
			violatedConsts.push("matriculaInmobiliariaIsRequired");
			validationFailureMessages.push("matriculaInmobiliaria is required");
		}
		if (_model.isTipoInformeAvailable && _internal_tipoInforme == null)
		{
			violatedConsts.push("tipoInformeIsRequired");
			validationFailureMessages.push("tipoInforme is required");
		}
		if (_model.isCodigoDaneDeptoAvailable && _internal_codigoDaneDepto == null)
		{
			violatedConsts.push("codigoDaneDeptoIsRequired");
			validationFailureMessages.push("codigoDaneDepto is required");
		}
		if (_model.isDireccionInmuebleAvailable && _internal_direccionInmueble == null)
		{
			violatedConsts.push("direccionInmuebleIsRequired");
			validationFailureMessages.push("direccionInmueble is required");
		}
		if (_model.isCelularSolicitanteAvailable && _internal_celularSolicitante == null)
		{
			violatedConsts.push("celularSolicitanteIsRequired");
			validationFailureMessages.push("celularSolicitante is required");
		}
		if (_model.isIdMetodologiaAvailable && _internal_idMetodologia == null)
		{
			violatedConsts.push("idMetodologiaIsRequired");
			validationFailureMessages.push("idMetodologia is required");
		}
		if (_model.isNombreSolicitanteAvailable && _internal_nombreSolicitante == null)
		{
			violatedConsts.push("nombreSolicitanteIsRequired");
			validationFailureMessages.push("nombreSolicitante is required");
		}
		if (_model.isCodigoDaneCiudadAvailable && _internal_codigoDaneCiudad == null)
		{
			violatedConsts.push("codigoDaneCiudadIsRequired");
			validationFailureMessages.push("codigoDaneCiudad is required");
		}
		if (_model.isBarrioAvailable && _internal_barrio == null)
		{
			violatedConsts.push("barrioIsRequired");
			validationFailureMessages.push("barrio is required");
		}
		if (_model.isFechaTransaccionAvailable && _internal_fechaTransaccion == null)
		{
			violatedConsts.push("fechaTransaccionIsRequired");
			validationFailureMessages.push("fechaTransaccion is required");
		}

		var styleValidity:Boolean = true;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
    
        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && styleValidity;
    }  

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
       	var oldValue:Boolean = model_internal::_isValid;               
        if (oldValue !== value)
        {
        	model_internal::_isValid = value;
        	_model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }        
    }

    /**
     * derived property getters
     */

    [Transient] 
	[Bindable(event="propertyChange")] 
    public function get _model() : _HistoricoAvaluoEntityMetadata
    {
		return model_internal::_dminternal_model;              
    }	
    
    public function set _model(value : _HistoricoAvaluoEntityMetadata) : void       
    {
    	var oldValue : _HistoricoAvaluoEntityMetadata = model_internal::_dminternal_model;               
        if (oldValue !== value)
        {
        	model_internal::_dminternal_model = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }     
    }      

    /**
     * methods
     */  


    /**
     *  services
     */                  
     private var _managingService:com.adobe.fiber.services.IFiberManagingService;
    
     public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
     {
         _managingService = managingService;
     }                      
     
    model_internal function set invalidConstraints_der(value:Array) : void
    {  
     	var oldValue:Array = model_internal::_invalidConstraints;
     	// avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;   
			_model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);   
        }     	             
    }             
    
     model_internal function set validationFailureMessages_der(value:Array) : void
    {  
     	var oldValue:Array = model_internal::_validationFailureMessages;
     	// avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;   
			_model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);   
        }     	             
    }        
     
     // Individual isAvailable functions     
	// fields, getters, and setters for primitive representations of complex id properties

}

}
