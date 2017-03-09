/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming;

import com.comscore.streaming.StreamSenseMediaPlayer;
import java.util.TimerTask;

class l
extends TimerTask {
    final /* synthetic */ long a;
    final /* synthetic */ StreamSenseMediaPlayer b;

    l(StreamSenseMediaPlayer streamSenseMediaPlayer, long l2) {
        this.b = streamSenseMediaPlayer;
        this.a = l2;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void run() {
        if (StreamSenseMediaPlayer.l(this.b) != null) {
            long l2 = StreamSenseMediaPlayer.i(this.b);
            boolean bl = this.a == l2;
            if (StreamSenseMediaPlayer.m(this.b) && !this.b.isPlayerPausedForSeeking() && bl && !this.b.isPlayerPausedForBuffering()) {
                StreamSenseMediaPlayer.d(this.b);
            } else if (StreamSenseMediaPlayer.m(this.b) && !this.b.isPlayerPausedForSeeking() && !bl && this.b.isPlayerPausedForBuffering()) {
                StreamSenseMediaPlayer.e(this.b);
            }
            StreamSenseMediaPlayer.n(this.b);
            StreamSenseMediaPlayer.k(this.b);
        }
    }
}

