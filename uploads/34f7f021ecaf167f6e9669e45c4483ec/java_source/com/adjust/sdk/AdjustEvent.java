/*
 * Decompiled with CFR 0_115.
 */
package com.adjust.sdk;

import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.ILogger;
import com.adjust.sdk.Util;
import java.util.LinkedHashMap;
import java.util.Map;

public class AdjustEvent {
    private static ILogger logger = AdjustFactory.getLogger();
    Map<String, String> callbackParameters;
    String currency;
    String eventToken;
    String orderId;
    Map<String, String> partnerParameters;
    Double revenue;

    public AdjustEvent(String string2) {
        if (!AdjustEvent.checkEventToken(string2, logger)) {
            return;
        }
        this.eventToken = string2;
    }

    private static boolean checkEventToken(String string2, ILogger iLogger) {
        if (string2 == null) {
            iLogger.error("Missing Event Token", new Object[0]);
            return false;
        }
        if (string2.length() != 6) {
            iLogger.error("Malformed Event Token '%s'", string2);
            return false;
        }
        return true;
    }

    private boolean checkRevenue(Double d2, String string2) {
        if (d2 != null) {
            if (d2 < 0.0) {
                logger.error("Invalid amount %.5f", d2);
                return false;
            }
            if (string2 == null) {
                logger.error("Currency must be set with revenue", new Object[0]);
                return false;
            }
            if (string2.equals("")) {
                logger.error("Currency is empty", new Object[0]);
                return false;
            }
        } else if (string2 != null) {
            logger.error("Revenue must be set with currency", new Object[0]);
            return false;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void addCallbackParameter(String string2, String string3) {
        if (!Util.isValidParameter(string2, "key", "Callback")) {
            return;
        }
        if (!Util.isValidParameter(string3, "value", "Callback")) return;
        if (this.callbackParameters == null) {
            this.callbackParameters = new LinkedHashMap<String, String>();
        }
        if (this.callbackParameters.put(string2, string3) == null) return;
        logger.warn("Key %s was overwritten", string2);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void addPartnerParameter(String string2, String string3) {
        if (!Util.isValidParameter(string2, "key", "Partner")) {
            return;
        }
        if (!Util.isValidParameter(string3, "value", "Partner")) return;
        if (this.partnerParameters == null) {
            this.partnerParameters = new LinkedHashMap<String, String>();
        }
        if (this.partnerParameters.put(string2, string3) == null) return;
        logger.warn("Key %s was overwritten", string2);
    }

    public boolean isValid() {
        if (this.eventToken != null) {
            return true;
        }
        return false;
    }

    public void setOrderId(String string2) {
        this.orderId = string2;
    }

    public void setRevenue(double d2, String string2) {
        if (!this.checkRevenue(d2, string2)) {
            return;
        }
        this.revenue = d2;
        this.currency = string2;
    }
}

