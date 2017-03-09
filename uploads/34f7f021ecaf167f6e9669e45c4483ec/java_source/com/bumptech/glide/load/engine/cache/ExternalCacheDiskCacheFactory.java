/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.bumptech.glide.load.engine.cache;

import android.content.Context;
import com.bumptech.glide.load.engine.cache.DiskLruCacheFactory;
import java.io.File;

public final class ExternalCacheDiskCacheFactory
extends DiskLruCacheFactory {
    public ExternalCacheDiskCacheFactory(Context context) {
        this(context, "image_manager_disk_cache", 262144000);
    }

    public ExternalCacheDiskCacheFactory(Context context, int n2) {
        this(context, "image_manager_disk_cache", n2);
    }

    public ExternalCacheDiskCacheFactory(Context context, final String string2, int n2) {
        super(new DiskLruCacheFactory.CacheDirectoryGetter(){

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            @Override
            public File getCacheDirectory() {
                File file = Context.this.getExternalCacheDir();
                if (file == null) {
                    return null;
                }
                File file2 = file;
                if (string2 == null) return file2;
                return new File(file, string2);
            }
        }, n2);
    }

}

