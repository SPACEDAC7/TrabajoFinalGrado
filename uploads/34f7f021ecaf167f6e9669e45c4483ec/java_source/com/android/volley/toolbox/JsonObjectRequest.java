/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.android.volley.toolbox;

import com.android.volley.NetworkResponse;
import com.android.volley.ParseError;
import com.android.volley.Response;
import com.android.volley.toolbox.HttpHeaderParser;
import com.android.volley.toolbox.JsonRequest;
import java.io.UnsupportedEncodingException;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class JsonObjectRequest
extends JsonRequest<JSONObject> {
    /*
     * Enabled aggressive block sorting
     */
    public JsonObjectRequest(int n2, String string2, JSONObject object, Response.Listener<JSONObject> listener, Response.ErrorListener errorListener) {
        object = object == null ? null : object.toString();
        super(n2, string2, (String)object, listener, errorListener);
    }

    /*
     * Enabled aggressive block sorting
     */
    public JsonObjectRequest(String string2, JSONObject jSONObject, Response.Listener<JSONObject> listener, Response.ErrorListener errorListener) {
        int n2 = jSONObject == null ? 0 : 1;
        this(n2, string2, jSONObject, listener, errorListener);
    }

    @Override
    protected Response<JSONObject> parseNetworkResponse(NetworkResponse object) {
        try {
            object = Response.success(new JSONObject(new String(object.data, HttpHeaderParser.parseCharset(object.headers, "utf-8"))), HttpHeaderParser.parseCacheHeaders((NetworkResponse)object));
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

