/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;

public interface Key {
    public static final String STRING_CHARSET_NAME = "UTF-8";

    public boolean equals(Object var1);

    public int hashCode();

    public void updateDiskCacheKey(MessageDigest var1) throws UnsupportedEncodingException;
}

