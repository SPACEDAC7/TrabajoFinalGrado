/*
 * Decompiled with CFR 0_115.
 */
package com.google.android.exoplayer.upstream;

import com.google.android.exoplayer.upstream.TransferListener;

public interface BandwidthMeter
extends TransferListener {
    public static final long NO_ESTIMATE = -1;

    public long getBitrateEstimate();

    public static interface EventListener {
        public void onBandwidthSample(int var1, long var2, long var4);
    }

}

