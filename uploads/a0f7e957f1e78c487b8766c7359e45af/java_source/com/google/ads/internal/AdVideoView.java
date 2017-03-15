/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.media.MediaPlayer
 *  android.media.MediaPlayer$OnCompletionListener
 *  android.media.MediaPlayer$OnErrorListener
 *  android.media.MediaPlayer$OnPreparedListener
 *  android.os.Handler
 *  android.text.TextUtils
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.webkit.WebView
 *  android.widget.FrameLayout
 *  android.widget.FrameLayout$LayoutParams
 *  android.widget.MediaController
 *  android.widget.VideoView
 */
package com.google.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.media.MediaPlayer;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.MediaController;
import android.widget.VideoView;
import com.google.ads.internal.AdWebView;
import com.google.ads.util.b;
import com.google.ads.util.f;
import java.lang.ref.WeakReference;

public class AdVideoView
extends FrameLayout
implements MediaPlayer.OnCompletionListener,
MediaPlayer.OnErrorListener,
MediaPlayer.OnPreparedListener {
    private static final com.google.ads.internal.a b = com.google.ads.internal.a.a.b();
    public MediaController a;
    private WeakReference<Activity> c;
    private AdWebView d;
    private long e;
    private VideoView f;
    private String g;

    public AdVideoView(Activity activity, AdWebView adWebView) {
        super((Context)activity);
        this.c = new WeakReference<Activity>(activity);
        this.d = adWebView;
        this.f = new VideoView((Context)activity);
        activity = new FrameLayout.LayoutParams(-1, -1, 17);
        this.addView((View)this.f, (ViewGroup.LayoutParams)activity);
        this.a = null;
        this.g = null;
        this.e = 0;
        this.a();
        this.f.setOnCompletionListener((MediaPlayer.OnCompletionListener)this);
        this.f.setOnPreparedListener((MediaPlayer.OnPreparedListener)this);
        this.f.setOnErrorListener((MediaPlayer.OnErrorListener)this);
    }

    protected void a() {
        new a(this).a();
    }

    public void a(int n2) {
        this.f.seekTo(n2);
    }

    public void a(MotionEvent motionEvent) {
        this.f.onTouchEvent(motionEvent);
    }

    public void b() {
        if (!TextUtils.isEmpty((CharSequence)this.g)) {
            this.f.setVideoPath(this.g);
            return;
        }
        b.a(this.d, "onVideoEvent", "{'event': 'error', 'what': 'no_src'}");
    }

    public void c() {
        this.f.pause();
    }

    public void d() {
        this.f.start();
    }

    public void e() {
        this.f.stopPlayback();
    }

    void f() {
        long l2 = this.f.getCurrentPosition();
        if (this.e != l2) {
            float f2 = (float)l2 / 1000.0f;
            b.a(this.d, "onVideoEvent", "{'event': 'timeupdate', 'time': " + f2 + "}");
            this.e = l2;
        }
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        b.a(this.d, "onVideoEvent", "{'event': 'ended'}");
    }

    public boolean onError(MediaPlayer mediaPlayer, int n2, int n3) {
        b.e("Video threw error! <what:" + n2 + ", extra:" + n3 + ">");
        b.a(this.d, "onVideoEvent", "{'event': 'error', 'what': '" + n2 + "', 'extra': '" + n3 + "'}");
        return true;
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        float f2 = (float)this.f.getDuration() / 1000.0f;
        b.a(this.d, "onVideoEvent", "{'event': 'canplaythrough', 'duration': '" + f2 + "'}");
    }

    public void setMediaControllerEnabled(boolean bl) {
        Activity activity = this.c.get();
        if (activity == null) {
            b.e("adActivity was null while trying to enable controls on a video.");
            return;
        }
        if (bl) {
            if (this.a == null) {
                this.a = new MediaController((Context)activity);
            }
            this.f.setMediaController(this.a);
            return;
        }
        if (this.a != null) {
            this.a.hide();
        }
        this.f.setMediaController(null);
    }

    public void setSrc(String string2) {
        this.g = string2;
    }

    private static class a
    implements Runnable {
        private WeakReference<AdVideoView> a;
        private Handler b;

        public a(AdVideoView adVideoView) {
            this.a = new WeakReference<AdVideoView>(adVideoView);
            this.b = new Handler();
        }

        public void a() {
            this.b.postDelayed((Runnable)this, 250);
        }

        @Override
        public void run() {
            AdVideoView adVideoView = this.a.get();
            if (adVideoView == null) {
                b.d("The video must be gone, so cancelling the timeupdate task.");
                return;
            }
            adVideoView.f();
            this.b.postDelayed((Runnable)this, 250);
        }
    }

}

