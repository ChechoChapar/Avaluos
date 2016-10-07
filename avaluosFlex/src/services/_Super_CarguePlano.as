/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - CarguePlano.as.
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
import valueObjects.EmpresasAvaluos;
import valueObjects.EstructuraArchivoPlano;
import valueObjects.PgbCargueTmp;
import valueObjects.ResumenCargue;
import valueObjects.VResumenCargue;

import mx.collections.ItemResponder;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

[ExcludeClass]
internal class _Super_CarguePlano extends com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper
{

    // Constructor
    public function _Super_CarguePlano()
    {
        // initialize service control
        _serviceControl = new mx.rpc.remoting.RemoteObject();

        // initialize RemoteClass alias for all entities returned by functions of this service
        valueObjects.ResumenCargue._initRemoteClassAlias();
        valueObjects.VResumenCargue._initRemoteClassAlias();
        valueObjects.PgbCargueTmp._initRemoteClassAlias();

        var operations:Object = new Object();
        var operation:mx.rpc.remoting.Operation;

        operation = new mx.rpc.remoting.Operation(null, "obtenerReferenciaCargue");
         operation.resultType = String;
        operations["obtenerReferenciaCargue"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "validaTipo");
         operation.resultType = Boolean;
        operations["validaTipo"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "buscarResumenCargue");
         operation.resultElementType = valueObjects.ResumenCargue;
        operations["buscarResumenCargue"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "validaDominio");
         operation.resultType = Boolean;
        operations["validaDominio"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "obtenerConsecutivoBatch");
         operation.resultType = String;
        operations["obtenerConsecutivoBatch"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "main");
        operations["main"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "cargarAvaluo");
        operations["cargarAvaluo"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "buscarResumenPlanoPeritoByCriterio");
         operation.resultElementType = valueObjects.VResumenCargue;
        operations["buscarResumenPlanoPeritoByCriterio"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "buscarResumenPlano");
         operation.resultElementType = valueObjects.VResumenCargue;
        operations["buscarResumenPlano"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "buscarLogCargue");
         operation.resultElementType = valueObjects.PgbCargueTmp;
        operations["buscarLogCargue"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "buscarResumenPlanoByConsecutivoBatch");
         operation.resultElementType = valueObjects.VResumenCargue;
        operations["buscarResumenPlanoByConsecutivoBatch"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "buscarResumenPlanoByCriterio");
         operation.resultElementType = valueObjects.VResumenCargue;
        operations["buscarResumenPlanoByCriterio"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "buscarLogCarguePorCriterio");
         operation.resultElementType = valueObjects.PgbCargueTmp;
        operations["buscarLogCarguePorCriterio"] = operation;

        _serviceControl.operations = operations;
        _serviceControl.convertResultHandler = com.adobe.serializers.utility.TypeUtility.convertResultHandler;
        destination = "CarguePlano";



         model_internal::initialize();
    }

    /**
      * This method is a generated wrapper used to call the 'obtenerReferenciaCargue' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function obtenerReferenciaCargue() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("obtenerReferenciaCargue");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'validaTipo' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function validaTipo(arg0:String, arg1:valueObjects.EstructuraArchivoPlano) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("validaTipo");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0,arg1) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'buscarResumenCargue' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function buscarResumenCargue() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("buscarResumenCargue");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'validaDominio' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function validaDominio(arg0:String, arg1:valueObjects.EstructuraArchivoPlano) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("validaDominio");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0,arg1) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'obtenerConsecutivoBatch' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function obtenerConsecutivoBatch() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("obtenerConsecutivoBatch");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'main' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function main(arg0:ArrayCollection) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("main");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'cargarAvaluo' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function cargarAvaluo() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("cargarAvaluo");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'buscarResumenPlanoPeritoByCriterio' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function buscarResumenPlanoPeritoByCriterio(arg0:valueObjects.VResumenCargue, arg1:valueObjects.EmpresasAvaluos) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("buscarResumenPlanoPeritoByCriterio");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0,arg1) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'buscarResumenPlano' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function buscarResumenPlano() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("buscarResumenPlano");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'buscarLogCargue' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function buscarLogCargue(arg0:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("buscarLogCargue");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'buscarResumenPlanoByConsecutivoBatch' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function buscarResumenPlanoByConsecutivoBatch(arg0:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("buscarResumenPlanoByConsecutivoBatch");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'buscarResumenPlanoByCriterio' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function buscarResumenPlanoByCriterio(arg0:valueObjects.VResumenCargue) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("buscarResumenPlanoByCriterio");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'buscarLogCarguePorCriterio' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function buscarLogCarguePorCriterio(arg0:String, arg1:valueObjects.PgbCargueTmp) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("buscarLogCarguePorCriterio");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0,arg1) ;

        return _internal_token;
    }
     
}

}
