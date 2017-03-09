/*
 * Decompiled with CFR 0_115.
 */
package com.android.volley;

import com.android.volley.VolleyError;

public interface RetryPolicy {
    public int getCurrentRetryCount();

    public int getCurrentTimeout();

    public void retry(VolleyError var1) throws VolleyError;
}

