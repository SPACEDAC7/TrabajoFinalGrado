/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming;

import com.comscore.streaming.StreamSenseVideoView;
import com.comscore.utils.CSLog;
import java.util.HashMap;
import java.util.TimerTask;

class m
extends TimerTask {
    final /* synthetic */ long a;
    final /* synthetic */ HashMap b;
    final /* synthetic */ StreamSenseVideoView c;

    m(StreamSenseVideoView streamSenseVideoView, long l2, HashMap hashMap) {
        this.c = streamSenseVideoView;
        this.a = l2;
        this.b = hashMap;
    }

    @Override
    public void run() {
        CSLog.d("StreamSenseVideoView", "startEventTimer -> lastPosition:" + this.a + " currentPosition:" + StreamSenseVideoView.a(this.c));
        long l2 = Long.parseLong((String)this.b.get("ns_ts"));
        long l3 = StreamSenseVideoView.a(this.c) - this.a;
        long l4 = System.currentTimeMillis();
        if (l3 >= 500) {
            if ((l3 = l4 - l2 - l3) > 0) {
                StreamSenseVideoView.a(this.c, l3);
                CSLog.d("StreamSenseVideoView", "addToBufferingTotal=" + l3);
                this.b.put("ns_ts", String.valueOf(l2 + l3));
            }
            this.b.put("ns_st_bt", String.valueOf(StreamSenseVideoView.b(this.c)));
            StreamSenseVideoView.c(this.c);
            StreamSenseVideoView.a(this.c, this.b, StreamSenseVideoView.a(this.c));
            StreamSenseVideoView.d(this.c);
            return;
        }
        StreamSenseVideoView.c(this.c);
        StreamSenseVideoView.a(this.c, this.b);
    }
}

