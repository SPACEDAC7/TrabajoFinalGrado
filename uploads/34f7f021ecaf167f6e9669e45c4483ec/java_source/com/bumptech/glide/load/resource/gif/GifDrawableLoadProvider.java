/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.model.StreamEncoder;
import com.bumptech.glide.load.resource.file.FileToStreamDecoder;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gif.GifResourceDecoder;
import com.bumptech.glide.load.resource.gif.GifResourceEncoder;
import com.bumptech.glide.provider.DataLoadProvider;
import java.io.File;
import java.io.InputStream;

public class GifDrawableLoadProvider
implements DataLoadProvider<InputStream, GifDrawable> {
    private final FileToStreamDecoder<GifDrawable> cacheDecoder;
    private final GifResourceDecoder decoder;
    private final GifResourceEncoder encoder;
    private final StreamEncoder sourceEncoder;

    public GifDrawableLoadProvider(Context context, BitmapPool bitmapPool) {
        this.decoder = new GifResourceDecoder(context, bitmapPool);
        this.cacheDecoder = new FileToStreamDecoder(this.decoder);
        this.encoder = new GifResourceEncoder(bitmapPool);
        this.sourceEncoder = new StreamEncoder();
    }

    @Override
    public ResourceDecoder<File, GifDrawable> getCacheDecoder() {
        return this.cacheDecoder;
    }

    @Override
    public ResourceEncoder<GifDrawable> getEncoder() {
        return this.encoder;
    }

    @Override
    public ResourceDecoder<InputStream, GifDrawable> getSourceDecoder() {
        return this.decoder;
    }

    @Override
    public Encoder<InputStream> getSourceEncoder() {
        return this.sourceEncoder;
    }
}

