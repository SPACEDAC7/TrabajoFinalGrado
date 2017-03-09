/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.applications;

import java.util.Locale;

public enum EventType {
    START,
    VIEW,
    CLOSE,
    AGGREGATE,
    HIDDEN,
    KEEPALIVE;
    

    private EventType() {
    }

    public String toString() {
        if (this == KEEPALIVE) {
            return "keep-alive";
        }
        return super.toString().toLowerCase(new Locale("en", "US"));
    }
}

