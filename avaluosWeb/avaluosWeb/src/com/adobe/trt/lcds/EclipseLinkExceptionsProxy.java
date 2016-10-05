package com.adobe.trt.lcds;

import flex.messaging.io.BeanProxy;

public class EclipseLinkExceptionsProxy extends BeanProxy {
 private static final long serialVersionUID = 3809660049108090824L;
 
    static
    {
     addIgnoreProperty(org.eclipse.persistence.exceptions.EclipseLinkException.class, "session");
     addIgnoreProperty(org.eclipse.persistence.exceptions.DatabaseException.class, "query");
     
     //addIgnoreProperty(org.eclipse.persistence.exceptions.DatabaseException.class, "exception");
     addIgnoreProperty(org.eclipse.persistence.exceptions.DatabaseException.class, "call");
     addIgnoreProperty(org.eclipse.persistence.exceptions.DatabaseException.class, "queryArguments");
     addIgnoreProperty(org.eclipse.persistence.exceptions.DatabaseException.class, "accessor");
     addIgnoreProperty(org.eclipse.persistence.exceptions.DatabaseException.class, "isCommunicationFailure");
     
     addIgnoreProperty(org.eclipse.persistence.exceptions.OptimisticLockException.class, "query");
    }
}