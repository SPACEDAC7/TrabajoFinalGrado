/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.comscore.streaming;

import android.content.Context;
import com.comscore.analytics.Core;
import com.comscore.analytics.comScore;
import com.comscore.streaming.StreamSenseClip;
import com.comscore.streaming.StreamSenseEventType;
import com.comscore.streaming.StreamSenseListener;
import com.comscore.streaming.StreamSenseMediaPlayer;
import com.comscore.streaming.StreamSensePlaylist;
import com.comscore.streaming.StreamSenseState;
import com.comscore.streaming.StreamSenseUtils;
import com.comscore.streaming.StreamSenseVideoView;
import com.comscore.streaming.a;
import com.comscore.streaming.b;
import com.comscore.streaming.c;
import com.comscore.streaming.d;
import com.comscore.streaming.e;
import com.comscore.streaming.f;
import com.comscore.utils.CSLog;
import com.comscore.utils.Utils;
import com.comscore.utils.task.TaskExecutor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class StreamSense {
    protected Core a;
    private HashMap<String, String> b;
    private String c = null;
    private long d;
    private long e;
    private StreamSenseState f = null;
    private int g;
    private StreamSensePlaylist h = null;
    private Runnable i = null;
    private boolean j = true;
    private Runnable k;
    private f l = null;
    private Runnable m;
    private long n;
    private int o;
    private long p;
    private boolean q;
    private StreamSenseState r;
    private String s;
    private String t;
    private HashMap<String, String> u;
    private List<StreamSenseListener> v;
    private List<HashMap<String, Long>> w;
    private int x;
    private int y;

    public StreamSense() {
        CSLog.d(this, "StreamSense()");
        this.a = comScore.getCore();
        this.b = new HashMap();
        this.g = 1;
        this.f = StreamSenseState.IDLE;
        this.h = new StreamSensePlaylist();
        this.i = null;
        this.j = true;
        this.m = null;
        this.o = 0;
        this.f();
        this.k = null;
        this.l = null;
        this.q = false;
        this.r = null;
        this.e = 0;
        this.x = 1200000;
        this.y = 500;
        this.v = new ArrayList<StreamSenseListener>();
        this.w = this.n();
        this.reset();
    }

    private long a(long l2) {
        for (HashMap<String, Long> hashMap : this.w) {
            Long l3 = hashMap.get("playingtime");
            if (l3 != null && l2 >= l3) continue;
            return hashMap.get("interval");
        }
        return 0;
    }

    private StreamSenseState a(StreamSenseEventType streamSenseEventType) {
        if (streamSenseEventType == StreamSenseEventType.PLAY) {
            return StreamSenseState.PLAYING;
        }
        if (streamSenseEventType == StreamSenseEventType.PAUSE) {
            return StreamSenseState.PAUSED;
        }
        if (streamSenseEventType == StreamSenseEventType.BUFFER) {
            return StreamSenseState.BUFFERING;
        }
        if (streamSenseEventType == StreamSenseEventType.END) {
            return StreamSenseState.IDLE;
        }
        return null;
    }

    private HashMap<String, String> a(StreamSenseEventType streamSenseEventType, HashMap<String, String> hashMap) {
        if (!this.a.isEnabled()) {
            new HashMap();
        }
        CSLog.d(this, "createMeasurementLabels(" + (Object)((Object)streamSenseEventType) + ")");
        HashMap<String, String> hashMap2 = new HashMap<String, String>();
        if (hashMap != null) {
            hashMap2.putAll(hashMap);
        }
        if (!hashMap2.containsKey("ns_ts")) {
            hashMap2.put("ns_ts", String.valueOf(System.currentTimeMillis()));
        }
        if (streamSenseEventType != null && !hashMap2.containsKey("ns_st_ev")) {
            hashMap2.put("ns_st_ev", streamSenseEventType.toString());
        }
        hashMap2.putAll(this.getLabels());
        this.b(streamSenseEventType, hashMap2);
        this.h.a(streamSenseEventType, hashMap2);
        this.h.getClip().a(streamSenseEventType, hashMap2);
        if (!hashMap2.containsKey("ns_st_mp")) {
            hashMap2.put("ns_st_mp", this.s);
        }
        if (!hashMap2.containsKey("ns_st_mv")) {
            hashMap2.put("ns_st_mv", this.t);
        }
        if (!hashMap2.containsKey("ns_st_ub")) {
            hashMap2.put("ns_st_ub", "0");
        }
        if (!hashMap2.containsKey("ns_st_br")) {
            hashMap2.put("ns_st_br", "0");
        }
        if (!hashMap2.containsKey("ns_st_pn")) {
            hashMap2.put("ns_st_pn", "1");
        }
        if (!hashMap2.containsKey("ns_st_tp")) {
            hashMap2.put("ns_st_tp", "1");
        }
        if (!hashMap2.containsKey("ns_st_it")) {
            hashMap2.put("ns_st_it", "c");
        }
        hashMap2.put("ns_st_sv", "4.1508.28");
        return hashMap2;
    }

    static /* synthetic */ void a(StreamSense streamSense) {
        streamSense.j();
    }

    static /* synthetic */ void a(StreamSense streamSense, StreamSenseState streamSenseState, HashMap hashMap) {
        streamSense.a(streamSenseState, hashMap);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void a(StreamSenseState hashMap, HashMap<String, String> hashMap2) {
        long l2 = 0;
        if (!this.a.isEnabled()) {
            return;
        }
        CSLog.d(this, "transitionTo(" + hashMap + ", " + hashMap2 + ")");
        this.l();
        if (!this.c((StreamSenseState)((Object)hashMap))) return;
        StreamSenseState streamSenseState = this.getState();
        long l3 = this.d;
        long l4 = this.f(hashMap2);
        if (l3 >= 0) {
            l2 = l4 - l3;
        }
        this.b(this.getState(), hashMap2);
        this.c((StreamSenseState)((Object)hashMap), hashMap2);
        this.d((StreamSenseState)((Object)hashMap));
        Iterator<StreamSenseListener> iterator = this.v.iterator();
        do {
            if (!iterator.hasNext()) {
                this.c(hashMap2);
                this.h.b(hashMap2, (StreamSenseState)((Object)hashMap));
                this.h.getClip().b(hashMap2, (StreamSenseState)((Object)hashMap));
                hashMap = this.a(hashMap.toEventType(), hashMap2);
                hashMap.putAll(hashMap2);
                if (!this.b(this.f)) return;
                this.a(hashMap);
                this.r = this.f;
                ++this.g;
                return;
            }
            iterator.next().onStateChange(streamSenseState, (StreamSenseState)((Object)hashMap), hashMap2, l2);
        } while (true);
    }

    private void a(StreamSenseState streamSenseState, HashMap<String, String> hashMap, long l2) {
        if (!this.a.isEnabled()) {
            return;
        }
        CSLog.d(this, "transitionTo(" + (Object)((Object)streamSenseState) + ", " + hashMap + ", " + l2 + ")");
        this.l();
        this.l = new d(this, streamSenseState, hashMap);
        this.a.getTaskExecutor().execute((Runnable)this.l, l2);
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean a(StreamSenseState streamSenseState) {
        if (!this.a.isEnabled() || streamSenseState != StreamSenseState.PLAYING && streamSenseState != StreamSenseState.PAUSED) {
            return false;
        }
        return true;
    }

    @Deprecated
    public static StreamSense analyticsFor(StreamSenseMediaPlayer streamSenseMediaPlayer) {
        StreamSense streamSense = new StreamSense();
        streamSense.engageTo(streamSenseMediaPlayer);
        streamSense.setPausePlaySwitchDelayEnabled(true);
        return streamSense;
    }

    @Deprecated
    public static StreamSense analyticsFor(StreamSenseVideoView streamSenseVideoView) {
        StreamSense streamSense = new StreamSense();
        streamSense.engageTo(streamSenseVideoView);
        return streamSense;
    }

    /*
     * Exception decompiling
     */
    private HashMap<String, String> b(StreamSenseEventType var1_1, HashMap<String, String> var2_2) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Statement already marked as first in another block
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.markFirstStatementInBlock(Op03SimpleStatement.java:420)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.markWholeBlock(Misc.java:219)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.ConditionalRewriter.considerAsSimpleIf(ConditionalRewriter.java:619)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.ConditionalRewriter.identifyNonjumpingConditionals(ConditionalRewriter.java:45)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:681)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void b(StreamSenseState streamSenseState, HashMap<String, String> hashMap) {
        if (!this.a.isEnabled()) {
            return;
        }
        CSLog.d(this, "onExit(" + (Object)((Object)streamSenseState) + ", " + hashMap + ")");
        long l2 = this.f(hashMap);
        if (streamSenseState == StreamSenseState.PLAYING) {
            this.h.a(l2);
            this.e();
            this.h();
            return;
        }
        if (streamSenseState == StreamSenseState.BUFFERING) {
            this.h.b(l2);
            this.k();
            return;
        }
        if (streamSenseState != StreamSenseState.IDLE) return;
        this.getClip().reset(this.getClip().getLabels().keySet());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void b(HashMap<String, String> hashMap) {
        if (!this.a.isEnabled() || this.f(hashMap) >= 0) {
            return;
        }
        hashMap.put("ns_ts", String.valueOf(System.currentTimeMillis()));
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean b(StreamSenseState streamSenseState) {
        if (streamSenseState == StreamSenseState.PAUSED && (this.r == StreamSenseState.IDLE || this.r == null) || streamSenseState == StreamSenseState.BUFFERING || this.r == streamSenseState) {
            return false;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void c() {
        if (!this.a.isEnabled()) {
            return;
        }
        this.k();
        if (!this.isPauseOnBufferingEnabled()) return;
        if (!this.b(StreamSenseState.PAUSED)) return;
        this.i = new a(this);
        this.a.getTaskExecutor().execute(this.i, this.y);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void c(StreamSenseState streamSenseState, HashMap<String, String> hashMap) {
        if (!this.a.isEnabled()) return;
        CSLog.d(this, "onEnter(" + (Object)((Object)streamSenseState) + ", " + hashMap + ")");
        long l2 = this.f(hashMap);
        this.e = this.e(hashMap);
        if (streamSenseState == StreamSenseState.PLAYING) {
            this.d();
            this.g();
            this.h.getClip().c(l2);
            if (!this.b(streamSenseState)) return;
            {
                this.h.getClip().d();
                if (this.h.a() >= 1) return;
                {
                    this.h.a(1);
                    return;
                }
            }
        }
        if (streamSenseState == StreamSenseState.PAUSED) {
            if (!this.b(streamSenseState)) return;
            {
                this.h.f();
                return;
            }
        }
        if (streamSenseState == StreamSenseState.BUFFERING) {
            this.h.getClip().d(l2);
            if (!this.j) return;
            {
                this.c();
                return;
            }
        }
        if (streamSenseState != StreamSenseState.IDLE) {
            return;
        }
        this.f();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private void c(HashMap<String, String> hashMap) {
        if (!this.a.isEnabled()) {
            return;
        }
        String string2 = hashMap.get("ns_st_mp");
        if (string2 != null) {
            this.s = string2;
            hashMap.remove("ns_st_mp");
        }
        if ((string2 = hashMap.get("ns_st_mv")) != null) {
            this.t = string2;
            hashMap.remove("ns_st_mv");
        }
        if ((string2 = hashMap.get("ns_st_ec")) == null) return;
        try {
            this.g = Integer.parseInt(string2);
            hashMap.remove("ns_st_ec");
            return;
        }
        catch (NumberFormatException var1_2) {
            return;
        }
    }

    private boolean c(StreamSenseState streamSenseState) {
        if (streamSenseState != null && this.getState() != streamSenseState) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void d() {
        long l2;
        if (!this.a.isEnabled()) {
            return;
        }
        this.i();
        if (this.w == null) return;
        if (this.n >= 0) {
            l2 = this.n;
            CSLog.d(this, "Resuming heart beat timer. Next event in " + l2 + " ms");
        } else {
            l2 = this.a(this.h.getClip().f());
            CSLog.d(this, "Starting heart beat timer. Next event in " + l2 + " ms");
        }
        if (l2 <= 0) return;
        this.p = System.currentTimeMillis() + l2;
        this.m = new b(this);
        this.a.getTaskExecutor().execute(this.m, l2);
    }

    private void d(StreamSenseState streamSenseState) {
        if (!this.a.isEnabled()) {
            return;
        }
        this.f = streamSenseState;
        this.d = System.currentTimeMillis();
    }

    private void d(HashMap<String, String> hashMap) {
        if (!this.a.isEnabled()) {
            return;
        }
        this.u = this.g(null);
        this.u.putAll(hashMap);
    }

    private long e(HashMap<String, String> hashMap) {
        if (hashMap.containsKey("ns_st_po")) {
            try {
                long l2 = Long.valueOf(hashMap.get("ns_st_po"));
                return l2;
            }
            catch (NumberFormatException var1_2) {
                return -1;
            }
        }
        return -1;
    }

    private void e() {
        if (!this.a.isEnabled()) {
            return;
        }
        CSLog.d(this, "Pausing heartbeat timer.");
        this.i();
        this.n = this.p - System.currentTimeMillis();
        this.p = -1;
    }

    private long f(HashMap<String, String> hashMap) {
        if (hashMap.containsKey("ns_ts")) {
            try {
                long l2 = Long.valueOf(hashMap.get("ns_ts"));
                return l2;
            }
            catch (NumberFormatException var1_2) {
                return -1;
            }
        }
        return -1;
    }

    private void f() {
        if (!this.a.isEnabled()) {
            return;
        }
        CSLog.d(this, "Resetting heartbeat timer.");
        this.n = -1;
        this.p = -1;
        this.o = 0;
    }

    private HashMap<String, String> g(HashMap<String, String> hashMap) {
        return this.a(this.f.toEventType(), hashMap);
    }

    private void g() {
        if (!this.a.isEnabled()) {
            return;
        }
        CSLog.d(this, "Starting keep alive timer");
        this.h();
        this.k = new c(this);
        this.a.getTaskExecutor().execute(this.k, this.x, true, this.x);
    }

    public static String getVersion() {
        return "4.1508.28";
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void h() {
        if (!this.a.isEnabled()) {
            return;
        }
        CSLog.d(this, "stopKeepAliveTask()");
        if (this.k == null) return;
        this.a.getTaskExecutor().removeEnqueuedTask(this.k);
        this.k = null;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void i() {
        if (!this.a.isEnabled()) {
            return;
        }
        CSLog.d(this, "releaseHeartBeatTask()");
        if (this.m == null) return;
        this.a.getTaskExecutor().removeEnqueuedTask(this.m);
        this.m = null;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void j() {
        if (!this.a.isEnabled()) {
            return;
        }
        CSLog.d(this, "Firing paused on buffering event");
        if (this.r != StreamSenseState.PLAYING) return;
        this.h.h();
        this.h.f();
        this.a(this.a(StreamSenseEventType.PAUSE, null));
        ++this.g;
        this.r = StreamSenseState.PAUSED;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void k() {
        if (!this.a.isEnabled()) {
            return;
        }
        CSLog.d(this, "stopPausedOnBufferingTask()");
        if (this.i == null) return;
        this.a.getTaskExecutor().removeEnqueuedTask(this.i);
        this.i = null;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void l() {
        if (!this.a.isEnabled()) {
            return;
        }
        CSLog.d(this, "stopDelayedTransitionTask()");
        if (this.l == null) return;
        this.a.getTaskExecutor().removeEnqueuedTask(this.l);
        this.l = null;
    }

    private boolean m() {
        Context context = this.a.getAppContext();
        String string2 = this.a.getPublisherSecret();
        String string3 = this.a.getPixelURL();
        if (context == null || string2 == null || string2.length() == 0 || string3 == null || string3.length() == 0) {
            return true;
        }
        return false;
    }

    private List<HashMap<String, Long>> n() {
        ArrayList<HashMap<String, Long>> arrayList = new ArrayList<HashMap<String, Long>>();
        HashMap<String, Long> hashMap = new HashMap<String, Long>();
        hashMap.put("playingtime", 60000);
        hashMap.put("interval", 10000);
        arrayList.add(hashMap);
        hashMap = new HashMap();
        hashMap.put("playingtime", null);
        hashMap.put("interval", 60000);
        arrayList.add(hashMap);
        return arrayList;
    }

    protected void a() {
        if (!this.a.isEnabled()) {
            return;
        }
        CSLog.d(this, "Firing heart beat");
        ++this.o;
        this.a(this.a(StreamSenseEventType.HEART_BEAT, null));
        this.n = -1;
        this.d();
    }

    protected void a(HashMap<String, String> hashMap) {
        this.a(hashMap, true);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected void a(HashMap<String, String> hashMap, boolean bl) {
        if (!this.a.isEnabled()) {
            return;
        }
        CSLog.d(this, "dispatch(" + hashMap + ", " + bl + ")");
        if (bl) {
            this.d(hashMap);
        }
        if (this.m()) return;
        String string2 = this.c;
        this.a.getTaskExecutor().execute((Runnable)new e(this, hashMap, string2), true);
    }

    public void addListener(StreamSenseListener streamSenseListener) {
        if (!this.a.isEnabled()) {
            return;
        }
        this.v.add(streamSenseListener);
    }

    protected void b() {
        if (!this.a.isEnabled()) {
            return;
        }
        CSLog.d(this, "Firing keep alive");
        this.a(this.a(StreamSenseEventType.KEEP_ALIVE, null));
        ++this.g;
    }

    @Deprecated
    public void engageTo(StreamSenseMediaPlayer streamSenseMediaPlayer) {
        streamSenseMediaPlayer.setStreamSense(this);
    }

    @Deprecated
    public void engageTo(StreamSenseVideoView streamSenseVideoView) {
        streamSenseVideoView.setStreamSense(this);
    }

    public HashMap<String, String> exportState() {
        return this.u;
    }

    public StreamSenseClip getClip() {
        return this.h.getClip();
    }

    public int getKeepAliveInterval() {
        return this.x;
    }

    public String getLabel(String string2) {
        return this.b.get(string2);
    }

    public HashMap<String, String> getLabels() {
        return this.b;
    }

    public int getPauseOnBufferingInterval() {
        return this.y;
    }

    public String getPixelURL() {
        return this.c;
    }

    public StreamSensePlaylist getPlaylist() {
        return this.h;
    }

    public StreamSenseState getState() {
        return this.f;
    }

    public void importState(HashMap<String, String> hashMap) {
        if (!this.a.isEnabled()) {
            return;
        }
        this.reset();
        hashMap = Utils.mapOfStrings(hashMap);
        this.h.b(hashMap, null);
        this.h.getClip().b(hashMap, null);
        this.c(hashMap);
        ++this.g;
    }

    public boolean isPauseOnBufferingEnabled() {
        return this.j;
    }

    public boolean isPausePlaySwitchDelayEnabled() {
        return this.q;
    }

    public void notify(StreamSenseEventType streamSenseEventType, long l2) {
        this.notify(streamSenseEventType, new HashMap<String, String>(), l2);
    }

    public void notify(StreamSenseEventType object, HashMap<String, String> hashMap, long l2) {
        if (!this.a.isEnabled()) {
            return;
        }
        CSLog.d(this, "notify(" + object + ", " + hashMap + ")");
        StreamSenseState streamSenseState = this.a((StreamSenseEventType)((Object)object));
        hashMap = Utils.mapOfStrings(hashMap);
        this.b(hashMap);
        if (!hashMap.containsKey("ns_st_po")) {
            hashMap.put("ns_st_po", String.valueOf(l2));
        }
        if (object == StreamSenseEventType.PLAY || object == StreamSenseEventType.PAUSE || object == StreamSenseEventType.BUFFER || object == StreamSenseEventType.END) {
            if (this.isPausePlaySwitchDelayEnabled() && this.a(this.f) && this.a(streamSenseState) && (this.f != StreamSenseState.PLAYING || streamSenseState != StreamSenseState.PAUSED || this.l != null)) {
                this.a(streamSenseState, hashMap, 500);
                return;
            }
            this.a(streamSenseState, hashMap);
            return;
        }
        object = this.a((StreamSenseEventType)((Object)object), hashMap);
        object.putAll(hashMap);
        this.a((HashMap<String, String>)object, false);
        ++this.g;
    }

    public void removeListener(StreamSenseListener streamSenseListener) {
        if (!this.a.isEnabled()) {
            return;
        }
        this.v.remove(streamSenseListener);
    }

    public void reset() {
        this.reset(null);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void reset(Set<String> set) {
        if (!this.a.isEnabled()) {
            return;
        }
        CSLog.d(this, "Reset()");
        this.h.reset(set);
        this.h.d(0);
        this.h.setPlaylistId("" + System.currentTimeMillis() + "_1");
        this.h.getClip().reset(set);
        if (set != null && !set.isEmpty()) {
            StreamSenseUtils.filterMap(this.b, set);
        } else {
            this.b.clear();
        }
        this.g = 1;
        this.o = 0;
        this.e();
        this.f();
        this.h();
        this.k();
        this.l();
        this.f = StreamSenseState.IDLE;
        this.d = -1;
        this.r = null;
        this.s = "android_puppet";
        this.t = "4.1508.28";
        this.u = null;
    }

    public Boolean setClip(HashMap<String, String> hashMap) {
        return this.setClip(hashMap, false);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public Boolean setClip(HashMap<String, String> hashMap, boolean bl) {
        if (!this.a.isEnabled()) {
            return Boolean.FALSE;
        }
        Boolean bl2 = Boolean.FALSE;
        if (this.f != StreamSenseState.IDLE) return bl2;
        this.h.getClip().reset();
        this.h.getClip().a(Utils.mapOfStrings(hashMap), null);
        if (!bl) return Boolean.TRUE;
        this.h.b();
        return Boolean.TRUE;
    }

    public void setHeartbeatIntervals(List<HashMap<String, Long>> list) {
        if (!this.a.isEnabled()) {
            return;
        }
        this.w = list;
    }

    public void setKeepAliveInterval(int n2) {
        if (!this.a.isEnabled()) {
            return;
        }
        this.x = n2;
    }

    public void setLabel(String string2, String string3) {
        if (!this.a.isEnabled()) {
            return;
        }
        if (string3 == null) {
            this.b.remove(string2);
            return;
        }
        this.b.put(string2, string3);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setLabels(HashMap<String, String> hashMap) {
        if (!this.a.isEnabled() || hashMap == null) {
            return;
        }
        if (this.b == null) {
            this.b = Utils.mapOfStrings(hashMap);
            return;
        }
        this.b.putAll(Utils.mapOfStrings(hashMap));
    }

    public void setPauseOnBufferingEnabled(boolean bl) {
        if (!this.a.isEnabled()) {
            return;
        }
        this.j = bl;
    }

    public void setPauseOnBufferingInterval(int n2) {
        if (!this.a.isEnabled()) {
            return;
        }
        this.y = n2;
    }

    public void setPausePlaySwitchDelayEnabled(boolean bl) {
        if (!this.a.isEnabled()) {
            return;
        }
        this.q = bl;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public String setPixelURL(String var1_1) {
        if (!this.a.isEnabled()) {
            return this.c;
        }
        if (var1_1 == null) return null;
        if (var1_1.length() == 0) {
            return null;
        }
        var3_2 = var1_1.indexOf(63);
        if (var3_2 < 0) ** GOTO lbl13
        var5_3 = var1_1;
        if (var3_2 >= var1_1.length() - 1) ** GOTO lbl24
        var5_3 = var1_1.substring(var3_2 + 1).split("&");
        var4_4 = var5_3.length;
        ** GOTO lbl15
lbl13: // 1 sources:
        var5_3 = (String)var1_1 + '?';
        ** GOTO lbl24
lbl15: // 4 sources:
        for (var2_5 = 0; var2_5 < var4_4; ++var2_5) {
            var6_6 = var5_3[var2_5].split("=");
            if (var6_6.length == 2) {
                this.setLabel(var6_6[0], var6_6[1]);
                continue;
            }
            if (var6_6.length != 1) continue;
            this.setLabel("name", var6_6[0]);
        }
        var5_3 = var1_1.substring(0, var3_2 + 1);
lbl24: // 3 sources:
        this.c = var5_3;
        return this.c;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public Boolean setPlaylist(HashMap<String, String> hashMap) {
        if (!this.a.isEnabled()) {
            return Boolean.FALSE;
        }
        Boolean bl = Boolean.FALSE;
        if (this.f != StreamSenseState.IDLE) return bl;
        this.h.i();
        this.h.reset();
        this.h.getClip().reset();
        this.h.a(Utils.mapOfStrings(hashMap), null);
        return Boolean.TRUE;
    }
}

