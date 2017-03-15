/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads.mediation.admob;

import com.google.ads.mediation.NetworkExtras;
import java.util.HashMap;
import java.util.Map;

public class AdMobAdapterExtras
implements NetworkExtras {
    private boolean a = false;
    private boolean b = false;
    private Map<String, Object> c;

    public AdMobAdapterExtras() {
        this.clearExtras();
    }

    public AdMobAdapterExtras(AdMobAdapterExtras adMobAdapterExtras) {
        this();
        if (adMobAdapterExtras != null) {
            this.a = adMobAdapterExtras.a;
            this.b = adMobAdapterExtras.b;
            this.c.putAll(adMobAdapterExtras.c);
        }
    }

    public AdMobAdapterExtras addExtra(String string2, Object object) {
        this.c.put(string2, object);
        return this;
    }

    public AdMobAdapterExtras clearExtras() {
        this.c = new HashMap<String, Object>();
        return this;
    }

    public Map<String, Object> getExtras() {
        return this.c;
    }

    public boolean getPlusOneOptOut() {
        return this.a;
    }

    public boolean getUseExactAdSize() {
        return this.b;
    }

    public AdMobAdapterExtras setExtras(Map<String, Object> map) {
        if (map == null) {
            throw new IllegalArgumentException("Argument 'extras' may not be null");
        }
        this.c = map;
        return this;
    }

    public AdMobAdapterExtras setPlusOneOptOut(boolean bl) {
        this.a = bl;
        return this;
    }

    public AdMobAdapterExtras setUseExactAdSize(boolean bl) {
        this.b = bl;
        return this;
    }
}

