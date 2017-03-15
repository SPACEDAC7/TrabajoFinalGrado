/*
 * Decompiled with CFR 0_115.
 */
package com.google.android.exoplayer;

public final class ExoPlaybackException
extends Exception {
    public final boolean caughtAtTopLevel;

    public ExoPlaybackException(String string2) {
        super(string2);
        this.caughtAtTopLevel = false;
    }

    public ExoPlaybackException(String string2, Throwable throwable) {
        super(string2, throwable);
        this.caughtAtTopLevel = false;
    }

    public ExoPlaybackException(Throwable throwable) {
        super(throwable);
        this.caughtAtTopLevel = false;
    }

    ExoPlaybackException(Throwable throwable, boolean bl) {
        super(throwable);
        this.caughtAtTopLevel = bl;
    }
}

