/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.google.ads.internal;

import android.content.Context;
import com.google.ads.AdSize;

public class h {
    public static final h a = new h(null, true);
    private AdSize b;
    private final boolean c;

    private h(AdSize adSize, boolean bl) {
        this.b = adSize;
        this.c = bl;
    }

    public static h a(AdSize adSize) {
        return h.a(adSize, null);
    }

    public static h a(AdSize adSize, Context context) {
        return new h(AdSize.createAdSize(adSize, context), false);
    }

    public boolean a() {
        return this.c;
    }

    public AdSize b() {
        return this.b;
    }

    public void b(AdSize adSize) {
        if (!this.c) {
            this.b = adSize;
        }
    }
}

