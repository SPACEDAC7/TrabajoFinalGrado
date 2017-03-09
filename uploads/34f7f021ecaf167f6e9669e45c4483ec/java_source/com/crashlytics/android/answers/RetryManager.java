/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  io.fabric.sdk.android.services.concurrency.internal.RetryState
 */
package com.crashlytics.android.answers;

import io.fabric.sdk.android.services.concurrency.internal.RetryState;

class RetryManager {
    private static final long NANOSECONDS_IN_MS = 1000000;
    long lastRetry;
    private RetryState retryState;

    public RetryManager(RetryState retryState) {
        if (retryState == null) {
            throw new NullPointerException("retryState must not be null");
        }
        this.retryState = retryState;
    }

    public boolean canRetry(long l2) {
        long l3 = this.retryState.getRetryDelay();
        if (l2 - this.lastRetry >= 1000000 * l3) {
            return true;
        }
        return false;
    }

    public void recordRetry(long l2) {
        this.lastRetry = l2;
        this.retryState = this.retryState.nextRetryState();
    }

    public void reset() {
        this.lastRetry = 0;
        this.retryState = this.retryState.initialRetryState();
    }
}

