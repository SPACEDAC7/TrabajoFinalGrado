/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.media.MediaPlayer
 *  android.media.MediaPlayer$OnCompletionListener
 */
package com.comscore.streaming;

import android.media.MediaPlayer;
import com.comscore.streaming.StreamSenseMediaPlayer;

class g
implements MediaPlayer.OnCompletionListener {
    final /* synthetic */ StreamSenseMediaPlayer a;

    g(StreamSenseMediaPlayer streamSenseMediaPlayer) {
        this.a = streamSenseMediaPlayer;
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        StreamSenseMediaPlayer.a(this.a, mediaPlayer);
        if (StreamSenseMediaPlayer.a(this.a) != null) {
            StreamSenseMediaPlayer.a(this.a).onCompletion(mediaPlayer);
        }
    }
}

