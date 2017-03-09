/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.provider;

import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.provider.DataLoadProvider;

public interface LoadProvider<A, T, Z, R>
extends DataLoadProvider<T, Z> {
    public ModelLoader<A, T> getModelLoader();

    public ResourceTranscoder<Z, R> getTranscoder();
}

