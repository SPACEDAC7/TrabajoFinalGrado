/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming;

import com.comscore.streaming.StreamSense;

class a
implements Runnable {
    final /* synthetic */ StreamSense a;

    a(StreamSense streamSense) {
        this.a = streamSense;
    }

    @Override
    public void run() {
        StreamSense.a(this.a);
    }
}

