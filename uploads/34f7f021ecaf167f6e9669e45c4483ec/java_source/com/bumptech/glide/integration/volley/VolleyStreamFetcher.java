/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.integration.volley;

import com.android.volley.AuthFailureError;
import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.toolbox.HttpHeaderParser;
import com.bumptech.glide.Priority;
import com.bumptech.glide.integration.volley.VolleyRequestFactory;
import com.bumptech.glide.integration.volley.VolleyRequestFuture;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.GlideUrl;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;

public class VolleyStreamFetcher
implements DataFetcher<InputStream> {
    public static final VolleyRequestFactory DEFAULT_REQUEST_FACTORY = new VolleyRequestFactory(){

        @Override
        public Request<byte[]> create(String string2, VolleyRequestFuture<InputStream> volleyRequestFuture, Request.Priority priority, Map<String, String> map) {
            return new GlideRequest(string2, volleyRequestFuture, priority, map);
        }
    };
    private final VolleyRequestFactory requestFactory;
    private VolleyRequestFuture<InputStream> requestFuture;
    private final RequestQueue requestQueue;
    private final GlideUrl url;

    public VolleyStreamFetcher(RequestQueue requestQueue, GlideUrl glideUrl) {
        this(requestQueue, glideUrl, null);
    }

    public VolleyStreamFetcher(RequestQueue requestQueue, GlideUrl glideUrl, VolleyRequestFuture<InputStream> volleyRequestFuture) {
        this(requestQueue, glideUrl, volleyRequestFuture, DEFAULT_REQUEST_FACTORY);
    }

    public VolleyStreamFetcher(RequestQueue requestQueue, GlideUrl glideUrl, VolleyRequestFuture<InputStream> volleyRequestFuture, VolleyRequestFactory volleyRequestFactory) {
        this.requestQueue = requestQueue;
        this.url = glideUrl;
        this.requestFactory = volleyRequestFactory;
        this.requestFuture = volleyRequestFuture;
        if (volleyRequestFuture == null) {
            this.requestFuture = VolleyRequestFuture.newFuture();
        }
    }

    private static Request.Priority glideToVolleyPriority(Priority priority) {
        switch (.$SwitchMap$com$bumptech$glide$Priority[priority.ordinal()]) {
            default: {
                return Request.Priority.NORMAL;
            }
            case 1: {
                return Request.Priority.LOW;
            }
            case 2: {
                return Request.Priority.HIGH;
            }
            case 3: 
        }
        return Request.Priority.IMMEDIATE;
    }

    @Override
    public void cancel() {
        VolleyRequestFuture<InputStream> volleyRequestFuture = this.requestFuture;
        if (volleyRequestFuture != null) {
            volleyRequestFuture.cancel(true);
        }
    }

    @Override
    public void cleanup() {
    }

    @Override
    public String getId() {
        return this.url.getCacheKey();
    }

    @Override
    public InputStream loadData(Priority object) throws Exception {
        String string2 = this.url.toStringUrl();
        object = this.requestFactory.create(string2, this.requestFuture, VolleyStreamFetcher.glideToVolleyPriority((Priority)((Object)object)), this.url.getHeaders());
        this.requestFuture.setRequest(this.requestQueue.add(object));
        return this.requestFuture.get();
    }

    private static class GlideRequest
    extends Request<byte[]> {
        private final VolleyRequestFuture<InputStream> future;
        private final Map<String, String> headers;
        private final Request.Priority priority;

        public GlideRequest(String string2, VolleyRequestFuture<InputStream> volleyRequestFuture, Request.Priority priority) {
            this(string2, volleyRequestFuture, priority, Collections.emptyMap());
        }

        public GlideRequest(String string2, VolleyRequestFuture<InputStream> volleyRequestFuture, Request.Priority priority, Map<String, String> map) {
            super(0, string2, volleyRequestFuture);
            this.future = volleyRequestFuture;
            this.priority = priority;
            this.headers = map;
        }

        @Override
        protected void deliverResponse(byte[] arrby) {
            this.future.onResponse(new ByteArrayInputStream(arrby));
        }

        @Override
        public Map<String, String> getHeaders() throws AuthFailureError {
            return this.headers;
        }

        @Override
        public Request.Priority getPriority() {
            return this.priority;
        }

        @Override
        protected Response<byte[]> parseNetworkResponse(NetworkResponse networkResponse) {
            return Response.success(networkResponse.data, HttpHeaderParser.parseCacheHeaders(networkResponse));
        }
    }

}

