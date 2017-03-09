/*
 * Decompiled with CFR 0_115.
 */
package com.facebook;

import com.facebook.FacebookException;

public class FacebookSdkNotInitializedException
extends FacebookException {
    static final long serialVersionUID = 1;

    public FacebookSdkNotInitializedException() {
    }

    public FacebookSdkNotInitializedException(String string2) {
        super(string2);
    }

    public FacebookSdkNotInitializedException(String string2, Throwable throwable) {
        super(string2, throwable);
    }

    public FacebookSdkNotInitializedException(Throwable throwable) {
        super(throwable);
    }
}

