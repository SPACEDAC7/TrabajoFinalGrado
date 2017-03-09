/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.content.res.Resources$NotFoundException
 *  android.net.Uri
 *  android.util.Log
 */
package com.bumptech.glide.load.model;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;

public class ResourceLoader<T>
implements ModelLoader<Integer, T> {
    private static final String TAG = "ResourceLoader";
    private final Resources resources;
    private final ModelLoader<Uri, T> uriLoader;

    public ResourceLoader(Context context, ModelLoader<Uri, T> modelLoader) {
        this(context.getResources(), modelLoader);
    }

    public ResourceLoader(Resources resources, ModelLoader<Uri, T> modelLoader) {
        this.resources = resources;
        this.uriLoader = modelLoader;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public DataFetcher<T> getResourceFetcher(Integer n2, int n3, int n4) {
        Uri uri;
        block3 : {
            Uri uri2 = null;
            try {
                uri = Uri.parse((String)("android.resource://" + this.resources.getResourcePackageName(n2.intValue()) + '/' + this.resources.getResourceTypeName(n2.intValue()) + '/' + this.resources.getResourceEntryName(n2.intValue())));
            }
            catch (Resources.NotFoundException var6_6) {
                uri = uri2;
                if (!Log.isLoggable((String)"ResourceLoader", (int)5)) break block3;
                Log.w((String)"ResourceLoader", (String)("Received invalid resource id: " + n2), (Throwable)var6_6);
                uri = uri2;
            }
        }
        if (uri != null) {
            return this.uriLoader.getResourceFetcher(uri, n3, n4);
        }
        return null;
    }
}

