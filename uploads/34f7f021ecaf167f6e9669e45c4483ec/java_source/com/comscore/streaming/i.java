/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.media.MediaPlayer
 *  android.media.MediaPlayer$OnSeekCompleteListener
 */
package com.comscore.streaming;

import android.media.MediaPlayer;
import com.comscore.streaming.StreamSenseMediaPlayer;

class i
implements MediaPlayer.OnSeekCompleteListener {
    final /* synthetic */ StreamSenseMediaPlayer a;

    i(StreamSenseMediaPlayer streamSenseMediaPlayer) {
        this.a = streamSenseMediaPlayer;
    }

    public void onSeekComplete(MediaPlayer mediaPlayer) {
        if (StreamSenseMediaPlayer.b(this.a)) {
            StreamSenseMediaPlayer.a(this.a, false);
            StreamSenseMediaPlayer.b(this.a, mediaPlayer);
        }
        if (StreamSenseMediaPlayer.g(this.a) != null) {
            StreamSenseMediaPlayer.g(this.a).onSeekComplete(mediaPlayer);
        }
    }
}

