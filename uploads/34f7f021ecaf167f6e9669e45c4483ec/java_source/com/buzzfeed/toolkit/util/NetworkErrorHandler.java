/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.util;

public interface NetworkErrorHandler {
    public void onAuthFailureError();

    public void onGateWayTimeoutError();

    public void onNoConnectionError();

    public void onResourceNotFoundError();

    public void onServerError();

    public void onTimeoutError();

    public void onUnknownError();
}

