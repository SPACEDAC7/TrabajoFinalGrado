/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.util.retrofit;

import com.buzzfeed.toolkit.util.HttpException;
import com.buzzfeed.toolkit.util.NetworkErrorHandler;

public abstract class RetrofitErrorHandler
implements NetworkErrorHandler {
    public void handleErrorResponse(Exception object) {
        if (!(object instanceof HttpException)) {
            this.onUnknownError();
        }
        if ((object = object.getMessage()).equalsIgnoreCase("timeout_error")) {
            this.onTimeoutError();
            return;
        }
        if (object.equalsIgnoreCase("not_found_error")) {
            this.onResourceNotFoundError();
            return;
        }
        if (object.equalsIgnoreCase("unauthorized_error")) {
            this.onAuthFailureError();
            return;
        }
        if (object.equalsIgnoreCase("gateway_timeout_error")) {
            this.onGateWayTimeoutError();
            return;
        }
        this.onServerError();
    }
}

