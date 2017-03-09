/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.apache.http.HttpResponse
 *  org.apache.http.NameValuePair
 *  org.apache.http.client.HttpClient
 *  org.apache.http.client.methods.HttpDelete
 *  org.apache.http.client.methods.HttpEntityEnclosingRequestBase
 *  org.apache.http.client.methods.HttpGet
 *  org.apache.http.client.methods.HttpHead
 *  org.apache.http.client.methods.HttpOptions
 *  org.apache.http.client.methods.HttpPost
 *  org.apache.http.client.methods.HttpPut
 *  org.apache.http.client.methods.HttpTrace
 *  org.apache.http.client.methods.HttpUriRequest
 *  org.apache.http.message.BasicNameValuePair
 */
package com.android.volley.toolbox;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.toolbox.HttpStack;
import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class HttpClientStack
implements HttpStack {
    private static final String HEADER_CONTENT_TYPE = "Content-Type";
    protected final HttpClient mClient;

    public HttpClientStack(HttpClient httpClient) {
        this.mClient = httpClient;
    }

    private static void addHeaders(HttpUriRequest httpUriRequest, Map<String, String> map) {
        for (String string2 : map.keySet()) {
            httpUriRequest.setHeader(string2, map.get(string2));
        }
    }

    static HttpUriRequest createHttpRequest(Request<?> request, Map<String, String> object) throws AuthFailureError {
        switch (request.getMethod()) {
            default: {
                throw new IllegalStateException("Unknown request method.");
            }
            case -1: {
                object = request.getPostBody();
                if (object != null) {
                    HttpPost httpPost = new HttpPost(request.getUrl());
                    httpPost.addHeader("Content-Type", request.getPostBodyContentType());
                    httpPost.setEntity((HttpEntity)new ByteArrayEntity((byte[])object));
                    return httpPost;
                }
                return new HttpGet(request.getUrl());
            }
            case 0: {
                return new HttpGet(request.getUrl());
            }
            case 3: {
                return new HttpDelete(request.getUrl());
            }
            case 1: {
                object = new HttpPost(request.getUrl());
                object.addHeader("Content-Type", request.getBodyContentType());
                HttpClientStack.setEntityIfNonEmptyBody((HttpEntityEnclosingRequestBase)object, request);
                return object;
            }
            case 2: {
                object = new HttpPut(request.getUrl());
                object.addHeader("Content-Type", request.getBodyContentType());
                HttpClientStack.setEntityIfNonEmptyBody((HttpEntityEnclosingRequestBase)object, request);
                return object;
            }
            case 4: {
                return new HttpHead(request.getUrl());
            }
            case 5: {
                return new HttpOptions(request.getUrl());
            }
            case 6: {
                return new HttpTrace(request.getUrl());
            }
            case 7: 
        }
        object = new HttpPatch(request.getUrl());
        object.addHeader("Content-Type", request.getBodyContentType());
        HttpClientStack.setEntityIfNonEmptyBody((HttpEntityEnclosingRequestBase)object, request);
        return object;
    }

    private static List<NameValuePair> getPostParameterPairs(Map<String, String> map) {
        ArrayList<NameValuePair> arrayList = new ArrayList<NameValuePair>(map.size());
        for (String string2 : map.keySet()) {
            arrayList.add((NameValuePair)new BasicNameValuePair(string2, map.get(string2)));
        }
        return arrayList;
    }

    private static void setEntityIfNonEmptyBody(HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, Request<?> arrby) throws AuthFailureError {
        if ((arrby = arrby.getBody()) != null) {
            httpEntityEnclosingRequestBase.setEntity((HttpEntity)new ByteArrayEntity(arrby));
        }
    }

    protected void onPrepareRequest(HttpUriRequest httpUriRequest) throws IOException {
    }

    @Override
    public HttpResponse performRequest(Request<?> request, Map<String, String> object) throws IOException, AuthFailureError {
        HttpUriRequest httpUriRequest = HttpClientStack.createHttpRequest(request, object);
        HttpClientStack.addHeaders(httpUriRequest, object);
        HttpClientStack.addHeaders(httpUriRequest, request.getHeaders());
        this.onPrepareRequest(httpUriRequest);
        object = httpUriRequest.getParams();
        int n2 = request.getTimeoutMs();
        HttpConnectionParams.setConnectionTimeout((HttpParams)object, 5000);
        HttpConnectionParams.setSoTimeout((HttpParams)object, n2);
        return this.mClient.execute(httpUriRequest);
    }

    public static final class HttpPatch
    extends HttpEntityEnclosingRequestBase {
        public static final String METHOD_NAME = "PATCH";

        public HttpPatch() {
        }

        public HttpPatch(String string2) {
            this.setURI(URI.create(string2));
        }

        public HttpPatch(URI uRI) {
            this.setURI(uRI);
        }

        public String getMethod() {
            return "PATCH";
        }
    }

}

