/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.analytics.adjust;

import android.content.Context;
import android.support.annotation.Nullable;

public abstract class AdjustConfiguration {
    protected boolean mAdjustProduction;
    protected String mAdjustToken;

    public AdjustConfiguration(@Nullable String string2, boolean bl) {
        this.mAdjustToken = string2;
        this.mAdjustProduction = bl;
    }

    public abstract void configure(Context var1);

    public abstract void onPause();

    public abstract void onResume();

    public abstract void trackAdjustEvent(String var1);
}

