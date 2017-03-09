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
import com.bumptech.glide.load.model.FileLoader;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.stream.StreamModelLoader;
import java.io.File;
import java.io.InputStream;

public class StreamFileLoader
extends FileLoader<InputStream>
implements StreamModelLoader<File> {
    public StreamFileLoader(Context context) {
        this(Glide.buildStreamModelLoader(Uri.class, context));
    }

    public StreamFileLoader(ModelLoader<Uri, InputStream> modelLoader) {
        super(modelLoader);
    }

    public static class Factory
    implements ModelLoaderFactory<File, InputStream> {
        @Override
        public ModelLoader<File, InputStream> build(Context context, GenericLoaderFactory genericLoaderFactory) {
            return new StreamFileLoader(genericLoaderFactory.buildModelLoader(Uri.class, InputStream.class));
        }

        @Override
        public void teardown() {
        }
    }

}

