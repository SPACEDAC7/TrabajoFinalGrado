/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.media.MediaPlayer
 *  android.media.MediaPlayer$OnInfoListener
 */
package com.comscore.streaming;

import android.media.MediaPlayer;
import com.comscore.streaming.StreamSenseMediaPlayer;

class h
implements MediaPlayer.OnInfoListener {
    final /* synthetic */ StreamSenseMediaPlayer a;

    h(StreamSenseMediaPlayer streamSenseMediaPlayer) {
        this.a = streamSenseMediaPlayer;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean onInfo(MediaPlayer mediaPlayer, int n2, int n3) {
        if (n2 == 701 && !StreamSenseMediaPlayer.b(this.a) && !StreamSenseMediaPlayer.c(this.a)) {
            StreamSenseMediaPlayer.d(this.a);
        } else if (n2 == 702 && !StreamSenseMediaPlayer.b(this.a) && StreamSenseMediaPlayer.c(this.a)) {
            StreamSenseMediaPlayer.e(this.a);
        }
        if (StreamSenseMediaPlayer.f(this.a) != null) {
            return StreamSenseMediaPlayer.f(this.a).onInfo(mediaPlayer, n2, n3);
        }
        return true;
    }
}

