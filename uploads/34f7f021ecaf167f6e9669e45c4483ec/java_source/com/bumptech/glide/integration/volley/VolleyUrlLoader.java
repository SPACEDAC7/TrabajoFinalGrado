/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.bumptech.glide.integration.volley;

import android.content.Context;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.Volley;
import com.bumptech.glide.integration.volley.VolleyRequestFactory;
import com.bumptech.glide.integration.volley.VolleyRequestFuture;
import com.bumptech.glide.integration.volley.VolleyStreamFetcher;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.GenericLoaderFactory;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import java.io.InputStream;

public class VolleyUrlLoader
implements ModelLoader<GlideUrl, InputStream> {
    private final VolleyRequestFactory requestFactory;
    private final RequestQueue requestQueue;

    public VolleyUrlLoader(RequestQueue requestQueue) {
        this(requestQueue, VolleyStreamFetcher.DEFAULT_REQUEST_FACTORY);
    }

    public VolleyUrlLoader(RequestQueue requestQueue, VolleyRequestFactory volleyRequestFactory) {
        this.requestQueue = requestQueue;
        this.requestFactory = volleyRequestFactory;
    }

    @Override
    public DataFetcher<InputStream> getResourceFetcher(GlideUrl glideUrl, int n2, int n3) {
        return new VolleyStreamFetcher(this.requestQueue, glideUrl, new VolleyRequestFuture(), this.requestFactory);
    }

    public static class Factory
    implements ModelLoaderFactory<GlideUrl, InputStream> {
        private static RequestQueue internalQueue;
        private final VolleyRequestFactory requestFactory;
        private RequestQueue requestQueue;

        public Factory(Context context) {
            this(Factory.getInternalQueue(context));
        }

        public Factory(RequestQueue requestQueue) {
            this(requestQueue, VolleyStreamFetcher.DEFAULT_REQUEST_FACTORY);
        }

        public Factory(RequestQueue requestQueue, VolleyRequestFactory volleyRequestFactory) {
            this.requestFactory = volleyRequestFactory;
            this.requestQueue = requestQueue;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        private static RequestQueue getInternalQueue(Context context) {
            if (internalQueue == null) {
                synchronized (Factory.class) {
                    if (internalQueue == null) {
                        internalQueue = Volley.newRequestQueue(context);
                    }
                }
            }
            return internalQueue;
        }

        @Override
        public ModelLoader<GlideUrl, InputStream> build(Context context, GenericLoaderFactory genericLoaderFactory) {
            return new VolleyUrlLoader(this.requestQueue, this.requestFactory);
        }

        @Override
        public void teardown() {
        }
    }

}

