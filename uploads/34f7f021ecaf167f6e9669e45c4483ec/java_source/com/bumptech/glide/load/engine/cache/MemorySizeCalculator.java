/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.app.ActivityManager
 *  android.content.Context
 *  android.content.res.Resources
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.text.format.Formatter
 *  android.util.DisplayMetrics
 *  android.util.Log
 */
package com.bumptech.glide.load.engine.cache;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;

public class MemorySizeCalculator {
    static final int BITMAP_POOL_TARGET_SCREENS = 4;
    static final int BYTES_PER_ARGB_8888_PIXEL = 4;
    static final float LOW_MEMORY_MAX_SIZE_MULTIPLIER = 0.33f;
    static final float MAX_SIZE_MULTIPLIER = 0.4f;
    static final int MEMORY_CACHE_TARGET_SCREENS = 2;
    private static final String TAG = "MemorySizeCalculator";
    private final int bitmapPoolSize;
    private final Context context;
    private final int memoryCacheSize;

    public MemorySizeCalculator(Context context) {
        this(context, (ActivityManager)context.getSystemService("activity"), new DisplayMetricsScreenDimensions(context.getResources().getDisplayMetrics()));
    }

    /*
     * Enabled aggressive block sorting
     */
    MemorySizeCalculator(Context object, ActivityManager activityManager, ScreenDimensions screenDimensions) {
        this.context = object;
        int n2 = MemorySizeCalculator.getMaxSize(activityManager);
        int n3 = screenDimensions.getWidthPixels() * screenDimensions.getHeightPixels() * 4;
        int n4 = n3 * 4;
        if ((n3 *= 2) + n4 <= n2) {
            this.memoryCacheSize = n3;
            this.bitmapPoolSize = n4;
        } else {
            int n5 = Math.round((float)n2 / 6.0f);
            this.memoryCacheSize = n5 * 2;
            this.bitmapPoolSize = n5 * 4;
        }
        if (Log.isLoggable((String)"MemorySizeCalculator", (int)3)) {
            object = new StringBuilder().append("Calculated memory cache size: ").append(this.toMb(this.memoryCacheSize)).append(" pool size: ").append(this.toMb(this.bitmapPoolSize)).append(" memory class limited? ");
            boolean bl = n3 + n4 > n2;
            Log.d((String)"MemorySizeCalculator", (String)object.append(bl).append(" max size: ").append(this.toMb(n2)).append(" memoryClass: ").append(activityManager.getMemoryClass()).append(" isLowMemoryDevice: ").append(MemorySizeCalculator.isLowMemoryDevice(activityManager)).toString());
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static int getMaxSize(ActivityManager activityManager) {
        float f2;
        int n2 = activityManager.getMemoryClass();
        boolean bl = MemorySizeCalculator.isLowMemoryDevice(activityManager);
        float f3 = n2 * 1024 * 1024;
        if (bl) {
            f2 = 0.33f;
            do {
                return Math.round(f2 * f3);
                break;
            } while (true);
        }
        f2 = 0.4f;
        return Math.round(f2 * f3);
    }

    @TargetApi(value=19)
    private static boolean isLowMemoryDevice(ActivityManager activityManager) {
        if (Build.VERSION.SDK_INT >= 19) {
            return activityManager.isLowRamDevice();
        }
        if (Build.VERSION.SDK_INT < 11) {
            return true;
        }
        return false;
    }

    private String toMb(int n2) {
        return Formatter.formatFileSize((Context)this.context, (long)n2);
    }

    public int getBitmapPoolSize() {
        return this.bitmapPoolSize;
    }

    public int getMemoryCacheSize() {
        return this.memoryCacheSize;
    }

    private static class DisplayMetricsScreenDimensions
    implements ScreenDimensions {
        private final DisplayMetrics displayMetrics;

        public DisplayMetricsScreenDimensions(DisplayMetrics displayMetrics) {
            this.displayMetrics = displayMetrics;
        }

        @Override
        public int getHeightPixels() {
            return this.displayMetrics.heightPixels;
        }

        @Override
        public int getWidthPixels() {
            return this.displayMetrics.widthPixels;
        }
    }

    static interface ScreenDimensions {
        public int getHeightPixels();

        public int getWidthPixels();
    }

}

