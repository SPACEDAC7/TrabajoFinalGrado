/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming;

import com.comscore.streaming.StreamSense;
import com.comscore.streaming.StreamSenseState;
import com.comscore.streaming.a;
import com.comscore.streaming.f;
import com.comscore.utils.CSLog;
import java.util.HashMap;

class d
extends f {
    final /* synthetic */ StreamSenseState a;
    final /* synthetic */ HashMap b;
    final /* synthetic */ StreamSense c;

    d(StreamSense streamSense, StreamSenseState streamSenseState, HashMap hashMap) {
        this.c = streamSense;
        this.a = streamSenseState;
        this.b = hashMap;
        super(streamSense, null);
    }

    @Override
    public StreamSenseState getNextState() {
        return this.a;
    }

    @Override
    public void run() {
        CSLog.d(this.c, "Performing delayed transition");
        StreamSense.a(this.c, this.a, this.b);
    }
}

