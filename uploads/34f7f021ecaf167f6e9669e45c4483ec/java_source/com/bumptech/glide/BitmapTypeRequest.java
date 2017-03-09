/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$CompressFormat
 *  android.os.ParcelFileDescriptor
 */
package com.bumptech.glide;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.BitmapRequestBuilder;
import com.bumptech.glide.GenericRequestBuilder;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.model.ImageVideoModelLoader;
import com.bumptech.glide.load.model.ImageVideoWrapper;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.transcode.BitmapBytesTranscoder;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.provider.DataLoadProvider;
import com.bumptech.glide.provider.FixedLoadProvider;
import com.bumptech.glide.provider.LoadProvider;
import java.io.InputStream;

public class BitmapTypeRequest<ModelType>
extends BitmapRequestBuilder<ModelType, Bitmap> {
    private final ModelLoader<ModelType, ParcelFileDescriptor> fileDescriptorModelLoader;
    private final Glide glide;
    private final RequestManager.OptionsApplier optionsApplier;
    private final ModelLoader<ModelType, InputStream> streamModelLoader;

    BitmapTypeRequest(GenericRequestBuilder<ModelType, ?, ?, ?> genericRequestBuilder, ModelLoader<ModelType, InputStream> modelLoader, ModelLoader<ModelType, ParcelFileDescriptor> modelLoader2, RequestManager.OptionsApplier optionsApplier) {
        super(BitmapTypeRequest.buildProvider(genericRequestBuilder.glide, modelLoader, modelLoader2, Bitmap.class, null), Bitmap.class, genericRequestBuilder);
        this.streamModelLoader = modelLoader;
        this.fileDescriptorModelLoader = modelLoader2;
        this.glide = genericRequestBuilder.glide;
        this.optionsApplier = optionsApplier;
    }

    private static <A, R> FixedLoadProvider<A, ImageVideoWrapper, Bitmap, R> buildProvider(Glide object, ModelLoader<A, InputStream> modelLoader, ModelLoader<A, ParcelFileDescriptor> modelLoader2, Class<R> class_, ResourceTranscoder<Bitmap, R> resourceTranscoder) {
        if (modelLoader == null && modelLoader2 == null) {
            return null;
        }
        ResourceTranscoder resourceTranscoder2 = resourceTranscoder;
        if (resourceTranscoder == null) {
            resourceTranscoder2 = object.buildTranscoder(Bitmap.class, class_);
        }
        object = object.buildDataProvider(ImageVideoWrapper.class, Bitmap.class);
        return new FixedLoadProvider(new ImageVideoModelLoader<A>(modelLoader, modelLoader2), resourceTranscoder2, object);
    }

    public BitmapRequestBuilder<ModelType, byte[]> toBytes() {
        return this.transcode(new BitmapBytesTranscoder(), byte[].class);
    }

    public BitmapRequestBuilder<ModelType, byte[]> toBytes(Bitmap.CompressFormat compressFormat, int n2) {
        return this.transcode(new BitmapBytesTranscoder(compressFormat, n2), byte[].class);
    }

    public <R> BitmapRequestBuilder<ModelType, R> transcode(ResourceTranscoder<Bitmap, R> resourceTranscoder, Class<R> class_) {
        return this.optionsApplier.apply(new BitmapRequestBuilder<ModelType, R>(BitmapTypeRequest.buildProvider(this.glide, this.streamModelLoader, this.fileDescriptorModelLoader, class_, resourceTranscoder), class_, this));
    }
}

