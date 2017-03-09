/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming;

public enum AdType {
    LinearOnDemandPreRoll("a11"),
    LinearOnDemandMidRoll("a12"),
    LinearOnDemandPostRoll("a13"),
    LinearLive("a21"),
    Other("a00");
    
    private final String a;

    private AdType(String string3) {
        this.a = string3;
    }

    protected String a() {
        return this.a;
    }
}

