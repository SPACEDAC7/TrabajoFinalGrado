/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming;

public enum StreamSenseEventType {
    PLAY("play", 0),
    PAUSE("pause", 1),
    END("end", 2),
    BUFFER("buffer", 3),
    KEEP_ALIVE("keep-alive", 4),
    HEART_BEAT("hb", 5),
    CUSTOM("custom", 6),
    AD_PLAY("ad_play", 7),
    AD_PAUSE("ad_pause", 8),
    AD_END("ad_end", 9),
    AD_CLICK("ad_click", 10);
    
    private String a;
    private int b;

    private StreamSenseEventType(String string3, int n3) {
        this.a = string3;
        this.b = n3;
    }

    public int getCode() {
        return this.b;
    }

    public String getName() {
        return this.a;
    }

    public String toString() {
        return this.getName();
    }
}

