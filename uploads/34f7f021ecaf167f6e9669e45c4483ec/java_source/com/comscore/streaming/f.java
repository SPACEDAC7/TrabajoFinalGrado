/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming;

import com.comscore.streaming.StreamSense;
import com.comscore.streaming.StreamSenseState;
import com.comscore.streaming.a;

abstract class f
implements Runnable {
    final /* synthetic */ StreamSense d;

    private f(StreamSense streamSense) {
        this.d = streamSense;
    }

    /* synthetic */ f(StreamSense streamSense, a a2) {
        this(streamSense);
    }

    public abstract StreamSenseState getNextState();
}

