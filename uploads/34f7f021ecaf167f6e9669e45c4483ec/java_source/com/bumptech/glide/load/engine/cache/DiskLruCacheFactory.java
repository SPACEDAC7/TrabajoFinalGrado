/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.DiskLruCacheWrapper;
import java.io.File;

public class DiskLruCacheFactory
implements DiskCache.Factory {
    private final CacheDirectoryGetter cacheDirectoryGetter;
    private final int diskCacheSize;

    public DiskLruCacheFactory(CacheDirectoryGetter cacheDirectoryGetter, int n2) {
        this.diskCacheSize = n2;
        this.cacheDirectoryGetter = cacheDirectoryGetter;
    }

    public DiskLruCacheFactory(String string2, int n2) {
        this(new CacheDirectoryGetter(){

            @Override
            public File getCacheDirectory() {
                return new File(String.this);
            }
        }, n2);
    }

    public DiskLruCacheFactory(String string2, final String string3, int n2) {
        this(new CacheDirectoryGetter(){

            @Override
            public File getCacheDirectory() {
                return new File(String.this, string3);
            }
        }, n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public DiskCache build() {
        File file = this.cacheDirectoryGetter.getCacheDirectory();
        if (!(file != null && (file.mkdirs() || file.exists() && file.isDirectory()))) {
            return null;
        }
        return DiskLruCacheWrapper.get(file, this.diskCacheSize);
    }

    public static interface CacheDirectoryGetter {
        public File getCacheDirectory();
    }

}

