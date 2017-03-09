/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.resource.gif;

import com.bumptech.glide.Priority;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;

class GifFrameModelLoader
implements ModelLoader<GifDecoder, GifDecoder> {
    GifFrameModelLoader() {
    }

    @Override
    public DataFetcher<GifDecoder> getResourceFetcher(GifDecoder gifDecoder, int n2, int n3) {
        return new GifFrameDataFetcher(gifDecoder);
    }

    private static class GifFrameDataFetcher
    implements DataFetcher<GifDecoder> {
        private final GifDecoder decoder;

        public GifFrameDataFetcher(GifDecoder gifDecoder) {
            this.decoder = gifDecoder;
        }

        @Override
        public void cancel() {
        }

        @Override
        public void cleanup() {
        }

        @Override
        public String getId() {
            return String.valueOf(this.decoder.getCurrentFrameIndex());
        }

        @Override
        public GifDecoder loadData(Priority priority) {
            return this.decoder;
        }
    }

}

