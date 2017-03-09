/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.signature;

import com.bumptech.glide.load.Key;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

public class MediaStoreSignature
implements Key {
    private final long dateModified;
    private final String mimeType;
    private final int orientation;

    public MediaStoreSignature(String string2, long l2, int n2) {
        this.mimeType = string2;
        this.dateModified = l2;
        this.orientation = n2;
    }

    /*
     * Enabled aggressive block sorting
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
        object = (MediaStoreSignature)object;
        if (this.dateModified != object.dateModified) {
            return false;
        }
        if (this.orientation != object.orientation) {
            return false;
        }
        if (this.mimeType != null) {
            if (this.mimeType.equals(object.mimeType)) return true;
            return false;
        }
        if (object.mimeType == null) return true;
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public int hashCode() {
        int n2;
        if (this.mimeType != null) {
            n2 = this.mimeType.hashCode();
            do {
                return (n2 * 31 + (int)(this.dateModified ^ this.dateModified >>> 32)) * 31 + this.orientation;
                break;
            } while (true);
        }
        n2 = 0;
        return (n2 * 31 + (int)(this.dateModified ^ this.dateModified >>> 32)) * 31 + this.orientation;
    }

    @Override
    public void updateDiskCacheKey(MessageDigest messageDigest) throws UnsupportedEncodingException {
        messageDigest.update(ByteBuffer.allocate(12).putLong(this.dateModified).putInt(this.orientation).array());
        messageDigest.update(this.mimeType.getBytes("UTF-8"));
    }
}

