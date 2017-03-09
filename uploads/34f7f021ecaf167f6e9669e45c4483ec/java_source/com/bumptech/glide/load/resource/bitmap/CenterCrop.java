/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 */
package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapTransformation;
import com.bumptech.glide.load.resource.bitmap.TransformationUtils;

public class CenterCrop
extends BitmapTransformation {
    public CenterCrop(Context context) {
        super(context);
    }

    public CenterCrop(BitmapPool bitmapPool) {
        super(bitmapPool);
    }

    @Override
    public String getId() {
        return "CenterCrop.com.bumptech.glide.load.resource.bitmap";
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected Bitmap transform(BitmapPool bitmapPool, Bitmap bitmap, int n2, int n3) {
        Bitmap.Config config = bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
        config = bitmapPool.get(n2, n3, config);
        bitmap = TransformationUtils.centerCrop((Bitmap)config, bitmap, n2, n3);
        if (config != null && config != bitmap && !bitmapPool.put((Bitmap)config)) {
            config.recycle();
        }
        return bitmap;
    }
}

