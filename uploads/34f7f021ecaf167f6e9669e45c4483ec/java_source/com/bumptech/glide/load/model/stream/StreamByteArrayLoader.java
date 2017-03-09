/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.bumptech.glide.load.model.stream;

import android.content.Context;
import com.bumptech.glide.load.data.ByteArrayFetcher;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.stream.StreamModelLoader;
import java.io.InputStream;

public class StreamByteArrayLoader
implements StreamModelLoader<byte[]> {
    private final String id;

    public StreamByteArrayLoader() {
        this("");
    }

    @Deprecated
    public StreamByteArrayLoader(String string2) {
        this.id = string2;
    }

    @Override
    public DataFetcher<InputStream> getResourceFetcher(byte[] arrby, int n2, int n3) {
        return new ByteArrayFetcher(arrby, this.id);
    }

    public static class Factory
    implements ModelLoaderFactory<byte[], InputStream> {
        @Override
        public ModelLoader<byte[], InputStream> build(Context context, GenericLoaderFactory genericLoaderFactory) {
            return new StreamByteArrayLoader();
        }

        @Override
        public void teardown() {
        }
    }

}

