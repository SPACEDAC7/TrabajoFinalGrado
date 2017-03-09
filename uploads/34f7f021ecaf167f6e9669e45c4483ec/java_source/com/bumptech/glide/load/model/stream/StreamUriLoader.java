/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.AssetManager
 *  android.net.Uri
 */
package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.StreamAssetPathFetcher;
import com.bumptech.glide.load.data.StreamLocalUriFetcher;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.UriLoader;
import com.bumptech.glide.load.model.stream.StreamModelLoader;
import java.io.InputStream;

public class StreamUriLoader
extends UriLoader<InputStream>
implements StreamModelLoader<Uri> {
    public StreamUriLoader(Context context) {
        this(context, Glide.buildStreamModelLoader(GlideUrl.class, context));
    }

    public StreamUriLoader(Context context, ModelLoader<GlideUrl, InputStream> modelLoader) {
        super(context, modelLoader);
    }

    @Override
    protected DataFetcher<InputStream> getAssetPathFetcher(Context context, String string2) {
        return new StreamAssetPathFetcher(context.getApplicationContext().getAssets(), string2);
    }

    @Override
    protected DataFetcher<InputStream> getLocalUriFetcher(Context context, Uri uri) {
        return new StreamLocalUriFetcher(context, uri);
    }

    public static class Factory
    implements ModelLoaderFactory<Uri, InputStream> {
        @Override
        public ModelLoader<Uri, InputStream> build(Context context, GenericLoaderFactory genericLoaderFactory) {
            return new StreamUriLoader(context, genericLoaderFactory.buildModelLoader(GlideUrl.class, InputStream.class));
        }

        @Override
        public void teardown() {
        }
    }

}

