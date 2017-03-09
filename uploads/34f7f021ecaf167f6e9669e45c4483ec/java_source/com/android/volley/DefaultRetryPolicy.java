/*
 * Decompiled with CFR 0_115.
 */
package com.android.volley;

import com.android.volley.RetryPolicy;
import com.android.volley.VolleyError;

public class DefaultRetryPolicy
implements RetryPolicy {
    public static final float DEFAULT_BACKOFF_MULT = 1.0f;
    public static final int DEFAULT_MAX_RETRIES = 1;
    public static final int DEFAULT_TIMEOUT_MS = 2500;
    private final float mBackoffMultiplier;
    private int mCurrentRetryCount;
    private int mCurrentTimeoutMs;
    private final int mMaxNumRetries;

    public DefaultRetryPolicy() {
        this(2500, 1, 1.0f);
    }

    public DefaultRetryPolicy(int n2, int n3, float f2) {
        this.mCurrentTimeoutMs = n2;
        this.mMaxNumRetries = n3;
        this.mBackoffMultiplier = f2;
    }

    public float getBackoffMultiplier() {
        return this.mBackoffMultiplier;
    }

    @Override
    public int getCurrentRetryCount() {
        return this.mCurrentRetryCount;
    }

    @Override
    public int getCurrentTimeout() {
        return this.mCurrentTimeoutMs;
    }

    protected boolean hasAttemptRemaining() {
        if (this.mCurrentRetryCount <= this.mMaxNumRetries) {
            return true;
        }
        return false;
    }

    @Override
    public void retry(VolleyError volleyError) throws VolleyError {
        ++this.mCurrentRetryCount;
        this.mCurrentTimeoutMs = (int)((float)this.mCurrentTimeoutMs + (float)this.mCurrentTimeoutMs * this.mBackoffMultiplier);
        if (!this.hasAttemptRemaining()) {
            throw volleyError;
        }
    }
}

