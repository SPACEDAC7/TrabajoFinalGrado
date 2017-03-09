/*
 * Decompiled with CFR 0_115.
 */
package com.facebook;

import com.facebook.FacebookException;

public class FacebookAuthorizationException
extends FacebookException {
    static final long serialVersionUID = 1;

    public FacebookAuthorizationException() {
    }

    public FacebookAuthorizationException(String string2) {
        super(string2);
    }

    public FacebookAuthorizationException(String string2, Throwable throwable) {
        super(string2, throwable);
    }

    public FacebookAuthorizationException(Throwable throwable) {
        super(throwable);
    }
}

