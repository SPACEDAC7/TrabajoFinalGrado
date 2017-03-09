/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.provider;

import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.provider.DataLoadProvider;
import java.io.File;

public class EmptyDataLoadProvider<T, Z>
implements DataLoadProvider<T, Z> {
    private static final DataLoadProvider<?, ?> EMPTY_DATA_LOAD_PROVIDER = new EmptyDataLoadProvider();

    public static <T, Z> DataLoadProvider<T, Z> get() {
        return EMPTY_DATA_LOAD_PROVIDER;
    }

    @Override
    public ResourceDecoder<File, Z> getCacheDecoder() {
        return null;
    }

    @Override
    public ResourceEncoder<Z> getEncoder() {
        return null;
    }

    @Override
    public ResourceDecoder<T, Z> getSourceDecoder() {
        return null;
    }

    @Override
    public Encoder<T> getSourceEncoder() {
        return null;
    }
}

