/*
 * Decompiled with CFR 0_115.
 */
package com.android.volley;

import com.android.volley.NetworkResponse;
import com.android.volley.VolleyError;

public class NetworkError
extends VolleyError {
    public NetworkError() {
    }

    public NetworkError(NetworkResponse networkResponse) {
        super(networkResponse);
    }

    public NetworkError(Throwable throwable) {
        super(throwable);
    }
}

