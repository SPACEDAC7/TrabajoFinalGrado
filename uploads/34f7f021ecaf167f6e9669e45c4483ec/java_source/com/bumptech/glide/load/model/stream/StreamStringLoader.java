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
import com.bumptech.glide.load.model.StringLoader;
import com.bumptech.glide.load.model.stream.StreamModelLoader;
import java.io.InputStream;

public class StreamStringLoader
extends StringLoader<InputStream>
implements StreamModelLoader<String> {
    public StreamStringLoader(Context context) {
        this(Glide.buildStreamModelLoader(Uri.class, context));
    }

    public StreamStringLoader(ModelLoader<Uri, InputStream> modelLoader) {
        super(modelLoader);
    }

    public static class Factory
    implements ModelLoaderFactory<String, InputStream> {
        @Override
        public ModelLoader<String, InputStream> build(Context context, GenericLoaderFactory genericLoaderFactory) {
            return new StreamStringLoader(genericLoaderFactory.buildModelLoader(Uri.class, InputStream.class));
        }

        @Override
        public void teardown() {
        }
    }

}

