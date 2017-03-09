/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 */
package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gif.GifDrawableResource;

public class GifDrawableTransformation
implements Transformation<GifDrawable> {
    private final BitmapPool bitmapPool;
    private final Transformation<Bitmap> wrapped;

    public GifDrawableTransformation(Transformation<Bitmap> transformation, BitmapPool bitmapPool) {
        this.wrapped = transformation;
        this.bitmapPool = bitmapPool;
    }

    @Override
    public String getId() {
        return this.wrapped.getId();
    }

    @Override
    public Resource<GifDrawable> transform(Resource<GifDrawable> gifDrawableResource, int n2, int n3) {
        GifDrawable gifDrawable = gifDrawableResource.get();
        Bitmap bitmap = gifDrawableResource.get().getFirstFrame();
        BitmapResource bitmapResource = new BitmapResource(bitmap, this.bitmapPool);
        if (!(bitmapResource = this.wrapped.transform(bitmapResource, n2, n3).get()).equals((Object)bitmap)) {
            gifDrawableResource = new GifDrawableResource(new GifDrawable(gifDrawable, (Bitmap)bitmapResource, this.wrapped));
        }
        return gifDrawableResource;
    }
}

