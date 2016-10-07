/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - InformacionInmueble.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.events.PropertyChangeEvent;
import valueObjects.Avaluo;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_InformacionInmueble extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void 
    {
        try 
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.entities.InformacionInmueble") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.InformacionInmueble", cz);
            } 
        }
        catch (e:Error) 
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.InformacionInmueble", cz); 
        }
    }   
     
    model_internal static function initRemoteClassAliasAllRelated() : void 
    {
        valueObjects.Avaluo.initRemoteClassAliasSingleChild();
    }

	model_internal var _dminternal_model : _InformacionInmuebleEntityMetadata;

	/**
	 * properties
	 */
	private var _internal_altura : String;
	private var _internal_usoInmuebleBUA : String;
	private var _internal_departamentoEscritura : String;
	private var _internal_otroUsoInmueble : String;
	private var _internal_catastralSF : String;
	private var _internal_matriculaInmobiliariaPpal2 : String;
	private var _internal_matriculaInmobiliariaPpal1 : String;
	private var _internal_avaluo : valueObjects.Avaluo;
	private var _internal_claseInmueble : String;
	private var _internal_tipoVivienda : String;
	private var _internal_notaria : String;
	private var _internal_fechaCreacion : Date;
	private var _internal_matriculaInmobiliariaGaraje2 : String;
	private var _internal_chip : String;
	private var _internal_idInfinmueble : String;
	private var _internal_ubicacion2 : String;
	private var _internal_matriculaInmobiliariaGaraje3 : String;
	private var _internal_matriculaInmobiliariaGaraje4 : String;
	private var _internal_ediContUso : String;
	private var _internal_matriculaInmobiliariaGaraje5 : String;
	private var _internal_matriculaInmobiliariaDeposito2 : String;
	private var _internal_numeroEscritura : String;
	private var _internal_usuarioTransaccion : String;
	private var _internal_matriculaInmobiliariaDeposito1 : String;
	private var _internal_ubicacion3 : String;
	private var _internal_matriculaInmobiliariaGaraje1 : String;
	private var _internal_otroClase : String;
	private var _internal_usuarioCreacion : String;
	private var _internal_idCategoria : String;
	private var _internal_ciudadEscritura : String;
	private var _internal_fechaEscritura : Date;
	private var _internal_fechaTransaccion : Date;
	private var _internal_usoInmueble : String;
	private var _internal_usoInmuebleSF : String;

    private static var emptyArray:Array = new Array();

    /**
     * derived property cache initialization
     */  
    model_internal var _cacheInitialized_isValid:Boolean = false;   
    
	model_internal var _changeWatcherArray:Array = new Array();   

	public function _Super_InformacionInmueble() 
	{	
		_model = new _InformacionInmuebleEntityMetadata(this);
	
		// Bind to own data properties for cache invalidation triggering  
       
	}

    /**
     * data property getters
     */
	[Bindable(event="propertyChange")] 
    public function get altura() : String    
    {
            return _internal_altura;
    }    
	[Bindable(event="propertyChange")] 
    public function get usoInmuebleBUA() : String    
    {
            return _internal_usoInmuebleBUA;
    }    
	[Bindable(event="propertyChange")] 
    public function get departamentoEscritura() : String    
    {
            return _internal_departamentoEscritura;
    }    
	[Bindable(event="propertyChange")] 
    public function get otroUsoInmueble() : String    
    {
            return _internal_otroUsoInmueble;
    }    
	[Bindable(event="propertyChange")] 
    public function get catastralSF() : String    
    {
            return _internal_catastralSF;
    }    
	[Bindable(event="propertyChange")] 
    public function get matriculaInmobiliariaPpal2() : String    
    {
            return _internal_matriculaInmobiliariaPpal2;
    }    
	[Bindable(event="propertyChange")] 
    public function get matriculaInmobiliariaPpal1() : String    
    {
            return _internal_matriculaInmobiliariaPpal1;
    }    
	[Bindable(event="propertyChange")] 
    public function get avaluo() : valueObjects.Avaluo    
    {
            return _internal_avaluo;
    }    
	[Bindable(event="propertyChange")] 
    public function get claseInmueble() : String    
    {
            return _internal_claseInmueble;
    }    
	[Bindable(event="propertyChange")] 
    public function get tipoVivienda() : String    
    {
            return _internal_tipoVivienda;
    }    
	[Bindable(event="propertyChange")] 
    public function get notaria() : String    
    {
            return _internal_notaria;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaCreacion() : Date    
    {
            return _internal_fechaCreacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get matriculaInmobiliariaGaraje2() : String    
    {
            return _internal_matriculaInmobiliariaGaraje2;
    }    
	[Bindable(event="propertyChange")] 
    public function get chip() : String    
    {
            return _internal_chip;
    }    
	[Bindable(event="propertyChange")] 
    public function get idInfinmueble() : String    
    {
            return _internal_idInfinmueble;
    }    
	[Bindable(event="propertyChange")] 
    public function get ubicacion2() : String    
    {
            return _internal_ubicacion2;
    }    
	[Bindable(event="propertyChange")] 
    public function get matriculaInmobiliariaGaraje3() : String    
    {
            return _internal_matriculaInmobiliariaGaraje3;
    }    
	[Bindable(event="propertyChange")] 
    public function get matriculaInmobiliariaGaraje4() : String    
    {
            return _internal_matriculaInmobiliariaGaraje4;
    }    
	[Bindable(event="propertyChange")] 
    public function get ediContUso() : String    
    {
            return _internal_ediContUso;
    }    
	[Bindable(event="propertyChange")] 
    public function get matriculaInmobiliariaGaraje5() : String    
    {
            return _internal_matriculaInmobiliariaGaraje5;
    }    
	[Bindable(event="propertyChange")] 
    public function get matriculaInmobiliariaDeposito2() : String    
    {
            return _internal_matriculaInmobiliariaDeposito2;
    }    
	[Bindable(event="propertyChange")] 
    public function get numeroEscritura() : String    
    {
            return _internal_numeroEscritura;
    }    
	[Bindable(event="propertyChange")] 
    public function get usuarioTransaccion() : String    
    {
            return _internal_usuarioTransaccion;
    }    
	[Bindable(event="propertyChange")] 
    public function get matriculaInmobiliariaDeposito1() : String    
    {
            return _internal_matriculaInmobiliariaDeposito1;
    }    
	[Bindable(event="propertyChange")] 
    public function get ubicacion3() : String    
    {
            return _internal_ubicacion3;
    }    
	[Bindable(event="propertyChange")] 
    public function get matriculaInmobiliariaGaraje1() : String    
    {
            return _internal_matriculaInmobiliariaGaraje1;
    }    
	[Bindable(event="propertyChange")] 
    public function get otroClase() : String    
    {
            return _internal_otroClase;
    }    
	[Bindable(event="propertyChange")] 
    public function get usuarioCreacion() : String    
    {
            return _internal_usuarioCreacion;
    }    
	[Bindable(event="propertyChange")] 
    public function get idCategoria() : String    
    {
            return _internal_idCategoria;
    }    
	[Bindable(event="propertyChange")] 
    public function get ciudadEscritura() : String    
    {
            return _internal_ciudadEscritura;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaEscritura() : Date    
    {
            return _internal_fechaEscritura;
    }    
	[Bindable(event="propertyChange")] 
    public function get fechaTransaccion() : Date    
    {
            return _internal_fechaTransaccion;
    }    
	[Bindable(event="propertyChange")] 
    public function get usoInmueble() : String    
    {
            return _internal_usoInmueble;
    }    
	[Bindable(event="propertyChange")] 
    public function get usoInmuebleSF() : String    
    {
            return _internal_usoInmuebleSF;
    }    

    /**
     * data property setters
     */      
    public function set altura(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_altura == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_altura;               
        if (oldValue !== value)
        {
            _internal_altura = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "altura", oldValue, _internal_altura));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set usoInmuebleBUA(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_usoInmuebleBUA == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_usoInmuebleBUA;               
        if (oldValue !== value)
        {
            _internal_usoInmuebleBUA = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usoInmuebleBUA", oldValue, _internal_usoInmuebleBUA));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set departamentoEscritura(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_departamentoEscritura == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_departamentoEscritura;               
        if (oldValue !== value)
        {
            _internal_departamentoEscritura = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "departamentoEscritura", oldValue, _internal_departamentoEscritura));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set otroUsoInmueble(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_otroUsoInmueble == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_otroUsoInmueble;               
        if (oldValue !== value)
        {
            _internal_otroUsoInmueble = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "otroUsoInmueble", oldValue, _internal_otroUsoInmueble));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set catastralSF(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_catastralSF == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_catastralSF;               
        if (oldValue !== value)
        {
            _internal_catastralSF = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "catastralSF", oldValue, _internal_catastralSF));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set matriculaInmobiliariaPpal2(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_matriculaInmobiliariaPpal2 == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_matriculaInmobiliariaPpal2;               
        if (oldValue !== value)
        {
            _internal_matriculaInmobiliariaPpal2 = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "matriculaInmobiliariaPpal2", oldValue, _internal_matriculaInmobiliariaPpal2));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set matriculaInmobiliariaPpal1(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_matriculaInmobiliariaPpal1 == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_matriculaInmobiliariaPpal1;               
        if (oldValue !== value)
        {
            _internal_matriculaInmobiliariaPpal1 = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "matriculaInmobiliariaPpal1", oldValue, _internal_matriculaInmobiliariaPpal1));
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
    public function set claseInmueble(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_claseInmueble == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_claseInmueble;               
        if (oldValue !== value)
        {
            _internal_claseInmueble = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "claseInmueble", oldValue, _internal_claseInmueble));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set tipoVivienda(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_tipoVivienda == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_tipoVivienda;               
        if (oldValue !== value)
        {
            _internal_tipoVivienda = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoVivienda", oldValue, _internal_tipoVivienda));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set notaria(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_notaria == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_notaria;               
        if (oldValue !== value)
        {
            _internal_notaria = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "notaria", oldValue, _internal_notaria));
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
    public function set matriculaInmobiliariaGaraje2(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_matriculaInmobiliariaGaraje2 == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_matriculaInmobiliariaGaraje2;               
        if (oldValue !== value)
        {
            _internal_matriculaInmobiliariaGaraje2 = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "matriculaInmobiliariaGaraje2", oldValue, _internal_matriculaInmobiliariaGaraje2));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set chip(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_chip == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_chip;               
        if (oldValue !== value)
        {
            _internal_chip = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "chip", oldValue, _internal_chip));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set idInfinmueble(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_idInfinmueble == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_idInfinmueble;               
        if (oldValue !== value)
        {
            _internal_idInfinmueble = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idInfinmueble", oldValue, _internal_idInfinmueble));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set ubicacion2(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_ubicacion2 == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_ubicacion2;               
        if (oldValue !== value)
        {
            _internal_ubicacion2 = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ubicacion2", oldValue, _internal_ubicacion2));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set matriculaInmobiliariaGaraje3(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_matriculaInmobiliariaGaraje3 == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_matriculaInmobiliariaGaraje3;               
        if (oldValue !== value)
        {
            _internal_matriculaInmobiliariaGaraje3 = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "matriculaInmobiliariaGaraje3", oldValue, _internal_matriculaInmobiliariaGaraje3));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set matriculaInmobiliariaGaraje4(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_matriculaInmobiliariaGaraje4 == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_matriculaInmobiliariaGaraje4;               
        if (oldValue !== value)
        {
            _internal_matriculaInmobiliariaGaraje4 = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "matriculaInmobiliariaGaraje4", oldValue, _internal_matriculaInmobiliariaGaraje4));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set ediContUso(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_ediContUso == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_ediContUso;               
        if (oldValue !== value)
        {
            _internal_ediContUso = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ediContUso", oldValue, _internal_ediContUso));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set matriculaInmobiliariaGaraje5(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_matriculaInmobiliariaGaraje5 == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_matriculaInmobiliariaGaraje5;               
        if (oldValue !== value)
        {
            _internal_matriculaInmobiliariaGaraje5 = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "matriculaInmobiliariaGaraje5", oldValue, _internal_matriculaInmobiliariaGaraje5));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set matriculaInmobiliariaDeposito2(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_matriculaInmobiliariaDeposito2 == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_matriculaInmobiliariaDeposito2;               
        if (oldValue !== value)
        {
            _internal_matriculaInmobiliariaDeposito2 = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "matriculaInmobiliariaDeposito2", oldValue, _internal_matriculaInmobiliariaDeposito2));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set numeroEscritura(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_numeroEscritura == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_numeroEscritura;               
        if (oldValue !== value)
        {
            _internal_numeroEscritura = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numeroEscritura", oldValue, _internal_numeroEscritura));
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
    public function set matriculaInmobiliariaDeposito1(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_matriculaInmobiliariaDeposito1 == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_matriculaInmobiliariaDeposito1;               
        if (oldValue !== value)
        {
            _internal_matriculaInmobiliariaDeposito1 = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "matriculaInmobiliariaDeposito1", oldValue, _internal_matriculaInmobiliariaDeposito1));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set ubicacion3(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_ubicacion3 == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_ubicacion3;               
        if (oldValue !== value)
        {
            _internal_ubicacion3 = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ubicacion3", oldValue, _internal_ubicacion3));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set matriculaInmobiliariaGaraje1(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_matriculaInmobiliariaGaraje1 == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_matriculaInmobiliariaGaraje1;               
        if (oldValue !== value)
        {
            _internal_matriculaInmobiliariaGaraje1 = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "matriculaInmobiliariaGaraje1", oldValue, _internal_matriculaInmobiliariaGaraje1));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set otroClase(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_otroClase == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_otroClase;               
        if (oldValue !== value)
        {
            _internal_otroClase = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "otroClase", oldValue, _internal_otroClase));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set usuarioCreacion(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_usuarioCreacion == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_usuarioCreacion;               
        if (oldValue !== value)
        {
            _internal_usuarioCreacion = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usuarioCreacion", oldValue, _internal_usuarioCreacion));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set idCategoria(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_idCategoria == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_idCategoria;               
        if (oldValue !== value)
        {
            _internal_idCategoria = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idCategoria", oldValue, _internal_idCategoria));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set ciudadEscritura(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_ciudadEscritura == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_ciudadEscritura;               
        if (oldValue !== value)
        {
            _internal_ciudadEscritura = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ciudadEscritura", oldValue, _internal_ciudadEscritura));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set fechaEscritura(value:Date) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_fechaEscritura == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:Date = _internal_fechaEscritura;               
        if (oldValue !== value)
        {
            _internal_fechaEscritura = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaEscritura", oldValue, _internal_fechaEscritura));
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
    public function set usoInmueble(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_usoInmueble == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_usoInmueble;               
        if (oldValue !== value)
        {
            _internal_usoInmueble = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usoInmueble", oldValue, _internal_usoInmueble));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set usoInmuebleSF(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_usoInmuebleSF == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_usoInmuebleSF;               
        if (oldValue !== value)
        {
            _internal_usoInmuebleSF = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usoInmuebleSF", oldValue, _internal_usoInmuebleSF));
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

		if (_model.isAlturaAvailable && _internal_altura == null)
		{
			violatedConsts.push("alturaIsRequired");
			validationFailureMessages.push("altura is required");
		}
		if (_model.isUsoInmuebleBUAAvailable && _internal_usoInmuebleBUA == null)
		{
			violatedConsts.push("usoInmuebleBUAIsRequired");
			validationFailureMessages.push("usoInmuebleBUA is required");
		}
		if (_model.isDepartamentoEscrituraAvailable && _internal_departamentoEscritura == null)
		{
			violatedConsts.push("departamentoEscrituraIsRequired");
			validationFailureMessages.push("departamentoEscritura is required");
		}
		if (_model.isOtroUsoInmuebleAvailable && _internal_otroUsoInmueble == null)
		{
			violatedConsts.push("otroUsoInmuebleIsRequired");
			validationFailureMessages.push("otroUsoInmueble is required");
		}
		if (_model.isCatastralSFAvailable && _internal_catastralSF == null)
		{
			violatedConsts.push("catastralSFIsRequired");
			validationFailureMessages.push("catastralSF is required");
		}
		if (_model.isMatriculaInmobiliariaPpal2Available && _internal_matriculaInmobiliariaPpal2 == null)
		{
			violatedConsts.push("matriculaInmobiliariaPpal2IsRequired");
			validationFailureMessages.push("matriculaInmobiliariaPpal2 is required");
		}
		if (_model.isMatriculaInmobiliariaPpal1Available && _internal_matriculaInmobiliariaPpal1 == null)
		{
			violatedConsts.push("matriculaInmobiliariaPpal1IsRequired");
			validationFailureMessages.push("matriculaInmobiliariaPpal1 is required");
		}
		if (_model.isAvaluoAvailable && _internal_avaluo == null)
		{
			violatedConsts.push("avaluoIsRequired");
			validationFailureMessages.push("avaluo is required");
		}
		if (_model.isClaseInmuebleAvailable && _internal_claseInmueble == null)
		{
			violatedConsts.push("claseInmuebleIsRequired");
			validationFailureMessages.push("claseInmueble is required");
		}
		if (_model.isTipoViviendaAvailable && _internal_tipoVivienda == null)
		{
			violatedConsts.push("tipoViviendaIsRequired");
			validationFailureMessages.push("tipoVivienda is required");
		}
		if (_model.isNotariaAvailable && _internal_notaria == null)
		{
			violatedConsts.push("notariaIsRequired");
			validationFailureMessages.push("notaria is required");
		}
		if (_model.isFechaCreacionAvailable && _internal_fechaCreacion == null)
		{
			violatedConsts.push("fechaCreacionIsRequired");
			validationFailureMessages.push("fechaCreacion is required");
		}
		if (_model.isMatriculaInmobiliariaGaraje2Available && _internal_matriculaInmobiliariaGaraje2 == null)
		{
			violatedConsts.push("matriculaInmobiliariaGaraje2IsRequired");
			validationFailureMessages.push("matriculaInmobiliariaGaraje2 is required");
		}
		if (_model.isChipAvailable && _internal_chip == null)
		{
			violatedConsts.push("chipIsRequired");
			validationFailureMessages.push("chip is required");
		}
		if (_model.isIdInfinmuebleAvailable && _internal_idInfinmueble == null)
		{
			violatedConsts.push("idInfinmuebleIsRequired");
			validationFailureMessages.push("idInfinmueble is required");
		}
		if (_model.isUbicacion2Available && _internal_ubicacion2 == null)
		{
			violatedConsts.push("ubicacion2IsRequired");
			validationFailureMessages.push("ubicacion2 is required");
		}
		if (_model.isMatriculaInmobiliariaGaraje3Available && _internal_matriculaInmobiliariaGaraje3 == null)
		{
			violatedConsts.push("matriculaInmobiliariaGaraje3IsRequired");
			validationFailureMessages.push("matriculaInmobiliariaGaraje3 is required");
		}
		if (_model.isMatriculaInmobiliariaGaraje4Available && _internal_matriculaInmobiliariaGaraje4 == null)
		{
			violatedConsts.push("matriculaInmobiliariaGaraje4IsRequired");
			validationFailureMessages.push("matriculaInmobiliariaGaraje4 is required");
		}
		if (_model.isEdiContUsoAvailable && _internal_ediContUso == null)
		{
			violatedConsts.push("ediContUsoIsRequired");
			validationFailureMessages.push("ediContUso is required");
		}
		if (_model.isMatriculaInmobiliariaGaraje5Available && _internal_matriculaInmobiliariaGaraje5 == null)
		{
			violatedConsts.push("matriculaInmobiliariaGaraje5IsRequired");
			validationFailureMessages.push("matriculaInmobiliariaGaraje5 is required");
		}
		if (_model.isMatriculaInmobiliariaDeposito2Available && _internal_matriculaInmobiliariaDeposito2 == null)
		{
			violatedConsts.push("matriculaInmobiliariaDeposito2IsRequired");
			validationFailureMessages.push("matriculaInmobiliariaDeposito2 is required");
		}
		if (_model.isNumeroEscrituraAvailable && _internal_numeroEscritura == null)
		{
			violatedConsts.push("numeroEscrituraIsRequired");
			validationFailureMessages.push("numeroEscritura is required");
		}
		if (_model.isUsuarioTransaccionAvailable && _internal_usuarioTransaccion == null)
		{
			violatedConsts.push("usuarioTransaccionIsRequired");
			validationFailureMessages.push("usuarioTransaccion is required");
		}
		if (_model.isMatriculaInmobiliariaDeposito1Available && _internal_matriculaInmobiliariaDeposito1 == null)
		{
			violatedConsts.push("matriculaInmobiliariaDeposito1IsRequired");
			validationFailureMessages.push("matriculaInmobiliariaDeposito1 is required");
		}
		if (_model.isUbicacion3Available && _internal_ubicacion3 == null)
		{
			violatedConsts.push("ubicacion3IsRequired");
			validationFailureMessages.push("ubicacion3 is required");
		}
		if (_model.isMatriculaInmobiliariaGaraje1Available && _internal_matriculaInmobiliariaGaraje1 == null)
		{
			violatedConsts.push("matriculaInmobiliariaGaraje1IsRequired");
			validationFailureMessages.push("matriculaInmobiliariaGaraje1 is required");
		}
		if (_model.isOtroClaseAvailable && _internal_otroClase == null)
		{
			violatedConsts.push("otroClaseIsRequired");
			validationFailureMessages.push("otroClase is required");
		}
		if (_model.isUsuarioCreacionAvailable && _internal_usuarioCreacion == null)
		{
			violatedConsts.push("usuarioCreacionIsRequired");
			validationFailureMessages.push("usuarioCreacion is required");
		}
		if (_model.isIdCategoriaAvailable && _internal_idCategoria == null)
		{
			violatedConsts.push("idCategoriaIsRequired");
			validationFailureMessages.push("idCategoria is required");
		}
		if (_model.isCiudadEscrituraAvailable && _internal_ciudadEscritura == null)
		{
			violatedConsts.push("ciudadEscrituraIsRequired");
			validationFailureMessages.push("ciudadEscritura is required");
		}
		if (_model.isFechaEscrituraAvailable && _internal_fechaEscritura == null)
		{
			violatedConsts.push("fechaEscrituraIsRequired");
			validationFailureMessages.push("fechaEscritura is required");
		}
		if (_model.isFechaTransaccionAvailable && _internal_fechaTransaccion == null)
		{
			violatedConsts.push("fechaTransaccionIsRequired");
			validationFailureMessages.push("fechaTransaccion is required");
		}
		if (_model.isUsoInmuebleAvailable && _internal_usoInmueble == null)
		{
			violatedConsts.push("usoInmuebleIsRequired");
			validationFailureMessages.push("usoInmueble is required");
		}
		if (_model.isUsoInmuebleSFAvailable && _internal_usoInmuebleSF == null)
		{
			violatedConsts.push("usoInmuebleSFIsRequired");
			validationFailureMessages.push("usoInmuebleSF is required");
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
    public function get _model() : _InformacionInmuebleEntityMetadata
    {
		return model_internal::_dminternal_model;              
    }	
    
    public function set _model(value : _InformacionInmuebleEntityMetadata) : void       
    {
    	var oldValue : _InformacionInmuebleEntityMetadata = model_internal::_dminternal_model;               
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
