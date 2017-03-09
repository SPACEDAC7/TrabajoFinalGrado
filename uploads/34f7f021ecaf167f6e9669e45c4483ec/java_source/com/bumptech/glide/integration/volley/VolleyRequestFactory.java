/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.integration.volley;

import com.android.volley.Request;
import com.bumptech.glide.integration.volley.VolleyRequestFuture;
import java.io.InputStream;
import java.util.Map;

public interface VolleyRequestFactory {
    public Request<byte[]> create(String var1, VolleyRequestFuture<InputStream> var2, Request.Priority var3, Map<String, String> var4);
}

