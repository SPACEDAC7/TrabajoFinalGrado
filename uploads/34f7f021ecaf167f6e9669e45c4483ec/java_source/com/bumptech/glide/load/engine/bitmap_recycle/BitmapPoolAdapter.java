/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 */
package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;

public class BitmapPoolAdapter
implements BitmapPool {
    @Override
    public void clearMemory() {
    }

    @Override
    public Bitmap get(int n2, int n3, Bitmap.Config config) {
        return null;
    }

    @Override
    public Bitmap getDirty(int n2, int n3, Bitmap.Config config) {
        return null;
    }

    @Override
    public int getMaxSize() {
        return 0;
    }

    @Override
    public boolean put(Bitmap bitmap) {
        return false;
    }

    @Override
    public void setSizeMultiplier(float f2) {
    }

    @Override
    public void trimMemory(int n2) {
    }
}

