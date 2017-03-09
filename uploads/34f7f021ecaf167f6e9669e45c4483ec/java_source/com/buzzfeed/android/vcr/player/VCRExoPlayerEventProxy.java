/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.media.MediaCodec
 *  android.media.MediaCodec$CryptoException
 *  android.os.SystemClock
 *  android.view.Surface
 */
package com.buzzfeed.android.vcr.player;

import android.media.MediaCodec;
import android.os.SystemClock;
import android.view.Surface;
import com.buzzfeed.toolkit.util.LogUtil;
import com.google.android.exoplayer.MediaCodecAudioTrackRenderer;
import com.google.android.exoplayer.MediaCodecTrackRenderer;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer;
import com.google.android.exoplayer.SingleSampleSource;
import com.google.android.exoplayer.audio.AudioTrack;
import com.google.android.exoplayer.chunk.ChunkSampleSource;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.hls.HlsSampleSource;
import com.google.android.exoplayer.upstream.BandwidthMeter;
import com.google.android.exoplayer.util.VerboseLogUtil;
import java.io.IOException;

abstract class VCRExoPlayerEventProxy
implements ChunkSampleSource.EventListener,
HlsSampleSource.EventListener,
ExtractorSampleSource.EventListener,
SingleSampleSource.EventListener,
BandwidthMeter.EventListener,
MediaCodecVideoTrackRenderer.EventListener,
MediaCodecAudioTrackRenderer.EventListener {
    private static final String TAG = LogUtil.makeLogTag(VCRExoPlayerEventProxy.class);
    private boolean mIsLoggingEnabled;
    private long[] mLoadStartTimeMs = new long[2];

    VCRExoPlayerEventProxy() {
    }

    private void printInternalError(String string2, Exception exception) {
        LogUtil.e(TAG, "internalError [" + string2 + "]", exception);
    }

    @Override
    public void onAudioTrackInitializationError(AudioTrack.InitializationException initializationException) {
        this.printInternalError("audioTrackInitializationError", initializationException);
    }

    @Override
    public void onAudioTrackUnderrun(int n2, long l2, long l3) {
        this.printInternalError("audioTrackUnderrun [" + n2 + ", " + l2 + ", " + l3 + "]", null);
    }

    @Override
    public void onAudioTrackWriteError(AudioTrack.WriteException writeException) {
        this.printInternalError("audioTrackWriteError", writeException);
    }

    @Override
    public void onBandwidthSample(int n2, long l2, long l3) {
        if (this.mIsLoggingEnabled) {
            LogUtil.d(TAG, "bandwidth [" + l2 + ", " + n2 + "ms, " + l3 + "]");
        }
    }

    @Override
    public void onCryptoError(MediaCodec.CryptoException cryptoException) {
        this.printInternalError("cryptoError", (Exception)cryptoException);
    }

    @Override
    public void onDecoderInitializationError(MediaCodecTrackRenderer.DecoderInitializationException decoderInitializationException) {
        this.printInternalError("decoderInitializationError", decoderInitializationException);
    }

    @Override
    public void onDecoderInitialized(String string2, long l2, long l3) {
        if (this.mIsLoggingEnabled) {
            LogUtil.d(TAG, "decoderInitialized [" + string2 + "]");
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onDownstreamFormatChanged(int n2, Format format, int n3, long l2) {
        if (!this.mIsLoggingEnabled) return;
        {
            if (n2 == 0) {
                LogUtil.d(TAG, "videoFormat [" + format.id + ", " + n3 + "]");
                return;
            } else {
                if (n2 != 1) return;
                {
                    LogUtil.d(TAG, "audioFormat [" + format.id + ", " + n3 + "]");
                    return;
                }
            }
        }
    }

    @Override
    public void onDrawnToSurface(Surface surface) {
    }

    @Override
    public void onDroppedFrames(int n2, long l2) {
        if (this.mIsLoggingEnabled) {
            LogUtil.d(TAG, "droppedFrames [" + n2 + "]");
        }
    }

    @Override
    public void onLoadCanceled(int n2, long l2) {
    }

    @Override
    public void onLoadCompleted(int n2, long l2, int n3, int n4, Format format, long l3, long l4, long l5, long l6) {
        if (this.mIsLoggingEnabled && VerboseLogUtil.isTagEnabled(TAG)) {
            l2 = SystemClock.elapsedRealtime();
            l3 = this.mLoadStartTimeMs[n2];
            LogUtil.d(TAG, "loadEnd [" + n2 + ", " + (l2 - l3) + "]");
        }
    }

    @Override
    public void onLoadError(int n2, IOException iOException) {
        if (this.mIsLoggingEnabled) {
            this.printInternalError("loadError", iOException);
        }
    }

    @Override
    public void onLoadStarted(int n2, long l2, int n3, int n4, Format format, long l3, long l4) {
        this.mLoadStartTimeMs[n2] = SystemClock.elapsedRealtime();
        if (this.mIsLoggingEnabled && VerboseLogUtil.isTagEnabled(TAG)) {
            LogUtil.d(TAG, "loadStart [" + n2 + ", " + n3 + ", " + l3 + ", " + l4 + "]");
        }
    }

    @Override
    public void onUpstreamDiscarded(int n2, long l2, long l3) {
    }

    void setLoggingEnabled(boolean bl) {
        this.mIsLoggingEnabled = bl;
    }
}

