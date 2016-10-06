/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - VResumenCargue.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.binding.utils.ChangeWatcher;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_VResumenCargue extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.entities.VResumenCargue") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.VResumenCargue", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.VResumenCargue", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _VResumenCargueEntityMetadata;

    /**
     * properties
     */
    private var _internal_total : String;
    private var _internal_numeroRefCargue : String;
    private var _internal_nombreArchivo : String;
    private var _internal_rechazados : String;
    private var _internal_empresaAvaluos : String;
    private var _internal_usuarioTransaccion : String;
    private var _internal_sinEstado : String;
    private var _internal_aplicados : String;
    private var _internal_tipoCargue : String;
    private var _internal_fechaTransaccion : Date;
    private var _internal_consecutivoBatch : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_VResumenCargue()
    {
        _model = new _VResumenCargueEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "total", model_internal::setterListenerTotal));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "numeroRefCargue", model_internal::setterListenerNumeroRefCargue));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "nombreArchivo", model_internal::setterListenerNombreArchivo));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "rechazados", model_internal::setterListenerRechazados));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "empresaAvaluos", model_internal::setterListenerEmpresaAvaluos));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "usuarioTransaccion", model_internal::setterListenerUsuarioTransaccion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "sinEstado", model_internal::setterListenerSinEstado));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "aplicados", model_internal::setterListenerAplicados));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "tipoCargue", model_internal::setterListenerTipoCargue));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaTransaccion", model_internal::setterListenerFechaTransaccion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "consecutivoBatch", model_internal::setterListenerConsecutivoBatch));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get total() : String
    {
        return _internal_total;
    }

    [Bindable(event="propertyChange")]
    public function get numeroRefCargue() : String
    {
        return _internal_numeroRefCargue;
    }

    [Bindable(event="propertyChange")]
    public function get nombreArchivo() : String
    {
        return _internal_nombreArchivo;
    }

    [Bindable(event="propertyChange")]
    public function get rechazados() : String
    {
        return _internal_rechazados;
    }

    [Bindable(event="propertyChange")]
    public function get empresaAvaluos() : String
    {
        return _internal_empresaAvaluos;
    }

    [Bindable(event="propertyChange")]
    public function get usuarioTransaccion() : String
    {
        return _internal_usuarioTransaccion;
    }

    [Bindable(event="propertyChange")]
    public function get sinEstado() : String
    {
        return _internal_sinEstado;
    }

    [Bindable(event="propertyChange")]
    public function get aplicados() : String
    {
        return _internal_aplicados;
    }

    [Bindable(event="propertyChange")]
    public function get tipoCargue() : String
    {
        return _internal_tipoCargue;
    }

    [Bindable(event="propertyChange")]
    public function get fechaTransaccion() : Date
    {
        return _internal_fechaTransaccion;
    }

    [Bindable(event="propertyChange")]
    public function get consecutivoBatch() : String
    {
        return _internal_consecutivoBatch;
    }

    /**
     * data property setters
     */

    public function set total(value:String) : void
    {
        var oldValue:String = _internal_total;
        if (oldValue !== value)
        {
            _internal_total = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "total", oldValue, _internal_total));
        }
    }

    public function set numeroRefCargue(value:String) : void
    {
        var oldValue:String = _internal_numeroRefCargue;
        if (oldValue !== value)
        {
            _internal_numeroRefCargue = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numeroRefCargue", oldValue, _internal_numeroRefCargue));
        }
    }

    public function set nombreArchivo(value:String) : void
    {
        var oldValue:String = _internal_nombreArchivo;
        if (oldValue !== value)
        {
            _internal_nombreArchivo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreArchivo", oldValue, _internal_nombreArchivo));
        }
    }

    public function set rechazados(value:String) : void
    {
        var oldValue:String = _internal_rechazados;
        if (oldValue !== value)
        {
            _internal_rechazados = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rechazados", oldValue, _internal_rechazados));
        }
    }

    public function set empresaAvaluos(value:String) : void
    {
        var oldValue:String = _internal_empresaAvaluos;
        if (oldValue !== value)
        {
            _internal_empresaAvaluos = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "empresaAvaluos", oldValue, _internal_empresaAvaluos));
        }
    }

    public function set usuarioTransaccion(value:String) : void
    {
        var oldValue:String = _internal_usuarioTransaccion;
        if (oldValue !== value)
        {
            _internal_usuarioTransaccion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usuarioTransaccion", oldValue, _internal_usuarioTransaccion));
        }
    }

    public function set sinEstado(value:String) : void
    {
        var oldValue:String = _internal_sinEstado;
        if (oldValue !== value)
        {
            _internal_sinEstado = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sinEstado", oldValue, _internal_sinEstado));
        }
    }

    public function set aplicados(value:String) : void
    {
        var oldValue:String = _internal_aplicados;
        if (oldValue !== value)
        {
            _internal_aplicados = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "aplicados", oldValue, _internal_aplicados));
        }
    }

    public function set tipoCargue(value:String) : void
    {
        var oldValue:String = _internal_tipoCargue;
        if (oldValue !== value)
        {
            _internal_tipoCargue = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoCargue", oldValue, _internal_tipoCargue));
        }
    }

    public function set fechaTransaccion(value:Date) : void
    {
        var oldValue:Date = _internal_fechaTransaccion;
        if (oldValue !== value)
        {
            _internal_fechaTransaccion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fechaTransaccion", oldValue, _internal_fechaTransaccion));
        }
    }

    public function set consecutivoBatch(value:String) : void
    {
        var oldValue:String = _internal_consecutivoBatch;
        if (oldValue !== value)
        {
            _internal_consecutivoBatch = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "consecutivoBatch", oldValue, _internal_consecutivoBatch));
        }
    }

    /**
     * Data property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */

    model_internal function setterListenerTotal(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTotal();
    }

    model_internal function setterListenerNumeroRefCargue(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNumeroRefCargue();
    }

    model_internal function setterListenerNombreArchivo(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNombreArchivo();
    }

    model_internal function setterListenerRechazados(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRechazados();
    }

    model_internal function setterListenerEmpresaAvaluos(value:flash.events.Event):void
    {
        _model.invalidateDependentOnEmpresaAvaluos();
    }

    model_internal function setterListenerUsuarioTransaccion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUsuarioTransaccion();
    }

    model_internal function setterListenerSinEstado(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSinEstado();
    }

    model_internal function setterListenerAplicados(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAplicados();
    }

    model_internal function setterListenerTipoCargue(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTipoCargue();
    }

    model_internal function setterListenerFechaTransaccion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFechaTransaccion();
    }

    model_internal function setterListenerConsecutivoBatch(value:flash.events.Event):void
    {
        _model.invalidateDependentOnConsecutivoBatch();
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

        var propertyValidity:Boolean = true;
        if (!_model.totalIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_totalValidationFailureMessages);
        }
        if (!_model.numeroRefCargueIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_numeroRefCargueValidationFailureMessages);
        }
        if (!_model.nombreArchivoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nombreArchivoValidationFailureMessages);
        }
        if (!_model.rechazadosIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_rechazadosValidationFailureMessages);
        }
        if (!_model.empresaAvaluosIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_empresaAvaluosValidationFailureMessages);
        }
        if (!_model.usuarioTransaccionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_usuarioTransaccionValidationFailureMessages);
        }
        if (!_model.sinEstadoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_sinEstadoValidationFailureMessages);
        }
        if (!_model.aplicadosIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_aplicadosValidationFailureMessages);
        }
        if (!_model.tipoCargueIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_tipoCargueValidationFailureMessages);
        }
        if (!_model.fechaTransaccionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_fechaTransaccionValidationFailureMessages);
        }
        if (!_model.consecutivoBatchIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_consecutivoBatchValidationFailureMessages);
        }

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
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
    public function get _model() : _VResumenCargueEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _VResumenCargueEntityMetadata) : void
    {
        var oldValue : _VResumenCargueEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfTotal : Array = null;
    model_internal var _doValidationLastValOfTotal : String;

    model_internal function _doValidationForTotal(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTotal != null && model_internal::_doValidationLastValOfTotal == value)
           return model_internal::_doValidationCacheOfTotal ;

        _model.model_internal::_totalIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTotalAvailable && _internal_total == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "total is required"));
        }

        model_internal::_doValidationCacheOfTotal = validationFailures;
        model_internal::_doValidationLastValOfTotal = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfNumeroRefCargue : Array = null;
    model_internal var _doValidationLastValOfNumeroRefCargue : String;

    model_internal function _doValidationForNumeroRefCargue(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNumeroRefCargue != null && model_internal::_doValidationLastValOfNumeroRefCargue == value)
           return model_internal::_doValidationCacheOfNumeroRefCargue ;

        _model.model_internal::_numeroRefCargueIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNumeroRefCargueAvailable && _internal_numeroRefCargue == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "numeroRefCargue is required"));
        }

        model_internal::_doValidationCacheOfNumeroRefCargue = validationFailures;
        model_internal::_doValidationLastValOfNumeroRefCargue = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfNombreArchivo : Array = null;
    model_internal var _doValidationLastValOfNombreArchivo : String;

    model_internal function _doValidationForNombreArchivo(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNombreArchivo != null && model_internal::_doValidationLastValOfNombreArchivo == value)
           return model_internal::_doValidationCacheOfNombreArchivo ;

        _model.model_internal::_nombreArchivoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNombreArchivoAvailable && _internal_nombreArchivo == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "nombreArchivo is required"));
        }

        model_internal::_doValidationCacheOfNombreArchivo = validationFailures;
        model_internal::_doValidationLastValOfNombreArchivo = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRechazados : Array = null;
    model_internal var _doValidationLastValOfRechazados : String;

    model_internal function _doValidationForRechazados(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfRechazados != null && model_internal::_doValidationLastValOfRechazados == value)
           return model_internal::_doValidationCacheOfRechazados ;

        _model.model_internal::_rechazadosIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRechazadosAvailable && _internal_rechazados == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "rechazados is required"));
        }

        model_internal::_doValidationCacheOfRechazados = validationFailures;
        model_internal::_doValidationLastValOfRechazados = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfEmpresaAvaluos : Array = null;
    model_internal var _doValidationLastValOfEmpresaAvaluos : String;

    model_internal function _doValidationForEmpresaAvaluos(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfEmpresaAvaluos != null && model_internal::_doValidationLastValOfEmpresaAvaluos == value)
           return model_internal::_doValidationCacheOfEmpresaAvaluos ;

        _model.model_internal::_empresaAvaluosIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isEmpresaAvaluosAvailable && _internal_empresaAvaluos == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "empresaAvaluos is required"));
        }

        model_internal::_doValidationCacheOfEmpresaAvaluos = validationFailures;
        model_internal::_doValidationLastValOfEmpresaAvaluos = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfUsuarioTransaccion : Array = null;
    model_internal var _doValidationLastValOfUsuarioTransaccion : String;

    model_internal function _doValidationForUsuarioTransaccion(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfUsuarioTransaccion != null && model_internal::_doValidationLastValOfUsuarioTransaccion == value)
           return model_internal::_doValidationCacheOfUsuarioTransaccion ;

        _model.model_internal::_usuarioTransaccionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUsuarioTransaccionAvailable && _internal_usuarioTransaccion == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "usuarioTransaccion is required"));
        }

        model_internal::_doValidationCacheOfUsuarioTransaccion = validationFailures;
        model_internal::_doValidationLastValOfUsuarioTransaccion = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfSinEstado : Array = null;
    model_internal var _doValidationLastValOfSinEstado : String;

    model_internal function _doValidationForSinEstado(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSinEstado != null && model_internal::_doValidationLastValOfSinEstado == value)
           return model_internal::_doValidationCacheOfSinEstado ;

        _model.model_internal::_sinEstadoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSinEstadoAvailable && _internal_sinEstado == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "sinEstado is required"));
        }

        model_internal::_doValidationCacheOfSinEstado = validationFailures;
        model_internal::_doValidationLastValOfSinEstado = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfAplicados : Array = null;
    model_internal var _doValidationLastValOfAplicados : String;

    model_internal function _doValidationForAplicados(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfAplicados != null && model_internal::_doValidationLastValOfAplicados == value)
           return model_internal::_doValidationCacheOfAplicados ;

        _model.model_internal::_aplicadosIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAplicadosAvailable && _internal_aplicados == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "aplicados is required"));
        }

        model_internal::_doValidationCacheOfAplicados = validationFailures;
        model_internal::_doValidationLastValOfAplicados = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTipoCargue : Array = null;
    model_internal var _doValidationLastValOfTipoCargue : String;

    model_internal function _doValidationForTipoCargue(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTipoCargue != null && model_internal::_doValidationLastValOfTipoCargue == value)
           return model_internal::_doValidationCacheOfTipoCargue ;

        _model.model_internal::_tipoCargueIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTipoCargueAvailable && _internal_tipoCargue == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "tipoCargue is required"));
        }

        model_internal::_doValidationCacheOfTipoCargue = validationFailures;
        model_internal::_doValidationLastValOfTipoCargue = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFechaTransaccion : Array = null;
    model_internal var _doValidationLastValOfFechaTransaccion : Date;

    model_internal function _doValidationForFechaTransaccion(valueIn:Object):Array
    {
        var value : Date = valueIn as Date;

        if (model_internal::_doValidationCacheOfFechaTransaccion != null && model_internal::_doValidationLastValOfFechaTransaccion == value)
           return model_internal::_doValidationCacheOfFechaTransaccion ;

        _model.model_internal::_fechaTransaccionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFechaTransaccionAvailable && _internal_fechaTransaccion == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "fechaTransaccion is required"));
        }

        model_internal::_doValidationCacheOfFechaTransaccion = validationFailures;
        model_internal::_doValidationLastValOfFechaTransaccion = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfConsecutivoBatch : Array = null;
    model_internal var _doValidationLastValOfConsecutivoBatch : String;

    model_internal function _doValidationForConsecutivoBatch(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfConsecutivoBatch != null && model_internal::_doValidationLastValOfConsecutivoBatch == value)
           return model_internal::_doValidationCacheOfConsecutivoBatch ;

        _model.model_internal::_consecutivoBatchIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isConsecutivoBatchAvailable && _internal_consecutivoBatch == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "consecutivoBatch is required"));
        }

        model_internal::_doValidationCacheOfConsecutivoBatch = validationFailures;
        model_internal::_doValidationLastValOfConsecutivoBatch = value;

        return validationFailures;
    }
    

}

}
