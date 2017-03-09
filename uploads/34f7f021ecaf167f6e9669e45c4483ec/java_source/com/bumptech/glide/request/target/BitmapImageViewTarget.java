/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 *  android.view.View
 *  android.widget.ImageView
 */
package com.bumptech.glide.request.target;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import com.bumptech.glide.request.target.ImageViewTarget;

public class BitmapImageViewTarget
extends ImageViewTarget<Bitmap> {
    public BitmapImageViewTarget(ImageView imageView) {
        super(imageView);
    }

    @Override
    protected void setResource(Bitmap bitmap) {
        ((ImageView)this.view).setImageBitmap(bitmap);
    }
}

