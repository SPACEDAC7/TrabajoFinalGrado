/*
 * Decompiled with CFR 0_115.
 */
package com.adjust.sdk;

import com.adjust.sdk.ActivityPackage;

public interface ISdkClickHandler {
    public void init(boolean var1);

    public void pauseSending();

    public void resumeSending();

    public void sendSdkClick(ActivityPackage var1);

    public void teardown();
}

