/*
 * Decompiled with CFR 0_115.
 */
package com.google.android.exoplayer;

import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.ExoPlayer;
import com.google.android.exoplayer.MediaClock;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.util.Assertions;

public abstract class TrackRenderer
implements ExoPlayer.ExoPlayerComponent {
    public static final long END_OF_TRACK_US = -3;
    public static final long MATCH_LONGEST_US = -2;
    protected static final int STATE_ENABLED = 2;
    protected static final int STATE_PREPARED = 1;
    protected static final int STATE_RELEASED = -1;
    protected static final int STATE_STARTED = 3;
    protected static final int STATE_UNPREPARED = 0;
    public static final long UNKNOWN_TIME_US = -1;
    private int state;

    /*
     * Enabled aggressive block sorting
     */
    final void disable() throws ExoPlaybackException {
        boolean bl = this.state == 2;
        Assertions.checkState(bl);
        this.state = 1;
        this.onDisabled();
    }

    protected abstract boolean doPrepare(long var1) throws ExoPlaybackException;

    protected abstract void doSomeWork(long var1, long var3) throws ExoPlaybackException;

    /*
     * Enabled aggressive block sorting
     */
    final void enable(int n2, long l2, boolean bl) throws ExoPlaybackException {
        boolean bl2 = true;
        if (this.state != 1) {
            bl2 = false;
        }
        Assertions.checkState(bl2);
        this.state = 2;
        this.onEnabled(n2, l2, bl);
    }

    protected abstract long getBufferedPositionUs();

    protected abstract long getDurationUs();

    protected abstract MediaFormat getFormat(int var1);

    protected MediaClock getMediaClock() {
        return null;
    }

    protected final int getState() {
        return this.state;
    }

    protected abstract int getTrackCount();

    @Override
    public void handleMessage(int n2, Object object) throws ExoPlaybackException {
    }

    protected abstract boolean isEnded();

    protected abstract boolean isReady();

    protected abstract void maybeThrowError() throws ExoPlaybackException;

    protected void onDisabled() throws ExoPlaybackException {
    }

    protected void onEnabled(int n2, long l2, boolean bl) throws ExoPlaybackException {
    }

    protected void onReleased() throws ExoPlaybackException {
    }

    protected void onStarted() throws ExoPlaybackException {
    }

    protected void onStopped() throws ExoPlaybackException {
    }

    /*
     * Enabled aggressive block sorting
     */
    final int prepare(long l2) throws ExoPlaybackException {
        int n2 = 1;
        boolean bl = this.state == 0;
        Assertions.checkState(bl);
        if (!this.doPrepare(l2)) {
            n2 = 0;
        }
        this.state = n2;
        return this.state;
    }

    /*
     * Enabled aggressive block sorting
     */
    final void release() throws ExoPlaybackException {
        boolean bl = this.state != 2 && this.state != 3 && this.state != -1;
        Assertions.checkState(bl);
        this.state = -1;
        this.onReleased();
    }

    protected abstract void seekTo(long var1) throws ExoPlaybackException;

    /*
     * Enabled aggressive block sorting
     */
    final void start() throws ExoPlaybackException {
        boolean bl = this.state == 2;
        Assertions.checkState(bl);
        this.state = 3;
        this.onStarted();
    }

    /*
     * Enabled aggressive block sorting
     */
    final void stop() throws ExoPlaybackException {
        boolean bl = this.state == 3;
        Assertions.checkState(bl);
        this.state = 2;
        this.onStopped();
    }
}

