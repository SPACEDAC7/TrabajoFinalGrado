/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 *  android.os.Handler
 *  android.os.Looper
 *  android.os.SystemClock
 *  android.util.Log
 */
package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.prefill.PreFillQueue;
import com.bumptech.glide.load.engine.prefill.PreFillType;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.util.Util;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;

final class BitmapPreFillRunner
implements Runnable {
    static final int BACKOFF_RATIO = 4;
    private static final Clock DEFAULT_CLOCK = new Clock();
    static final long INITIAL_BACKOFF_MS = 40;
    static final long MAX_BACKOFF_MS = TimeUnit.SECONDS.toMillis(1);
    static final long MAX_DURATION_MS = 32;
    private static final String TAG = "PreFillRunner";
    private final BitmapPool bitmapPool;
    private final Clock clock;
    private long currentDelay = 40;
    private final Handler handler;
    private boolean isCancelled;
    private final MemoryCache memoryCache;
    private final Set<PreFillType> seenTypes = new HashSet<PreFillType>();
    private final PreFillQueue toPrefill;

    public BitmapPreFillRunner(BitmapPool bitmapPool, MemoryCache memoryCache, PreFillQueue preFillQueue) {
        this(bitmapPool, memoryCache, preFillQueue, DEFAULT_CLOCK, new Handler(Looper.getMainLooper()));
    }

    BitmapPreFillRunner(BitmapPool bitmapPool, MemoryCache memoryCache, PreFillQueue preFillQueue, Clock clock, Handler handler) {
        this.bitmapPool = bitmapPool;
        this.memoryCache = memoryCache;
        this.toPrefill = preFillQueue;
        this.clock = clock;
        this.handler = handler;
    }

    private void addToBitmapPool(PreFillType preFillType, Bitmap bitmap) {
        if (this.seenTypes.add(preFillType) && (preFillType = this.bitmapPool.get(preFillType.getWidth(), preFillType.getHeight(), preFillType.getConfig())) != null) {
            this.bitmapPool.put((Bitmap)preFillType);
        }
        this.bitmapPool.put(bitmap);
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean allocate() {
        long l2 = this.clock.now();
        while (!this.toPrefill.isEmpty() && !this.isGcDetected(l2)) {
            PreFillType preFillType = this.toPrefill.remove();
            Bitmap bitmap = Bitmap.createBitmap((int)preFillType.getWidth(), (int)preFillType.getHeight(), (Bitmap.Config)preFillType.getConfig());
            if (this.getFreeMemoryCacheBytes() >= Util.getBitmapByteSize(bitmap)) {
                this.memoryCache.put(new UniqueKey(), BitmapResource.obtain(bitmap, this.bitmapPool));
            } else {
                this.addToBitmapPool(preFillType, bitmap);
            }
            if (!Log.isLoggable((String)"PreFillRunner", (int)3)) continue;
            Log.d((String)"PreFillRunner", (String)("allocated [" + preFillType.getWidth() + "x" + preFillType.getHeight() + "] " + (Object)preFillType.getConfig() + " size: " + Util.getBitmapByteSize(bitmap)));
        }
        if (!this.isCancelled && !this.toPrefill.isEmpty()) {
            return true;
        }
        return false;
    }

    private int getFreeMemoryCacheBytes() {
        return this.memoryCache.getMaxSize() - this.memoryCache.getCurrentSize();
    }

    private long getNextDelay() {
        long l2 = this.currentDelay;
        this.currentDelay = Math.min(this.currentDelay * 4, MAX_BACKOFF_MS);
        return l2;
    }

    private boolean isGcDetected(long l2) {
        if (this.clock.now() - l2 >= 32) {
            return true;
        }
        return false;
    }

    public void cancel() {
        this.isCancelled = true;
    }

    @Override
    public void run() {
        if (this.allocate()) {
            this.handler.postDelayed((Runnable)this, this.getNextDelay());
        }
    }

    static class Clock {
        Clock() {
        }

        public long now() {
            return SystemClock.currentThreadTimeMillis();
        }
    }

    private static class UniqueKey
    implements Key {
        private UniqueKey() {
        }

        @Override
        public void updateDiskCacheKey(MessageDigest messageDigest) throws UnsupportedEncodingException {
        }
    }

}

