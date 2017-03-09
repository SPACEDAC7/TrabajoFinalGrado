/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.resource.transcode;

import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.bytes.BytesResource;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;

public class GifDrawableBytesTranscoder
implements ResourceTranscoder<GifDrawable, byte[]> {
    @Override
    public String getId() {
        return "GifDrawableBytesTranscoder.com.bumptech.glide.load.resource.transcode";
    }

    @Override
    public Resource<byte[]> transcode(Resource<GifDrawable> resource) {
        return new BytesResource(resource.get().getData());
    }
}

