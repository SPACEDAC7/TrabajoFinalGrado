/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONObject
 */
package com.adjust.sdk;

import com.adjust.sdk.ActivityPackage;
import com.adjust.sdk.AdjustEventFailure;
import com.adjust.sdk.AdjustEventSuccess;
import com.adjust.sdk.ResponseData;
import java.util.Map;
import org.json.JSONObject;

public class EventResponseData
extends ResponseData {
    public String eventToken;

    public EventResponseData(ActivityPackage activityPackage) {
        this.eventToken = activityPackage.getParameters().get("event_token");
    }

    public AdjustEventFailure getFailureResponseData() {
        if (this.success) {
            return null;
        }
        AdjustEventFailure adjustEventFailure = new AdjustEventFailure();
        adjustEventFailure.message = this.message;
        adjustEventFailure.timestamp = this.timestamp;
        adjustEventFailure.adid = this.adid;
        adjustEventFailure.willRetry = this.willRetry;
        adjustEventFailure.jsonResponse = this.jsonResponse;
        adjustEventFailure.eventToken = this.eventToken;
        return adjustEventFailure;
    }

    public AdjustEventSuccess getSuccessResponseData() {
        if (!this.success) {
            return null;
        }
        AdjustEventSuccess adjustEventSuccess = new AdjustEventSuccess();
        adjustEventSuccess.message = this.message;
        adjustEventSuccess.timestamp = this.timestamp;
        adjustEventSuccess.adid = this.adid;
        adjustEventSuccess.jsonResponse = this.jsonResponse;
        adjustEventSuccess.eventToken = this.eventToken;
        return adjustEventSuccess;
    }
}

