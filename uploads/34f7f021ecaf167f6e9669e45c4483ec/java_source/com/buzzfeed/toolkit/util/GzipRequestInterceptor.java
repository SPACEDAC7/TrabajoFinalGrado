/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  okhttp3.Interceptor
 *  okhttp3.Interceptor$Chain
 *  okhttp3.MediaType
 *  okhttp3.Request
 *  okhttp3.Request$Builder
 *  okhttp3.RequestBody
 *  okhttp3.Response
 *  okio.Buffer
 *  okio.BufferedSink
 *  okio.ByteString
 *  okio.GzipSink
 *  okio.Okio
 *  okio.Sink
 */
package com.buzzfeed.toolkit.util;

import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import okio.GzipSink;
import okio.Okio;
import okio.Sink;

public class GzipRequestInterceptor
implements Interceptor {
    private RequestBody forceContentLength(final RequestBody requestBody) throws IOException {
        final Buffer buffer = new Buffer();
        requestBody.writeTo((BufferedSink)buffer);
        return new RequestBody(){

            public long contentLength() {
                return buffer.size();
            }

            public MediaType contentType() {
                return requestBody.contentType();
            }

            public void writeTo(BufferedSink bufferedSink) throws IOException {
                bufferedSink.write(buffer.snapshot());
            }
        };
    }

    private RequestBody gzip(final RequestBody requestBody) {
        return new RequestBody(){

            public long contentLength() {
                return -1;
            }

            public MediaType contentType() {
                return requestBody.contentType();
            }

            public void writeTo(BufferedSink bufferedSink) throws IOException {
                bufferedSink = Okio.buffer((Sink)new GzipSink((Sink)bufferedSink));
                requestBody.writeTo(bufferedSink);
                bufferedSink.close();
            }
        };
    }

    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        if (request.body() == null || request.header("Content-Encoding") != null) {
            return chain.proceed(request);
        }
        return chain.proceed(request.newBuilder().header("Content-Encoding", "gzip").method(request.method(), this.forceContentLength(this.gzip(request.body()))).build());
    }

}

