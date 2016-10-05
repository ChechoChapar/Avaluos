package com.segurosbolivar.avaluos.util;

import flex.messaging.MessageBroker;
import flex.messaging.io.ArrayCollection;
import flex.messaging.messages.AsyncMessage;
import flex.messaging.messages.Message;
import flex.messaging.services.MessageService;
import flex.messaging.services.ServiceAdapter;
import flex.messaging.util.UUIDUtils;

public class EnviaMensajeCargue extends ServiceAdapter{

	public void enviar(String var){
		
		MessageBroker msgBroker = 
		MessageBroker.getMessageBroker(null);
		String clientID = UUIDUtils.createUUID();
	
		// creating a new async message and setting the 
		// random generated number as content.
		AsyncMessage msg = new AsyncMessage();
		// setting the destination for this message.
		msg.setDestination("MensajeCargueDataPush");
		msg.setClientId(clientID);
		msg.setMessageId(UUIDUtils.createUUID());
		//msg.setBody(randomNumbers);
		//msg.setBody("Prueba");
		msg.setBody(var);
		msgBroker.routeMessageToService(msg, null);	
		
		
	}

	@Override
	public Object invoke(Message message) {
		if (message.getBody().equals("New")) {
			// this send the current state to the client,
			// (random numbers previously generated as part of the
			// acknowledgment).
			//return randomNumbers;
			return "Prueba";
			} else {
			AsyncMessage newMessage = (AsyncMessage) message;
			//newMessage.setBody(randomNumbers);
			//Ojo
			//newMessage.setBody("Prueba");
			MessageService msgService = (MessageService) 
			getDestination().getService();
			// This is most important call which pushes,
			// the recivied msg to all the clients.
			msgService.pushMessageToClients(newMessage, false);
			}
			return null;
	}
	
}
