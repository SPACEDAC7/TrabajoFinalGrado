/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming.plugin;

import com.comscore.streaming.StreamSenseState;

class b {
    static final /* synthetic */ int[] a;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static {
        a = new int[StreamSenseState.values().length];
        try {
            b.a[StreamSenseState.BUFFERING.ordinal()] = 1;
        }
        catch (NoSuchFieldError var0_3) {}
        try {
            b.a[StreamSenseState.IDLE.ordinal()] = 2;
        }
        catch (NoSuchFieldError var0_2) {}
        try {
            b.a[StreamSenseState.PAUSED.ordinal()] = 3;
        }
        catch (NoSuchFieldError var0_1) {}
        try {
            b.a[StreamSenseState.PLAYING.ordinal()] = 4;
            return;
        }
        catch (NoSuchFieldError var0) {
            return;
        }
    }
}

