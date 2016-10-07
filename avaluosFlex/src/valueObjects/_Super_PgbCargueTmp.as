/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - PgbCargueTmp.as.
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
public class _Super_PgbCargueTmp extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.entities.PgbCargueTmp") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.PgbCargueTmp", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.PgbCargueTmp", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _PgbCargueTmpEntityMetadata;

    /**
     * properties
     */
    private var _internal_nombreArchivo : String;
    private var _internal_lineaPlano : String;
    private var _internal_numeroRefCargue : String;
    private var _internal_estadoCargue : String;
    private var _internal_usuarioTransaccion : String;
    private var _internal_consecutivoTmp : Number;
    private var _internal_contenidoLineaPlano : String;
    private var _internal_tipoCargue : String;
    private var _internal_fechaTransaccion : Date;
    private var _internal_mensajeError : String;
    private var _internal_consecutivoBatch : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_PgbCargueTmp()
    {
        _model = new _PgbCargueTmpEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "nombreArchivo", model_internal::setterListenerNombreArchivo));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "lineaPlano", model_internal::setterListenerLineaPlano));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "numeroRefCargue", model_internal::setterListenerNumeroRefCargue));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "estadoCargue", model_internal::setterListenerEstadoCargue));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "usuarioTransaccion", model_internal::setterListenerUsuarioTransaccion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "contenidoLineaPlano", model_internal::setterListenerContenidoLineaPlano));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "tipoCargue", model_internal::setterListenerTipoCargue));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fechaTransaccion", model_internal::setterListenerFechaTransaccion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "mensajeError", model_internal::setterListenerMensajeError));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "consecutivoBatch", model_internal::setterListenerConsecutivoBatch));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get nombreArchivo() : String
    {
        return _internal_nombreArchivo;
    }

    [Bindable(event="propertyChange")]
    public function get lineaPlano() : String
    {
        return _internal_lineaPlano;
    }

    [Bindable(event="propertyChange")]
    public function get numeroRefCargue() : String
    {
        return _internal_numeroRefCargue;
    }

    [Bindable(event="propertyChange")]
    public function get estadoCargue() : String
    {
        return _internal_estadoCargue;
    }

    [Bindable(event="propertyChange")]
    public function get usuarioTransaccion() : String
    {
        return _internal_usuarioTransaccion;
    }

    [Bindable(event="propertyChange")]
    public function get consecutivoTmp() : Number
    {
        return _internal_consecutivoTmp;
    }

    [Bindable(event="propertyChange")]
    public function get contenidoLineaPlano() : String
    {
        return _internal_contenidoLineaPlano;
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
    public function get mensajeError() : String
    {
        return _internal_mensajeError;
    }

    [Bindable(event="propertyChange")]
    public function get consecutivoBatch() : String
    {
        return _internal_consecutivoBatch;
    }

    /**
     * data property setters
     */

    public function set nombreArchivo(value:String) : void
    {
        var oldValue:String = _internal_nombreArchivo;
        if (oldValue !== value)
        {
            _internal_nombreArchivo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreArchivo", oldValue, _internal_nombreArchivo));
        }
    }

    public function set lineaPlano(value:String) : void
    {
        var oldValue:String = _internal_lineaPlano;
        if (oldValue !== value)
        {
            _internal_lineaPlano = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lineaPlano", oldValue, _internal_lineaPlano));
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

    public function set estadoCargue(value:String) : void
    {
        var oldValue:String = _internal_estadoCargue;
        if (oldValue !== value)
        {
            _internal_estadoCargue = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "estadoCargue", oldValue, _internal_estadoCargue));
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

    public function set consecutivoTmp(value:Number) : void
    {
        var oldValue:Number = _internal_consecutivoTmp;
        if (oldValue !== value)
        {
            _internal_consecutivoTmp = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "consecutivoTmp", oldValue, _internal_consecutivoTmp));
        }
    }

    public function set contenidoLineaPlano(value:String) : void
    {
        var oldValue:String = _internal_contenidoLineaPlano;
        if (oldValue !== value)
        {
            _internal_contenidoLineaPlano = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "contenidoLineaPlano", oldValue, _internal_contenidoLineaPlano));
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

    public function set mensajeError(value:String) : void
    {
        var oldValue:String = _internal_mensajeError;
        if (oldValue !== value)
        {
            _internal_mensajeError = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "mensajeError", oldValue, _internal_mensajeError));
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

    model_internal function setterListenerNombreArchivo(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNombreArchivo();
    }

    model_internal function setterListenerLineaPlano(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLineaPlano();
    }

    model_internal function setterListenerNumeroRefCargue(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNumeroRefCargue();
    }

    model_internal function setterListenerEstadoCargue(value:flash.events.Event):void
    {
        _model.invalidateDependentOnEstadoCargue();
    }

    model_internal function setterListenerUsuarioTransaccion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUsuarioTransaccion();
    }

    model_internal function setterListenerContenidoLineaPlano(value:flash.events.Event):void
    {
        _model.invalidateDependentOnContenidoLineaPlano();
    }

    model_internal function setterListenerTipoCargue(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTipoCargue();
    }

    model_internal function setterListenerFechaTransaccion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFechaTransaccion();
    }

    model_internal function setterListenerMensajeError(value:flash.events.Event):void
    {
        _model.invalidateDependentOnMensajeError();
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
        if (!_model.nombreArchivoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nombreArchivoValidationFailureMessages);
        }
        if (!_model.lineaPlanoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_lineaPlanoValidationFailureMessages);
        }
        if (!_model.numeroRefCargueIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_numeroRefCargueValidationFailureMessages);
        }
        if (!_model.estadoCargueIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_estadoCargueValidationFailureMessages);
        }
        if (!_model.usuarioTransaccionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_usuarioTransaccionValidationFailureMessages);
        }
        if (!_model.contenidoLineaPlanoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_contenidoLineaPlanoValidationFailureMessages);
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
        if (!_model.mensajeErrorIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_mensajeErrorValidationFailureMessages);
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
    public function get _model() : _PgbCargueTmpEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _PgbCargueTmpEntityMetadata) : void
    {
        var oldValue : _PgbCargueTmpEntityMetadata = model_internal::_dminternal_model;
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
    
    model_internal var _doValidationCacheOfLineaPlano : Array = null;
    model_internal var _doValidationLastValOfLineaPlano : String;

    model_internal function _doValidationForLineaPlano(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLineaPlano != null && model_internal::_doValidationLastValOfLineaPlano == value)
           return model_internal::_doValidationCacheOfLineaPlano ;

        _model.model_internal::_lineaPlanoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLineaPlanoAvailable && _internal_lineaPlano == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "lineaPlano is required"));
        }

        model_internal::_doValidationCacheOfLineaPlano = validationFailures;
        model_internal::_doValidationLastValOfLineaPlano = value;

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
    
    model_internal var _doValidationCacheOfEstadoCargue : Array = null;
    model_internal var _doValidationLastValOfEstadoCargue : String;

    model_internal function _doValidationForEstadoCargue(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfEstadoCargue != null && model_internal::_doValidationLastValOfEstadoCargue == value)
           return model_internal::_doValidationCacheOfEstadoCargue ;

        _model.model_internal::_estadoCargueIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isEstadoCargueAvailable && _internal_estadoCargue == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "estadoCargue is required"));
        }

        model_internal::_doValidationCacheOfEstadoCargue = validationFailures;
        model_internal::_doValidationLastValOfEstadoCargue = value;

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
    
    model_internal var _doValidationCacheOfContenidoLineaPlano : Array = null;
    model_internal var _doValidationLastValOfContenidoLineaPlano : String;

    model_internal function _doValidationForContenidoLineaPlano(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfContenidoLineaPlano != null && model_internal::_doValidationLastValOfContenidoLineaPlano == value)
           return model_internal::_doValidationCacheOfContenidoLineaPlano ;

        _model.model_internal::_contenidoLineaPlanoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isContenidoLineaPlanoAvailable && _internal_contenidoLineaPlano == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "contenidoLineaPlano is required"));
        }

        model_internal::_doValidationCacheOfContenidoLineaPlano = validationFailures;
        model_internal::_doValidationLastValOfContenidoLineaPlano = value;

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
    
    model_internal var _doValidationCacheOfMensajeError : Array = null;
    model_internal var _doValidationLastValOfMensajeError : String;

    model_internal function _doValidationForMensajeError(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfMensajeError != null && model_internal::_doValidationLastValOfMensajeError == value)
           return model_internal::_doValidationCacheOfMensajeError ;

        _model.model_internal::_mensajeErrorIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isMensajeErrorAvailable && _internal_mensajeError == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "mensajeError is required"));
        }

        model_internal::_doValidationCacheOfMensajeError = validationFailures;
        model_internal::_doValidationLastValOfMensajeError = value;

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
