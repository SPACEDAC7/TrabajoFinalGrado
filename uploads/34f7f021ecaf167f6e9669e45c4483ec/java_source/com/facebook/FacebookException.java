/*
 * Decompiled with CFR 0_115.
 */
package com.facebook;

public class FacebookException
extends RuntimeException {
    static final long serialVersionUID = 1;

    public FacebookException() {
    }

    public FacebookException(String string2) {
        super(string2);
    }

    public FacebookException(String string2, Throwable throwable) {
        super(string2, throwable);
    }

    public /* varargs */ FacebookException(String string2, Object ... arrobject) {
        this(String.format(string2, arrobject));
    }

    public FacebookException(Throwable throwable) {
        super(throwable);
    }

    @Override
    public String toString() {
        return this.getMessage();
    }
}

