/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.dustbuster;

class DustbusterResponse {
    private String mResponseText;
    private boolean mSuccess;

    public DustbusterResponse(boolean bl, String string2) {
        this.mSuccess = bl;
        this.mResponseText = string2;
    }

    public String getResponseText() {
        return this.mResponseText;
    }

    public boolean isSuccess() {
        return this.mSuccess;
    }
}

