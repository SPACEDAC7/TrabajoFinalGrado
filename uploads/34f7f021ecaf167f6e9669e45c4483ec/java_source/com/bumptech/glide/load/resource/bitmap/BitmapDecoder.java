/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 */
package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;

public interface BitmapDecoder<T> {
    public Bitmap decode(T var1, BitmapPool var2, int var3, int var4, DecodeFormat var5) throws Exception;

    public String getId();
}

