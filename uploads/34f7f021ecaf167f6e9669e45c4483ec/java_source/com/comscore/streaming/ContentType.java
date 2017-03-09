/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming;

public enum ContentType {
    LongFormOnDemand("c11"),
    ShortFormOnDemand("c12"),
    Live("c13"),
    UserGeneratedLongFormOnDemand("c21"),
    UserGeneratedShortFormOnDemand("c22"),
    UserGeneratedLive("c23"),
    Bumper("c99"),
    Other("c00");
    
    private final String a;

    private ContentType(String string3) {
        this.a = string3;
    }

    protected String a() {
        return this.a;
    }
}

