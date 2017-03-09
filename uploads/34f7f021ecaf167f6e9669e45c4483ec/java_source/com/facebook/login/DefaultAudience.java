/*
 * Decompiled with CFR 0_115.
 */
package com.facebook.login;

public enum DefaultAudience {
    NONE(null),
    ONLY_ME("only_me"),
    FRIENDS("friends"),
    EVERYONE("everyone");
    
    private final String nativeProtocolAudience;

    private DefaultAudience(String string3) {
        this.nativeProtocolAudience = string3;
    }

    public String getNativeProtocolAudience() {
        return this.nativeProtocolAudience;
    }
}

