/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 */
package com.google.ads.mediation.customevent;

import android.app.Activity;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEvent;
import com.google.ads.mediation.customevent.CustomEventBannerListener;

public interface CustomEventBanner
extends CustomEvent {
    public void requestBannerAd(CustomEventBannerListener var1, Activity var2, String var3, String var4, AdSize var5, MediationAdRequest var6, Object var7);
}

