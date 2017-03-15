/*
 * Decompiled with CFR 0_115.
 */
package com.google.android.exoplayer;

import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.MediaCodecUtil;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.TrackRenderer;
import java.io.IOException;
import java.util.Arrays;

public abstract class SampleSourceTrackRenderer
extends TrackRenderer {
    private long durationUs;
    private SampleSource.SampleSourceReader enabledSource;
    private int enabledSourceTrackIndex;
    private int[] handledSourceIndices;
    private int[] handledSourceTrackIndices;
    private final SampleSource.SampleSourceReader[] sources;

    public /* varargs */ SampleSourceTrackRenderer(SampleSource ... arrsampleSource) {
        this.sources = new SampleSource.SampleSourceReader[arrsampleSource.length];
        for (int i2 = 0; i2 < arrsampleSource.length; ++i2) {
            this.sources[i2] = arrsampleSource[i2].register();
        }
    }

    private long checkForDiscontinuity(long l2) throws ExoPlaybackException {
        long l3 = this.enabledSource.readDiscontinuity(this.enabledSourceTrackIndex);
        if (l3 != Long.MIN_VALUE) {
            this.onDiscontinuity(l3);
            return l3;
        }
        return l2;
    }

    private void maybeThrowError(SampleSource.SampleSourceReader sampleSourceReader) throws ExoPlaybackException {
        try {
            sampleSourceReader.maybeThrowError();
            return;
        }
        catch (IOException var1_2) {
            throw new ExoPlaybackException(var1_2);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    protected final boolean doPrepare(long l2) throws ExoPlaybackException {
        int n2;
        int n3 = 1;
        for (n2 = 0; n2 < this.sources.length; n3 &= this.sources[n2].prepare((long)l2), ++n2) {
        }
        if (n3 == 0) {
            return false;
        }
        n2 = 0;
        for (n3 = 0; n3 < this.sources.length; n2 += this.sources[n3].getTrackCount(), ++n3) {
        }
        long l3 = 0;
        n3 = 0;
        int[] arrn = new int[n2];
        int[] arrn2 = new int[n2];
        int n4 = this.sources.length;
        n2 = 0;
        do {
            if (n2 >= n4) {
                this.durationUs = l3;
                this.handledSourceIndices = Arrays.copyOf(arrn, n3);
                this.handledSourceTrackIndices = Arrays.copyOf(arrn2, n3);
                return true;
            }
            SampleSource.SampleSourceReader sampleSourceReader = this.sources[n2];
            int n5 = sampleSourceReader.getTrackCount();
            for (int i2 = 0; i2 < n5; ++i2) {
                int n6;
                block11 : {
                    block12 : {
                        MediaFormat mediaFormat = sampleSourceReader.getFormat(i2);
                        try {
                            boolean bl = this.handlesTrack(mediaFormat);
                            l2 = l3;
                            n6 = n3++;
                            if (!bl) break block11;
                            arrn[n3] = n2;
                            arrn2[n3] = i2;
                            if (l3 != -1) break block12;
                            n6 = n3;
                            l2 = l3;
                            break block11;
                        }
                        catch (MediaCodecUtil.DecoderQueryException var3_6) {
                            throw new ExoPlaybackException(var3_6);
                        }
                    }
                    long l4 = mediaFormat.durationUs;
                    if (l4 == -1) {
                        l2 = -1;
                        n6 = n3;
                    } else {
                        l2 = l3;
                        n6 = n3;
                        if (l4 != -2) {
                            l2 = Math.max(l3, l4);
                            n6 = n3;
                        }
                    }
                }
                l3 = l2;
                n3 = n6;
            }
            ++n2;
        } while (true);
    }

    @Override
    protected final void doSomeWork(long l2, long l3) throws ExoPlaybackException {
        l2 = this.shiftInputPosition(l2);
        boolean bl = this.enabledSource.continueBuffering(this.enabledSourceTrackIndex, l2);
        this.doSomeWork(this.checkForDiscontinuity(l2), l3, bl);
    }

    protected abstract void doSomeWork(long var1, long var3, boolean var5) throws ExoPlaybackException;

    @Override
    protected long getBufferedPositionUs() {
        return this.enabledSource.getBufferedPositionUs();
    }

    @Override
    protected long getDurationUs() {
        return this.durationUs;
    }

    @Override
    protected final MediaFormat getFormat(int n2) {
        return this.sources[this.handledSourceIndices[n2]].getFormat(this.handledSourceTrackIndices[n2]);
    }

    @Override
    protected final int getTrackCount() {
        return this.handledSourceTrackIndices.length;
    }

    protected abstract boolean handlesTrack(MediaFormat var1) throws MediaCodecUtil.DecoderQueryException;

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected void maybeThrowError() throws ExoPlaybackException {
        if (this.enabledSource != null) {
            this.maybeThrowError(this.enabledSource);
            return;
        }
        int n2 = this.sources.length;
        int n3 = 0;
        while (n3 < n2) {
            this.maybeThrowError(this.sources[n3]);
            ++n3;
        }
    }

    @Override
    protected void onDisabled() throws ExoPlaybackException {
        this.enabledSource.disable(this.enabledSourceTrackIndex);
        this.enabledSource = null;
    }

    protected abstract void onDiscontinuity(long var1) throws ExoPlaybackException;

    @Override
    protected void onEnabled(int n2, long l2, boolean bl) throws ExoPlaybackException {
        l2 = this.shiftInputPosition(l2);
        this.enabledSource = this.sources[this.handledSourceIndices[n2]];
        this.enabledSourceTrackIndex = this.handledSourceTrackIndices[n2];
        this.enabledSource.enable(this.enabledSourceTrackIndex, l2);
        this.onDiscontinuity(l2);
    }

    @Override
    protected void onReleased() throws ExoPlaybackException {
        int n2 = this.sources.length;
        for (int i2 = 0; i2 < n2; ++i2) {
            this.sources[i2].release();
        }
    }

    protected final int readSource(long l2, MediaFormatHolder mediaFormatHolder, SampleHolder sampleHolder) {
        return this.enabledSource.readData(this.enabledSourceTrackIndex, l2, mediaFormatHolder, sampleHolder);
    }

    @Override
    protected final void seekTo(long l2) throws ExoPlaybackException {
        l2 = this.shiftInputPosition(l2);
        this.enabledSource.seekToUs(l2);
        this.checkForDiscontinuity(l2);
    }

    protected long shiftInputPosition(long l2) {
        return l2;
    }
}

