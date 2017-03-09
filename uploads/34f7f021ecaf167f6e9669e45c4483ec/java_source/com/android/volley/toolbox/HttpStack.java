/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.apache.http.HttpResponse
 */
package com.android.volley.toolbox;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import java.io.IOException;
import java.util.Map;
import org.apache.http.HttpResponse;

public interface HttpStack {
    public HttpResponse performRequest(Request<?> var1, Map<String, String> var2) throws IOException, AuthFailureError;
}

