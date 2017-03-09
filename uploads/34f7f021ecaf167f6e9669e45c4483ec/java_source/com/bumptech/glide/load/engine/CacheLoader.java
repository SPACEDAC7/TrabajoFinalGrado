/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.cache.DiskCache;
import java.io.File;
import java.io.IOException;

class CacheLoader {
    private static final String TAG = "CacheLoader";
    private final DiskCache diskCache;

    public CacheLoader(DiskCache diskCache) {
        this.diskCache = diskCache;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public <Z> Resource<Z> load(Key key, ResourceDecoder<File, Z> resource, int n2, int n3) {
        Resource resource2;
        block5 : {
            File file = this.diskCache.get(key);
            if (file == null) {
                return null;
            }
            resource2 = null;
            try {
                resource = resource.decode(file, n2, n3);
            }
            catch (IOException var6_6) {
                resource = resource2;
                if (!Log.isLoggable((String)"CacheLoader", (int)3)) break block5;
                Log.d((String)"CacheLoader", (String)"Exception decoding image from cache", (Throwable)var6_6);
                resource = resource2;
            }
        }
        resource2 = resource;
        if (resource != null) {
            return resource2;
        }
        if (Log.isLoggable((String)"CacheLoader", (int)3)) {
            Log.d((String)"CacheLoader", (String)"Failed to decode image from cache or not present in cache");
        }
        this.diskCache.delete(key);
        return resource;
    }
}

