/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.resource.transcode;

import com.bumptech.glide.load.engine.Resource;

public interface ResourceTranscoder<Z, R> {
    public String getId();

    public Resource<R> transcode(Resource<Z> var1);
}

