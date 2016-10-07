/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - DominiosService.as.
 */
package services
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper;
import com.adobe.serializers.utility.TypeUtility;
import mx.collections.ArrayCollection;
import mx.data.ItemReference;
import mx.data.ManagedAssociation;
import mx.data.ManagedOperation;
import mx.data.ManagedQuery;
import mx.data.RPCDataManager;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.remoting.Operation;
import mx.rpc.remoting.RemoteObject;
import valueObjects.Dominios;

import mx.collections.ItemResponder;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

[ExcludeClass]
internal class _Super_DominiosService extends com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper
{      
    private var _dominiosRPCDataManager : mx.data.RPCDataManager;
    private var managersArray : Array = new Array();
        
    public const DATA_MANAGER_DOMINIOS : String = "Dominios";         
        
    public function getDataManager(dataManagerName:String) : mx.data.RPCDataManager
    {
        switch (dataManagerName)
        {
             case (DATA_MANAGER_DOMINIOS):
                return _dominiosRPCDataManager;      
            default:
                return null;
        }
    }
    
    /**
     * Commit all of the pending changes for this DataService, as well as all of the pending changes of all DataServices
     * sharing the same DataStore.  By default, a DataService shares the same DataStore with other DataServices if they have 
     * managed association properties and share the same set of channels. 
     *
     * @see mx.data.DataManager
     * @see mx.data.DataStore
     *
     * @param itemsOrCollections:Array This is an optional parameter which defaults to null when
     *  you want to commit all pending changes.  If you want to commit a subset of the pending
     *  changes use this argument to specify a list of managed ListCollectionView instances
     *  and/or managed items.  ListCollectionView objects are most typically ArrayCollections
     *  you have provided to your fill method.  The items appropriate for this method are
     *  any managed version of the item.  These are any items you retrieve from getItem, createItem
     *  or using the getItemAt method from a managed collection.  Only changes for the
     *  items defined by any of the values in this array will be committed.
     *
     * @param cascadeCommit if true, also commit changes made to any associated
     *  items supplied in this list.
     *
     *  @return AsyncToken that is returned in <code>call</code> property of
     *  either the <code>ResultEvent.RESULT</code> or in the
     *  <code>FaultEvent.FAULT</code>.
     *  Custom data can be attached to this object and inspected later
     *  during the event handling phase.  If no changes have been made
     *  to the relevant items, null is returned instead of an AsyncToken.
     */
    public function commit(itemsOrCollections:Array=null, cascadeCommit:Boolean=false):mx.rpc.AsyncToken
    {
    	return _dominiosRPCDataManager.dataStore.commit(itemsOrCollections, cascadeCommit);
    }
    
    /**
     *  Reverts all pending (uncommitted) changes for this DataService, as well as all of the pending changes of all DataServics
     *  sharing the same DataStore.  By default, a DataService shares the same DataStore with other DataServices if they have 
     * managed association properties and share the same set of channels. 
     *
     * @see mx.data.DataManager
     * @see mx.data.DataStore
     *
     *  @return true if any changes were reverted.
     *  
     */
    public function revertChanges():Boolean
    {
        return _dominiosRPCDataManager.dataStore.revertChanges();
    }    
       
    // Constructor
    public function _Super_DominiosService()
    {
        // initialize service control
        _serviceControl = new mx.rpc.remoting.RemoteObject();
        
        var operations:Object = new Object();
        var operation:mx.rpc.remoting.Operation;
         
        operation = new mx.rpc.remoting.Operation(null, "actualizaVlrDominio");
        operations["actualizaVlrDominio"] = operation;

        operation = new mx.rpc.remoting.Operation(null, "borraVlrDominio");
        operations["borraVlrDominio"] = operation;

        operation = new mx.rpc.remoting.Operation(null, "buscarDominio");
		 operation.resultElementType = valueObjects.Dominios;
        operations["buscarDominio"] = operation;

        valueObjects.Dominios._initRemoteClassAlias();
        operation = new mx.rpc.remoting.Operation(null, "findAll");
		 operation.resultElementType = Object;
        operations["findAll"] = operation;

        operation = new mx.rpc.remoting.Operation(null, "findById");
		 operation.resultType = Object; 		 
        operations["findById"] = operation;

        operation = new mx.rpc.remoting.Operation(null, "getDominios");
		 operation.resultElementType = valueObjects.Dominios;
        operations["getDominios"] = operation;

        valueObjects.Dominios._initRemoteClassAlias();
        operation = new mx.rpc.remoting.Operation(null, "getMensajeTransaccion");
		 operation.resultType = String; 		 
        operations["getMensajeTransaccion"] = operation;

        operation = new mx.rpc.remoting.Operation(null, "getNombreDominio");
		 operation.resultType = String; 		 
        operations["getNombreDominio"] = operation;

        operation = new mx.rpc.remoting.Operation(null, "getNombresDominios");
		 operation.resultElementType = String;
        operations["getNombresDominios"] = operation;

        operation = new mx.rpc.remoting.Operation(null, "getValoresDominio");
		 operation.resultElementType = valueObjects.Dominios;
        operations["getValoresDominio"] = operation;

        valueObjects.Dominios._initRemoteClassAlias();
        operation = new mx.rpc.remoting.Operation(null, "insertaVlrDominio");
		 operation.resultType = int; 		 
        operations["insertaVlrDominio"] = operation;

        operation = new mx.rpc.remoting.Operation(null, "merge");
        operations["merge"] = operation;

        operation = new mx.rpc.remoting.Operation(null, "persist");
        operations["persist"] = operation;

        operation = new mx.rpc.remoting.Operation(null, "remove");
        operations["remove"] = operation;

        operation = new mx.rpc.remoting.Operation(null, "setDominios");
        operations["setDominios"] = operation;

        operation = new mx.rpc.remoting.Operation(null, "setMensajeTransaccion");
        operations["setMensajeTransaccion"] = operation;

        operation = new mx.rpc.remoting.Operation(null, "setNombreDominio");
        operations["setNombreDominio"] = operation;

    
        _serviceControl.operations = operations;   
		_serviceControl.convertResultHandler = com.adobe.serializers.utility.TypeUtility.convertResultHandler;
		destination = "DominiosService";
        
        var managedAssociation : mx.data.ManagedAssociation;
    	var managedAssocsArray : Array;
        // initialize Dominios data manager     
        _dominiosRPCDataManager = new mx.data.RPCDataManager();
        managersArray.push(_dominiosRPCDataManager);
        
        managedAssocsArray = new Array();
        
        _dominiosRPCDataManager.destination = "dominiosRPCDataManager";
        _dominiosRPCDataManager.service = _serviceControl;        
        _dominiosRPCDataManager.identities =  "idCgRefCodes";      
        _dominiosRPCDataManager.itemClass = valueObjects.Dominios; 
        
                   
    
        var dmOperation : mx.data.ManagedOperation;
        var dmQuery : mx.data.ManagedQuery;
         
        dmQuery = new mx.data.ManagedQuery("getValoresDominio");
        dmQuery.propertySpecifier = "idCgRefCodes,rvLowValue,rvMeaning,rvHighValue,rvAbbreviation,rvCreateBy,rvDomain";
        dmQuery.parameters = "arg0";
        _dominiosRPCDataManager.addManagedOperation(dmQuery);                 

        dmQuery = new mx.data.ManagedQuery("getDominios");
        dmQuery.propertySpecifier = "idCgRefCodes,rvLowValue,rvMeaning,rvHighValue,rvAbbreviation,rvCreateBy,rvDomain";
        dmQuery.parameters = "";
        _dominiosRPCDataManager.addManagedOperation(dmQuery);                 

        dmOperation = new mx.data.ManagedOperation("actualizaVlrDominio", "update");
        dmOperation.parameters = "item";
        _dominiosRPCDataManager.addManagedOperation(dmOperation);     
            
        dmQuery = new mx.data.ManagedQuery("buscarDominio");
        dmQuery.propertySpecifier = "idCgRefCodes,rvLowValue,rvMeaning,rvHighValue,rvAbbreviation,rvCreateBy,rvDomain";
        dmQuery.parameters = "arg0";
        _dominiosRPCDataManager.addManagedOperation(dmQuery);                 

        dmOperation = new mx.data.ManagedOperation("insertaVlrDominio", "create");
        dmOperation.parameters = "item";
        _dominiosRPCDataManager.addManagedOperation(dmOperation);     
            
        dmOperation = new mx.data.ManagedOperation("borraVlrDominio", "delete");
        dmOperation.parameters = "id";
        _dominiosRPCDataManager.addManagedOperation(dmOperation);     
            
        dmOperation = new mx.data.ManagedOperation("findById", "get");
        dmOperation.parameters = "idCgRefCodes";
        _dominiosRPCDataManager.addManagedOperation(dmOperation);     
            
        _serviceControl.managers = managersArray;
                      
         model_internal::initialize();
    }

	/**
	  * This method is a generated wrapper used to call the 'actualizaVlrDominio' operation. It returns an mx.data.ItemReference whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.data.ItemReference
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.data.ItemReference whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function actualizaVlrDominio(arg0:valueObjects.Dominios) : mx.data.ItemReference
	{
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("actualizaVlrDominio");
		var _internal_token:mx.data.ItemReference = _internal_operation.send(arg0) as mx.data.ItemReference;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'borraVlrDominio' operation. It returns an mx.rpc.AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function borraVlrDominio(arg0:String) : mx.rpc.AsyncToken
	{
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("borraVlrDominio");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'buscarDominio' operation. It returns an mx.rpc.AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function buscarDominio(arg0:String) : mx.rpc.AsyncToken
	{
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("buscarDominio");
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
	  * This method is a generated wrapper used to call the 'findById' operation. It returns an mx.data.ItemReference whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.data.ItemReference
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.data.ItemReference whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function findById(arg0:String) : mx.data.ItemReference
	{
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("findById");
		var _internal_token:mx.data.ItemReference = _internal_operation.send(arg0) as mx.data.ItemReference;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'getDominios' operation. It returns an mx.rpc.AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getDominios() : mx.rpc.AsyncToken
	{
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getDominios");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;

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
	  * This method is a generated wrapper used to call the 'getNombreDominio' operation. It returns an mx.rpc.AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getNombreDominio() : mx.rpc.AsyncToken
	{
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getNombreDominio");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'getNombresDominios' operation. It returns an mx.rpc.AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getNombresDominios() : mx.rpc.AsyncToken
	{
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getNombresDominios");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'getValoresDominio' operation. It returns an mx.rpc.AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getValoresDominio(arg0:valueObjects.Dominios) : mx.rpc.AsyncToken
	{
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getValoresDominio");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'insertaVlrDominio' operation. It returns an mx.data.ItemReference whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.data.ItemReference
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.data.ItemReference whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function insertaVlrDominio(arg0:valueObjects.Dominios) : mx.data.ItemReference
	{
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("insertaVlrDominio");
		var _internal_token:mx.data.ItemReference = _internal_operation.send(arg0) as mx.data.ItemReference;

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
	  * This method is a generated wrapper used to call the 'setDominios' operation. It returns an mx.rpc.AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function setDominios(arg0:ArrayCollection) : mx.rpc.AsyncToken
	{
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("setDominios");
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
	  * This method is a generated wrapper used to call the 'setNombreDominio' operation. It returns an mx.rpc.AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function setNombreDominio(arg0:String) : mx.rpc.AsyncToken
	{
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("setNombreDominio");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

		return _internal_token;
	}   
	 
}

}
