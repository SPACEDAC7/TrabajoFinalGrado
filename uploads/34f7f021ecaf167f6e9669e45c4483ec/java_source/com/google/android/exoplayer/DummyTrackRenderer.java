/*
 * Decompiled with CFR 0_115.
 */
package com.google.android.exoplayer;

import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.TrackRenderer;

public final class DummyTrackRenderer
extends TrackRenderer {
    @Override
    protected boolean doPrepare(long l2) throws ExoPlaybackException {
        return true;
    }

    @Override
    protected void doSomeWork(long l2, long l3) {
        throw new IllegalStateException();
    }

    @Override
    protected long getBufferedPositionUs() {
        throw new IllegalStateException();
    }

    @Override
    protected long getDurationUs() {
        throw new IllegalStateException();
    }

    @Override
    protected MediaFormat getFormat(int n2) {
        throw new IllegalStateException();
    }

    @Override
    protected int getTrackCount() {
        return 0;
    }

    @Override
    protected boolean isEnded() {
        throw new IllegalStateException();
    }

    @Override
    protected boolean isReady() {
        throw new IllegalStateException();
    }

    @Override
    protected void maybeThrowError() {
        throw new IllegalStateException();
    }

    @Override
    protected void seekTo(long l2) {
        throw new IllegalStateException();
    }
}

