/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Looper
 *  com.google.android.exoplayer.ExoPlayerImpl
 */
package com.google.android.exoplayer;

import android.os.Looper;
import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.ExoPlayerImpl;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.TrackRenderer;

public interface ExoPlayer {
    public static final int STATE_BUFFERING = 3;
    public static final int STATE_ENDED = 5;
    public static final int STATE_IDLE = 1;
    public static final int STATE_PREPARING = 2;
    public static final int STATE_READY = 4;
    public static final int TRACK_DEFAULT = 0;
    public static final int TRACK_DISABLED = -1;
    public static final long UNKNOWN_TIME = -1;

    public void addListener(Listener var1);

    public void blockingSendMessage(ExoPlayerComponent var1, int var2, Object var3);

    public int getBufferedPercentage();

    public long getBufferedPosition();

    public long getCurrentPosition();

    public long getDuration();

    public boolean getPlayWhenReady();

    public Looper getPlaybackLooper();

    public int getPlaybackState();

    public int getSelectedTrack(int var1);

    public int getTrackCount(int var1);

    public MediaFormat getTrackFormat(int var1, int var2);

    public boolean isPlayWhenReadyCommitted();

    public /* varargs */ void prepare(TrackRenderer ... var1);

    public void release();

    public void removeListener(Listener var1);

    public void seekTo(long var1);

    public void sendMessage(ExoPlayerComponent var1, int var2, Object var3);

    public void setPlayWhenReady(boolean var1);

    public void setSelectedTrack(int var1, int var2);

    public void stop();

    public static interface ExoPlayerComponent {
        public void handleMessage(int var1, Object var2) throws ExoPlaybackException;
    }

    public static final class Factory {
        public static final int DEFAULT_MIN_BUFFER_MS = 2500;
        public static final int DEFAULT_MIN_REBUFFER_MS = 5000;

        private Factory() {
        }

        public static ExoPlayer newInstance(int n2) {
            return new ExoPlayerImpl(n2, 2500, 5000);
        }

        public static ExoPlayer newInstance(int n2, int n3, int n4) {
            return new ExoPlayerImpl(n2, n3, n4);
        }
    }

    public static interface Listener {
        public void onPlayWhenReadyCommitted();

        public void onPlayerError(ExoPlaybackException var1);

        public void onPlayerStateChanged(boolean var1, int var2);
    }

}

