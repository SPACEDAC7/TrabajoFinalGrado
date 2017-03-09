/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 */
package com.bumptech.glide.load.resource.gifbitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapper;
import java.io.OutputStream;

public class GifBitmapWrapperResourceEncoder
implements ResourceEncoder<GifBitmapWrapper> {
    private final ResourceEncoder<Bitmap> bitmapEncoder;
    private final ResourceEncoder<GifDrawable> gifEncoder;
    private String id;

    public GifBitmapWrapperResourceEncoder(ResourceEncoder<Bitmap> resourceEncoder, ResourceEncoder<GifDrawable> resourceEncoder2) {
        this.bitmapEncoder = resourceEncoder;
        this.gifEncoder = resourceEncoder2;
    }

    @Override
    public boolean encode(Resource<GifBitmapWrapper> object, OutputStream outputStream) {
        Resource<Bitmap> resource = (object = object.get()).getBitmapResource();
        if (resource != null) {
            return this.bitmapEncoder.encode((Bitmap)resource, outputStream);
        }
        return this.gifEncoder.encode((GifDrawable)((Object)object.getGifResource()), outputStream);
    }

    @Override
    public String getId() {
        if (this.id == null) {
            this.id = this.bitmapEncoder.getId() + this.gifEncoder.getId();
        }
        return this.id;
    }
}

