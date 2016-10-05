package com.adobe.trt.lcds;

import flex.messaging.config.ConfigMap;
import flex.messaging.io.PropertyProxyRegistry;
import flex.messaging.services.AbstractBootstrapService;

public class EclipseLinkExceptionsProxyBootstrapService extends AbstractBootstrapService {

 @Override
 public void initialize(String id, ConfigMap properties) {
  PropertyProxyRegistry registry = PropertyProxyRegistry.getRegistry();
  registry.register(Object.class, new EclipseLinkExceptionsProxy());
 }

 @Override
 public void start() {
  //No-op
 }

 @Override
 public void stop() {
  //No-op
 }
}