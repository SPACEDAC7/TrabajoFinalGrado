/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.ParcelFileDescriptor
 */
package com.bumptech.glide.load.resource.gifbitmap;

import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.model.ImageVideoWrapper;
import com.bumptech.glide.load.resource.gifbitmap.GifBitmapWrapper;
import java.io.IOException;
import java.io.InputStream;

public class GifBitmapWrapperStreamResourceDecoder
implements ResourceDecoder<InputStream, GifBitmapWrapper> {
    private final ResourceDecoder<ImageVideoWrapper, GifBitmapWrapper> gifBitmapDecoder;

    public GifBitmapWrapperStreamResourceDecoder(ResourceDecoder<ImageVideoWrapper, GifBitmapWrapper> resourceDecoder) {
        this.gifBitmapDecoder = resourceDecoder;
    }

    @Override
    public Resource<GifBitmapWrapper> decode(InputStream inputStream, int n2, int n3) throws IOException {
        return this.gifBitmapDecoder.decode(new ImageVideoWrapper(inputStream, null), n2, n3);
    }

    @Override
    public String getId() {
        return this.gifBitmapDecoder.getId();
    }
}

