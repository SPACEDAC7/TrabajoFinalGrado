/*
 * Decompiled with CFR 0_115.
 */
package com.android.volley;

import java.util.Collections;
import java.util.Map;

public class NetworkResponse {
    public final byte[] data;
    public final Map<String, String> headers;
    public final long networkTimeMs;
    public final boolean notModified;
    public final int statusCode;

    public NetworkResponse(int n2, byte[] arrby, Map<String, String> map, boolean bl) {
        this(n2, arrby, map, bl, 0);
    }

    public NetworkResponse(int n2, byte[] arrby, Map<String, String> map, boolean bl, long l2) {
        this.statusCode = n2;
        this.data = arrby;
        this.headers = map;
        this.notModified = bl;
        this.networkTimeMs = l2;
    }

    public NetworkResponse(byte[] arrby) {
        this(200, arrby, Collections.emptyMap(), false, 0);
    }

    public NetworkResponse(byte[] arrby, Map<String, String> map) {
        this(200, arrby, map, false, 0);
    }
}

