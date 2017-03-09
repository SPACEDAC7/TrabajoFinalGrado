/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 *  android.os.ParcelFileDescriptor
 */
package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.model.ImageVideoWrapper;
import com.bumptech.glide.load.model.ImageVideoWrapperEncoder;
import com.bumptech.glide.load.resource.bitmap.ImageVideoBitmapDecoder;
import com.bumptech.glide.provider.DataLoadProvider;
import java.io.File;
import java.io.InputStream;

public class ImageVideoDataLoadProvider
implements DataLoadProvider<ImageVideoWrapper, Bitmap> {
    private final ResourceDecoder<File, Bitmap> cacheDecoder;
    private final ResourceEncoder<Bitmap> encoder;
    private final ImageVideoBitmapDecoder sourceDecoder;
    private final ImageVideoWrapperEncoder sourceEncoder;

    public ImageVideoDataLoadProvider(DataLoadProvider<InputStream, Bitmap> dataLoadProvider, DataLoadProvider<ParcelFileDescriptor, Bitmap> dataLoadProvider2) {
        this.encoder = dataLoadProvider.getEncoder();
        this.sourceEncoder = new ImageVideoWrapperEncoder(dataLoadProvider.getSourceEncoder(), dataLoadProvider2.getSourceEncoder());
        this.cacheDecoder = dataLoadProvider.getCacheDecoder();
        this.sourceDecoder = new ImageVideoBitmapDecoder(dataLoadProvider.getSourceDecoder(), dataLoadProvider2.getSourceDecoder());
    }

    @Override
    public ResourceDecoder<File, Bitmap> getCacheDecoder() {
        return this.cacheDecoder;
    }

    @Override
    public ResourceEncoder<Bitmap> getEncoder() {
        return this.encoder;
    }

    @Override
    public ResourceDecoder<ImageVideoWrapper, Bitmap> getSourceDecoder() {
        return this.sourceDecoder;
    }

    @Override
    public Encoder<ImageVideoWrapper> getSourceEncoder() {
        return this.sourceEncoder;
    }
}

