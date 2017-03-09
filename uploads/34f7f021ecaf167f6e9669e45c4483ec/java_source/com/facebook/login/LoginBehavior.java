/*
 * Decompiled with CFR 0_115.
 */
package com.facebook.login;

public enum LoginBehavior {
    SSO_WITH_FALLBACK(true, true),
    SSO_ONLY(true, false),
    SUPPRESS_SSO(false, true);
    
    private final boolean allowsKatanaAuth;
    private final boolean allowsWebViewAuth;

    private LoginBehavior(boolean bl, boolean bl2) {
        this.allowsKatanaAuth = bl;
        this.allowsWebViewAuth = bl2;
    }

    boolean allowsKatanaAuth() {
        return this.allowsKatanaAuth;
    }

    boolean allowsWebViewAuth() {
        return this.allowsWebViewAuth;
    }
}

