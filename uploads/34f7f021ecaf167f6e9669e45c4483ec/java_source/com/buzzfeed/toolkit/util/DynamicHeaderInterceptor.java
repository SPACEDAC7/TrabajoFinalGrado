/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  okhttp3.Interceptor
 *  okhttp3.Interceptor$Chain
 *  okhttp3.Request
 *  okhttp3.Request$Builder
 *  okhttp3.Response
 */
package com.buzzfeed.toolkit.util;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public class DynamicHeaderInterceptor
implements Interceptor {
    private HashMap<String, String> headers = new HashMap();

    private Request addHeaders(Request request) {
        Object object = new HashMap<String, String>();
        object.putAll(this.headers);
        object = object.entrySet().iterator();
        while (object.hasNext()) {
            Map.Entry entry = (Map.Entry)object.next();
            request = request.newBuilder().addHeader((String)entry.getKey(), (String)entry.getValue()).build();
            object.remove();
        }
        return request;
    }

    public void addHeader(String string2, String string3) {
        this.headers.put(string2, string3);
    }

    public Response intercept(Interceptor.Chain chain) throws IOException {
        return chain.proceed(this.addHeaders(chain.request()));
    }
}

