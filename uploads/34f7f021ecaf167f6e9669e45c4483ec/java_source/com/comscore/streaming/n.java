/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming;

import com.comscore.streaming.StreamSenseVideoView;
import java.util.TimerTask;

class n
extends TimerTask {
    final /* synthetic */ long a;
    final /* synthetic */ StreamSenseVideoView b;

    n(StreamSenseVideoView streamSenseVideoView, long l2) {
        this.b = streamSenseVideoView;
        this.a = l2;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void run() {
        if (StreamSenseVideoView.e(this.b) == null) return;
        long l2 = StreamSenseVideoView.a(this.b);
        boolean bl = this.a == l2;
        if (StreamSenseVideoView.f(this.b) && bl && !StreamSenseVideoView.g(this.b)) {
            StreamSenseVideoView.h(this.b);
            StreamSenseVideoView.i(this.b);
            return;
        }
        StreamSenseVideoView.h(this.b);
        StreamSenseVideoView.d(this.b);
    }
}

