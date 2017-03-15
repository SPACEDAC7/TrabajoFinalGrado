/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.ads.interactivemedia.v3.api.AdError$AdErrorCode
 *  com.google.ads.interactivemedia.v3.api.AdError$AdErrorType
 */
package com.google.ads.interactivemedia.v3.api;

import com.google.ads.interactivemedia.v3.api.AdError;

/*
 * Exception performing whole class analysis ignored.
 */
public final class AdError
extends Exception {
    private final AdErrorCode a;
    private final AdErrorType b;

    public AdError(AdErrorType adErrorType, int n2, String string2) {
        this(adErrorType, AdErrorCode.a((int)n2), string2);
    }

    public AdError(AdErrorType adErrorType, AdErrorCode adErrorCode, String string2) {
        super(string2);
        this.b = adErrorType;
        this.a = adErrorCode;
    }

    public AdErrorCode getErrorCode() {
        return this.a;
    }

    public int getErrorCodeNumber() {
        return this.a.getErrorNumber();
    }

    public AdErrorType getErrorType() {
        return this.b;
    }

    @Override
    public String getMessage() {
        return super.getMessage();
    }

    @Override
    public String toString() {
        String string2 = String.valueOf((Object)this.b);
        String string3 = String.valueOf((Object)this.a);
        String string4 = String.valueOf(this.getMessage());
        return new StringBuilder(String.valueOf(string2).length() + 45 + String.valueOf(string3).length() + String.valueOf(string4).length()).append("AdError [errorType: ").append(string2).append(", errorCode: ").append(string3).append(", message: ").append(string4).append("]").toString();
    }
}

