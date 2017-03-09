/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 *  android.os.Handler
 *  android.os.Looper
 */
package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.prefill.BitmapPreFillRunner;
import com.bumptech.glide.load.engine.prefill.PreFillQueue;
import com.bumptech.glide.load.engine.prefill.PreFillType;
import com.bumptech.glide.util.Util;
import java.util.HashMap;
import java.util.Map;

public final class BitmapPreFiller {
    private final BitmapPool bitmapPool;
    private BitmapPreFillRunner current;
    private final DecodeFormat defaultFormat;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final MemoryCache memoryCache;

    public BitmapPreFiller(MemoryCache memoryCache, BitmapPool bitmapPool, DecodeFormat decodeFormat) {
        this.memoryCache = memoryCache;
        this.bitmapPool = bitmapPool;
        this.defaultFormat = decodeFormat;
    }

    private static int getSizeInBytes(PreFillType preFillType) {
        return Util.getBitmapByteSize(preFillType.getWidth(), preFillType.getHeight(), preFillType.getConfig());
    }

    PreFillQueue generateAllocationOrder(PreFillType[] arrpreFillType) {
        int n2 = this.memoryCache.getMaxSize();
        int n3 = this.memoryCache.getCurrentSize();
        int n4 = this.bitmapPool.getMaxSize();
        int n5 = 0;
        int n6 = arrpreFillType.length;
        for (int i2 = 0; i2 < n6; ++i2) {
            n5 += arrpreFillType[i2].getWeight();
        }
        float f2 = (float)(n2 - n3 + n4) / (float)n5;
        HashMap<PreFillType, Integer> hashMap = new HashMap<PreFillType, Integer>();
        for (PreFillType preFillType : arrpreFillType) {
            hashMap.put(preFillType, Math.round((float)preFillType.getWeight() * f2) / BitmapPreFiller.getSizeInBytes(preFillType));
        }
        return new PreFillQueue(hashMap);
    }

    /*
     * Enabled aggressive block sorting
     */
    public /* varargs */ void preFill(PreFillType.Builder ... object) {
        if (this.current != null) {
            this.current.cancel();
        }
        PreFillType[] arrpreFillType = new PreFillType[object.length];
        int n2 = 0;
        do {
            if (n2 >= object.length) {
                object = this.generateAllocationOrder(arrpreFillType);
                this.current = new BitmapPreFillRunner(this.bitmapPool, this.memoryCache, (PreFillQueue)object);
                this.handler.post((Runnable)this.current);
                return;
            }
            Object object2 = object[n2];
            if (object2.getConfig() == null) {
                Bitmap.Config config = this.defaultFormat == DecodeFormat.ALWAYS_ARGB_8888 || this.defaultFormat == DecodeFormat.PREFER_ARGB_8888 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
                object2.setConfig(config);
            }
            arrpreFillType[n2] = object2.build();
            ++n2;
        } while (true);
    }
}

