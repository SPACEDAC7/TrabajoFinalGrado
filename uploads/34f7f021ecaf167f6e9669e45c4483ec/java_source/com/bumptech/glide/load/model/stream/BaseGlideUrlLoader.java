/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 */
package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.text.TextUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.Headers;
import com.bumptech.glide.load.model.ModelCache;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.stream.StreamModelLoader;
import java.io.InputStream;

public abstract class BaseGlideUrlLoader<T>
implements StreamModelLoader<T> {
    private final ModelLoader<GlideUrl, InputStream> concreteLoader;
    private final ModelCache<T, GlideUrl> modelCache;

    public BaseGlideUrlLoader(Context context) {
        this(context, null);
    }

    public BaseGlideUrlLoader(Context context, ModelCache<T, GlideUrl> modelCache) {
        this(Glide.buildModelLoader(GlideUrl.class, InputStream.class, context), modelCache);
    }

    public BaseGlideUrlLoader(ModelLoader<GlideUrl, InputStream> modelLoader) {
        this(modelLoader, null);
    }

    public BaseGlideUrlLoader(ModelLoader<GlideUrl, InputStream> modelLoader, ModelCache<T, GlideUrl> modelCache) {
        this.concreteLoader = modelLoader;
        this.modelCache = modelCache;
    }

    protected Headers getHeaders(T t2, int n2, int n3) {
        return Headers.DEFAULT;
    }

    @Override
    public DataFetcher<InputStream> getResourceFetcher(T t2, int n2, int n3) {
        Object object = null;
        if (this.modelCache != null) {
            object = this.modelCache.get(t2, n2, n3);
        }
        Object object2 = object;
        if (object == null) {
            object = this.getUrl(t2, n2, n3);
            if (TextUtils.isEmpty((CharSequence)object)) {
                return null;
            }
            object2 = object = new GlideUrl((String)object, this.getHeaders(t2, n2, n3));
            if (this.modelCache != null) {
                this.modelCache.put(t2, n2, n3, (GlideUrl)object);
                object2 = object;
            }
        }
        return this.concreteLoader.getResourceFetcher((GlideUrl)object2, n2, n3);
    }

    protected abstract String getUrl(T var1, int var2, int var3);
}

