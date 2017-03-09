/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.net.Uri
 */
package com.bumptech.glide.load.model;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.AssetUriParser;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelLoader;

public abstract class UriLoader<T>
implements ModelLoader<Uri, T> {
    private final Context context;
    private final ModelLoader<GlideUrl, T> urlLoader;

    public UriLoader(Context context, ModelLoader<GlideUrl, T> modelLoader) {
        this.context = context;
        this.urlLoader = modelLoader;
    }

    private static boolean isLocalUri(String string2) {
        if ("file".equals(string2) || "content".equals(string2) || "android.resource".equals(string2)) {
            return true;
        }
        return false;
    }

    protected abstract DataFetcher<T> getAssetPathFetcher(Context var1, String var2);

    protected abstract DataFetcher<T> getLocalUriFetcher(Context var1, Uri var2);

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public final DataFetcher<T> getResourceFetcher(Uri object, int n2, int n3) {
        String string2 = object.getScheme();
        DataFetcher<T> dataFetcher = null;
        if (UriLoader.isLocalUri(string2)) {
            if (!AssetUriParser.isAssetUri((Uri)object)) return this.getLocalUriFetcher(this.context, (Uri)object);
            object = AssetUriParser.toAssetPath((Uri)object);
            return this.getAssetPathFetcher(this.context, (String)object);
        }
        DataFetcher<T> dataFetcher2 = dataFetcher;
        if (this.urlLoader == null) return dataFetcher2;
        if ("http".equals(string2)) return this.urlLoader.getResourceFetcher(new GlideUrl(object.toString()), n2, n3);
        dataFetcher2 = dataFetcher;
        if (!"https".equals(string2)) return dataFetcher2;
        return this.urlLoader.getResourceFetcher(new GlideUrl(object.toString()), n2, n3);
    }
}

