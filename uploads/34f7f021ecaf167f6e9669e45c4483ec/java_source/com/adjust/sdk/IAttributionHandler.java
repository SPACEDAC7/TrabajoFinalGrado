/*
 * Decompiled with CFR 0_115.
 */
package com.adjust.sdk;

import com.adjust.sdk.ActivityPackage;
import com.adjust.sdk.IActivityHandler;
import com.adjust.sdk.SessionResponseData;

public interface IAttributionHandler {
    public void checkSessionResponse(SessionResponseData var1);

    public void getAttribution();

    public void init(IActivityHandler var1, ActivityPackage var2, boolean var3);

    public void pauseSending();

    public void resumeSending();

    public void teardown();
}

