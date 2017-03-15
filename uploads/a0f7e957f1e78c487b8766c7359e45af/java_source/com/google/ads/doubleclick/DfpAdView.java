/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.util.AttributeSet
 */
package com.google.ads.doubleclick;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import com.google.ads.AdSize;
import com.google.ads.AdView;
import com.google.ads.AppEventListener;

public class DfpAdView
extends AdView {
    public DfpAdView(Activity activity, AdSize adSize, String string2) {
        super(activity, adSize, string2);
    }

    public DfpAdView(Activity activity, AdSize[] arradSize, String string2) {
        super(activity, arradSize, string2);
    }

    public DfpAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DfpAdView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
    }

    @Override
    public void setAppEventListener(AppEventListener appEventListener) {
        super.setAppEventListener(appEventListener);
    }

    @Override
    public /* varargs */ void setSupportedAdSizes(AdSize ... arradSize) {
        super.setSupportedAdSizes(arradSize);
    }
}

