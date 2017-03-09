/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 */
package com.bumptech.glide.load.resource.gifbitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gif.GifDrawableTransformation;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapper;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapperResource;

public class GifBitmapWrapperTransformation
implements Transformation<GifBitmapWrapper> {
    private final Transformation<Bitmap> bitmapTransformation;
    private final Transformation<GifDrawable> gifDataTransformation;

    GifBitmapWrapperTransformation(Transformation<Bitmap> transformation, Transformation<GifDrawable> transformation2) {
        this.bitmapTransformation = transformation;
        this.gifDataTransformation = transformation2;
    }

    public GifBitmapWrapperTransformation(BitmapPool bitmapPool, Transformation<Bitmap> transformation) {
        this(transformation, new GifDrawableTransformation(transformation, bitmapPool));
    }

    @Override
    public String getId() {
        return this.bitmapTransformation.getId();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public Resource<GifBitmapWrapper> transform(Resource<GifBitmapWrapper> gifBitmapWrapperResource, int n2, int n3) {
        GifBitmapWrapperResource gifBitmapWrapperResource2;
        Resource<Bitmap> resource = ((GifBitmapWrapper)gifBitmapWrapperResource.get()).getBitmapResource();
        Resource<GifDrawable> resource2 = ((GifBitmapWrapper)gifBitmapWrapperResource.get()).getGifResource();
        if (resource != null && this.bitmapTransformation != null) {
            resource2 = this.bitmapTransformation.transform(resource, n2, n3);
            gifBitmapWrapperResource2 = gifBitmapWrapperResource;
            if (resource.equals(resource2)) return gifBitmapWrapperResource2;
            return new GifBitmapWrapperResource(new GifBitmapWrapper(resource2, ((GifBitmapWrapper)gifBitmapWrapperResource.get()).getGifResource()));
        }
        gifBitmapWrapperResource2 = gifBitmapWrapperResource;
        if (resource2 == null) return gifBitmapWrapperResource2;
        gifBitmapWrapperResource2 = gifBitmapWrapperResource;
        if (this.gifDataTransformation == null) return gifBitmapWrapperResource2;
        Resource<GifDrawable> resource3 = this.gifDataTransformation.transform(resource2, n2, n3);
        gifBitmapWrapperResource2 = gifBitmapWrapperResource;
        if (resource2.equals(resource3)) return gifBitmapWrapperResource2;
        return new GifBitmapWrapperResource(new GifBitmapWrapper(((GifBitmapWrapper)gifBitmapWrapperResource.get()).getBitmapResource(), resource3));
    }
}

