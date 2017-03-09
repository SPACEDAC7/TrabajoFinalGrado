/*
 * Decompiled with CFR 0_115.
 */
package com.android.volley;

import com.android.volley.Cache;
import com.android.volley.VolleyError;

public class Response<T> {
    public final Cache.Entry cacheEntry;
    public final VolleyError error;
    public boolean intermediate = false;
    public final T result;

    private Response(VolleyError volleyError) {
        this.result = null;
        this.cacheEntry = null;
        this.error = volleyError;
    }

    private Response(T t2, Cache.Entry entry) {
        this.result = t2;
        this.cacheEntry = entry;
        this.error = null;
    }

    public static <T> Response<T> error(VolleyError volleyError) {
        return new Response<T>(volleyError);
    }

    public static <T> Response<T> success(T t2, Cache.Entry entry) {
        return new Response<T>(t2, entry);
    }

    public boolean isSuccess() {
        if (this.error == null) {
            return true;
        }
        return false;
    }

    public static interface ErrorListener {
        public void onErrorResponse(VolleyError var1);
    }

    public static interface Listener<T> {
        public void onResponse(T var1);
    }

}

