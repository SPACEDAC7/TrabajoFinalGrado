/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.view.ViewGroup
 *  com.google.ads.internal.state.AdState
 */
package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.google.ads.Ad;
import com.google.ads.AdListener;
import com.google.ads.AdSize;
import com.google.ads.AdView;
import com.google.ads.AppEventListener;
import com.google.ads.InterstitialAd;
import com.google.ads.internal.h;
import com.google.ads.internal.state.AdState;
import com.google.ads.l;
import com.google.ads.util.i;

public class m
extends i {
    public final i.b<l> a;
    public final i.c<AdState> b;
    public final i.c<AdState> c;
    public final i.b<String> d;
    public final i.d<Activity> e;
    public final i.b<Context> f;
    public final i.b<ViewGroup> g;
    public final i.b<Ad> h;
    public final i.b<AdView> i;
    public final i.b<InterstitialAd> j;
    public final i.b<h> k;
    public final i.c<AdSize[]> l;
    public final i.c<AdListener> m;
    public final i.c<AppEventListener> n;

    public m(l l2, Ad ad, AdView adView, InterstitialAd interstitialAd, String string2, Activity activity, Context context, ViewGroup viewGroup, h h2) {
        this.b = new i.c<java.lang.Object>(this, "currentAd", null);
        this.c = new i.c<java.lang.Object>(this, "nextAd", null);
        this.m = new i.c(this, "adListener");
        this.n = new i.c(this, "appEventListener");
        this.a = new i.b<l>("appState", l2);
        this.h = new i.b<Ad>("ad", ad);
        this.i = new i.b<AdView>("adView", adView);
        this.k = new i.b<h>("adType", h2);
        this.d = new i.b<String>("adUnitId", string2);
        this.e = new i.d<Activity>("activity", activity);
        this.j = new i.b<InterstitialAd>("interstitialAd", interstitialAd);
        this.g = new i.b<ViewGroup>("bannerContainer", viewGroup);
        this.f = new i.b<Context>("applicationContext", context);
        this.l = new i.c<java.lang.Object>(this, "adSizes", null);
    }

    public boolean a() {
        if (!this.b()) {
            return true;
        }
        return false;
    }

    public boolean b() {
        return this.k.a().a();
    }
}

