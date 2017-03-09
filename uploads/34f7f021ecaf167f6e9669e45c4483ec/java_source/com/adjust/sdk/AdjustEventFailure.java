/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONObject
 */
package com.adjust.sdk;

import java.util.Locale;
import org.json.JSONObject;

public class AdjustEventFailure {
    public String adid;
    public String eventToken;
    public JSONObject jsonResponse;
    public String message;
    public String timestamp;
    public boolean willRetry;

    public String toString() {
        return String.format(Locale.US, "Event Failure msg:%s time:%s adid:%s event:%s retry:%b json:%s", new Object[]{this.message, this.timestamp, this.adid, this.eventToken, this.willRetry, this.jsonResponse});
    }
}

