/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming;

import com.comscore.streaming.StreamSenseMediaPlayer;
import java.util.HashMap;
import java.util.TimerTask;

class k
extends TimerTask {
    final /* synthetic */ long a;
    final /* synthetic */ HashMap b;
    final /* synthetic */ StreamSenseMediaPlayer c;

    k(StreamSenseMediaPlayer streamSenseMediaPlayer, long l2, HashMap hashMap) {
        this.c = streamSenseMediaPlayer;
        this.a = l2;
        this.b = hashMap;
    }

    @Override
    public void run() {
        if (StreamSenseMediaPlayer.i(this.c) - this.a >= 500) {
            StreamSenseMediaPlayer.j(this.c);
            StreamSenseMediaPlayer.a(this.c, this.b);
            StreamSenseMediaPlayer.k(this.c);
            return;
        }
        StreamSenseMediaPlayer.j(this.c);
        StreamSenseMediaPlayer.b(this.c, this.b);
    }
}

