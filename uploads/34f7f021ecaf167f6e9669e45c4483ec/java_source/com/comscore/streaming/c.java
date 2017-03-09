/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming;

import com.comscore.streaming.StreamSense;

class c
implements Runnable {
    final /* synthetic */ StreamSense a;

    c(StreamSense streamSense) {
        this.a = streamSense;
    }

    @Override
    public void run() {
        this.a.b();
    }
}

