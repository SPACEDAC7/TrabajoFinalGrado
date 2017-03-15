/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Looper
 *  android.text.TextUtils
 */
package com.google.android.exoplayer.util;

import android.os.Looper;
import android.text.TextUtils;

public final class Assertions {
    private Assertions() {
    }

    public static void checkArgument(boolean bl) {
        if (!bl) {
            throw new IllegalArgumentException();
        }
    }

    public static void checkArgument(boolean bl, Object object) {
        if (!bl) {
            throw new IllegalArgumentException(String.valueOf(object));
        }
    }

    public static void checkMainThread() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("Not in applications main thread");
        }
    }

    public static String checkNotEmpty(String string2) {
        if (TextUtils.isEmpty((CharSequence)string2)) {
            throw new IllegalArgumentException();
        }
        return string2;
    }

    public static String checkNotEmpty(String string2, Object object) {
        if (TextUtils.isEmpty((CharSequence)string2)) {
            throw new IllegalArgumentException(String.valueOf(object));
        }
        return string2;
    }

    public static <T> T checkNotNull(T t2) {
        if (t2 == null) {
            throw new NullPointerException();
        }
        return t2;
    }

    public static <T> T checkNotNull(T t2, Object object) {
        if (t2 == null) {
            throw new NullPointerException(String.valueOf(object));
        }
        return t2;
    }

    public static void checkState(boolean bl) {
        if (!bl) {
            throw new IllegalStateException();
        }
    }

    public static void checkState(boolean bl, Object object) {
        if (!bl) {
            throw new IllegalStateException(String.valueOf(object));
        }
    }
}

