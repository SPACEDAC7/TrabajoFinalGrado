/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Key;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;

class OriginalKey
implements Key {
    private final String id;
    private final Key signature;

    public OriginalKey(String string2, Key key) {
        this.id = string2;
        this.signature = key;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object == null) return false;
        if (this.getClass() != object.getClass()) {
            return false;
        }
        object = (OriginalKey)object;
        if (!this.id.equals(object.id)) {
            return false;
        }
        if (this.signature.equals(object.signature)) return true;
        return false;
    }

    @Override
    public int hashCode() {
        return this.id.hashCode() * 31 + this.signature.hashCode();
    }

    @Override
    public void updateDiskCacheKey(MessageDigest messageDigest) throws UnsupportedEncodingException {
        messageDigest.update(this.id.getBytes("UTF-8"));
        this.signature.updateDiskCacheKey(messageDigest);
    }
}

