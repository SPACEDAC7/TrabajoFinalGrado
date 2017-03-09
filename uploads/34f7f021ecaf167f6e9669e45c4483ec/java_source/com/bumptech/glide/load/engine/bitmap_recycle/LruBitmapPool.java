/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.annotation.TargetApi
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.Log
 */
package com.bumptech.glide.load.engine.bitmap_recycle;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.load.engine.bitmap_recycle.AttributeStrategy;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy;
import com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class LruBitmapPool
implements BitmapPool {
    private static final Bitmap.Config DEFAULT_CONFIG = Bitmap.Config.ARGB_8888;
    private static final String TAG = "LruBitmapPool";
    private final Set<Bitmap.Config> allowedConfigs;
    private int currentSize;
    private int evictions;
    private int hits;
    private final int initialMaxSize;
    private int maxSize;
    private int misses;
    private int puts;
    private final LruPoolStrategy strategy;
    private final BitmapTracker tracker;

    public LruBitmapPool(int n2) {
        this(n2, LruBitmapPool.getDefaultStrategy(), LruBitmapPool.getDefaultAllowedConfigs());
    }

    LruBitmapPool(int n2, LruPoolStrategy lruPoolStrategy, Set<Bitmap.Config> set) {
        this.initialMaxSize = n2;
        this.maxSize = n2;
        this.strategy = lruPoolStrategy;
        this.allowedConfigs = set;
        this.tracker = new NullBitmapTracker();
    }

    public LruBitmapPool(int n2, Set<Bitmap.Config> set) {
        this(n2, LruBitmapPool.getDefaultStrategy(), set);
    }

    private void dump() {
        if (Log.isLoggable((String)"LruBitmapPool", (int)2)) {
            this.dumpUnchecked();
        }
    }

    private void dumpUnchecked() {
        Log.v((String)"LruBitmapPool", (String)("Hits=" + this.hits + ", misses=" + this.misses + ", puts=" + this.puts + ", evictions=" + this.evictions + ", currentSize=" + this.currentSize + ", maxSize=" + this.maxSize + "\nStrategy=" + this.strategy));
    }

    private void evict() {
        this.trimToSize(this.maxSize);
    }

    private static Set<Bitmap.Config> getDefaultAllowedConfigs() {
        HashSet<Bitmap.Config> hashSet = new HashSet<Bitmap.Config>();
        hashSet.addAll(Arrays.asList(Bitmap.Config.values()));
        if (Build.VERSION.SDK_INT >= 19) {
            hashSet.add(null);
        }
        return Collections.unmodifiableSet(hashSet);
    }

    private static LruPoolStrategy getDefaultStrategy() {
        if (Build.VERSION.SDK_INT >= 19) {
            return new SizeConfigStrategy();
        }
        return new AttributeStrategy();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void trimToSize(int n2) {
        synchronized (this) {
            do {
                if (this.currentSize <= n2) return;
                Bitmap bitmap = this.strategy.removeLast();
                if (bitmap == null) {
                    if (Log.isLoggable((String)"LruBitmapPool", (int)5)) {
                        Log.w((String)"LruBitmapPool", (String)"Size mismatch, resetting");
                        this.dumpUnchecked();
                    }
                    this.currentSize = 0;
                    return;
                }
                this.tracker.remove(bitmap);
                this.currentSize -= this.strategy.getSize(bitmap);
                bitmap.recycle();
                ++this.evictions;
                if (Log.isLoggable((String)"LruBitmapPool", (int)3)) {
                    Log.d((String)"LruBitmapPool", (String)("Evicting bitmap=" + this.strategy.logBitmap(bitmap)));
                }
                this.dump();
                continue;
                break;
            } while (true);
            finally {
            }
        }
    }

    @Override
    public void clearMemory() {
        if (Log.isLoggable((String)"LruBitmapPool", (int)3)) {
            Log.d((String)"LruBitmapPool", (String)"clearMemory");
        }
        this.trimToSize(0);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public Bitmap get(int n2, int n3, Bitmap.Config config) {
        synchronized (this) {
            config = this.getDirty(n2, n3, config);
            if (config != null) {
                config.eraseColor(0);
            }
            return config;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @TargetApi(value=12)
    @Override
    public Bitmap getDirty(int n2, int n3, Bitmap.Config config) {
        synchronized (this) {
            LruPoolStrategy lruPoolStrategy = this.strategy;
            Bitmap.Config config2 = config != null ? config : DEFAULT_CONFIG;
            if ((config2 = lruPoolStrategy.get(n2, n3, config2)) == null) {
                if (Log.isLoggable((String)"LruBitmapPool", (int)3)) {
                    Log.d((String)"LruBitmapPool", (String)("Missing bitmap=" + this.strategy.logBitmap(n2, n3, config)));
                }
                ++this.misses;
            } else {
                ++this.hits;
                this.currentSize -= this.strategy.getSize((Bitmap)config2);
                this.tracker.remove((Bitmap)config2);
                if (Build.VERSION.SDK_INT >= 12) {
                    config2.setHasAlpha(true);
                }
            }
            if (Log.isLoggable((String)"LruBitmapPool", (int)2)) {
                Log.v((String)"LruBitmapPool", (String)("Get bitmap=" + this.strategy.logBitmap(n2, n3, config)));
            }
            this.dump();
            return config2;
        }
    }

    @Override
    public int getMaxSize() {
        return this.maxSize;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public boolean put(Bitmap bitmap) {
        synchronized (this) {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            }
            if (!bitmap.isMutable() || this.strategy.getSize(bitmap) > this.maxSize || !this.allowedConfigs.contains((Object)bitmap.getConfig())) {
                if (!Log.isLoggable((String)"LruBitmapPool", (int)2)) return false;
                Log.v((String)"LruBitmapPool", (String)("Reject bitmap from pool, bitmap: " + this.strategy.logBitmap(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.allowedConfigs.contains((Object)bitmap.getConfig())));
                return false;
            }
            int n2 = this.strategy.getSize(bitmap);
            this.strategy.put(bitmap);
            this.tracker.add(bitmap);
            ++this.puts;
            this.currentSize += n2;
            if (Log.isLoggable((String)"LruBitmapPool", (int)2)) {
                Log.v((String)"LruBitmapPool", (String)("Put bitmap in pool=" + this.strategy.logBitmap(bitmap)));
            }
            this.dump();
            this.evict();
            return true;
        }
    }

    @Override
    public void setSizeMultiplier(float f2) {
        synchronized (this) {
            this.maxSize = Math.round((float)this.initialMaxSize * f2);
            this.evict();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @SuppressLint(value={"InlinedApi"})
    @Override
    public void trimMemory(int n2) {
        if (Log.isLoggable((String)"LruBitmapPool", (int)3)) {
            Log.d((String)"LruBitmapPool", (String)("trimMemory, level=" + n2));
        }
        if (n2 >= 60) {
            this.clearMemory();
            return;
        } else {
            if (n2 < 40) return;
            {
                this.trimToSize(this.maxSize / 2);
                return;
            }
        }
    }

    private static interface BitmapTracker {
        public void add(Bitmap var1);

        public void remove(Bitmap var1);
    }

    private static class NullBitmapTracker
    implements BitmapTracker {
        private NullBitmapTracker() {
        }

        @Override
        public void add(Bitmap bitmap) {
        }

        @Override
        public void remove(Bitmap bitmap) {
        }
    }

    private static class ThrowingBitmapTracker
    implements BitmapTracker {
        private final Set<Bitmap> bitmaps = Collections.synchronizedSet(new HashSet());

        private ThrowingBitmapTracker() {
        }

        @Override
        public void add(Bitmap bitmap) {
            if (this.bitmaps.contains((Object)bitmap)) {
                throw new IllegalStateException("Can't add already added bitmap: " + (Object)bitmap + " [" + bitmap.getWidth() + "x" + bitmap.getHeight() + "]");
            }
            this.bitmaps.add(bitmap);
        }

        @Override
        public void remove(Bitmap bitmap) {
            if (!this.bitmaps.contains((Object)bitmap)) {
                throw new IllegalStateException("Cannot remove bitmap not in tracker");
            }
            this.bitmaps.remove((Object)bitmap);
        }
    }

}

