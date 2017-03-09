/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide;

import com.bumptech.glide.GenericRequestBuilder;
import com.bumptech.glide.GifRequestBuilder;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.transcode.GifDrawableBytesTranscoder;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.provider.DataLoadProvider;
import com.bumptech.glide.provider.FixedLoadProvider;
import com.bumptech.glide.provider.LoadProvider;
import java.io.InputStream;

public class GifTypeRequest<ModelType>
extends GifRequestBuilder<ModelType> {
    private final RequestManager.OptionsApplier optionsApplier;
    private final ModelLoader<ModelType, InputStream> streamModelLoader;

    GifTypeRequest(GenericRequestBuilder<ModelType, ?, ?, ?> genericRequestBuilder, ModelLoader<ModelType, InputStream> modelLoader, RequestManager.OptionsApplier optionsApplier) {
        super(GifTypeRequest.buildProvider(genericRequestBuilder.glide, modelLoader, GifDrawable.class, null), GifDrawable.class, genericRequestBuilder);
        this.streamModelLoader = modelLoader;
        this.optionsApplier = optionsApplier;
        this.crossFade();
    }

    private static <A, R> FixedLoadProvider<A, InputStream, GifDrawable, R> buildProvider(Glide glide, ModelLoader<A, InputStream> modelLoader, Class<R> class_, ResourceTranscoder<GifDrawable, R> resourceTranscoder) {
        if (modelLoader == null) {
            return null;
        }
        ResourceTranscoder resourceTranscoder2 = resourceTranscoder;
        if (resourceTranscoder == null) {
            resourceTranscoder2 = glide.buildTranscoder(GifDrawable.class, class_);
        }
        return new FixedLoadProvider<A, InputStream, GifDrawable, R>(modelLoader, resourceTranscoder2, glide.buildDataProvider(InputStream.class, GifDrawable.class));
    }

    public GenericRequestBuilder<ModelType, InputStream, GifDrawable, byte[]> toBytes() {
        return this.transcode(new GifDrawableBytesTranscoder(), byte[].class);
    }

    public <R> GenericRequestBuilder<ModelType, InputStream, GifDrawable, R> transcode(ResourceTranscoder<GifDrawable, R> object, Class<R> class_) {
        object = GifTypeRequest.buildProvider(this.glide, this.streamModelLoader, class_, object);
        return this.optionsApplier.apply(new GenericRequestBuilder(object, class_, this));
    }
}

