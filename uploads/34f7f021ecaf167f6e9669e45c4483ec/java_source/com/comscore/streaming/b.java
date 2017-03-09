/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming;

import com.comscore.streaming.StreamSense;

class b
implements Runnable {
    final /* synthetic */ StreamSense a;

    b(StreamSense streamSense) {
        this.a = streamSense;
    }

    @Override
    public void run() {
        this.a.a();
    }
}

