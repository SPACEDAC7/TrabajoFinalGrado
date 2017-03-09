/*
 * Decompiled with CFR 0_115.
 */
package com.android.volley;

import com.android.volley.NetworkResponse;
import com.android.volley.VolleyError;

public class ParseError
extends VolleyError {
    public ParseError() {
    }

    public ParseError(NetworkResponse networkResponse) {
        super(networkResponse);
    }

    public ParseError(Throwable throwable) {
        super(throwable);
    }
}

