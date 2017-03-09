/*
 * Decompiled with CFR 0_115.
 */
package com.android.volley.toolbox;

import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.toolbox.HttpHeaderParser;
import java.io.UnsupportedEncodingException;
import java.util.Map;

public class StringRequest
extends Request<String> {
    private final Response.Listener<String> mListener;

    public StringRequest(int n2, String string2, Response.Listener<String> listener, Response.ErrorListener errorListener) {
        super(n2, string2, errorListener);
        this.mListener = listener;
    }

    public StringRequest(String string2, Response.Listener<String> listener, Response.ErrorListener errorListener) {
        this(0, string2, listener, errorListener);
    }

    @Override
    protected void deliverResponse(String string2) {
        this.mListener.onResponse(string2);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected Response<String> parseNetworkResponse(NetworkResponse networkResponse) {
        String string2;
        try {
            string2 = new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers));
        }
        catch (UnsupportedEncodingException var2_3) {
            string2 = new String(networkResponse.data);
            return Response.success(string2, HttpHeaderParser.parseCacheHeaders(networkResponse));
        }
        do {
            return Response.success(string2, HttpHeaderParser.parseCacheHeaders(networkResponse));
            break;
        } while (true);
    }
}

