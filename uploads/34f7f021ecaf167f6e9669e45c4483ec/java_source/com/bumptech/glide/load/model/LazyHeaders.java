/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 */
package com.bumptech.glide.load.model;

import android.text.TextUtils;
import com.bumptech.glide.load.model.Headers;
import com.bumptech.glide.load.model.LazyHeaderFactory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class LazyHeaders
implements Headers {
    private volatile Map<String, String> combinedHeaders;
    private final Map<String, List<LazyHeaderFactory>> headers;

    LazyHeaders(Map<String, List<LazyHeaderFactory>> map) {
        this.headers = Collections.unmodifiableMap(map);
    }

    private Map<String, String> generateHeaders() {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        for (Map.Entry<String, List<LazyHeaderFactory>> entry : this.headers.entrySet()) {
            StringBuilder stringBuilder = new StringBuilder();
            List<LazyHeaderFactory> list = entry.getValue();
            for (int i2 = 0; i2 < list.size(); ++i2) {
                stringBuilder.append(list.get(i2).buildHeader());
                if (i2 == list.size() - 1) continue;
                stringBuilder.append(',');
            }
            hashMap.put(entry.getKey(), stringBuilder.toString());
        }
        return hashMap;
    }

    public boolean equals(Object object) {
        if (object instanceof LazyHeaders) {
            object = (LazyHeaders)object;
            return this.headers.equals(object.headers);
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public Map<String, String> getHeaders() {
        if (this.combinedHeaders == null) {
            synchronized (this) {
                if (this.combinedHeaders == null) {
                    this.combinedHeaders = Collections.unmodifiableMap(this.generateHeaders());
                }
            }
        }
        return this.combinedHeaders;
    }

    public int hashCode() {
        return this.headers.hashCode();
    }

    public String toString() {
        return "LazyHeaders{headers=" + this.headers + '}';
    }

    public static final class Builder {
        private static final String DEFAULT_ENCODING = "identity";
        private static final Map<String, List<LazyHeaderFactory>> DEFAULT_HEADERS;
        private static final String DEFAULT_USER_AGENT;
        private static final String ENCODING_HEADER = "Accept-Encoding";
        private static final String USER_AGENT_HEADER = "User-Agent";
        private boolean copyOnModify = true;
        private Map<String, List<LazyHeaderFactory>> headers = DEFAULT_HEADERS;
        private boolean isEncodingDefault = true;
        private boolean isUserAgentDefault = true;

        static {
            DEFAULT_USER_AGENT = System.getProperty("http.agent");
            HashMap<String, List<StringHeaderFactory>> hashMap = new HashMap<String, List<StringHeaderFactory>>(2);
            if (!TextUtils.isEmpty((CharSequence)DEFAULT_USER_AGENT)) {
                hashMap.put("User-Agent", Collections.singletonList(new StringHeaderFactory(DEFAULT_USER_AGENT)));
            }
            hashMap.put("Accept-Encoding", Collections.singletonList(new StringHeaderFactory("identity")));
            DEFAULT_HEADERS = Collections.unmodifiableMap(hashMap);
        }

        private Map<String, List<LazyHeaderFactory>> copyHeaders() {
            HashMap<String, List<LazyHeaderFactory>> hashMap = new HashMap<String, List<LazyHeaderFactory>>(this.headers.size());
            for (Map.Entry<String, List<LazyHeaderFactory>> entry : this.headers.entrySet()) {
                hashMap.put(entry.getKey(), new ArrayList(entry.getValue()));
            }
            return hashMap;
        }

        private void copyIfNecessary() {
            if (this.copyOnModify) {
                this.copyOnModify = false;
                this.headers = this.copyHeaders();
            }
        }

        private List<LazyHeaderFactory> getFactories(String string2) {
            List<LazyHeaderFactory> list;
            List<LazyHeaderFactory> list2 = list = this.headers.get(string2);
            if (list == null) {
                list2 = new ArrayList<LazyHeaderFactory>();
                this.headers.put(string2, list2);
            }
            return list2;
        }

        public Builder addHeader(String string2, LazyHeaderFactory lazyHeaderFactory) {
            if (this.isEncodingDefault && "Accept-Encoding".equalsIgnoreCase(string2) || this.isUserAgentDefault && "User-Agent".equalsIgnoreCase(string2)) {
                return this.setHeader(string2, lazyHeaderFactory);
            }
            this.copyIfNecessary();
            this.getFactories(string2).add(lazyHeaderFactory);
            return this;
        }

        public Builder addHeader(String string2, String string3) {
            return this.addHeader(string2, new StringHeaderFactory(string3));
        }

        public LazyHeaders build() {
            this.copyOnModify = true;
            return new LazyHeaders(this.headers);
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setHeader(String string2, LazyHeaderFactory lazyHeaderFactory) {
            this.copyIfNecessary();
            if (lazyHeaderFactory == null) {
                this.headers.remove(string2);
            } else {
                List<LazyHeaderFactory> list = this.getFactories(string2);
                list.clear();
                list.add(lazyHeaderFactory);
            }
            if (this.isEncodingDefault && "Accept-Encoding".equalsIgnoreCase(string2)) {
                this.isEncodingDefault = false;
            }
            if (this.isUserAgentDefault && "User-Agent".equalsIgnoreCase(string2)) {
                this.isUserAgentDefault = false;
            }
            return this;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public Builder setHeader(String string2, String object) {
            if (object == null) {
                object = null;
                do {
                    return this.setHeader(string2, (LazyHeaderFactory)object);
                    break;
                } while (true);
            }
            object = new StringHeaderFactory((String)object);
            return this.setHeader(string2, (LazyHeaderFactory)object);
        }
    }

    static final class StringHeaderFactory
    implements LazyHeaderFactory {
        private final String value;

        StringHeaderFactory(String string2) {
            this.value = string2;
        }

        @Override
        public String buildHeader() {
            return this.value;
        }

        public boolean equals(Object object) {
            if (object instanceof StringHeaderFactory) {
                object = (StringHeaderFactory)object;
                return this.value.equals(object.value);
            }
            return false;
        }

        public int hashCode() {
            return this.value.hashCode();
        }

        public String toString() {
            return "StringHeaderFactory{value='" + this.value + '\'' + '}';
        }
    }

}

