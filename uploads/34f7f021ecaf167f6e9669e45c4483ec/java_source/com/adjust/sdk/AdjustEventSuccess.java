/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONObject
 */
package com.adjust.sdk;

import java.util.Locale;
import org.json.JSONObject;

public class AdjustEventSuccess {
    public String adid;
    public String eventToken;
    public JSONObject jsonResponse;
    public String message;
    public String timestamp;

    public String toString() {
        return String.format(Locale.US, "Event Success msg:%s time:%s adid:%s event:%s json:%s", new Object[]{this.message, this.timestamp, this.adid, this.eventToken, this.jsonResponse});
    }
}

