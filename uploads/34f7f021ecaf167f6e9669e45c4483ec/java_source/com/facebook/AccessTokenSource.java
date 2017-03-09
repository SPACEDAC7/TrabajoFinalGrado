/*
 * Decompiled with CFR 0_115.
 */
package com.facebook;

public enum AccessTokenSource {
    NONE(false),
    FACEBOOK_APPLICATION_WEB(true),
    FACEBOOK_APPLICATION_NATIVE(true),
    FACEBOOK_APPLICATION_SERVICE(true),
    WEB_VIEW(false),
    TEST_USER(true),
    CLIENT_TOKEN(true);
    
    private final boolean canExtendToken;

    private AccessTokenSource(boolean bl) {
        this.canExtendToken = bl;
    }

    boolean canExtendToken() {
        return this.canExtendToken;
    }
}

