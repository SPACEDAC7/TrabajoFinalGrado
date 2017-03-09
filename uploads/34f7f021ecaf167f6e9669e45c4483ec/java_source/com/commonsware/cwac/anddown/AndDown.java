/*
 * Decompiled with CFR 0_115.
 */
package com.commonsware.cwac.anddown;

public class AndDown {
    static {
        System.loadLibrary("anddown");
    }

    public native String markdownToHtml(String var1);
}

