/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.media.MediaPlayer
 *  android.media.MediaPlayer$OnCompletionListener
 */
package com.comscore.streaming;

import android.media.MediaPlayer;
import com.comscore.streaming.StreamSenseVideoView;

class o
implements MediaPlayer.OnCompletionListener {
    final /* synthetic */ StreamSenseVideoView a;

    o(StreamSenseVideoView streamSenseVideoView) {
        this.a = streamSenseVideoView;
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        StreamSenseVideoView.a(this.a, mediaPlayer);
        if (StreamSenseVideoView.j(this.a) != null) {
            StreamSenseVideoView.j(this.a).onCompletion(mediaPlayer);
        }
    }
}

