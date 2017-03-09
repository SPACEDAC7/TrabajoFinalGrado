/*
 * Decompiled with CFR 0_115.
 */
package com.adjust.sdk;

import java.util.HashMap;
import java.util.Map;

public class SessionParameters {
    Map<String, String> callbackParameters;
    Map<String, String> partnerParameters;

    public SessionParameters deepCopy() {
        SessionParameters sessionParameters = new SessionParameters();
        if (this.callbackParameters != null) {
            sessionParameters.callbackParameters = new HashMap<String, String>(this.callbackParameters);
        }
        if (this.partnerParameters != null) {
            sessionParameters.partnerParameters = new HashMap<String, String>(this.partnerParameters);
        }
        return sessionParameters;
    }
}

