/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.Bitmap
 */
package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.util.Util;

public abstract class BitmapTransformation
implements Transformation<Bitmap> {
    private BitmapPool bitmapPool;

    public BitmapTransformation(Context context) {
        this(Glide.get(context).getBitmapPool());
    }

    public BitmapTransformation(BitmapPool bitmapPool) {
        this.bitmapPool = bitmapPool;
    }

    protected abstract Bitmap transform(BitmapPool var1, Bitmap var2, int var3, int var4);

    @Override
    public final Resource<Bitmap> transform(Resource<Bitmap> resource, int n2, int n3) {
        Bitmap bitmap;
        if (!Util.isValidDimensions(n2, n3)) {
            throw new IllegalArgumentException("Cannot apply transformation on width: " + n2 + " or height: " + n3 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
        }
        Bitmap bitmap2 = resource.get();
        if (n2 == Integer.MIN_VALUE) {
            n2 = bitmap2.getWidth();
        }
        if (n3 == Integer.MIN_VALUE) {
            n3 = bitmap2.getHeight();
        }
        if (bitmap2.equals((Object)(bitmap = this.transform(this.bitmapPool, bitmap2, n2, n3)))) {
            return resource;
        }
        return BitmapResource.obtain(bitmap, this.bitmapPool);
    }
}

