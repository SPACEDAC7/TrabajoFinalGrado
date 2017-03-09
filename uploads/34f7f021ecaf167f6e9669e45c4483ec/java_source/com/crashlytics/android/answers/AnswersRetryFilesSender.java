/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  io.fabric.sdk.android.services.concurrency.internal.Backoff
 *  io.fabric.sdk.android.services.concurrency.internal.DefaultRetryPolicy
 *  io.fabric.sdk.android.services.concurrency.internal.ExponentialBackoff
 *  io.fabric.sdk.android.services.concurrency.internal.RetryPolicy
 *  io.fabric.sdk.android.services.concurrency.internal.RetryState
 *  io.fabric.sdk.android.services.events.FilesSender
 */
package com.crashlytics.android.answers;

import com.crashlytics.android.answers.RandomBackoff;
import com.crashlytics.android.answers.RetryManager;
import com.crashlytics.android.answers.SessionAnalyticsFilesSender;
import io.fabric.sdk.android.services.concurrency.internal.Backoff;
import io.fabric.sdk.android.services.concurrency.internal.DefaultRetryPolicy;
import io.fabric.sdk.android.services.concurrency.internal.ExponentialBackoff;
import io.fabric.sdk.android.services.concurrency.internal.RetryPolicy;
import io.fabric.sdk.android.services.concurrency.internal.RetryState;
import io.fabric.sdk.android.services.events.FilesSender;
import java.io.File;
import java.util.List;

class AnswersRetryFilesSender
implements FilesSender {
    private static final int BACKOFF_MS = 1000;
    private static final int BACKOFF_POWER = 8;
    private static final double JITTER_PERCENT = 0.1;
    private static final int MAX_RETRIES = 5;
    private final SessionAnalyticsFilesSender filesSender;
    private final RetryManager retryManager;

    AnswersRetryFilesSender(SessionAnalyticsFilesSender sessionAnalyticsFilesSender, RetryManager retryManager) {
        this.filesSender = sessionAnalyticsFilesSender;
        this.retryManager = retryManager;
    }

    public static AnswersRetryFilesSender build(SessionAnalyticsFilesSender sessionAnalyticsFilesSender) {
        return new AnswersRetryFilesSender(sessionAnalyticsFilesSender, new RetryManager(new RetryState((Backoff)new RandomBackoff((Backoff)new ExponentialBackoff(1000, 8), 0.1), (RetryPolicy)new DefaultRetryPolicy(5))));
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean send(List<File> list) {
        boolean bl = false;
        long l2 = System.nanoTime();
        if (!this.retryManager.canRetry(l2)) return bl;
        if (this.filesSender.send(list)) {
            this.retryManager.reset();
            return true;
        }
        this.retryManager.recordRetry(l2);
        return false;
    }
}

