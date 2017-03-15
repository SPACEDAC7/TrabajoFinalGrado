/*
 * Decompiled with CFR 0_115.
 */
package com.comscore.streaming.plugin;

import com.comscore.streaming.StreamSenseEventType;
import com.comscore.streaming.StreamSenseState;
import com.comscore.streaming.plugin.StreamSensePlugin;
import com.comscore.streaming.plugin.StreamSensePluginListener;
import com.comscore.streaming.plugin.b;
import java.util.HashMap;
import java.util.Iterator;

class a
implements Runnable {
    final /* synthetic */ StreamSensePlugin a;

    a(StreamSensePlugin streamSensePlugin) {
        this.a = streamSensePlugin;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void run() {
        if (!StreamSensePlugin.a(this.a) || StreamSensePlugin.b(this.a) == null) {
            StreamSensePlugin.c(this.a);
            return;
        }
        if (StreamSensePlugin.d(this.a)) {
            StreamSensePlugin.a(this.a, false);
            return;
        }
        var3_1 = StreamSensePlugin.b(this.a).getPosition();
        var1_2 = this.a.getState();
        var5_3 = System.currentTimeMillis();
        if (!StreamSensePlugin.e(this.a).isEmpty() && var3_1 == StreamSensePlugin.a(this.a, 0)) ** GOTO lbl34
        StreamSensePlugin.e(this.a).add(Math.abs(var3_1));
        StreamSensePlugin.f(this.a).add(var5_3);
        if (StreamSensePlugin.e(this.a).size() <= 1 || StreamSensePlugin.a(this.a, 0) >= StreamSensePlugin.a(this.a, 1)) ** GOTO lbl23
        var5_3 = StreamSensePlugin.a(this.a, 0);
        var7_4 = StreamSensePlugin.b(this.a, 0);
        StreamSensePlugin.e(this.a).clear();
        StreamSensePlugin.f(this.a).clear();
        StreamSensePlugin.e(this.a).add(var5_3);
        StreamSensePlugin.f(this.a).add(var7_4);
        if (!StreamSensePlugin.g(this.a)) ** GOTO lbl24
        var9_5 = true;
        ** GOTO lbl25
lbl23: // 1 sources:
        if (StreamSensePlugin.e(this.a).size() < StreamSensePlugin.h(this.a)) return;
lbl24: // 2 sources:
        var9_5 = false;
lbl25: // 2 sources:
        if (StreamSensePlugin.e(this.a).size() > StreamSensePlugin.i(this.a)) {
            StreamSensePlugin.e(this.a).remove(0);
            StreamSensePlugin.f(this.a).remove(0);
        }
        var10_6 = var9_5;
        if (StreamSensePlugin.g(this.a)) {
            var10_6 = var9_5;
            if (!var9_5) {
                var10_6 = StreamSensePlugin.j(this.a);
            }
        }
        ** GOTO lbl36
lbl34: // 1 sources:
        StreamSensePlugin.f(this.a).set(StreamSensePlugin.f(this.a).size() - 1, var5_3);
        var10_6 = false;
lbl36: // 2 sources:
        switch (b.a[this.a.getState().ordinal()]) {
            case 1: 
            case 2: 
            case 3: {
                if (StreamSensePlugin.k(this.a) && var3_1 > StreamSensePlugin.l(this.a) && !var10_6 && !StreamSensePlugin.a(this.a, var3_1)) {
                    var2_7 = StreamSensePlugin.m(this.a).iterator();
                    while (var2_7.hasNext() && ((StreamSensePluginListener)var2_7.next()).onPreStateChange(this.a.getState(), StreamSenseEventType.PLAY, StreamSensePlugin.n(this.a))) {
                    }
                    if (StreamSensePlugin.n(this.a) && !StreamSensePlugin.o(this.a)) {
                        var2_7 = new HashMap<K, V>();
                        var2_7.put("ns_st_ui", "seek");
                        this.a.notify(StreamSenseEventType.PLAY, (HashMap<String, String>)var2_7, var3_1);
                    } else {
                        this.a.notify(StreamSenseEventType.PLAY, null, (Long)StreamSensePlugin.e(this.a).get(0));
                    }
                    StreamSensePlugin.b(this.a, false);
                    StreamSensePlugin.c(this.a, false);
                    break;
                }
                if (!StreamSensePlugin.g(this.a) || !var10_6) break;
                StreamSensePlugin.b(this.a, true);
                break;
            }
            case 4: {
                if (StreamSensePlugin.g(this.a) && var10_6) {
                    var2_7 = StreamSensePlugin.m(this.a).iterator();
                    while (var2_7.hasNext() && ((StreamSensePluginListener)var2_7.next()).onPreStateChange(this.a.getState(), StreamSenseEventType.PAUSE, false)) {
                    }
                    this.a.notify(StreamSenseEventType.PAUSE, null, StreamSensePlugin.l(this.a));
                    StreamSensePlugin.b(this.a, true);
                    break;
                }
                if (StreamSensePlugin.p(this.a) && StreamSensePlugin.a(this.a, var3_1)) {
                    var2_7 = StreamSensePlugin.m(this.a).iterator();
                    while (var2_7.hasNext() && ((StreamSensePluginListener)var2_7.next()).onPreStateChange(this.a.getState(), StreamSenseEventType.END, false)) {
                    }
                    this.a.notify(StreamSenseEventType.END, null, StreamSensePlugin.b(this.a).getDuration());
                    StreamSensePlugin.b(this.a, false);
                    break;
                }
                if (!StreamSensePlugin.q(this.a) || Math.abs(var3_1 - StreamSensePlugin.l(this.a)) > (long)StreamSensePlugin.r(this.a)) break;
                var2_7 = StreamSensePlugin.m(this.a).iterator();
                while (var2_7.hasNext() && ((StreamSensePluginListener)var2_7.next()).onPreStateChange(this.a.getState(), StreamSenseEventType.PAUSE, false)) {
                }
                this.a.notify(StreamSenseEventType.PAUSE, null, StreamSensePlugin.l(this.a));
            }
        }
        if (var1_2 != this.a.getState()) {
            var1_2 = StreamSensePlugin.m(this.a).iterator();
            while (var1_2.hasNext()) {
                ((StreamSensePluginListener)var1_2.next()).onPostStateChange(this.a.getState());
            }
            if (this.a.getState() == StreamSenseState.PAUSED) {
                StreamSensePlugin.e(this.a).clear();
                StreamSensePlugin.f(this.a).clear();
            }
        }
        StreamSensePlugin.b(this.a, var3_1);
    }
}

