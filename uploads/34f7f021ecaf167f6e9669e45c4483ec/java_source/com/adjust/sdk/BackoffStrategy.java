/*
 * Decompiled with CFR 0_115.
 */
package com.adjust.sdk;

public enum BackoffStrategy {
    LONG_WAIT(1, 120000, 86400000, 0.5, 1.0),
    SHORT_WAIT(1, 200, 3600000, 0.5, 1.0),
    TEST_WAIT(1, 200, 1000, 0.5, 1.0),
    NO_WAIT(100, 1, 1000, 1.0, 1.0);
    
    double maxRange;
    long maxWait;
    long milliSecondMultiplier;
    double minRange;
    int minRetries;

    private BackoffStrategy(int n3, long l2, long l3, double d2, double d3) {
        this.minRetries = n3;
        this.milliSecondMultiplier = l2;
        this.maxWait = l3;
        this.minRange = d2;
        this.maxRange = d3;
    }
}

