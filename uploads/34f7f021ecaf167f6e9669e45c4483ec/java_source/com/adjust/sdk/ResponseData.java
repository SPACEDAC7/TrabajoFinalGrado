/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONObject
 */
package com.adjust.sdk;

import com.adjust.sdk.ActivityKind;
import com.adjust.sdk.ActivityPackage;
import com.adjust.sdk.AdjustAttribution;
import com.adjust.sdk.AttributionResponseData;
import com.adjust.sdk.EventResponseData;
import com.adjust.sdk.SessionResponseData;
import java.util.Locale;
import org.json.JSONObject;

public class ResponseData {
    public ActivityKind activityKind;
    public String adid;
    public AdjustAttribution attribution;
    public JSONObject jsonResponse;
    public String message;
    public boolean success;
    public String timestamp;
    public boolean willRetry;

    protected ResponseData() {
    }

    /*
     * Enabled aggressive block sorting
     */
    public static ResponseData buildResponseData(ActivityPackage object) {
        ActivityKind activityKind = object.getActivityKind();
        switch (.$SwitchMap$com$adjust$sdk$ActivityKind[activityKind.ordinal()]) {
            default: {
                object = new ResponseData();
                break;
            }
            case 1: {
                object = new SessionResponseData();
                break;
            }
            case 2: {
                object = new AttributionResponseData();
                break;
            }
            case 3: {
                object = new EventResponseData((ActivityPackage)object);
            }
        }
        object.activityKind = activityKind;
        return object;
    }

    public String toString() {
        return String.format(Locale.US, "message:%s timestamp:%s json:%s", new Object[]{this.message, this.timestamp, this.jsonResponse});
    }

}

