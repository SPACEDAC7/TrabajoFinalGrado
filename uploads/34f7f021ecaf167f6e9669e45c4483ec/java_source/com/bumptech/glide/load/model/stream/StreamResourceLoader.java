/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.net.Uri
 */
package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.ResourceLoader;
import com.bumptech.glide.load.model.stream.StreamModelLoader;
import java.io.InputStream;

public class StreamResourceLoader
extends ResourceLoader<InputStream>
implements StreamModelLoader<Integer> {
    public StreamResourceLoader(Context context) {
        this(context, Glide.buildStreamModelLoader(Uri.class, context));
    }

    public StreamResourceLoader(Context context, ModelLoader<Uri, InputStream> modelLoader) {
        super(context, modelLoader);
    }

    public static class Factory
    implements ModelLoaderFactory<Integer, InputStream> {
        @Override
        public ModelLoader<Integer, InputStream> build(Context context, GenericLoaderFactory genericLoaderFactory) {
            return new StreamResourceLoader(context, genericLoaderFactory.buildModelLoader(Uri.class, InputStream.class));
        }

        @Override
        public void teardown() {
        }
    }

}

