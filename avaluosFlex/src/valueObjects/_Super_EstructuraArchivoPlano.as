/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - EstructuraArchivoPlano.as.
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
public class _Super_EstructuraArchivoPlano extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("com.segurosbolivar.avaluos.entities.EstructuraArchivoPlano") == null)
            {
                flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.EstructuraArchivoPlano", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("com.segurosbolivar.avaluos.entities.EstructuraArchivoPlano", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _EstructuraArchivoPlanoEntityMetadata;

    /**
     * properties
     */
    private var _internal_longitudVisualCampo : String;
    private var _internal_columnaBd : String;
    private var _internal_obligatoriedadLote : String;
    private var _internal_funcionConversion : String;
    private var _internal_esAsobancaria : String;
    private var _internal_formato : String;
    private var _internal_obligatoriedadCasa : String;
    private var _internal_dominio : String;
    private var _internal_obligatoriedadCasarural : String;
    private var _internal_obligatoriedadOficina : String;
    private var _internal_obligatoriedadLocal : String;
    private var _internal_consecutivoPlano : String;
    private var _internal_obligatoriedadApartamento : String;
    private var _internal_tipoDato : String;
    private var _internal_esId : String;
    private var _internal_obligatoriedadBodega : String;
    private var _internal_tablaBd : String;
    private var _internal_obligatoriedadLoteurbano : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_EstructuraArchivoPlano()
    {
        _model = new _EstructuraArchivoPlanoEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "longitudVisualCampo", model_internal::setterListenerLongitudVisualCampo));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "columnaBd", model_internal::setterListenerColumnaBd));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "obligatoriedadLote", model_internal::setterListenerObligatoriedadLote));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "funcionConversion", model_internal::setterListenerFuncionConversion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "esAsobancaria", model_internal::setterListenerEsAsobancaria));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "formato", model_internal::setterListenerFormato));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "obligatoriedadCasa", model_internal::setterListenerObligatoriedadCasa));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "dominio", model_internal::setterListenerDominio));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "obligatoriedadCasarural", model_internal::setterListenerObligatoriedadCasarural));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "obligatoriedadOficina", model_internal::setterListenerObligatoriedadOficina));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "obligatoriedadLocal", model_internal::setterListenerObligatoriedadLocal));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "consecutivoPlano", model_internal::setterListenerConsecutivoPlano));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "obligatoriedadApartamento", model_internal::setterListenerObligatoriedadApartamento));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "tipoDato", model_internal::setterListenerTipoDato));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "esId", model_internal::setterListenerEsId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "obligatoriedadBodega", model_internal::setterListenerObligatoriedadBodega));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "tablaBd", model_internal::setterListenerTablaBd));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "obligatoriedadLoteurbano", model_internal::setterListenerObligatoriedadLoteurbano));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get longitudVisualCampo() : String
    {
        return _internal_longitudVisualCampo;
    }

    [Bindable(event="propertyChange")]
    public function get columnaBd() : String
    {
        return _internal_columnaBd;
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadLote() : String
    {
        return _internal_obligatoriedadLote;
    }

    [Bindable(event="propertyChange")]
    public function get funcionConversion() : String
    {
        return _internal_funcionConversion;
    }

    [Bindable(event="propertyChange")]
    public function get esAsobancaria() : String
    {
        return _internal_esAsobancaria;
    }

    [Bindable(event="propertyChange")]
    public function get formato() : String
    {
        return _internal_formato;
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadCasa() : String
    {
        return _internal_obligatoriedadCasa;
    }

    [Bindable(event="propertyChange")]
    public function get dominio() : String
    {
        return _internal_dominio;
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadCasarural() : String
    {
        return _internal_obligatoriedadCasarural;
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadOficina() : String
    {
        return _internal_obligatoriedadOficina;
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadLocal() : String
    {
        return _internal_obligatoriedadLocal;
    }

    [Bindable(event="propertyChange")]
    public function get consecutivoPlano() : String
    {
        return _internal_consecutivoPlano;
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadApartamento() : String
    {
        return _internal_obligatoriedadApartamento;
    }

    [Bindable(event="propertyChange")]
    public function get tipoDato() : String
    {
        return _internal_tipoDato;
    }

    [Bindable(event="propertyChange")]
    public function get esId() : String
    {
        return _internal_esId;
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadBodega() : String
    {
        return _internal_obligatoriedadBodega;
    }

    [Bindable(event="propertyChange")]
    public function get tablaBd() : String
    {
        return _internal_tablaBd;
    }

    [Bindable(event="propertyChange")]
    public function get obligatoriedadLoteurbano() : String
    {
        return _internal_obligatoriedadLoteurbano;
    }

    /**
     * data property setters
     */

    public function set longitudVisualCampo(value:String) : void
    {
        var oldValue:String = _internal_longitudVisualCampo;
        if (oldValue !== value)
        {
            _internal_longitudVisualCampo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "longitudVisualCampo", oldValue, _internal_longitudVisualCampo));
        }
    }

    public function set columnaBd(value:String) : void
    {
        var oldValue:String = _internal_columnaBd;
        if (oldValue !== value)
        {
            _internal_columnaBd = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "columnaBd", oldValue, _internal_columnaBd));
        }
    }

    public function set obligatoriedadLote(value:String) : void
    {
        var oldValue:String = _internal_obligatoriedadLote;
        if (oldValue !== value)
        {
            _internal_obligatoriedadLote = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadLote", oldValue, _internal_obligatoriedadLote));
        }
    }

    public function set funcionConversion(value:String) : void
    {
        var oldValue:String = _internal_funcionConversion;
        if (oldValue !== value)
        {
            _internal_funcionConversion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "funcionConversion", oldValue, _internal_funcionConversion));
        }
    }

    public function set esAsobancaria(value:String) : void
    {
        var oldValue:String = _internal_esAsobancaria;
        if (oldValue !== value)
        {
            _internal_esAsobancaria = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "esAsobancaria", oldValue, _internal_esAsobancaria));
        }
    }

    public function set formato(value:String) : void
    {
        var oldValue:String = _internal_formato;
        if (oldValue !== value)
        {
            _internal_formato = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "formato", oldValue, _internal_formato));
        }
    }

    public function set obligatoriedadCasa(value:String) : void
    {
        var oldValue:String = _internal_obligatoriedadCasa;
        if (oldValue !== value)
        {
            _internal_obligatoriedadCasa = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadCasa", oldValue, _internal_obligatoriedadCasa));
        }
    }

    public function set dominio(value:String) : void
    {
        var oldValue:String = _internal_dominio;
        if (oldValue !== value)
        {
            _internal_dominio = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dominio", oldValue, _internal_dominio));
        }
    }

    public function set obligatoriedadCasarural(value:String) : void
    {
        var oldValue:String = _internal_obligatoriedadCasarural;
        if (oldValue !== value)
        {
            _internal_obligatoriedadCasarural = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadCasarural", oldValue, _internal_obligatoriedadCasarural));
        }
    }

    public function set obligatoriedadOficina(value:String) : void
    {
        var oldValue:String = _internal_obligatoriedadOficina;
        if (oldValue !== value)
        {
            _internal_obligatoriedadOficina = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadOficina", oldValue, _internal_obligatoriedadOficina));
        }
    }

    public function set obligatoriedadLocal(value:String) : void
    {
        var oldValue:String = _internal_obligatoriedadLocal;
        if (oldValue !== value)
        {
            _internal_obligatoriedadLocal = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadLocal", oldValue, _internal_obligatoriedadLocal));
        }
    }

    public function set consecutivoPlano(value:String) : void
    {
        var oldValue:String = _internal_consecutivoPlano;
        if (oldValue !== value)
        {
            _internal_consecutivoPlano = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "consecutivoPlano", oldValue, _internal_consecutivoPlano));
        }
    }

    public function set obligatoriedadApartamento(value:String) : void
    {
        var oldValue:String = _internal_obligatoriedadApartamento;
        if (oldValue !== value)
        {
            _internal_obligatoriedadApartamento = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadApartamento", oldValue, _internal_obligatoriedadApartamento));
        }
    }

    public function set tipoDato(value:String) : void
    {
        var oldValue:String = _internal_tipoDato;
        if (oldValue !== value)
        {
            _internal_tipoDato = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoDato", oldValue, _internal_tipoDato));
        }
    }

    public function set esId(value:String) : void
    {
        var oldValue:String = _internal_esId;
        if (oldValue !== value)
        {
            _internal_esId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "esId", oldValue, _internal_esId));
        }
    }

    public function set obligatoriedadBodega(value:String) : void
    {
        var oldValue:String = _internal_obligatoriedadBodega;
        if (oldValue !== value)
        {
            _internal_obligatoriedadBodega = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadBodega", oldValue, _internal_obligatoriedadBodega));
        }
    }

    public function set tablaBd(value:String) : void
    {
        var oldValue:String = _internal_tablaBd;
        if (oldValue !== value)
        {
            _internal_tablaBd = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tablaBd", oldValue, _internal_tablaBd));
        }
    }

    public function set obligatoriedadLoteurbano(value:String) : void
    {
        var oldValue:String = _internal_obligatoriedadLoteurbano;
        if (oldValue !== value)
        {
            _internal_obligatoriedadLoteurbano = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "obligatoriedadLoteurbano", oldValue, _internal_obligatoriedadLoteurbano));
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

    model_internal function setterListenerLongitudVisualCampo(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLongitudVisualCampo();
    }

    model_internal function setterListenerColumnaBd(value:flash.events.Event):void
    {
        _model.invalidateDependentOnColumnaBd();
    }

    model_internal function setterListenerObligatoriedadLote(value:flash.events.Event):void
    {
        _model.invalidateDependentOnObligatoriedadLote();
    }

    model_internal function setterListenerFuncionConversion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFuncionConversion();
    }

    model_internal function setterListenerEsAsobancaria(value:flash.events.Event):void
    {
        _model.invalidateDependentOnEsAsobancaria();
    }

    model_internal function setterListenerFormato(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFormato();
    }

    model_internal function setterListenerObligatoriedadCasa(value:flash.events.Event):void
    {
        _model.invalidateDependentOnObligatoriedadCasa();
    }

    model_internal function setterListenerDominio(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDominio();
    }

    model_internal function setterListenerObligatoriedadCasarural(value:flash.events.Event):void
    {
        _model.invalidateDependentOnObligatoriedadCasarural();
    }

    model_internal function setterListenerObligatoriedadOficina(value:flash.events.Event):void
    {
        _model.invalidateDependentOnObligatoriedadOficina();
    }

    model_internal function setterListenerObligatoriedadLocal(value:flash.events.Event):void
    {
        _model.invalidateDependentOnObligatoriedadLocal();
    }

    model_internal function setterListenerConsecutivoPlano(value:flash.events.Event):void
    {
        _model.invalidateDependentOnConsecutivoPlano();
    }

    model_internal function setterListenerObligatoriedadApartamento(value:flash.events.Event):void
    {
        _model.invalidateDependentOnObligatoriedadApartamento();
    }

    model_internal function setterListenerTipoDato(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTipoDato();
    }

    model_internal function setterListenerEsId(value:flash.events.Event):void
    {
        _model.invalidateDependentOnEsId();
    }

    model_internal function setterListenerObligatoriedadBodega(value:flash.events.Event):void
    {
        _model.invalidateDependentOnObligatoriedadBodega();
    }

    model_internal function setterListenerTablaBd(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTablaBd();
    }

    model_internal function setterListenerObligatoriedadLoteurbano(value:flash.events.Event):void
    {
        _model.invalidateDependentOnObligatoriedadLoteurbano();
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
        if (!_model.longitudVisualCampoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_longitudVisualCampoValidationFailureMessages);
        }
        if (!_model.columnaBdIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_columnaBdValidationFailureMessages);
        }
        if (!_model.obligatoriedadLoteIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_obligatoriedadLoteValidationFailureMessages);
        }
        if (!_model.funcionConversionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_funcionConversionValidationFailureMessages);
        }
        if (!_model.esAsobancariaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_esAsobancariaValidationFailureMessages);
        }
        if (!_model.formatoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_formatoValidationFailureMessages);
        }
        if (!_model.obligatoriedadCasaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_obligatoriedadCasaValidationFailureMessages);
        }
        if (!_model.dominioIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_dominioValidationFailureMessages);
        }
        if (!_model.obligatoriedadCasaruralIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_obligatoriedadCasaruralValidationFailureMessages);
        }
        if (!_model.obligatoriedadOficinaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_obligatoriedadOficinaValidationFailureMessages);
        }
        if (!_model.obligatoriedadLocalIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_obligatoriedadLocalValidationFailureMessages);
        }
        if (!_model.consecutivoPlanoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_consecutivoPlanoValidationFailureMessages);
        }
        if (!_model.obligatoriedadApartamentoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_obligatoriedadApartamentoValidationFailureMessages);
        }
        if (!_model.tipoDatoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_tipoDatoValidationFailureMessages);
        }
        if (!_model.esIdIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_esIdValidationFailureMessages);
        }
        if (!_model.obligatoriedadBodegaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_obligatoriedadBodegaValidationFailureMessages);
        }
        if (!_model.tablaBdIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_tablaBdValidationFailureMessages);
        }
        if (!_model.obligatoriedadLoteurbanoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_obligatoriedadLoteurbanoValidationFailureMessages);
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
    public function get _model() : _EstructuraArchivoPlanoEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _EstructuraArchivoPlanoEntityMetadata) : void
    {
        var oldValue : _EstructuraArchivoPlanoEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfLongitudVisualCampo : Array = null;
    model_internal var _doValidationLastValOfLongitudVisualCampo : String;

    model_internal function _doValidationForLongitudVisualCampo(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLongitudVisualCampo != null && model_internal::_doValidationLastValOfLongitudVisualCampo == value)
           return model_internal::_doValidationCacheOfLongitudVisualCampo ;

        _model.model_internal::_longitudVisualCampoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLongitudVisualCampoAvailable && _internal_longitudVisualCampo == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "longitudVisualCampo is required"));
        }

        model_internal::_doValidationCacheOfLongitudVisualCampo = validationFailures;
        model_internal::_doValidationLastValOfLongitudVisualCampo = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfColumnaBd : Array = null;
    model_internal var _doValidationLastValOfColumnaBd : String;

    model_internal function _doValidationForColumnaBd(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfColumnaBd != null && model_internal::_doValidationLastValOfColumnaBd == value)
           return model_internal::_doValidationCacheOfColumnaBd ;

        _model.model_internal::_columnaBdIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isColumnaBdAvailable && _internal_columnaBd == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "columnaBd is required"));
        }

        model_internal::_doValidationCacheOfColumnaBd = validationFailures;
        model_internal::_doValidationLastValOfColumnaBd = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfObligatoriedadLote : Array = null;
    model_internal var _doValidationLastValOfObligatoriedadLote : String;

    model_internal function _doValidationForObligatoriedadLote(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfObligatoriedadLote != null && model_internal::_doValidationLastValOfObligatoriedadLote == value)
           return model_internal::_doValidationCacheOfObligatoriedadLote ;

        _model.model_internal::_obligatoriedadLoteIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isObligatoriedadLoteAvailable && _internal_obligatoriedadLote == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "obligatoriedadLote is required"));
        }

        model_internal::_doValidationCacheOfObligatoriedadLote = validationFailures;
        model_internal::_doValidationLastValOfObligatoriedadLote = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFuncionConversion : Array = null;
    model_internal var _doValidationLastValOfFuncionConversion : String;

    model_internal function _doValidationForFuncionConversion(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfFuncionConversion != null && model_internal::_doValidationLastValOfFuncionConversion == value)
           return model_internal::_doValidationCacheOfFuncionConversion ;

        _model.model_internal::_funcionConversionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFuncionConversionAvailable && _internal_funcionConversion == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "funcionConversion is required"));
        }

        model_internal::_doValidationCacheOfFuncionConversion = validationFailures;
        model_internal::_doValidationLastValOfFuncionConversion = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfEsAsobancaria : Array = null;
    model_internal var _doValidationLastValOfEsAsobancaria : String;

    model_internal function _doValidationForEsAsobancaria(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfEsAsobancaria != null && model_internal::_doValidationLastValOfEsAsobancaria == value)
           return model_internal::_doValidationCacheOfEsAsobancaria ;

        _model.model_internal::_esAsobancariaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isEsAsobancariaAvailable && _internal_esAsobancaria == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "esAsobancaria is required"));
        }

        model_internal::_doValidationCacheOfEsAsobancaria = validationFailures;
        model_internal::_doValidationLastValOfEsAsobancaria = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFormato : Array = null;
    model_internal var _doValidationLastValOfFormato : String;

    model_internal function _doValidationForFormato(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfFormato != null && model_internal::_doValidationLastValOfFormato == value)
           return model_internal::_doValidationCacheOfFormato ;

        _model.model_internal::_formatoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFormatoAvailable && _internal_formato == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "formato is required"));
        }

        model_internal::_doValidationCacheOfFormato = validationFailures;
        model_internal::_doValidationLastValOfFormato = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfObligatoriedadCasa : Array = null;
    model_internal var _doValidationLastValOfObligatoriedadCasa : String;

    model_internal function _doValidationForObligatoriedadCasa(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfObligatoriedadCasa != null && model_internal::_doValidationLastValOfObligatoriedadCasa == value)
           return model_internal::_doValidationCacheOfObligatoriedadCasa ;

        _model.model_internal::_obligatoriedadCasaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isObligatoriedadCasaAvailable && _internal_obligatoriedadCasa == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "obligatoriedadCasa is required"));
        }

        model_internal::_doValidationCacheOfObligatoriedadCasa = validationFailures;
        model_internal::_doValidationLastValOfObligatoriedadCasa = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDominio : Array = null;
    model_internal var _doValidationLastValOfDominio : String;

    model_internal function _doValidationForDominio(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDominio != null && model_internal::_doValidationLastValOfDominio == value)
           return model_internal::_doValidationCacheOfDominio ;

        _model.model_internal::_dominioIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDominioAvailable && _internal_dominio == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "dominio is required"));
        }

        model_internal::_doValidationCacheOfDominio = validationFailures;
        model_internal::_doValidationLastValOfDominio = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfObligatoriedadCasarural : Array = null;
    model_internal var _doValidationLastValOfObligatoriedadCasarural : String;

    model_internal function _doValidationForObligatoriedadCasarural(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfObligatoriedadCasarural != null && model_internal::_doValidationLastValOfObligatoriedadCasarural == value)
           return model_internal::_doValidationCacheOfObligatoriedadCasarural ;

        _model.model_internal::_obligatoriedadCasaruralIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isObligatoriedadCasaruralAvailable && _internal_obligatoriedadCasarural == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "obligatoriedadCasarural is required"));
        }

        model_internal::_doValidationCacheOfObligatoriedadCasarural = validationFailures;
        model_internal::_doValidationLastValOfObligatoriedadCasarural = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfObligatoriedadOficina : Array = null;
    model_internal var _doValidationLastValOfObligatoriedadOficina : String;

    model_internal function _doValidationForObligatoriedadOficina(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfObligatoriedadOficina != null && model_internal::_doValidationLastValOfObligatoriedadOficina == value)
           return model_internal::_doValidationCacheOfObligatoriedadOficina ;

        _model.model_internal::_obligatoriedadOficinaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isObligatoriedadOficinaAvailable && _internal_obligatoriedadOficina == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "obligatoriedadOficina is required"));
        }

        model_internal::_doValidationCacheOfObligatoriedadOficina = validationFailures;
        model_internal::_doValidationLastValOfObligatoriedadOficina = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfObligatoriedadLocal : Array = null;
    model_internal var _doValidationLastValOfObligatoriedadLocal : String;

    model_internal function _doValidationForObligatoriedadLocal(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfObligatoriedadLocal != null && model_internal::_doValidationLastValOfObligatoriedadLocal == value)
           return model_internal::_doValidationCacheOfObligatoriedadLocal ;

        _model.model_internal::_obligatoriedadLocalIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isObligatoriedadLocalAvailable && _internal_obligatoriedadLocal == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "obligatoriedadLocal is required"));
        }

        model_internal::_doValidationCacheOfObligatoriedadLocal = validationFailures;
        model_internal::_doValidationLastValOfObligatoriedadLocal = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfConsecutivoPlano : Array = null;
    model_internal var _doValidationLastValOfConsecutivoPlano : String;

    model_internal function _doValidationForConsecutivoPlano(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfConsecutivoPlano != null && model_internal::_doValidationLastValOfConsecutivoPlano == value)
           return model_internal::_doValidationCacheOfConsecutivoPlano ;

        _model.model_internal::_consecutivoPlanoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isConsecutivoPlanoAvailable && _internal_consecutivoPlano == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "consecutivoPlano is required"));
        }

        model_internal::_doValidationCacheOfConsecutivoPlano = validationFailures;
        model_internal::_doValidationLastValOfConsecutivoPlano = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfObligatoriedadApartamento : Array = null;
    model_internal var _doValidationLastValOfObligatoriedadApartamento : String;

    model_internal function _doValidationForObligatoriedadApartamento(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfObligatoriedadApartamento != null && model_internal::_doValidationLastValOfObligatoriedadApartamento == value)
           return model_internal::_doValidationCacheOfObligatoriedadApartamento ;

        _model.model_internal::_obligatoriedadApartamentoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isObligatoriedadApartamentoAvailable && _internal_obligatoriedadApartamento == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "obligatoriedadApartamento is required"));
        }

        model_internal::_doValidationCacheOfObligatoriedadApartamento = validationFailures;
        model_internal::_doValidationLastValOfObligatoriedadApartamento = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTipoDato : Array = null;
    model_internal var _doValidationLastValOfTipoDato : String;

    model_internal function _doValidationForTipoDato(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTipoDato != null && model_internal::_doValidationLastValOfTipoDato == value)
           return model_internal::_doValidationCacheOfTipoDato ;

        _model.model_internal::_tipoDatoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTipoDatoAvailable && _internal_tipoDato == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "tipoDato is required"));
        }

        model_internal::_doValidationCacheOfTipoDato = validationFailures;
        model_internal::_doValidationLastValOfTipoDato = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfEsId : Array = null;
    model_internal var _doValidationLastValOfEsId : String;

    model_internal function _doValidationForEsId(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfEsId != null && model_internal::_doValidationLastValOfEsId == value)
           return model_internal::_doValidationCacheOfEsId ;

        _model.model_internal::_esIdIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isEsIdAvailable && _internal_esId == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "esId is required"));
        }

        model_internal::_doValidationCacheOfEsId = validationFailures;
        model_internal::_doValidationLastValOfEsId = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfObligatoriedadBodega : Array = null;
    model_internal var _doValidationLastValOfObligatoriedadBodega : String;

    model_internal function _doValidationForObligatoriedadBodega(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfObligatoriedadBodega != null && model_internal::_doValidationLastValOfObligatoriedadBodega == value)
           return model_internal::_doValidationCacheOfObligatoriedadBodega ;

        _model.model_internal::_obligatoriedadBodegaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isObligatoriedadBodegaAvailable && _internal_obligatoriedadBodega == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "obligatoriedadBodega is required"));
        }

        model_internal::_doValidationCacheOfObligatoriedadBodega = validationFailures;
        model_internal::_doValidationLastValOfObligatoriedadBodega = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTablaBd : Array = null;
    model_internal var _doValidationLastValOfTablaBd : String;

    model_internal function _doValidationForTablaBd(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTablaBd != null && model_internal::_doValidationLastValOfTablaBd == value)
           return model_internal::_doValidationCacheOfTablaBd ;

        _model.model_internal::_tablaBdIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTablaBdAvailable && _internal_tablaBd == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "tablaBd is required"));
        }

        model_internal::_doValidationCacheOfTablaBd = validationFailures;
        model_internal::_doValidationLastValOfTablaBd = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfObligatoriedadLoteurbano : Array = null;
    model_internal var _doValidationLastValOfObligatoriedadLoteurbano : String;

    model_internal function _doValidationForObligatoriedadLoteurbano(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfObligatoriedadLoteurbano != null && model_internal::_doValidationLastValOfObligatoriedadLoteurbano == value)
           return model_internal::_doValidationCacheOfObligatoriedadLoteurbano ;

        _model.model_internal::_obligatoriedadLoteurbanoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isObligatoriedadLoteurbanoAvailable && _internal_obligatoriedadLoteurbano == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "obligatoriedadLoteurbano is required"));
        }

        model_internal::_doValidationCacheOfObligatoriedadLoteurbano = validationFailures;
        model_internal::_doValidationLastValOfObligatoriedadLoteurbano = value;

        return validationFailures;
    }
    

}

}
