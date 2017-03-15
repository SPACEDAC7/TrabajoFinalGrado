/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads.doubleclick;

import com.google.ads.mediation.admob.AdMobAdapterExtras;
import java.util.Map;

public class DfpExtras
extends AdMobAdapterExtras {
    private String a;

    public DfpExtras() {
    }

    public DfpExtras(DfpExtras dfpExtras) {
        super(dfpExtras);
        if (dfpExtras != null) {
            this.a = dfpExtras.a;
        }
    }

    @Override
    public DfpExtras addExtra(String string2, Object object) {
        super.addExtra(string2, object);
        return this;
    }

    @Override
    public DfpExtras clearExtras() {
        super.clearExtras();
        return this;
    }

    public String getPublisherProvidedId() {
        return this.a;
    }

    @Override
    public DfpExtras setExtras(Map<String, Object> map) {
        super.setExtras(map);
        return this;
    }

    @Override
    public DfpExtras setPlusOneOptOut(boolean bl) {
        super.setPlusOneOptOut(bl);
        return this;
    }

    public DfpExtras setPublisherProvidedId(String string2) {
        this.a = string2;
        return this;
    }

    @Override
    public DfpExtras setUseExactAdSize(boolean bl) {
        super.setUseExactAdSize(bl);
        return this;
    }
}

