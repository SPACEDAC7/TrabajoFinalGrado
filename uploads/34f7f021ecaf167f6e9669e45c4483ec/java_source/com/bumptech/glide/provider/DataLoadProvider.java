/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.provider;

import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.ResourceEncoder;
import java.io.File;

public interface DataLoadProvider<T, Z> {
    public ResourceDecoder<File, Z> getCacheDecoder();

    public ResourceEncoder<Z> getEncoder();

    public ResourceDecoder<T, Z> getSourceDecoder();

    public Encoder<T> getSourceEncoder();
}

