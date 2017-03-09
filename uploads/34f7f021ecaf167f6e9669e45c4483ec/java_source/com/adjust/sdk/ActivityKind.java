/*
 * Decompiled with CFR 0_115.
 */
package com.adjust.sdk;

public enum ActivityKind {
    UNKNOWN,
    SESSION,
    EVENT,
    CLICK,
    ATTRIBUTION,
    REVENUE,
    REATTRIBUTION,
    INFO;
    

    private ActivityKind() {
    }

    public static ActivityKind fromString(String string2) {
        if ("session".equals(string2)) {
            return SESSION;
        }
        if ("event".equals(string2)) {
            return EVENT;
        }
        if ("click".equals(string2)) {
            return CLICK;
        }
        if ("attribution".equals(string2)) {
            return ATTRIBUTION;
        }
        if ("info".equals(string2)) {
            return INFO;
        }
        return UNKNOWN;
    }

    public String toString() {
        switch (.$SwitchMap$com$adjust$sdk$ActivityKind[this.ordinal()]) {
            default: {
                return "unknown";
            }
            case 1: {
                return "session";
            }
            case 2: {
                return "event";
            }
            case 3: {
                return "click";
            }
            case 4: {
                return "attribution";
            }
            case 5: 
        }
        return "info";
    }

}

