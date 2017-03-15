/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.media.MediaPlayer
 *  android.media.MediaPlayer$OnCompletionListener
 *  android.net.Uri
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.AttributeSet
 *  android.widget.VideoView
 */
package com.comscore.streaming;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.VideoView;
import com.comscore.streaming.StreamSense;
import com.comscore.streaming.StreamSenseEventType;
import com.comscore.streaming.m;
import com.comscore.streaming.n;
import com.comscore.streaming.o;
import com.comscore.utils.CSLog;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

@Deprecated
public class StreamSenseVideoView
extends VideoView {
    private final String a = "StreamSenseVideoView";
    private final boolean b = true;
    private final int c = 500;
    private final int d = 500;
    private long e = -1;
    private StreamSense f = null;
    private String g = "0x0";
    private long h = 0;
    private long i = -1;
    private String j;
    private boolean k = false;
    private Timer l = null;
    private Timer m = null;
    private MediaPlayer.OnCompletionListener n = null;
    private final MediaPlayer.OnCompletionListener o;

    public StreamSenseVideoView(Context context) {
        super(context);
        this.o = new o(this);
        this.h();
    }

    public StreamSenseVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.o = new o(this);
        this.h();
    }

    public StreamSenseVideoView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.o = new o(this);
        this.h();
    }

    static /* synthetic */ long a(StreamSenseVideoView streamSenseVideoView) {
        return streamSenseVideoView.getCurrentPlayerSafePosition();
    }

    static /* synthetic */ long a(StreamSenseVideoView streamSenseVideoView, long l2) {
        streamSenseVideoView.h = l2 = streamSenseVideoView.h + l2;
        return l2;
    }

    private void a(MediaPlayer mediaPlayer) {
        CSLog.d("StreamSenseVideoView", "onPlaybackCompleted");
        this.c(this.i(), this.getCurrentPlayerSafePosition());
    }

    static /* synthetic */ void a(StreamSenseVideoView streamSenseVideoView, MediaPlayer mediaPlayer) {
        streamSenseVideoView.a(mediaPlayer);
    }

    static /* synthetic */ void a(StreamSenseVideoView streamSenseVideoView, HashMap hashMap) {
        streamSenseVideoView.a(hashMap);
    }

    static /* synthetic */ void a(StreamSenseVideoView streamSenseVideoView, HashMap hashMap, long l2) {
        streamSenseVideoView.b(hashMap, l2);
    }

    private void a(HashMap<String, String> hashMap) {
        synchronized (this) {
            this.f();
            if (this.l == null) {
                long l2 = this.getCurrentPlayerSafePosition();
                CSLog.d("StreamSenseVideoView", "startStartTimer:" + l2);
                this.l = new Timer();
                this.l.schedule((TimerTask)new m(this, l2, hashMap), 500);
            }
            return;
        }
    }

    private void a(HashMap<String, String> hashMap, long l2) {
        this.f();
        this.d();
        if (this.f != null) {
            this.f.notify(StreamSenseEventType.END, hashMap, l2);
        }
    }

    private boolean a() {
        try {
            boolean bl = this.isPlaying();
            return bl;
        }
        catch (IllegalStateException var1_2) {
            return false;
        }
    }

    static /* synthetic */ long b(StreamSenseVideoView streamSenseVideoView) {
        return streamSenseVideoView.h;
    }

    private void b(HashMap<String, String> hashMap, long l2) {
        this.k = false;
        this.d();
        if (this.f != null) {
            this.f.notify(StreamSenseEventType.PLAY, hashMap, l2);
        }
    }

    private boolean b() {
        return this.k;
    }

    private void c() {
        CSLog.d("StreamSenseVideoView", "onPauseForBuffering");
        this.k = true;
        this.i = System.currentTimeMillis();
        if (this.a()) {
            this.c(this.i(), this.getCurrentPlayerSafePosition());
            this.e();
        }
    }

    private void c(HashMap<String, String> hashMap, long l2) {
        if (!this.d() && this.f != null) {
            this.f.notify(StreamSenseEventType.PAUSE, hashMap, l2);
        }
    }

    static /* synthetic */ boolean c(StreamSenseVideoView streamSenseVideoView) {
        return streamSenseVideoView.d();
    }

    static /* synthetic */ void d(StreamSenseVideoView streamSenseVideoView) {
        streamSenseVideoView.g();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean d() {
        synchronized (this) {
            if (this.l == null) return false;
            CSLog.d("StreamSenseVideoView", "cancelStartTimer");
            this.l.cancel();
            this.l = null;
            return true;
        }
    }

    static /* synthetic */ Timer e(StreamSenseVideoView streamSenseVideoView) {
        return streamSenseVideoView.m;
    }

    private void e() {
        this.a(this.i());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean f() {
        synchronized (this) {
            CSLog.d("StreamSenseVideoView", "cancelPlayingPollTimer()");
            if (this.m == null) return false;
            this.m.cancel();
            this.m = null;
            return true;
        }
    }

    static /* synthetic */ boolean f(StreamSenseVideoView streamSenseVideoView) {
        return streamSenseVideoView.a();
    }

    private void g() {
        synchronized (this) {
            if (this.m == null) {
                CSLog.d("StreamSenseVideoView", "startPlayingPollTimer");
                long l2 = this.getCurrentPlayerSafePosition();
                this.m = new Timer();
                this.m.schedule((TimerTask)new n(this, l2), 250);
            }
            return;
        }
    }

    static /* synthetic */ boolean g(StreamSenseVideoView streamSenseVideoView) {
        return streamSenseVideoView.b();
    }

    private long getCurrentPlayerSafePosition() {
        int n2;
        try {
            n2 = this.getCurrentPosition();
        }
        catch (IllegalStateException var1_2) {
            CSLog.e("StreamSenseVideoView", "getCurrentSafePlayerPosition");
            return 0;
        }
        return n2;
    }

    private HashMap<String, String> getPlayerMetadata() {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        if (this.e <= 0) {
            this.e = this.getDuration();
        }
        hashMap.put("ns_st_cl", String.valueOf(this.e));
        if (this.g == null || this.g.equals("0x0")) {
            this.g = "" + this.getWidth() + "x" + this.getHeight();
        }
        hashMap.put("ns_st_cs", this.g);
        hashMap.put("ns_st_cu", this.j);
        hashMap.put("ns_st_mp", StreamSenseVideoView.class.getSimpleName());
        hashMap.put("ns_st_mv", Integer.toString(Build.VERSION.SDK_INT));
        return hashMap;
    }

    private void h() {
        super.setOnCompletionListener(this.o);
    }

    static /* synthetic */ boolean h(StreamSenseVideoView streamSenseVideoView) {
        return streamSenseVideoView.f();
    }

    private HashMap<String, String> i() {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("ns_ts", String.valueOf(System.currentTimeMillis()));
        hashMap.putAll(this.getPlayerMetadata());
        return hashMap;
    }

    static /* synthetic */ void i(StreamSenseVideoView streamSenseVideoView) {
        streamSenseVideoView.c();
    }

    static /* synthetic */ MediaPlayer.OnCompletionListener j(StreamSenseVideoView streamSenseVideoView) {
        return streamSenseVideoView.n;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        CSLog.d("StreamSenseVideoView", "onDetachedFromWindow");
        this.a(this.i(), this.getCurrentPlayerSafePosition());
    }

    public void pause() {
        super.pause();
        CSLog.d("StreamSenseVideoView", "pause");
        this.f();
        if (this.k) {
            this.h += System.currentTimeMillis() - this.i;
        }
        this.k = false;
        this.i = -1;
        this.c(this.i(), this.getCurrentPlayerSafePosition());
    }

    @TargetApi(value=8)
    public void resume() {
        if (Build.VERSION.SDK_INT >= 8) {
            super.resume();
        }
        CSLog.d("StreamSenseVideoView", "resume");
        this.b(this.i(), this.getCurrentPlayerSafePosition());
    }

    public void seekTo(int n2) {
        super.seekTo(n2);
        CSLog.d("StreamSenseVideoView", "seekTo:" + n2);
        if (this.a()) {
            this.f();
            this.d();
            this.c(this.i(), -1);
            this.e();
        }
    }

    public void setOnCompletionListener(MediaPlayer.OnCompletionListener onCompletionListener) {
        super.setOnCompletionListener(this.o);
        this.n = onCompletionListener;
    }

    public void setStreamSense(StreamSense streamSense) {
        this.f = streamSense;
        this.f.setLabel("ns_st_pv", "4.1307.02");
    }

    public void setVideoPath(String string2) {
        super.setVideoPath(string2);
        this.j = string2;
    }

    public void setVideoURI(Uri uri) {
        super.setVideoURI(uri);
        this.j = uri.toString();
    }

    public void start() {
        super.start();
        if (this.l == null) {
            CSLog.d("StreamSenseVideoView", "start");
            this.e();
        }
    }

    public void stopPlayback() {
        super.stopPlayback();
        CSLog.d("StreamSenseVideoView", "stopPlayback");
        this.a(this.i(), this.getCurrentPlayerSafePosition());
    }
}

