/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package com.bumptech.glide.load.engine.cache;

import android.util.Log;
import com.bumptech.glide.disklrucache.DiskLruCache;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.DiskCacheWriteLocker;
import com.bumptech.glide.load.engine.cache.SafeKeyGenerator;
import java.io.File;
import java.io.IOException;

public class DiskLruCacheWrapper
implements DiskCache {
    private static final int APP_VERSION = 1;
    private static final String TAG = "DiskLruCacheWrapper";
    private static final int VALUE_COUNT = 1;
    private static DiskLruCacheWrapper wrapper = null;
    private final File directory;
    private DiskLruCache diskLruCache;
    private final int maxSize;
    private final SafeKeyGenerator safeKeyGenerator;
    private final DiskCacheWriteLocker writeLocker = new DiskCacheWriteLocker();

    protected DiskLruCacheWrapper(File file, int n2) {
        this.directory = file;
        this.maxSize = n2;
        this.safeKeyGenerator = new SafeKeyGenerator();
    }

    public static DiskCache get(File object, int n2) {
        synchronized (DiskLruCacheWrapper.class) {
            if (wrapper == null) {
                wrapper = new DiskLruCacheWrapper((File)object, n2);
            }
            object = wrapper;
            return object;
        }
    }

    private DiskLruCache getDiskCache() throws IOException {
        synchronized (this) {
            if (this.diskLruCache == null) {
                this.diskLruCache = DiskLruCache.open(this.directory, 1, 1, this.maxSize);
            }
            DiskLruCache diskLruCache = this.diskLruCache;
            return diskLruCache;
        }
    }

    private void resetDiskCache() {
        synchronized (this) {
            this.diskLruCache = null;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void clear() {
        synchronized (this) {
            block4 : {
                try {
                    this.getDiskCache().delete();
                    this.resetDiskCache();
                }
                catch (IOException var1_1) {
                    if (!Log.isLoggable((String)"DiskLruCacheWrapper", (int)5)) break block4;
                    Log.w((String)"DiskLruCacheWrapper", (String)"Unable to clear disk cache", (Throwable)var1_1);
                }
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void delete(Key object) {
        object = this.safeKeyGenerator.getSafeKey((Key)object);
        try {
            this.getDiskCache().remove((String)object);
            return;
        }
        catch (IOException var1_2) {
            if (!Log.isLoggable((String)"DiskLruCacheWrapper", (int)5)) return;
            Log.w((String)"DiskLruCacheWrapper", (String)"Unable to delete from disk cache", (Throwable)var1_2);
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public File get(Key object) {
        DiskLruCache.Value value;
        object = this.safeKeyGenerator.getSafeKey((Key)object);
        Object var2_2 = null;
        try {
            value = this.getDiskCache().get((String)object);
            object = var2_2;
            if (value == null) return object;
        }
        catch (IOException var3_4) {
            object = var2_2;
            if (!Log.isLoggable((String)"DiskLruCacheWrapper", (int)5)) return object;
            Log.w((String)"DiskLruCacheWrapper", (String)"Unable to get from disk cache", (Throwable)var3_4);
            return null;
        }
        return value.getFile(0);
    }

    @Override
    public void put(Key key, DiskCache.Writer writer) {
        block10 : {
            Object object;
            block11 : {
                object = this.safeKeyGenerator.getSafeKey(key);
                this.writeLocker.acquire(key);
                object = this.getDiskCache().edit((String)object);
                if (object == null) break block10;
                try {
                    if (!writer.write(object.getFile(0))) break block11;
                    object.commit();
                }
                catch (Throwable var2_3) {
                    try {
                        object.abortUnlessCommitted();
                        throw var2_3;
                    }
                    catch (IOException var2_4) {
                        if (Log.isLoggable((String)"DiskLruCacheWrapper", (int)5)) {
                            Log.w((String)"DiskLruCacheWrapper", (String)"Unable to put to disk cache", (Throwable)var2_4);
                        }
                        return;
                    }
                }
            }
            object.abortUnlessCommitted();
        }
        this.writeLocker.release(key);
        return;
        finally {
            this.writeLocker.release(key);
        }
    }
}

