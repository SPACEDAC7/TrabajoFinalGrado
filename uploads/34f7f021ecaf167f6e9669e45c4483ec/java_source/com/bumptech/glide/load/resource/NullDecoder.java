/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.resource;

import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;

public class NullDecoder<T, Z>
implements ResourceDecoder<T, Z> {
    private static final NullDecoder<?, ?> NULL_DECODER = new NullDecoder<T, Z>();

    public static <T, Z> NullDecoder<T, Z> get() {
        return NULL_DECODER;
    }

    @Override
    public Resource<Z> decode(T t2, int n2, int n3) {
        return null;
    }

    @Override
    public String getId() {
        return "";
    }
}

