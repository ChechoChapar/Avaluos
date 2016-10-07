/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - AvaluosService.as.
 */
package services
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper;
import com.adobe.serializers.utility.TypeUtility;
import mx.collections.ArrayCollection;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.remoting.Operation;
import mx.rpc.remoting.RemoteObject;
import valueObjects.Avaluo;
import valueObjects.CampoRequeridoDTO;
import valueObjects.EmpresasAvaluos;
import valueObjects.InformacionInmueble;
import valueObjects.StringBuffer;

import mx.collections.ItemResponder;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

[ExcludeClass]
internal class _Super_AvaluosService extends com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper
{

    // Constructor
    public function _Super_AvaluosService()
    {
        // initialize service control
        _serviceControl = new mx.rpc.remoting.RemoteObject();

        // initialize RemoteClass alias for all entities returned by functions of this service
        valueObjects.Avaluo._initRemoteClassAlias();
        valueObjects.CampoRequeridoDTO._initRemoteClassAlias();

        var operations:Object = new Object();
        var operation:mx.rpc.remoting.Operation;

        operation = new mx.rpc.remoting.Operation(null, "buscaPorId");
         operation.resultType = valueObjects.Avaluo;
        operations["buscaPorId"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "persist");
        operations["persist"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "remove");
        operations["remove"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "findAll");
         operation.resultElementType = Object;
        operations["findAll"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "merge");
        operations["merge"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "create");
         operation.resultType = String;
        operations["create"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getAvaluosPorCriterio");
         operation.resultElementType = valueObjects.Avaluo;
        operations["getAvaluosPorCriterio"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "findById");
         operation.resultType = Object;
        operations["findById"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "buscaAvaluos");
         operation.resultElementType = valueObjects.Avaluo;
        operations["buscaAvaluos"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "update");
         operation.resultType = valueObjects.Avaluo;
        operations["update"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "aprobar");
         operation.resultType = String;
        operations["aprobar"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "setMsjErrorMalla");
        operations["setMsjErrorMalla"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getMsjErrorMalla");
         operation.resultType = String;
        operations["getMsjErrorMalla"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "isAvaluoValido");
         operation.resultType = Boolean;
        operations["isAvaluoValido"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "prevalidar");
         operation.resultType = String;
        operations["prevalidar"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getUvrDia");
         operation.resultType = String;
        operations["getUvrDia"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "pasarANuevo");
         operation.resultType = valueObjects.Avaluo;
        operations["pasarANuevo"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getAvaluosPorId");
         operation.resultType = valueObjects.Avaluo;
        operations["getAvaluosPorId"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "setMensajeTransaccion");
        operations["setMensajeTransaccion"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "copiarAvaluo");
         operation.resultType = String;
        operations["copiarAvaluo"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getMensajeTransaccion");
         operation.resultType = String;
        operations["getMensajeTransaccion"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "copiarAvaluoConstructor");
         operation.resultType = String;
        operations["copiarAvaluoConstructor"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getLineasAvaluo");
         operation.resultType = valueObjects.StringBuffer;
        operations["getLineasAvaluo"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "campoRequerido");
         operation.resultType = Boolean;
        operations["campoRequerido"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getLineaAvaluo");
         operation.resultType = valueObjects.StringBuffer;
        operations["getLineaAvaluo"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "campoRequeridoBD");
         operation.resultType = Boolean;
        operations["campoRequeridoBD"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "campoRequeridoDTOList");
         operation.resultElementType = valueObjects.CampoRequeridoDTO;
        operations["campoRequeridoDTOList"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "copiarAvaluosConstructor");
         operation.resultType = String;
        operations["copiarAvaluosConstructor"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "copiarAvaluoConstructorBoolean");
         operation.resultType = String;
        operations["copiarAvaluoConstructorBoolean"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "existeConsecutivo");
         operation.resultType = Boolean;
        operations["existeConsecutivo"] = operation;

        _serviceControl.operations = operations;
        _serviceControl.convertResultHandler = com.adobe.serializers.utility.TypeUtility.convertResultHandler;
        destination = "AvaluosService";



         model_internal::initialize();
    }

    /**
      * This method is a generated wrapper used to call the 'buscaPorId' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function buscaPorId(arg0:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("buscaPorId");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'persist' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function persist(arg0:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("persist");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'remove' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function remove(arg0:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("remove");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'findAll' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function findAll() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("findAll");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'merge' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function merge(arg0:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("merge");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'create' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function create(arg0:valueObjects.Avaluo) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("create");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getAvaluosPorCriterio' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getAvaluosPorCriterio(arg0:valueObjects.InformacionInmueble, arg1:valueObjects.EmpresasAvaluos) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAvaluosPorCriterio");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0,arg1) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'findById' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function findById(arg0:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("findById");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'buscaAvaluos' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function buscaAvaluos() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("buscaAvaluos");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'update' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function update(arg0:valueObjects.Avaluo) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("update");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'aprobar' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function aprobar(arg0:valueObjects.Avaluo) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("aprobar");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'setMsjErrorMalla' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function setMsjErrorMalla(arg0:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("setMsjErrorMalla");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getMsjErrorMalla' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getMsjErrorMalla() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getMsjErrorMalla");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'isAvaluoValido' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function isAvaluoValido(arg0:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("isAvaluoValido");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'prevalidar' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function prevalidar(arg0:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("prevalidar");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getUvrDia' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getUvrDia(arg0:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getUvrDia");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'pasarANuevo' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function pasarANuevo(arg0:valueObjects.Avaluo) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("pasarANuevo");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getAvaluosPorId' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getAvaluosPorId(arg0:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAvaluosPorId");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'setMensajeTransaccion' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function setMensajeTransaccion(arg0:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("setMensajeTransaccion");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'copiarAvaluo' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function copiarAvaluo(arg0:valueObjects.Avaluo) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("copiarAvaluo");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getMensajeTransaccion' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getMensajeTransaccion() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getMensajeTransaccion");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'copiarAvaluoConstructor' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function copiarAvaluoConstructor(arg0:valueObjects.Avaluo) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("copiarAvaluoConstructor");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getLineasAvaluo' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getLineasAvaluo(arg0:ArrayCollection, arg1:Boolean) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getLineasAvaluo");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0,arg1) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'campoRequerido' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function campoRequerido(arg0:String, arg1:String, arg2:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("campoRequerido");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0,arg1,arg2) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getLineaAvaluo' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getLineaAvaluo(arg0:valueObjects.Avaluo, arg1:Boolean) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getLineaAvaluo");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0,arg1) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'campoRequeridoBD' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function campoRequeridoBD(arg0:String, arg1:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("campoRequeridoBD");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0,arg1) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'campoRequeridoDTOList' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function campoRequeridoDTOList(arg0:ArrayCollection) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("campoRequeridoDTOList");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'copiarAvaluosConstructor' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function copiarAvaluosConstructor(arg0:ArrayCollection) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("copiarAvaluosConstructor");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'copiarAvaluoConstructorBoolean' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function copiarAvaluoConstructorBoolean(arg0:valueObjects.Avaluo, arg1:Boolean) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("copiarAvaluoConstructorBoolean");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0,arg1) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'existeConsecutivo' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function existeConsecutivo(arg0:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("existeConsecutivo");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
}

}
