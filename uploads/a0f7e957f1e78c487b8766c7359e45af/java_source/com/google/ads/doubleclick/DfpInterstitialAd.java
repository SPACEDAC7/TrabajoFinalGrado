/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 */
package com.google.ads.doubleclick;

import android.app.Activity;
import com.google.ads.AppEventListener;
import com.google.ads.InterstitialAd;

public class DfpInterstitialAd
extends InterstitialAd {
    public DfpInterstitialAd(Activity activity, String string2) {
        super(activity, string2);
    }

    public DfpInterstitialAd(Activity activity, String string2, boolean bl) {
        super(activity, string2, bl);
    }

    @Override
    public void setAppEventListener(AppEventListener appEventListener) {
        super.setAppEventListener(appEventListener);
    }
}

