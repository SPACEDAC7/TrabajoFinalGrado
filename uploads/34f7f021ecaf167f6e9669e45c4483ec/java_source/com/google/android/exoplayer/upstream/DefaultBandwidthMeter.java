/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 *  com.google.android.exoplayer.upstream.DefaultBandwidthMeter$1
 *  com.google.android.exoplayer.util.Clock
 *  com.google.android.exoplayer.util.SlidingPercentile
 *  com.google.android.exoplayer.util.SystemClock
 */
package com.google.android.exoplayer.upstream;

import android.os.Handler;
import com.google.android.exoplayer.upstream.BandwidthMeter;
import com.google.android.exoplayer.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Clock;
import com.google.android.exoplayer.util.SlidingPercentile;
import com.google.android.exoplayer.util.SystemClock;

public final class DefaultBandwidthMeter
implements BandwidthMeter {
    public static final int DEFAULT_MAX_WEIGHT = 2000;
    private long bitrateEstimate;
    private long bytesAccumulator;
    private final Clock clock;
    private final Handler eventHandler;
    private final BandwidthMeter.EventListener eventListener;
    private final SlidingPercentile slidingPercentile;
    private long startTimeMs;
    private int streamCount;

    public DefaultBandwidthMeter() {
        this(null, null);
    }

    public DefaultBandwidthMeter(Handler handler, BandwidthMeter.EventListener eventListener) {
        this(handler, eventListener, (Clock)new SystemClock());
    }

    public DefaultBandwidthMeter(Handler handler, BandwidthMeter.EventListener eventListener, int n2) {
        this(handler, eventListener, (Clock)new SystemClock(), n2);
    }

    public DefaultBandwidthMeter(Handler handler, BandwidthMeter.EventListener eventListener, Clock clock) {
        this(handler, eventListener, clock, 2000);
    }

    public DefaultBandwidthMeter(Handler handler, BandwidthMeter.EventListener eventListener, Clock clock, int n2) {
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.clock = clock;
        this.slidingPercentile = new SlidingPercentile(n2);
        this.bitrateEstimate = -1;
    }

    static /* synthetic */ BandwidthMeter.EventListener access$000(DefaultBandwidthMeter defaultBandwidthMeter) {
        return defaultBandwidthMeter.eventListener;
    }

    private void notifyBandwidthSample(int n2, long l2, long l3) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post((Runnable)new /* Unavailable Anonymous Inner Class!! */);
        }
    }

    @Override
    public long getBitrateEstimate() {
        synchronized (this) {
            long l2 = this.bitrateEstimate;
            return l2;
        }
    }

    @Override
    public void onBytesTransferred(int n2) {
        synchronized (this) {
            this.bytesAccumulator += (long)n2;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onTransferEnd() {
        synchronized (this) {
            boolean bl = this.streamCount > 0;
            Assertions.checkState(bl);
            long l2 = this.clock.elapsedRealtime();
            int n2 = (int)(l2 - this.startTimeMs);
            if (n2 > 0) {
                float f2 = this.bytesAccumulator * 8000 / (long)n2;
                this.slidingPercentile.addSample((int)Math.sqrt(this.bytesAccumulator), f2);
                f2 = this.slidingPercentile.getPercentile(0.5f);
                long l3 = Float.isNaN(f2) ? -1 : (long)f2;
                this.bitrateEstimate = l3;
                this.notifyBandwidthSample(n2, this.bytesAccumulator, this.bitrateEstimate);
            }
            --this.streamCount;
            if (this.streamCount > 0) {
                this.startTimeMs = l2;
            }
            this.bytesAccumulator = 0;
            return;
        }
    }

    @Override
    public void onTransferStart() {
        synchronized (this) {
            if (this.streamCount == 0) {
                this.startTimeMs = this.clock.elapsedRealtime();
            }
            ++this.streamCount;
            return;
        }
    }
}

