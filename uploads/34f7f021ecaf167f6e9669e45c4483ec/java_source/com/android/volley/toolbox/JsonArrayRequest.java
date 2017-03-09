/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONArray
 *  org.json.JSONException
 */
package com.android.volley.toolbox;

import com.android.volley.NetworkResponse;
import com.android.volley.ParseError;
import com.android.volley.Response;
import com.android.volley.toolbox.HttpHeaderParser;
import com.android.volley.toolbox.JsonRequest;
import java.io.UnsupportedEncodingException;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;

public class JsonArrayRequest
extends JsonRequest<JSONArray> {
    /*
     * Enabled aggressive block sorting
     */
    public JsonArrayRequest(int n2, String string2, JSONArray object, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) {
        object = object == null ? null : object.toString();
        super(n2, string2, (String)object, listener, errorListener);
    }

    public JsonArrayRequest(String string2, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) {
        super(0, string2, null, listener, errorListener);
    }

    @Override
    protected Response<JSONArray> parseNetworkResponse(NetworkResponse object) {
        try {
            object = Response.success(new JSONArray(new String(object.data, HttpHeaderParser.parseCharset(object.headers, "utf-8"))), HttpHeaderParser.parseCacheHeaders((NetworkResponse)object));
            return object;
        }
        catch (UnsupportedEncodingException var1_2) {
            return Response.error(new ParseError(var1_2));
        }
        catch (JSONException var1_3) {
            return Response.error(new ParseError((Throwable)var1_3));
        }
    }
}

