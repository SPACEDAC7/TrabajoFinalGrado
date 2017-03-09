/*
 * Decompiled with CFR 0_115.
 */
package com.facebook;

import com.facebook.FacebookException;

public class FacebookOperationCanceledException
extends FacebookException {
    static final long serialVersionUID = 1;

    public FacebookOperationCanceledException() {
    }

    public FacebookOperationCanceledException(String string2) {
        super(string2);
    }

    public FacebookOperationCanceledException(String string2, Throwable throwable) {
        super(string2, throwable);
    }

    public FacebookOperationCanceledException(Throwable throwable) {
        super(throwable);
    }
}

