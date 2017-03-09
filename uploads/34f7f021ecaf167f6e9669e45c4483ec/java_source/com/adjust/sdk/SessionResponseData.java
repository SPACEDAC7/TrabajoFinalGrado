/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONObject
 */
package com.adjust.sdk;

import com.adjust.sdk.AdjustSessionFailure;
import com.adjust.sdk.AdjustSessionSuccess;
import com.adjust.sdk.ResponseData;
import org.json.JSONObject;

public class SessionResponseData
extends ResponseData {
    public AdjustSessionFailure getFailureResponseData() {
        if (this.success) {
            return null;
        }
        AdjustSessionFailure adjustSessionFailure = new AdjustSessionFailure();
        adjustSessionFailure.message = this.message;
        adjustSessionFailure.timestamp = this.timestamp;
        adjustSessionFailure.adid = this.adid;
        adjustSessionFailure.willRetry = this.willRetry;
        adjustSessionFailure.jsonResponse = this.jsonResponse;
        return adjustSessionFailure;
    }

    public AdjustSessionSuccess getSuccessResponseData() {
        if (!this.success) {
            return null;
        }
        AdjustSessionSuccess adjustSessionSuccess = new AdjustSessionSuccess();
        adjustSessionSuccess.message = this.message;
        adjustSessionSuccess.timestamp = this.timestamp;
        adjustSessionSuccess.adid = this.adid;
        adjustSessionSuccess.jsonResponse = this.jsonResponse;
        return adjustSessionSuccess;
    }
}

