/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.LruCache;
import com.bumptech.glide.util.Util;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

class SafeKeyGenerator {
    private final LruCache<Key, String> loadIdToSafeHash = new LruCache(1000);

    SafeKeyGenerator() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public String getSafeKey(Key key) {
        Object object;
        Object object2 = this.loadIdToSafeHash;
        synchronized (object2) {
            object = this.loadIdToSafeHash.get(key);
        }
        object2 = object;
        if (object != null) return object2;
        try {
            object2 = MessageDigest.getInstance("SHA-256");
            key.updateDiskCacheKey((MessageDigest)object2);
            object = object2 = Util.sha256BytesToHex(object2.digest());
        }
        catch (UnsupportedEncodingException var3_3) {
            var3_3.printStackTrace();
        }
        catch (NoSuchAlgorithmException var3_4) {
            var3_4.printStackTrace();
        }
        object2 = this.loadIdToSafeHash;
        synchronized (object2) {
            this.loadIdToSafeHash.put(key, (String)object);
            return object;
        }
    }
}

