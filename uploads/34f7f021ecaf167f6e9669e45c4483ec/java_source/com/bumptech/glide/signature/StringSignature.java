/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.signature;

import com.bumptech.glide.load.Key;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;

public class StringSignature
implements Key {
    private final String signature;

    public StringSignature(String string2) {
        if (string2 == null) {
            throw new NullPointerException("Signature cannot be null!");
        }
        this.signature = string2;
    }

    @Override
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object == null || this.getClass() != object.getClass()) {
            return false;
        }
        object = (StringSignature)object;
        return this.signature.equals(object.signature);
    }

    @Override
    public int hashCode() {
        return this.signature.hashCode();
    }

    public String toString() {
        return "StringSignature{signature='" + this.signature + '\'' + '}';
    }

    @Override
    public void updateDiskCacheKey(MessageDigest messageDigest) throws UnsupportedEncodingException {
        messageDigest.update(this.signature.getBytes("UTF-8"));
    }
}

