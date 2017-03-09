/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 */
package com.bumptech.glide.load.resource.gifbitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapper;

public class GifBitmapWrapperResource
implements Resource<GifBitmapWrapper> {
    private final GifBitmapWrapper data;

    public GifBitmapWrapperResource(GifBitmapWrapper gifBitmapWrapper) {
        if (gifBitmapWrapper == null) {
            throw new NullPointerException("Data must not be null");
        }
        this.data = gifBitmapWrapper;
    }

    @Override
    public GifBitmapWrapper get() {
        return this.data;
    }

    @Override
    public int getSize() {
        return this.data.getSize();
    }

    @Override
    public void recycle() {
        Resource resource = this.data.getBitmapResource();
        if (resource != null) {
            resource.recycle();
        }
        if ((resource = this.data.getGifResource()) != null) {
            resource.recycle();
        }
    }
}

