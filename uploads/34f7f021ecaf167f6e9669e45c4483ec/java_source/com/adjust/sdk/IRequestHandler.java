/*
 * Decompiled with CFR 0_115.
 */
package com.adjust.sdk;

import com.adjust.sdk.ActivityPackage;
import com.adjust.sdk.IPackageHandler;

public interface IRequestHandler {
    public void init(IPackageHandler var1);

    public void sendPackage(ActivityPackage var1, int var2);

    public void teardown();
}

