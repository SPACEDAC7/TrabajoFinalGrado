/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  io.fabric.sdk.android.services.concurrency.internal.Backoff
 */
package com.crashlytics.android.answers;

import io.fabric.sdk.android.services.concurrency.internal.Backoff;
import java.util.Random;

class RandomBackoff
implements Backoff {
    final Backoff backoff;
    final double jitterPercent;
    final Random random;

    public RandomBackoff(Backoff backoff, double d2) {
        this(backoff, d2, new Random());
    }

    public RandomBackoff(Backoff backoff, double d2, Random random) {
        if (d2 < 0.0 || d2 > 1.0) {
            throw new IllegalArgumentException("jitterPercent must be between 0.0 and 1.0");
        }
        if (backoff == null) {
            throw new NullPointerException("backoff must not be null");
        }
        if (random == null) {
            throw new NullPointerException("random must not be null");
        }
        this.backoff = backoff;
        this.jitterPercent = d2;
        this.random = random;
    }

    public long getDelayMillis(int n2) {
        return (long)(this.randomJitter() * (double)this.backoff.getDelayMillis(n2));
    }

    double randomJitter() {
        double d2 = 1.0 - this.jitterPercent;
        return (1.0 + this.jitterPercent - d2) * this.random.nextDouble() + d2;
    }
}

