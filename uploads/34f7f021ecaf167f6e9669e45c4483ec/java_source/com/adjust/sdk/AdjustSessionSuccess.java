/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONObject
 */
package com.adjust.sdk;

import java.util.Locale;
import org.json.JSONObject;

public class AdjustSessionSuccess {
    public String adid;
    public JSONObject jsonResponse;
    public String message;
    public String timestamp;

    public String toString() {
        return String.format(Locale.US, "Session Success msg:%s time:%s adid:%s json:%s", new Object[]{this.message, this.timestamp, this.adid, this.jsonResponse});
    }
}

