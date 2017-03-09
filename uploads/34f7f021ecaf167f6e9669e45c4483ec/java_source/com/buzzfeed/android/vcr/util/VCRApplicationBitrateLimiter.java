/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Application
 *  android.content.Context
 */
package com.buzzfeed.android.vcr.util;

import android.app.Application;
import android.content.Context;
import com.buzzfeed.android.vcr.util.VCRBitrateLimitingReceiver;
import com.buzzfeed.toolkit.util.ApplicationStateCallbacks;
import com.buzzfeed.toolkit.util.LogUtil;

public class VCRApplicationBitrateLimiter
extends ApplicationStateCallbacks {
    private static final String TAG = LogUtil.makeLogTag(VCRApplicationBitrateLimiter.class);
    private final VCRBitrateLimitingReceiver mLimitingReceiver;

    public VCRApplicationBitrateLimiter(Application application) {
        this.mLimitingReceiver = new VCRBitrateLimitingReceiver((Context)application);
    }

    @Override
    public void onApplicationEnterBackground() {
        LogUtil.d(TAG, "Un-registering VCR bitrate limiting receiver.");
        this.mLimitingReceiver.unregister();
    }

    @Override
    public void onApplicationEnterForeground() {
        LogUtil.d(TAG, "Registering VCR bitrate limiting receiver.");
        this.mLimitingReceiver.register();
    }
}

