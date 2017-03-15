/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.media.MediaCodec
 *  android.media.MediaCodec$BufferInfo
 *  android.media.MediaCrypto
 *  android.media.MediaFormat
 *  android.media.PlaybackParams
 *  android.os.Handler
 *  android.os.SystemClock
 *  android.view.Surface
 *  com.google.android.exoplayer.MediaCodecAudioTrackRenderer$1
 *  com.google.android.exoplayer.MediaCodecAudioTrackRenderer$2
 *  com.google.android.exoplayer.MediaCodecAudioTrackRenderer$3
 */
package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.PlaybackParams;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import com.google.android.exoplayer.CodecCounters;
import com.google.android.exoplayer.DecoderInfo;
import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.MediaClock;
import com.google.android.exoplayer.MediaCodecAudioTrackRenderer;
import com.google.android.exoplayer.MediaCodecSelector;
import com.google.android.exoplayer.MediaCodecTrackRenderer;
import com.google.android.exoplayer.MediaCodecUtil;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.audio.AudioCapabilities;
import com.google.android.exoplayer.audio.AudioTrack;
import com.google.android.exoplayer.drm.DrmSessionManager;
import com.google.android.exoplayer.drm.FrameworkMediaCrypto;
import com.google.android.exoplayer.util.MimeTypes;
import java.nio.ByteBuffer;

@TargetApi(value=16)
public class MediaCodecAudioTrackRenderer
extends MediaCodecTrackRenderer
implements MediaClock {
    public static final int MSG_SET_PLAYBACK_PARAMS = 2;
    public static final int MSG_SET_VOLUME = 1;
    private boolean allowPositionDiscontinuity;
    private int audioSessionId;
    private final AudioTrack audioTrack;
    private boolean audioTrackHasData;
    private long currentPositionUs;
    private final EventListener eventListener;
    private long lastFeedElapsedRealtimeMs;
    private boolean passthroughEnabled;
    private android.media.MediaFormat passthroughMediaFormat;
    private int pcmEncoding;

    public MediaCodecAudioTrackRenderer(SampleSource sampleSource, MediaCodecSelector mediaCodecSelector) {
        this(sampleSource, mediaCodecSelector, null, true);
    }

    public MediaCodecAudioTrackRenderer(SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, Handler handler, EventListener eventListener) {
        this(sampleSource, mediaCodecSelector, null, true, handler, eventListener);
    }

    public MediaCodecAudioTrackRenderer(SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, DrmSessionManager drmSessionManager, boolean bl) {
        this(sampleSource, mediaCodecSelector, drmSessionManager, bl, null, null);
    }

    public MediaCodecAudioTrackRenderer(SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, DrmSessionManager drmSessionManager, boolean bl, Handler handler, EventListener eventListener) {
        this(sampleSource, mediaCodecSelector, drmSessionManager, bl, handler, eventListener, null, 3);
    }

    public MediaCodecAudioTrackRenderer(SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, DrmSessionManager drmSessionManager, boolean bl, Handler handler, EventListener eventListener, AudioCapabilities audioCapabilities, int n2) {
        this(new SampleSource[]{sampleSource}, mediaCodecSelector, drmSessionManager, bl, handler, eventListener, audioCapabilities, n2);
    }

    public MediaCodecAudioTrackRenderer(SampleSource[] arrsampleSource, MediaCodecSelector mediaCodecSelector, DrmSessionManager drmSessionManager, boolean bl, Handler handler, EventListener eventListener, AudioCapabilities audioCapabilities, int n2) {
        super(arrsampleSource, mediaCodecSelector, drmSessionManager, bl, handler, (MediaCodecTrackRenderer.EventListener)eventListener);
        this.eventListener = eventListener;
        this.audioSessionId = 0;
        this.audioTrack = new AudioTrack(audioCapabilities, n2);
    }

    static /* synthetic */ EventListener access$000(MediaCodecAudioTrackRenderer mediaCodecAudioTrackRenderer) {
        return mediaCodecAudioTrackRenderer.eventListener;
    }

    private void notifyAudioTrackInitializationError(AudioTrack.InitializationException initializationException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post((Runnable)new /* Unavailable Anonymous Inner Class!! */);
        }
    }

    private void notifyAudioTrackUnderrun(int n2, long l2, long l3) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post((Runnable)new /* Unavailable Anonymous Inner Class!! */);
        }
    }

    private void notifyAudioTrackWriteError(AudioTrack.WriteException writeException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post((Runnable)new /* Unavailable Anonymous Inner Class!! */);
        }
    }

    protected boolean allowPassthrough(String string2) {
        return this.audioTrack.isPassthroughSupported(string2);
    }

    @Override
    protected void configureCodec(MediaCodec mediaCodec, boolean bl, android.media.MediaFormat mediaFormat, MediaCrypto mediaCrypto) {
        String string2 = mediaFormat.getString("mime");
        if (this.passthroughEnabled) {
            mediaFormat.setString("mime", "audio/raw");
            mediaCodec.configure(mediaFormat, null, mediaCrypto, 0);
            mediaFormat.setString("mime", string2);
            this.passthroughMediaFormat = mediaFormat;
            return;
        }
        mediaCodec.configure(mediaFormat, null, mediaCrypto, 0);
        this.passthroughMediaFormat = null;
    }

    @Override
    protected DecoderInfo getDecoderInfo(MediaCodecSelector mediaCodecSelector, String string2, boolean bl) throws MediaCodecUtil.DecoderQueryException {
        DecoderInfo decoderInfo;
        if (this.allowPassthrough(string2) && (decoderInfo = mediaCodecSelector.getPassthroughDecoderInfo()) != null) {
            this.passthroughEnabled = true;
            return decoderInfo;
        }
        this.passthroughEnabled = false;
        return super.getDecoderInfo(mediaCodecSelector, string2, bl);
    }

    @Override
    protected MediaClock getMediaClock() {
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public long getPositionUs() {
        long l2 = this.audioTrack.getCurrentPositionUs(this.isEnded());
        if (l2 != Long.MIN_VALUE) {
            if (!this.allowPositionDiscontinuity) {
                l2 = Math.max(this.currentPositionUs, l2);
            }
            this.currentPositionUs = l2;
            this.allowPositionDiscontinuity = false;
        }
        return this.currentPositionUs;
    }

    protected void handleAudioTrackDiscontinuity() {
    }

    @Override
    public void handleMessage(int n2, Object object) throws ExoPlaybackException {
        switch (n2) {
            default: {
                super.handleMessage(n2, object);
                return;
            }
            case 1: {
                this.audioTrack.setVolume(((Float)object).floatValue());
                return;
            }
            case 2: 
        }
        this.audioTrack.setPlaybackParams((PlaybackParams)object);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected boolean handlesTrack(MediaCodecSelector mediaCodecSelector, MediaFormat object) throws MediaCodecUtil.DecoderQueryException {
        boolean bl = false;
        object = object.mimeType;
        boolean bl2 = bl;
        if (!MimeTypes.isAudio((String)object)) return bl2;
        if ("audio/x-unknown".equals(object)) return true;
        if (this.allowPassthrough((String)object)) {
            if (mediaCodecSelector.getPassthroughDecoderInfo() != null) return true;
        }
        bl2 = bl;
        if (mediaCodecSelector.getDecoderInfo((String)object, false) == null) return bl2;
        return true;
    }

    @Override
    protected boolean isEnded() {
        if (super.isEnded() && !this.audioTrack.hasPendingData()) {
            return true;
        }
        return false;
    }

    @Override
    protected boolean isReady() {
        if (this.audioTrack.hasPendingData() || super.isReady()) {
            return true;
        }
        return false;
    }

    protected void onAudioSessionId(int n2) {
    }

    @Override
    protected void onDisabled() throws ExoPlaybackException {
        this.audioSessionId = 0;
        try {
            this.audioTrack.release();
            return;
        }
        finally {
            super.onDisabled();
        }
    }

    @Override
    protected void onDiscontinuity(long l2) throws ExoPlaybackException {
        super.onDiscontinuity(l2);
        this.audioTrack.reset();
        this.currentPositionUs = l2;
        this.allowPositionDiscontinuity = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onInputFormatChanged(MediaFormatHolder mediaFormatHolder) throws ExoPlaybackException {
        super.onInputFormatChanged(mediaFormatHolder);
        int n2 = "audio/raw".equals(mediaFormatHolder.format.mimeType) ? mediaFormatHolder.format.pcmEncoding : 2;
        this.pcmEncoding = n2;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onOutputFormatChanged(MediaCodec object, android.media.MediaFormat mediaFormat) {
        int n2 = this.passthroughMediaFormat != null ? 1 : 0;
        object = n2 != 0 ? this.passthroughMediaFormat.getString("mime") : "audio/raw";
        if (n2 != 0) {
            mediaFormat = this.passthroughMediaFormat;
        }
        n2 = mediaFormat.getInteger("channel-count");
        int n3 = mediaFormat.getInteger("sample-rate");
        this.audioTrack.configure((String)object, n2, n3, this.pcmEncoding);
    }

    @Override
    protected void onOutputStreamEnded() {
        this.audioTrack.handleEndOfStream();
    }

    @Override
    protected void onStarted() {
        super.onStarted();
        this.audioTrack.play();
    }

    @Override
    protected void onStopped() {
        this.audioTrack.pause();
        super.onStopped();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    @Override
    protected boolean processOutputBuffer(long var1_1, long var3_2, MediaCodec var5_3, ByteBuffer var6_6, MediaCodec.BufferInfo var7_7, int var8_8, boolean var9_9) throws ExoPlaybackException {
        if (this.passthroughEnabled && (var7_7.flags & 2) != 0) {
            var5_3.releaseOutputBuffer(var8_8, false);
            return true;
        }
        if (var9_9) {
            var5_3.releaseOutputBuffer(var8_8, false);
            var5_3 = this.codecCounters;
            ++var5_3.skippedOutputBufferCount;
            this.audioTrack.handleDiscontinuity();
            return true;
        }
        if (this.audioTrack.isInitialized()) ** GOTO lbl24
        try {
            if (this.audioSessionId != 0) {
                this.audioTrack.initialize(this.audioSessionId);
            } else {
                this.audioSessionId = this.audioTrack.initialize();
                this.onAudioSessionId(this.audioSessionId);
            }
            this.audioTrackHasData = false;
        }
        catch (AudioTrack.InitializationException var5_4) {
            this.notifyAudioTrackInitializationError(var5_4);
            throw new ExoPlaybackException(var5_4);
        }
        if (this.getState() == 3) {
            this.audioTrack.play();
        }
        ** GOTO lbl32
lbl24: // 1 sources:
        var9_9 = this.audioTrackHasData;
        this.audioTrackHasData = this.audioTrack.hasPendingData();
        if (var9_9 && !this.audioTrackHasData && this.getState() == 3) {
            var3_2 = SystemClock.elapsedRealtime();
            var11_11 = this.lastFeedElapsedRealtimeMs;
            var1_1 = this.audioTrack.getBufferSizeUs();
            var1_1 = var1_1 == -1 ? -1 : (var1_1 /= 1000);
            this.notifyAudioTrackUnderrun(this.audioTrack.getBufferSize(), var1_1, var3_2 - var11_11);
        }
lbl32: // 4 sources:
        try {
            var10_10 = this.audioTrack.handleBuffer(var6_6, var7_7.offset, var7_7.size, var7_7.presentationTimeUs);
            this.lastFeedElapsedRealtimeMs = SystemClock.elapsedRealtime();
            if ((var10_10 & 1) != 0) {
                this.handleAudioTrackDiscontinuity();
                this.allowPositionDiscontinuity = true;
            }
            if ((var10_10 & 2) == 0) return false;
        }
        catch (AudioTrack.WriteException var5_5) {
            this.notifyAudioTrackWriteError(var5_5);
            throw new ExoPlaybackException(var5_5);
        }
        var5_3.releaseOutputBuffer(var8_8, false);
        var5_3 = this.codecCounters;
        ++var5_3.renderedOutputBufferCount;
        return true;
    }

    public static interface EventListener
    extends MediaCodecTrackRenderer.EventListener {
        public void onAudioTrackInitializationError(AudioTrack.InitializationException var1);

        public void onAudioTrackUnderrun(int var1, long var2, long var4);

        public void onAudioTrackWriteError(AudioTrack.WriteException var1);
    }

}

