/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load;

public enum DecodeFormat {
    ALWAYS_ARGB_8888,
    PREFER_ARGB_8888,
    PREFER_RGB_565;
    
    public static final DecodeFormat DEFAULT;

    static {
        DEFAULT = PREFER_RGB_565;
    }

    private DecodeFormat() {
    }
}

