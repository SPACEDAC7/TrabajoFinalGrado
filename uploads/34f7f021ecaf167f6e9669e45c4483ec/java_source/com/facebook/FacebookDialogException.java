/*
 * Decompiled with CFR 0_115.
 */
package com.facebook;

import com.facebook.FacebookException;

public class FacebookDialogException
extends FacebookException {
    static final long serialVersionUID = 1;
    private int errorCode;
    private String failingUrl;

    public FacebookDialogException(String string2, int n2, String string3) {
        super(string2);
        this.errorCode = n2;
        this.failingUrl = string3;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getFailingUrl() {
        return this.failingUrl;
    }

    @Override
    public final String toString() {
        return "{FacebookDialogException: " + "errorCode: " + this.getErrorCode() + ", message: " + this.getMessage() + ", url: " + this.getFailingUrl() + "}";
    }
}

