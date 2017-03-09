/*
 * Decompiled with CFR 0_115.
 */
package com.android.volley;

import com.android.volley.NetworkResponse;

public class VolleyError
extends Exception {
    public final NetworkResponse networkResponse;
    private long networkTimeMs;

    public VolleyError() {
        this.networkResponse = null;
    }

    public VolleyError(NetworkResponse networkResponse) {
        this.networkResponse = networkResponse;
    }

    public VolleyError(String string2) {
        super(string2);
        this.networkResponse = null;
    }

    public VolleyError(String string2, Throwable throwable) {
        super(string2, throwable);
        this.networkResponse = null;
    }

    public VolleyError(Throwable throwable) {
        super(throwable);
        this.networkResponse = null;
    }

    public long getNetworkTimeMs() {
        return this.networkTimeMs;
    }

    void setNetworkTimeMs(long l2) {
        this.networkTimeMs = l2;
    }
}

