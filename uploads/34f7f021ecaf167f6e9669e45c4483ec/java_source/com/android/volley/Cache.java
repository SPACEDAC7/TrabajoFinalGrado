/*
 * Decompiled with CFR 0_115.
 */
package com.android.volley;

import java.util.Collections;
import java.util.Map;

public interface Cache {
    public void clear();

    public Entry get(String var1);

    public void initialize();

    public void invalidate(String var1, boolean var2);

    public void put(String var1, Entry var2);

    public void remove(String var1);

    public static class Entry {
        public byte[] data;
        public String etag;
        public long lastModified;
        public Map<String, String> responseHeaders = Collections.emptyMap();
        public long serverDate;
        public long softTtl;
        public long ttl;

        public boolean isExpired() {
            if (this.ttl < System.currentTimeMillis()) {
                return true;
            }
            return false;
        }

        public boolean refreshNeeded() {
            if (this.softTtl < System.currentTimeMillis()) {
                return true;
            }
            return false;
        }
    }

}

