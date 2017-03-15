/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.media.MediaCodec
 *  android.media.MediaCodec$BufferInfo
 *  android.media.MediaCrypto
 *  android.media.MediaFormat
 *  android.os.Handler
 *  android.os.SystemClock
 *  android.view.Surface
 */
package com.google.android.exoplayer;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import com.google.android.exoplayer.CodecCounters;
import com.google.android.exoplayer.DecoderInfo;
import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.MediaCodecSelector;
import com.google.android.exoplayer.MediaCodecTrackRenderer;
import com.google.android.exoplayer.MediaCodecUtil;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.VideoFrameReleaseTimeHelper;
import com.google.android.exoplayer.drm.DrmSessionManager;
import com.google.android.exoplayer.drm.FrameworkMediaCrypto;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.TraceUtil;
import com.google.android.exoplayer.util.Util;
import java.nio.ByteBuffer;

@TargetApi(value=16)
public class MediaCodecVideoTrackRenderer
extends MediaCodecTrackRenderer {
    private static final String KEY_CROP_BOTTOM = "crop-bottom";
    private static final String KEY_CROP_LEFT = "crop-left";
    private static final String KEY_CROP_RIGHT = "crop-right";
    private static final String KEY_CROP_TOP = "crop-top";
    public static final int MSG_SET_SURFACE = 1;
    private final long allowedJoiningTimeUs;
    private int consecutiveDroppedFrameCount;
    private int currentHeight;
    private float currentPixelWidthHeightRatio;
    private int currentUnappliedRotationDegrees;
    private int currentWidth;
    private long droppedFrameAccumulationStartTimeMs;
    private int droppedFrameCount;
    private final EventListener eventListener;
    private final VideoFrameReleaseTimeHelper frameReleaseTimeHelper;
    private long joiningDeadlineUs;
    private int lastReportedHeight;
    private float lastReportedPixelWidthHeightRatio;
    private int lastReportedUnappliedRotationDegrees;
    private int lastReportedWidth;
    private final int maxDroppedFrameCountToNotify;
    private float pendingPixelWidthHeightRatio;
    private int pendingRotationDegrees;
    private boolean renderedFirstFrame;
    private boolean reportedDrawnToSurface;
    private Surface surface;
    private final int videoScalingMode;

    public MediaCodecVideoTrackRenderer(Context context, SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, int n2) {
        this(context, sampleSource, mediaCodecSelector, n2, 0);
    }

    public MediaCodecVideoTrackRenderer(Context context, SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, int n2, long l2) {
        this(context, sampleSource, mediaCodecSelector, n2, l2, null, null, -1);
    }

    public MediaCodecVideoTrackRenderer(Context context, SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, int n2, long l2, Handler handler, EventListener eventListener, int n3) {
        this(context, sampleSource, mediaCodecSelector, n2, l2, null, false, handler, eventListener, n3);
    }

    public MediaCodecVideoTrackRenderer(Context context, SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, int n2, long l2, DrmSessionManager<FrameworkMediaCrypto> drmSessionManager, boolean bl, Handler handler, EventListener eventListener, int n3) {
        super(sampleSource, mediaCodecSelector, drmSessionManager, bl, handler, (MediaCodecTrackRenderer.EventListener)eventListener);
        this.frameReleaseTimeHelper = new VideoFrameReleaseTimeHelper(context);
        this.videoScalingMode = n2;
        this.allowedJoiningTimeUs = 1000 * l2;
        this.eventListener = eventListener;
        this.maxDroppedFrameCountToNotify = n3;
        this.joiningDeadlineUs = -1;
        this.currentWidth = -1;
        this.currentHeight = -1;
        this.currentPixelWidthHeightRatio = -1.0f;
        this.pendingPixelWidthHeightRatio = -1.0f;
        this.lastReportedWidth = -1;
        this.lastReportedHeight = -1;
        this.lastReportedPixelWidthHeightRatio = -1.0f;
    }

    private void maybeNotifyDrawnToSurface() {
        if (this.eventHandler == null || this.eventListener == null || this.reportedDrawnToSurface) {
            return;
        }
        final Surface surface = this.surface;
        this.eventHandler.post(new Runnable(){

            @Override
            public void run() {
                MediaCodecVideoTrackRenderer.this.eventListener.onDrawnToSurface(surface);
            }
        });
        this.reportedDrawnToSurface = true;
    }

    private void maybeNotifyDroppedFrameCount() {
        if (this.eventHandler == null || this.eventListener == null || this.droppedFrameCount == 0) {
            return;
        }
        long l2 = SystemClock.elapsedRealtime();
        final int n2 = this.droppedFrameCount;
        long l3 = this.droppedFrameAccumulationStartTimeMs;
        this.eventHandler.post(new Runnable(l2 - l3){
            final /* synthetic */ long val$elapsedToNotify;

            @Override
            public void run() {
                MediaCodecVideoTrackRenderer.this.eventListener.onDroppedFrames(n2, this.val$elapsedToNotify);
            }
        });
        this.droppedFrameCount = 0;
        this.droppedFrameAccumulationStartTimeMs = l2;
    }

    private void maybeNotifyVideoSizeChanged() {
        if (this.eventHandler == null || this.eventListener == null || this.lastReportedWidth == this.currentWidth && this.lastReportedHeight == this.currentHeight && this.lastReportedUnappliedRotationDegrees == this.currentUnappliedRotationDegrees && this.lastReportedPixelWidthHeightRatio == this.currentPixelWidthHeightRatio) {
            return;
        }
        final int n2 = this.currentWidth;
        final int n3 = this.currentHeight;
        final int n4 = this.currentUnappliedRotationDegrees;
        final float f2 = this.currentPixelWidthHeightRatio;
        this.eventHandler.post(new Runnable(){

            @Override
            public void run() {
                MediaCodecVideoTrackRenderer.this.eventListener.onVideoSizeChanged(n2, n3, n4, f2);
            }
        });
        this.lastReportedWidth = n2;
        this.lastReportedHeight = n3;
        this.lastReportedUnappliedRotationDegrees = n4;
        this.lastReportedPixelWidthHeightRatio = f2;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @SuppressLint(value={"InlinedApi"})
    private void maybeSetMaxInputSize(android.media.MediaFormat var1_1, boolean var2_2) {
        if (var1_1.containsKey("max-input-size")) {
            return;
        }
        var5_4 = var4_3 = var1_1.getInteger("height");
        if (var2_2) {
            var5_4 = var4_3;
            if (var1_1.containsKey("max-height")) {
                var5_4 = Math.max(var4_3, var1_1.getInteger("max-height"));
            }
        }
        var6_5 = var4_3 = var1_1.getInteger("width");
        if (var2_2) {
            var6_5 = var4_3;
            if (var1_1.containsKey("max-width")) {
                var6_5 = Math.max(var5_4, var1_1.getInteger("max-width"));
            }
        }
        var3_6 = var1_1.getString("mime");
        var4_3 = -1;
        switch (var3_6.hashCode()) {
            case -1664118616: {
                if (var3_6.equals("video/3gpp")) {
                    var4_3 = 0;
                    ** break;
                }
                ** GOTO lbl39
            }
            case 1187890754: {
                if (var3_6.equals("video/mp4v-es")) {
                    var4_3 = 1;
                    ** break;
                }
                ** GOTO lbl39
            }
            case 1331836730: {
                if (var3_6.equals("video/avc")) {
                    var4_3 = 2;
                    ** break;
                }
                ** GOTO lbl39
            }
            case 1599127256: {
                if (var3_6.equals("video/x-vnd.on2.vp8")) {
                    var4_3 = 3;
                    ** break;
                }
                ** GOTO lbl39
            }
            case -1662541442: {
                if (var3_6.equals("video/hevc")) {
                    var4_3 = 4;
                }
            }
lbl39: // 12 sources:
            default: {
                ** GOTO lbl44
            }
            case 1599127257: 
        }
        if (var3_6.equals("video/x-vnd.on2.vp9")) {
            var4_3 = 5;
        }
lbl44: // 4 sources:
        switch (var4_3) {
            default: {
                return;
            }
            case 0: 
            case 1: {
                var4_3 = var6_5 * var5_4;
                var5_4 = 2;
                break;
            }
            case 2: {
                if ("BRAVIA 4K 2015".equals(Util.MODEL) != false) return;
                var4_3 = (var6_5 + 15) / 16 * ((var5_4 + 15) / 16) * 16 * 16;
                var5_4 = 2;
                break;
            }
            case 3: {
                var4_3 = var6_5 * var5_4;
                var5_4 = 2;
                break;
            }
            case 4: 
            case 5: {
                var4_3 = var6_5 * var5_4;
                var5_4 = 4;
            }
        }
        var1_1.setInteger("max-input-size", var4_3 * 3 / (var5_4 * 2));
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void setSurface(Surface surface) throws ExoPlaybackException {
        if (this.surface == surface) {
            return;
        }
        this.surface = surface;
        this.reportedDrawnToSurface = false;
        int n2 = this.getState();
        if (n2 != 2) {
            if (n2 != 3) return;
        }
        this.releaseCodec();
        this.maybeInitCodec();
    }

    @Override
    protected boolean canReconfigureCodec(MediaCodec mediaCodec, boolean bl, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
        if (mediaFormat2.mimeType.equals(mediaFormat.mimeType) && (bl || mediaFormat.width == mediaFormat2.width && mediaFormat.height == mediaFormat2.height)) {
            return true;
        }
        return false;
    }

    @Override
    protected void configureCodec(MediaCodec mediaCodec, boolean bl, android.media.MediaFormat mediaFormat, MediaCrypto mediaCrypto) {
        this.maybeSetMaxInputSize(mediaFormat, bl);
        mediaCodec.configure(mediaFormat, this.surface, mediaCrypto, 0);
    }

    protected void dropOutputBuffer(MediaCodec object, int n2) {
        TraceUtil.beginSection("dropVideoBuffer");
        object.releaseOutputBuffer(n2, false);
        TraceUtil.endSection();
        object = this.codecCounters;
        ++object.droppedOutputBufferCount;
        ++this.droppedFrameCount;
        ++this.consecutiveDroppedFrameCount;
        this.codecCounters.maxConsecutiveDroppedOutputBufferCount = Math.max(this.consecutiveDroppedFrameCount, this.codecCounters.maxConsecutiveDroppedOutputBufferCount);
        if (this.droppedFrameCount == this.maxDroppedFrameCountToNotify) {
            this.maybeNotifyDroppedFrameCount();
        }
    }

    @Override
    public void handleMessage(int n2, Object object) throws ExoPlaybackException {
        if (n2 == 1) {
            this.setSurface((Surface)object);
            return;
        }
        super.handleMessage(n2, object);
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
        if (!MimeTypes.isVideo((String)object)) return bl2;
        if ("video/x-unknown".equals(object)) return true;
        bl2 = bl;
        if (mediaCodecSelector.getDecoderInfo((String)object, false) == null) return bl2;
        return true;
    }

    protected final boolean haveRenderedFirstFrame() {
        return this.renderedFirstFrame;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected boolean isReady() {
        if (super.isReady() && (this.renderedFirstFrame || !this.codecInitialized() || this.getSourceState() == 2)) {
            this.joiningDeadlineUs = -1;
            return true;
        } else {
            if (this.joiningDeadlineUs == -1) {
                return false;
            }
            if (SystemClock.elapsedRealtime() * 1000 < this.joiningDeadlineUs) return true;
            {
                this.joiningDeadlineUs = -1;
                return false;
            }
        }
    }

    @Override
    protected void onDisabled() throws ExoPlaybackException {
        this.currentWidth = -1;
        this.currentHeight = -1;
        this.currentPixelWidthHeightRatio = -1.0f;
        this.pendingPixelWidthHeightRatio = -1.0f;
        this.lastReportedWidth = -1;
        this.lastReportedHeight = -1;
        this.lastReportedPixelWidthHeightRatio = -1.0f;
        this.frameReleaseTimeHelper.disable();
        super.onDisabled();
    }

    @Override
    protected void onDiscontinuity(long l2) throws ExoPlaybackException {
        super.onDiscontinuity(l2);
        this.renderedFirstFrame = false;
        this.consecutiveDroppedFrameCount = 0;
        this.joiningDeadlineUs = -1;
    }

    @Override
    protected void onEnabled(int n2, long l2, boolean bl) throws ExoPlaybackException {
        super.onEnabled(n2, l2, bl);
        if (bl && this.allowedJoiningTimeUs > 0) {
            this.joiningDeadlineUs = SystemClock.elapsedRealtime() * 1000 + this.allowedJoiningTimeUs;
        }
        this.frameReleaseTimeHelper.enable();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onInputFormatChanged(MediaFormatHolder mediaFormatHolder) throws ExoPlaybackException {
        super.onInputFormatChanged(mediaFormatHolder);
        float f2 = mediaFormatHolder.format.pixelWidthHeightRatio == -1.0f ? 1.0f : mediaFormatHolder.format.pixelWidthHeightRatio;
        this.pendingPixelWidthHeightRatio = f2;
        int n2 = mediaFormatHolder.format.rotationDegrees == -1 ? 0 : mediaFormatHolder.format.rotationDegrees;
        this.pendingRotationDegrees = n2;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onOutputFormatChanged(MediaCodec mediaCodec, android.media.MediaFormat mediaFormat) {
        int n2 = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top") ? 1 : 0;
        int n3 = n2 != 0 ? mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left") + 1 : mediaFormat.getInteger("width");
        this.currentWidth = n3;
        n2 = n2 != 0 ? mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top") + 1 : mediaFormat.getInteger("height");
        this.currentHeight = n2;
        this.currentPixelWidthHeightRatio = this.pendingPixelWidthHeightRatio;
        if (Util.SDK_INT >= 21) {
            if (this.pendingRotationDegrees == 90 || this.pendingRotationDegrees == 270) {
                n2 = this.currentWidth;
                this.currentWidth = this.currentHeight;
                this.currentHeight = n2;
                this.currentPixelWidthHeightRatio = 1.0f / this.currentPixelWidthHeightRatio;
            }
        } else {
            this.currentUnappliedRotationDegrees = this.pendingRotationDegrees;
        }
        mediaCodec.setVideoScalingMode(this.videoScalingMode);
    }

    @Override
    protected void onStarted() {
        super.onStarted();
        this.droppedFrameCount = 0;
        this.droppedFrameAccumulationStartTimeMs = SystemClock.elapsedRealtime();
    }

    @Override
    protected void onStopped() {
        this.joiningDeadlineUs = -1;
        this.maybeNotifyDroppedFrameCount();
        super.onStopped();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    protected boolean processOutputBuffer(long l2, long l3, MediaCodec mediaCodec, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo, int n2, boolean bl) {
        if (bl) {
            this.skipOutputBuffer(mediaCodec, n2);
            this.consecutiveDroppedFrameCount = 0;
            return true;
        }
        if (!this.renderedFirstFrame) {
            if (Util.SDK_INT >= 21) {
                this.renderOutputBufferV21(mediaCodec, n2, System.nanoTime());
            } else {
                this.renderOutputBuffer(mediaCodec, n2);
            }
            this.consecutiveDroppedFrameCount = 0;
            return true;
        }
        if (this.getState() != 3) {
            return false;
        }
        long l4 = SystemClock.elapsedRealtime();
        long l5 = bufferInfo.presentationTimeUs;
        long l6 = System.nanoTime();
        l2 = this.frameReleaseTimeHelper.adjustReleaseTime(bufferInfo.presentationTimeUs, l6 + 1000 * (l5 - l2 - (l4 * 1000 - l3)));
        l3 = (l2 - l6) / 1000;
        if (l3 < -30000) {
            this.dropOutputBuffer(mediaCodec, n2);
            return true;
        }
        if (Util.SDK_INT >= 21) {
            if (l3 >= 50000) return false;
            {
                this.renderOutputBufferV21(mediaCodec, n2, l2);
                this.consecutiveDroppedFrameCount = 0;
                return true;
            }
        }
        if (l3 >= 30000) return false;
        if (l3 > 11000) {
            try {
                Thread.sleep((l3 - 10000) / 1000);
            }
            catch (InterruptedException var6_5) {
                Thread.currentThread().interrupt();
            }
        }
        this.renderOutputBuffer(mediaCodec, n2);
        this.consecutiveDroppedFrameCount = 0;
        return true;
    }

    protected void renderOutputBuffer(MediaCodec object, int n2) {
        this.maybeNotifyVideoSizeChanged();
        TraceUtil.beginSection("releaseOutputBuffer");
        object.releaseOutputBuffer(n2, true);
        TraceUtil.endSection();
        object = this.codecCounters;
        ++object.renderedOutputBufferCount;
        this.renderedFirstFrame = true;
        this.maybeNotifyDrawnToSurface();
    }

    @TargetApi(value=21)
    protected void renderOutputBufferV21(MediaCodec object, int n2, long l2) {
        this.maybeNotifyVideoSizeChanged();
        TraceUtil.beginSection("releaseOutputBuffer");
        object.releaseOutputBuffer(n2, l2);
        TraceUtil.endSection();
        object = this.codecCounters;
        ++object.renderedOutputBufferCount;
        this.renderedFirstFrame = true;
        this.maybeNotifyDrawnToSurface();
    }

    @Override
    protected boolean shouldInitCodec() {
        if (super.shouldInitCodec() && this.surface != null && this.surface.isValid()) {
            return true;
        }
        return false;
    }

    protected void skipOutputBuffer(MediaCodec object, int n2) {
        TraceUtil.beginSection("skipVideoBuffer");
        object.releaseOutputBuffer(n2, false);
        TraceUtil.endSection();
        object = this.codecCounters;
        ++object.skippedOutputBufferCount;
    }

    public static interface EventListener
    extends MediaCodecTrackRenderer.EventListener {
        public void onDrawnToSurface(Surface var1);

        public void onDroppedFrames(int var1, long var2);

        public void onVideoSizeChanged(int var1, int var2, int var3, float var4);
    }

}

