/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.bumptech.glide.load.model.stream;

import android.content.Context;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.HttpUrlFetcher;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelCache;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import java.io.InputStream;

public class HttpUrlGlideUrlLoader
implements ModelLoader<GlideUrl, InputStream> {
    private final ModelCache<GlideUrl, GlideUrl> modelCache;

    public HttpUrlGlideUrlLoader() {
        this(null);
    }

    public HttpUrlGlideUrlLoader(ModelCache<GlideUrl, GlideUrl> modelCache) {
        this.modelCache = modelCache;
    }

    @Override
    public DataFetcher<InputStream> getResourceFetcher(GlideUrl glideUrl, int n2, int n3) {
        GlideUrl glideUrl2 = glideUrl;
        if (this.modelCache != null) {
            GlideUrl glideUrl3;
            glideUrl2 = glideUrl3 = this.modelCache.get(glideUrl, 0, 0);
            if (glideUrl3 == null) {
                this.modelCache.put(glideUrl, 0, 0, glideUrl);
                glideUrl2 = glideUrl;
            }
        }
        return new HttpUrlFetcher(glideUrl2);
    }

    public static class Factory
    implements ModelLoaderFactory<GlideUrl, InputStream> {
        private final ModelCache<GlideUrl, GlideUrl> modelCache = new ModelCache(500);

        @Override
        public ModelLoader<GlideUrl, InputStream> build(Context context, GenericLoaderFactory genericLoaderFactory) {
            return new HttpUrlGlideUrlLoader(this.modelCache);
        }

        @Override
        public void teardown() {
        }
    }

}

