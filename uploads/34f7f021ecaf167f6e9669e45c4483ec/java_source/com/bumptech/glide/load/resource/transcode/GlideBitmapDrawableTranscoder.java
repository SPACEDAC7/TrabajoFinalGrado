/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.graphics.Bitmap
 */
package com.bumptech.glide.load.resource.transcode;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.GlideBitmapDrawable;
import com.bumptech.glide.load.resource.bitmap.GlideBitmapDrawableResource;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;

public class GlideBitmapDrawableTranscoder
implements ResourceTranscoder<Bitmap, GlideBitmapDrawable> {
    private final BitmapPool bitmapPool;
    private final Resources resources;

    public GlideBitmapDrawableTranscoder(Context context) {
        this(context.getResources(), Glide.get(context).getBitmapPool());
    }

    public GlideBitmapDrawableTranscoder(Resources resources, BitmapPool bitmapPool) {
        this.resources = resources;
        this.bitmapPool = bitmapPool;
    }

    @Override
    public String getId() {
        return "GlideBitmapDrawableTranscoder.com.bumptech.glide.load.resource.transcode";
    }

    @Override
    public Resource<GlideBitmapDrawable> transcode(Resource<Bitmap> resource) {
        return new GlideBitmapDrawableResource(new GlideBitmapDrawable(this.resources, resource.get()), this.bitmapPool);
    }
}

