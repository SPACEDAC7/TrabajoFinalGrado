/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.media.MediaPlayer
 *  android.media.MediaPlayer$OnPreparedListener
 */
package com.comscore.streaming;

import android.media.MediaPlayer;
import com.comscore.streaming.StreamSenseMediaPlayer;

class j
implements MediaPlayer.OnPreparedListener {
    final /* synthetic */ StreamSenseMediaPlayer a;

    j(StreamSenseMediaPlayer streamSenseMediaPlayer) {
        this.a = streamSenseMediaPlayer;
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        StreamSenseMediaPlayer.a(this.a, String.valueOf(this.a.getCurrentPosition()));
        if (StreamSenseMediaPlayer.h(this.a) != null) {
            StreamSenseMediaPlayer.h(this.a).onPrepared(mediaPlayer);
        }
    }
}

