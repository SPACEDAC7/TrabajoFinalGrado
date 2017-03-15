/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads;

import com.google.ads.util.i;

public class l
extends i {
    private static final l b = new l();
    public final i.b<a> a;

    private l() {
        this.a = new i.b<a>("constants", new a());
    }

    public static l a() {
        return b;
    }

    public static final class a
    extends i {
        public final i.c<Integer> a;
        public final i.c<Integer> b;
        public final i.c<String> c;
        public final i.c<String> d;
        public final i.c<String> e;
        public final i.c<Long> f;
        public final i.c<Long> g;
        public final i.c<Long> h;
        public final i.c<Long> i;
        public final i.c<Long> j;
        public final i.c<Long> k;
        public final i.c<Boolean> l;

        public a() {
            this.a = new i.c<Integer>(this, "minHwAccelerationVersionBanner", 17);
            this.b = new i.c<Integer>(this, "minHwAccelerationVersionOverlay", 14);
            this.c = new i.c<String>(this, "mraidBannerPath", "http://media.admob.com/mraid/v1/mraid_app_banner.js");
            this.d = new i.c<String>(this, "mraidExpandedBannerPath", "http://media.admob.com/mraid/v1/mraid_app_expanded_banner.js");
            this.e = new i.c<String>(this, "mraidInterstitialPath", "http://media.admob.com/mraid/v1/mraid_app_interstitial.js");
            this.f = new i.c<Long>(this, "appCacheMaxSize", 0);
            this.g = new i.c<Long>(this, "appCacheMaxSizePaddingInBytes", 131072);
            this.h = new i.c<Long>(this, "maxTotalAppCacheQuotaInBytes", 0x500000);
            this.i = new i.c<Long>(this, "maxTotalDatabaseQuotaInBytes", 0x500000);
            this.j = new i.c<Long>(this, "maxDatabaseQuotaPerOriginInBytes", 0x100000);
            this.k = new i.c<Long>(this, "databaseQuotaIncreaseStepInBytes", 131072);
            this.l = new i.c<Boolean>(this, "isInitialized", false);
        }
    }

}

