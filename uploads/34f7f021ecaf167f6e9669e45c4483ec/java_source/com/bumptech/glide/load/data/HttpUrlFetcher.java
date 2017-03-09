/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 *  android.util.Log
 */
package com.bumptech.glide.load.data;

import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.util.ContentLengthInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;
import java.util.Set;

public class HttpUrlFetcher
implements DataFetcher<InputStream> {
    private static final HttpUrlConnectionFactory DEFAULT_CONNECTION_FACTORY = new DefaultHttpUrlConnectionFactory();
    private static final int MAXIMUM_REDIRECTS = 5;
    private static final String TAG = "HttpUrlFetcher";
    private final HttpUrlConnectionFactory connectionFactory;
    private final GlideUrl glideUrl;
    private volatile boolean isCancelled;
    private InputStream stream;
    private HttpURLConnection urlConnection;

    public HttpUrlFetcher(GlideUrl glideUrl) {
        this(glideUrl, DEFAULT_CONNECTION_FACTORY);
    }

    HttpUrlFetcher(GlideUrl glideUrl, HttpUrlConnectionFactory httpUrlConnectionFactory) {
        this.glideUrl = glideUrl;
        this.connectionFactory = httpUrlConnectionFactory;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private InputStream getStreamForSuccessfulRequest(HttpURLConnection httpURLConnection) throws IOException {
        if (TextUtils.isEmpty((CharSequence)httpURLConnection.getContentEncoding())) {
            int n2 = httpURLConnection.getContentLength();
            this.stream = ContentLengthInputStream.obtain(httpURLConnection.getInputStream(), n2);
            do {
                return this.stream;
                break;
            } while (true);
        }
        if (Log.isLoggable((String)"HttpUrlFetcher", (int)3)) {
            Log.d((String)"HttpUrlFetcher", (String)("Got non empty content encoding: " + httpURLConnection.getContentEncoding()));
        }
        this.stream = httpURLConnection.getInputStream();
        return this.stream;
    }

    private InputStream loadDataWithRedirects(URL uRL, int n2, URL object, Map<String, String> map) throws IOException {
        if (n2 >= 5) {
            throw new IOException("Too many (> 5) redirects!");
        }
        if (object != null) {
            try {
                if (uRL.toURI().equals(object.toURI())) {
                    throw new IOException("In re-direct loop");
                }
            }
            catch (URISyntaxException var3_4) {
                // empty catch block
            }
        }
        this.urlConnection = this.connectionFactory.build(uRL);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.urlConnection.addRequestProperty(entry.getKey(), entry.getValue());
        }
        this.urlConnection.setConnectTimeout(2500);
        this.urlConnection.setReadTimeout(2500);
        this.urlConnection.setUseCaches(false);
        this.urlConnection.setDoInput(true);
        this.urlConnection.connect();
        if (this.isCancelled) {
            return null;
        }
        int n3 = this.urlConnection.getResponseCode();
        if (n3 / 100 == 2) {
            return this.getStreamForSuccessfulRequest(this.urlConnection);
        }
        if (n3 / 100 == 3) {
            object = this.urlConnection.getHeaderField("Location");
            if (TextUtils.isEmpty((CharSequence)object)) {
                throw new IOException("Received empty or null redirect url");
            }
            return this.loadDataWithRedirects(new URL(uRL, (String)object), n2 + 1, uRL, map);
        }
        if (n3 == -1) {
            throw new IOException("Unable to retrieve response code from HttpUrlConnection.");
        }
        throw new IOException("Request failed " + n3 + ": " + this.urlConnection.getResponseMessage());
    }

    @Override
    public void cancel() {
        this.isCancelled = true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void cleanup() {
        if (this.stream != null) {
            try {
                this.stream.close();
            }
            catch (IOException var1_1) {}
        }
        if (this.urlConnection != null) {
            this.urlConnection.disconnect();
        }
    }

    @Override
    public String getId() {
        return this.glideUrl.getCacheKey();
    }

    @Override
    public InputStream loadData(Priority priority) throws Exception {
        return this.loadDataWithRedirects(this.glideUrl.toURL(), 0, null, this.glideUrl.getHeaders());
    }

    private static class DefaultHttpUrlConnectionFactory
    implements HttpUrlConnectionFactory {
        private DefaultHttpUrlConnectionFactory() {
        }

        @Override
        public HttpURLConnection build(URL uRL) throws IOException {
            return (HttpURLConnection)uRL.openConnection();
        }
    }

    static interface HttpUrlConnectionFactory {
        public HttpURLConnection build(URL var1) throws IOException;
    }

}

