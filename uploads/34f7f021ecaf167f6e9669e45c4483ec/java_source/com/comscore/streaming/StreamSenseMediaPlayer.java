/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.media.MediaPlayer
 *  android.media.MediaPlayer$OnCompletionListener
 *  android.media.MediaPlayer$OnInfoListener
 *  android.media.MediaPlayer$OnPreparedListener
 *  android.media.MediaPlayer$OnSeekCompleteListener
 *  android.net.Uri
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package com.comscore.streaming;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import com.comscore.streaming.StreamSense;
import com.comscore.streaming.StreamSenseEventType;
import com.comscore.streaming.g;
import com.comscore.streaming.h;
import com.comscore.streaming.i;
import com.comscore.streaming.j;
import com.comscore.streaming.k;
import com.comscore.streaming.l;
import java.io.FileDescriptor;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

@Deprecated
public class StreamSenseMediaPlayer
extends MediaPlayer {
    Timer a;
    Timer b;
    private final String c = "local_file";
    private final int d = 500;
    private final boolean e;
    private final boolean f;
    private final boolean g;
    private final boolean h;
    private final int i;
    private StreamSense j;
    private String k;
    private String l;
    private boolean m;
    private boolean n;
    private String o;
    private MediaPlayer.OnCompletionListener p;
    private final MediaPlayer.OnCompletionListener q;
    private MediaPlayer.OnInfoListener r;
    private final MediaPlayer.OnInfoListener s;
    private MediaPlayer.OnSeekCompleteListener t;
    private final MediaPlayer.OnSeekCompleteListener u;
    private MediaPlayer.OnPreparedListener v;
    private final MediaPlayer.OnPreparedListener w;
    private Timer x;
    private Timer y;

    /*
     * Enabled aggressive block sorting
     */
    public StreamSenseMediaPlayer() {
        boolean bl = Build.VERSION.SDK_INT < 9;
        this.e = bl;
        this.f = false;
        this.g = false;
        this.h = true;
        this.i = 500;
        this.j = null;
        this.k = "0";
        this.l = "0x0";
        this.m = false;
        this.n = false;
        this.p = null;
        this.q = new g(this);
        this.r = null;
        this.s = new h(this);
        this.t = null;
        this.u = new i(this);
        this.v = null;
        this.w = new j(this);
        this.x = null;
        this.a = null;
        this.b = null;
        this.y = null;
        this.c();
    }

    /*
     * Enabled aggressive block sorting
     */
    public StreamSenseMediaPlayer(boolean bl) {
        bl = Build.VERSION.SDK_INT < 9;
        this.e = bl;
        this.f = false;
        this.g = false;
        this.h = true;
        this.i = 500;
        this.j = null;
        this.k = "0";
        this.l = "0x0";
        this.m = false;
        this.n = false;
        this.p = null;
        this.q = new g(this);
        this.r = null;
        this.s = new h(this);
        this.t = null;
        this.u = new i(this);
        this.v = null;
        this.w = new j(this);
        this.x = null;
        this.a = null;
        this.b = null;
        this.y = null;
        this.c();
    }

    static /* synthetic */ MediaPlayer.OnCompletionListener a(StreamSenseMediaPlayer streamSenseMediaPlayer) {
        return streamSenseMediaPlayer.p;
    }

    static /* synthetic */ String a(StreamSenseMediaPlayer streamSenseMediaPlayer, String string2) {
        streamSenseMediaPlayer.k = string2;
        return string2;
    }

    private void a() {
        this.m = true;
        if (this.n() && !this.isPlayerPausedForSeeking()) {
            this.k();
        }
    }

    private void a(MediaPlayer mediaPlayer) {
        this.l();
    }

    static /* synthetic */ void a(StreamSenseMediaPlayer streamSenseMediaPlayer, MediaPlayer mediaPlayer) {
        streamSenseMediaPlayer.a(mediaPlayer);
    }

    static /* synthetic */ void a(StreamSenseMediaPlayer streamSenseMediaPlayer, HashMap hashMap) {
        streamSenseMediaPlayer.f(hashMap);
    }

    private void a(HashMap<String, String> hashMap) {
        synchronized (this) {
            long l2 = this.m();
            this.f();
            boolean bl = this.g();
            if (this.x == null && !bl) {
                this.x = new Timer();
                this.x.schedule((TimerTask)new k(this, l2, hashMap), 500);
            }
            return;
        }
    }

    private void a(HashMap<String, String> hashMap, long l2) {
        boolean bl = this.d();
        boolean bl2 = this.f();
        this.g();
        if (!bl && !bl2 && this.j != null) {
            this.j.notify(StreamSenseEventType.PAUSE, hashMap, l2);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void a(boolean bl) {
        synchronized (this) {
            boolean bl2 = this.a != null;
            this.d();
            bl = this.g();
            if (!bl2 && !bl) {
                this.f(this.o());
            }
            return;
        }
    }

    static /* synthetic */ boolean a(StreamSenseMediaPlayer streamSenseMediaPlayer, boolean bl) {
        streamSenseMediaPlayer.n = bl;
        return bl;
    }

    private void b() {
        this.m = false;
        if (this.n() && !this.isPlayerPausedForSeeking()) {
            this.a(true);
        }
    }

    private void b(MediaPlayer mediaPlayer) {
        if (this.n()) {
            this.a(true);
        }
    }

    static /* synthetic */ void b(StreamSenseMediaPlayer streamSenseMediaPlayer, MediaPlayer mediaPlayer) {
        streamSenseMediaPlayer.b(mediaPlayer);
    }

    static /* synthetic */ void b(StreamSenseMediaPlayer streamSenseMediaPlayer, HashMap hashMap) {
        streamSenseMediaPlayer.a(hashMap);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void b(HashMap<String, String> hashMap) {
        synchronized (this) {
            boolean bl = this.d();
            boolean bl2 = this.f();
            if (this.b != null) {
                return;
            }
            boolean bl3 = false;
            if (!bl3) {
                if (bl) return;
                if (!bl2) {
                    this.d(hashMap);
                    this.d(hashMap);
                }
            }
            return;
        }
    }

    static /* synthetic */ boolean b(StreamSenseMediaPlayer streamSenseMediaPlayer) {
        return streamSenseMediaPlayer.n;
    }

    private void c() {
        super.setOnCompletionListener(this.q);
        super.setOnInfoListener(this.s);
        super.setOnSeekCompleteListener(this.u);
        super.setOnPreparedListener(this.w);
    }

    private void c(HashMap<String, String> hashMap) {
        this.d();
        this.f();
        this.g();
        if (this.j != null) {
            this.j.notify(StreamSenseEventType.BUFFER, hashMap, this.m());
        }
    }

    static /* synthetic */ boolean c(StreamSenseMediaPlayer streamSenseMediaPlayer) {
        return streamSenseMediaPlayer.m;
    }

    static /* synthetic */ void d(StreamSenseMediaPlayer streamSenseMediaPlayer) {
        streamSenseMediaPlayer.a();
    }

    private void d(HashMap<String, String> hashMap) {
        this.a(hashMap, this.m());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean d() {
        synchronized (this) {
            if (this.x == null) return false;
            this.x.cancel();
            this.x = null;
            return true;
        }
    }

    private void e() {
        this.a(this.o());
    }

    static /* synthetic */ void e(StreamSenseMediaPlayer streamSenseMediaPlayer) {
        streamSenseMediaPlayer.b();
    }

    private void e(HashMap<String, String> hashMap) {
        this.f();
        this.d();
        this.g();
        this.i();
        if (this.j != null) {
            this.j.notify(StreamSenseEventType.END, hashMap, this.m());
        }
    }

    static /* synthetic */ MediaPlayer.OnInfoListener f(StreamSenseMediaPlayer streamSenseMediaPlayer) {
        return streamSenseMediaPlayer.r;
    }

    private void f(HashMap<String, String> hashMap) {
        this.d();
        if (!this.g() && this.j != null) {
            this.j.notify(StreamSenseEventType.PLAY, hashMap, this.m());
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean f() {
        synchronized (this) {
            if (this.a == null) return false;
            this.a.cancel();
            this.a = null;
            return true;
        }
    }

    static /* synthetic */ MediaPlayer.OnSeekCompleteListener g(StreamSenseMediaPlayer streamSenseMediaPlayer) {
        return streamSenseMediaPlayer.t;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean g() {
        synchronized (this) {
            if (this.b == null) return false;
            this.b.cancel();
            this.b = null;
            return true;
        }
    }

    static /* synthetic */ MediaPlayer.OnPreparedListener h(StreamSenseMediaPlayer streamSenseMediaPlayer) {
        return streamSenseMediaPlayer.v;
    }

    private void h() {
        this.b(this.o());
    }

    static /* synthetic */ long i(StreamSenseMediaPlayer streamSenseMediaPlayer) {
        return streamSenseMediaPlayer.m();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean i() {
        synchronized (this) {
            if (this.y == null) return false;
            this.y.cancel();
            this.y = null;
            return true;
        }
    }

    private void j() {
        synchronized (this) {
            if (this.e && this.y == null) {
                long l2 = this.m();
                this.y = new Timer();
                this.y.schedule((TimerTask)new l(this, l2), 250);
            }
            return;
        }
    }

    static /* synthetic */ boolean j(StreamSenseMediaPlayer streamSenseMediaPlayer) {
        return streamSenseMediaPlayer.d();
    }

    private void k() {
        this.c(this.o());
    }

    static /* synthetic */ void k(StreamSenseMediaPlayer streamSenseMediaPlayer) {
        streamSenseMediaPlayer.j();
    }

    static /* synthetic */ Timer l(StreamSenseMediaPlayer streamSenseMediaPlayer) {
        return streamSenseMediaPlayer.y;
    }

    private void l() {
        this.e(this.o());
    }

    private long m() {
        int n2;
        try {
            n2 = this.getCurrentPosition();
        }
        catch (IllegalStateException var2_2) {
            return 0;
        }
        return n2;
    }

    static /* synthetic */ boolean m(StreamSenseMediaPlayer streamSenseMediaPlayer) {
        return streamSenseMediaPlayer.n();
    }

    private boolean n() {
        try {
            boolean bl = this.isPlaying();
            return bl;
        }
        catch (IllegalStateException var2_2) {
            return false;
        }
    }

    static /* synthetic */ boolean n(StreamSenseMediaPlayer streamSenseMediaPlayer) {
        return streamSenseMediaPlayer.i();
    }

    private HashMap<String, String> o() {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("ns_ts", String.valueOf(System.currentTimeMillis()));
        hashMap.putAll(this.p());
        return hashMap;
    }

    private HashMap<String, String> p() {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("ns_st_cl", this.k);
        hashMap.put("ns_st_cs", this.l);
        hashMap.put("ns_st_cu", this.o);
        hashMap.put("ns_st_mp", StreamSenseMediaPlayer.class.getSimpleName());
        hashMap.put("ns_st_mv", Integer.toString(Build.VERSION.SDK_INT));
        return hashMap;
    }

    public boolean isPlayerPausedForBuffering() {
        return this.m;
    }

    public boolean isPlayerPausedForSeeking() {
        return this.n;
    }

    public void pause() {
        super.pause();
        this.i();
        this.m = false;
        this.n = false;
        this.h();
    }

    public void prepare() {
        super.prepare();
        this.l = "" + this.getVideoWidth() + "x" + this.getVideoHeight();
    }

    public void prepareAsync() {
        super.prepareAsync();
        this.l = "" + this.getVideoWidth() + "x" + this.getVideoHeight();
    }

    public void release() {
        super.release();
        this.l();
    }

    public void seekTo(int n2) {
        super.seekTo(n2);
        this.n = true;
        if (this.n()) {
            this.a(this.o(), this.m());
        }
    }

    public void setDataSource(Context context, Uri uri) {
        super.setDataSource(context, uri);
        this.o = uri.toString();
    }

    public void setDataSource(FileDescriptor fileDescriptor) {
        super.setDataSource(fileDescriptor);
        this.o = "local_file";
    }

    public void setDataSource(FileDescriptor fileDescriptor, long l2, long l3) {
        super.setDataSource(fileDescriptor, l2, l3);
        this.o = "local_file";
    }

    public void setDataSource(String string2) {
        super.setDataSource(string2);
        this.o = string2;
    }

    public void setOnCompletionListener(MediaPlayer.OnCompletionListener onCompletionListener) {
        super.setOnCompletionListener(this.q);
        this.p = onCompletionListener;
    }

    public void setOnInfoListener(MediaPlayer.OnInfoListener onInfoListener) {
        super.setOnInfoListener(this.s);
        this.r = onInfoListener;
    }

    public void setOnPreparedListener(MediaPlayer.OnPreparedListener onPreparedListener) {
        super.setOnPreparedListener(this.w);
        this.v = onPreparedListener;
    }

    public void setOnSeekCompleteListener(MediaPlayer.OnSeekCompleteListener onSeekCompleteListener) {
        super.setOnSeekCompleteListener(this.u);
        this.t = onSeekCompleteListener;
    }

    public void setStreamSense(StreamSense streamSense) {
        this.j = streamSense;
        this.j.setLabel("ns_st_pv", "4.1307.02");
    }

    public void start() {
        super.start();
        this.e();
    }

    public void stop() {
        super.stop();
        this.l();
    }
}

