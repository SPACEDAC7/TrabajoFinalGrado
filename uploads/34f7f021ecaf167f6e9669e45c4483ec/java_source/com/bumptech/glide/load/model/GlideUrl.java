/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.text.TextUtils
 */
package com.bumptech.glide.load.model;

import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.load.model.Headers;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;

public class GlideUrl {
    private static final String ALLOWED_URI_CHARS = "@#&=*+-_.,:!?()/~'%";
    private final Headers headers;
    private String safeStringUrl;
    private URL safeUrl;
    private final String stringUrl;
    private final URL url;

    public GlideUrl(String string2) {
        this(string2, Headers.DEFAULT);
    }

    public GlideUrl(String string2, Headers headers) {
        if (TextUtils.isEmpty((CharSequence)string2)) {
            throw new IllegalArgumentException("String url must not be empty or null: " + string2);
        }
        if (headers == null) {
            throw new IllegalArgumentException("Headers must not be null");
        }
        this.stringUrl = string2;
        this.url = null;
        this.headers = headers;
    }

    public GlideUrl(URL uRL) {
        this(uRL, Headers.DEFAULT);
    }

    public GlideUrl(URL uRL, Headers headers) {
        if (uRL == null) {
            throw new IllegalArgumentException("URL must not be null!");
        }
        if (headers == null) {
            throw new IllegalArgumentException("Headers must not be null");
        }
        this.url = uRL;
        this.stringUrl = null;
        this.headers = headers;
    }

    private String getSafeStringUrl() {
        if (TextUtils.isEmpty((CharSequence)this.safeStringUrl)) {
            String string2;
            String string3 = string2 = this.stringUrl;
            if (TextUtils.isEmpty((CharSequence)string2)) {
                string3 = this.url.toString();
            }
            this.safeStringUrl = Uri.encode((String)string3, (String)"@#&=*+-_.,:!?()/~'%");
        }
        return this.safeStringUrl;
    }

    private URL getSafeUrl() throws MalformedURLException {
        if (this.safeUrl == null) {
            this.safeUrl = new URL(this.getSafeStringUrl());
        }
        return this.safeUrl;
    }

    public boolean equals(Object object) {
        boolean bl;
        boolean bl2 = bl = false;
        if (object instanceof GlideUrl) {
            object = (GlideUrl)object;
            bl2 = bl;
            if (this.getCacheKey().equals(object.getCacheKey())) {
                bl2 = bl;
                if (this.headers.equals(object.headers)) {
                    bl2 = true;
                }
            }
        }
        return bl2;
    }

    public String getCacheKey() {
        if (this.stringUrl != null) {
            return this.stringUrl;
        }
        return this.url.toString();
    }

    public Map<String, String> getHeaders() {
        return this.headers.getHeaders();
    }

    public int hashCode() {
        return this.getCacheKey().hashCode() * 31 + this.headers.hashCode();
    }

    public String toString() {
        return this.getCacheKey() + '\n' + this.headers.toString();
    }

    public String toStringUrl() {
        return this.getSafeStringUrl();
    }

    public URL toURL() throws MalformedURLException {
        return this.getSafeUrl();
    }
}

