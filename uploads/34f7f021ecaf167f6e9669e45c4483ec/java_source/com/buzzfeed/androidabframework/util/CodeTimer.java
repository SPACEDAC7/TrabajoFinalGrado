/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.androidabframework.util;

public class CodeTimer {
    long startTime;
    long stopTime;

    public long getElapsedMilliseconds() {
        if (this.startTime == 0) {
            return -1;
        }
        if (this.stopTime == 0) {
            return System.currentTimeMillis() - this.startTime;
        }
        return this.stopTime - this.startTime;
    }

    public double getElapsedSeconds() {
        return (double)this.getElapsedMilliseconds() / 1000.0;
    }

    public long getStartTime() {
        return this.startTime;
    }

    public long getStopTime() {
        return this.stopTime;
    }

    public CodeTimer start() {
        this.startTime = System.currentTimeMillis();
        this.stopTime = 0;
        return this;
    }

    public CodeTimer stop() {
        this.stopTime = System.currentTimeMillis();
        return this;
    }
}

