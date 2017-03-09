/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 *  android.graphics.drawable.Drawable
 */
package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.resource.drawable.DrawableResource;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.util.Util;

public class GifDrawableResource
extends DrawableResource<GifDrawable> {
    public GifDrawableResource(GifDrawable gifDrawable) {
        super(gifDrawable);
    }

    @Override
    public int getSize() {
        int n2 = ((GifDrawable)this.drawable).getData().length;
        return Util.getBitmapByteSize(((GifDrawable)this.drawable).getFirstFrame()) + n2;
    }

    @Override
    public void recycle() {
        ((GifDrawable)this.drawable).stop();
        ((GifDrawable)this.drawable).recycle();
    }
}

