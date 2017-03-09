/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONObject
 */
package com.adjust.sdk;

import java.util.Locale;
import org.json.JSONObject;

public class AdjustSessionFailure {
    public String adid;
    public JSONObject jsonResponse;
    public String message;
    public String timestamp;
    public boolean willRetry;

    public String toString() {
        return String.format(Locale.US, "Session Failure msg:%s time:%s adid:%s retry:%b json:%s", new Object[]{this.message, this.timestamp, this.adid, this.willRetry, this.jsonResponse});
    }
}

