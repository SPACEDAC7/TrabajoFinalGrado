/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.adjust.sdk;

import android.content.Context;
import com.adjust.sdk.ActivityPackage;
import com.adjust.sdk.IActivityHandler;
import com.adjust.sdk.ResponseData;
import com.adjust.sdk.SessionParameters;

public interface IPackageHandler {
    public void addPackage(ActivityPackage var1);

    public void closeFirstPackage(ResponseData var1, ActivityPackage var2);

    public void init(IActivityHandler var1, Context var2, boolean var3);

    public void pauseSending();

    public void resumeSending();

    public void sendFirstPackage();

    public void sendNextPackage(ResponseData var1);

    public void teardown(boolean var1);

    public void updatePackages(SessionParameters var1);
}

