/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.view.ViewGroup
 */
package com.google.ads;

import android.app.Activity;
import android.view.ViewGroup;
import com.google.ads.Ad;
import com.google.ads.AdListener;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.AppEventListener;
import com.google.ads.internal.d;
import com.google.ads.m;
import com.google.ads.util.i;

public class InterstitialAd
implements Ad {
    private d a;

    public InterstitialAd(Activity activity, String string2) {
        this(activity, string2, false);
    }

    public InterstitialAd(Activity activity, String string2, boolean bl) {
        this.a = new d(this, activity, null, string2, null, bl);
    }

    @Override
    public boolean isReady() {
        return this.a.r();
    }

    @Override
    public void loadAd(AdRequest adRequest) {
        this.a.a(adRequest);
    }

    @Override
    public void setAdListener(AdListener adListener) {
        this.a.h().m.a(adListener);
    }

    protected void setAppEventListener(AppEventListener appEventListener) {
        this.a.h().n.a(appEventListener);
    }

    public void show() {
        this.a.z();
    }

    @Override
    public void stopLoading() {
        this.a.A();
    }
}

