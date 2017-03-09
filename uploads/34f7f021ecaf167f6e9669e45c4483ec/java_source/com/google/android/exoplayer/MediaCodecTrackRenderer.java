/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.media.MediaCodec
 *  android.media.MediaCodec$BufferInfo
 *  android.media.MediaCodec$CodecException
 *  android.media.MediaCodec$CryptoException
 *  android.media.MediaCodec$CryptoInfo
 *  android.media.MediaCrypto
 *  android.media.MediaFormat
 *  android.os.Handler
 *  android.os.SystemClock
 */
package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer.CodecCounters;
import com.google.android.exoplayer.CryptoInfo;
import com.google.android.exoplayer.DecoderInfo;
import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.MediaCodecSelector;
import com.google.android.exoplayer.MediaCodecUtil;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.SampleSourceTrackRenderer;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.drm.DrmSessionManager;
import com.google.android.exoplayer.drm.FrameworkMediaCrypto;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.TraceUtil;
import com.google.android.exoplayer.util.Util;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

@TargetApi(value=16)
public abstract class MediaCodecTrackRenderer
extends SampleSourceTrackRenderer {
    private static final byte[] ADAPTATION_WORKAROUND_BUFFER = Util.getBytesFromHexString("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");
    private static final int ADAPTATION_WORKAROUND_SLICE_WIDTH_HEIGHT = 32;
    private static final long MAX_CODEC_HOTSWAP_TIME_MS = 1000;
    private static final int RECONFIGURATION_STATE_NONE = 0;
    private static final int RECONFIGURATION_STATE_QUEUE_PENDING = 2;
    private static final int RECONFIGURATION_STATE_WRITE_PENDING = 1;
    private static final int REINITIALIZATION_STATE_NONE = 0;
    private static final int REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM = 1;
    private static final int REINITIALIZATION_STATE_WAIT_END_OF_STREAM = 2;
    protected static final int SOURCE_STATE_NOT_READY = 0;
    protected static final int SOURCE_STATE_READY = 1;
    protected static final int SOURCE_STATE_READY_READ_MAY_FAIL = 2;
    private MediaCodec codec;
    public final CodecCounters codecCounters;
    private long codecHotswapTimeMs;
    private boolean codecIsAdaptive;
    private boolean codecNeedsAdaptationWorkaround;
    private boolean codecNeedsAdaptationWorkaroundBuffer;
    private boolean codecNeedsDiscardToSpsWorkaround;
    private boolean codecNeedsEosFlushWorkaround;
    private boolean codecNeedsEosPropagationWorkaround;
    private boolean codecNeedsFlushWorkaround;
    private boolean codecNeedsMonoChannelCountWorkaround;
    private boolean codecReceivedBuffers;
    private boolean codecReceivedEos;
    private int codecReconfigurationState;
    private boolean codecReconfigured;
    private int codecReinitializationState;
    private final List<Long> decodeOnlyPresentationTimestamps;
    private final boolean deviceNeedsAutoFrcWorkaround;
    private DrmInitData drmInitData;
    private final DrmSessionManager<FrameworkMediaCrypto> drmSessionManager;
    protected final Handler eventHandler;
    private final EventListener eventListener;
    private MediaFormat format;
    private final MediaFormatHolder formatHolder;
    private ByteBuffer[] inputBuffers;
    private int inputIndex;
    private boolean inputStreamEnded;
    private final MediaCodecSelector mediaCodecSelector;
    private boolean openedDrmSession;
    private final MediaCodec.BufferInfo outputBufferInfo;
    private ByteBuffer[] outputBuffers;
    private int outputIndex;
    private boolean outputStreamEnded;
    private final boolean playClearSamplesWithoutKeys;
    private final SampleHolder sampleHolder;
    private boolean shouldSkipAdaptationWorkaroundOutputBuffer;
    private int sourceState;
    private boolean waitingForFirstSyncFrame;
    private boolean waitingForKeys;

    public MediaCodecTrackRenderer(SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, DrmSessionManager<FrameworkMediaCrypto> drmSessionManager, boolean bl, Handler handler, EventListener eventListener) {
        this(new SampleSource[]{sampleSource}, mediaCodecSelector, drmSessionManager, bl, handler, eventListener);
    }

    /*
     * Enabled aggressive block sorting
     */
    public MediaCodecTrackRenderer(SampleSource[] arrsampleSource, MediaCodecSelector mediaCodecSelector, DrmSessionManager<FrameworkMediaCrypto> drmSessionManager, boolean bl, Handler handler, EventListener eventListener) {
        super(arrsampleSource);
        boolean bl2 = Util.SDK_INT >= 16;
        Assertions.checkState(bl2);
        this.mediaCodecSelector = Assertions.checkNotNull(mediaCodecSelector);
        this.drmSessionManager = drmSessionManager;
        this.playClearSamplesWithoutKeys = bl;
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.deviceNeedsAutoFrcWorkaround = MediaCodecTrackRenderer.deviceNeedsAutoFrcWorkaround();
        this.codecCounters = new CodecCounters();
        this.sampleHolder = new SampleHolder(0);
        this.formatHolder = new MediaFormatHolder();
        this.decodeOnlyPresentationTimestamps = new ArrayList<Long>();
        this.outputBufferInfo = new MediaCodec.BufferInfo();
        this.codecReconfigurationState = 0;
        this.codecReinitializationState = 0;
    }

    private static boolean codecNeedsAdaptationWorkaround(String string2) {
        if (Util.SDK_INT < 24 && ("OMX.Nvidia.h264.decode".equals(string2) || "OMX.Nvidia.h264.decode.secure".equals(string2)) && (Util.DEVICE.equals("flounder") || Util.DEVICE.equals("flounder_lte") || Util.DEVICE.equals("grouper") || Util.DEVICE.equals("tilapia"))) {
            return true;
        }
        return false;
    }

    private static boolean codecNeedsDiscardToSpsWorkaround(String string2, MediaFormat mediaFormat) {
        if (Util.SDK_INT < 21 && mediaFormat.initializationData.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(string2)) {
            return true;
        }
        return false;
    }

    private static boolean codecNeedsEosFlushWorkaround(String string2) {
        if (Util.SDK_INT <= 23 && "OMX.google.vorbis.decoder".equals(string2)) {
            return true;
        }
        return false;
    }

    private static boolean codecNeedsEosPropagationWorkaround(String string2) {
        if (Util.SDK_INT <= 17 && ("OMX.rk.video_decoder.avc".equals(string2) || "OMX.allwinner.video.decoder.avc".equals(string2))) {
            return true;
        }
        return false;
    }

    private static boolean codecNeedsFlushWorkaround(String string2) {
        if (Util.SDK_INT < 18 || Util.SDK_INT == 18 && ("OMX.SEC.avc.dec".equals(string2) || "OMX.SEC.avc.dec.secure".equals(string2)) || Util.SDK_INT == 19 && Util.MODEL.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(string2) || "OMX.Exynos.avc.dec.secure".equals(string2))) {
            return true;
        }
        return false;
    }

    private static boolean codecNeedsMonoChannelCountWorkaround(String string2, MediaFormat mediaFormat) {
        if (Util.SDK_INT <= 18 && mediaFormat.channelCount == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(string2)) {
            return true;
        }
        return false;
    }

    private static boolean deviceNeedsAutoFrcWorkaround() {
        if (Util.SDK_INT <= 22 && "foster".equals(Util.DEVICE) && "NVIDIA".equals(Util.MANUFACTURER)) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean drainOutputBuffer(long l2, long l3) throws ExoPlaybackException {
        if (this.outputStreamEnded) {
            return false;
        }
        if (this.outputIndex < 0) {
            this.outputIndex = this.codec.dequeueOutputBuffer(this.outputBufferInfo, this.getDequeueOutputBufferTimeoutUs());
        }
        if (this.outputIndex == -2) {
            this.processOutputFormat();
            return true;
        }
        if (this.outputIndex == -3) {
            this.outputBuffers = this.codec.getOutputBuffers();
            CodecCounters codecCounters = this.codecCounters;
            ++codecCounters.outputBuffersChangedCount;
            return true;
        }
        if (this.outputIndex < 0) {
            if (this.codecNeedsEosPropagationWorkaround && (this.inputStreamEnded || this.codecReinitializationState == 2)) {
                this.processEndOfStream();
                return true;
            }
            return false;
        }
        if (this.shouldSkipAdaptationWorkaroundOutputBuffer) {
            this.shouldSkipAdaptationWorkaroundOutputBuffer = false;
            this.codec.releaseOutputBuffer(this.outputIndex, false);
            this.outputIndex = -1;
            return true;
        }
        if ((this.outputBufferInfo.flags & 4) != 0) {
            this.processEndOfStream();
            return false;
        }
        int n2 = this.getDecodeOnlyIndex(this.outputBufferInfo.presentationTimeUs);
        MediaCodec mediaCodec = this.codec;
        ByteBuffer byteBuffer = this.outputBuffers[this.outputIndex];
        MediaCodec.BufferInfo bufferInfo = this.outputBufferInfo;
        int n3 = this.outputIndex;
        boolean bl = n2 != -1;
        if (!this.processOutputBuffer(l2, l3, mediaCodec, byteBuffer, bufferInfo, n3, bl)) return false;
        this.onProcessedOutputBuffer(this.outputBufferInfo.presentationTimeUs);
        if (n2 != -1) {
            this.decodeOnlyPresentationTimestamps.remove(n2);
        }
        this.outputIndex = -1;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean feedInputBuffer(long l2, boolean bl) throws ExoPlaybackException {
        int n2;
        int n3;
        Object object;
        if (this.inputStreamEnded) return false;
        if (this.codecReinitializationState == 2) {
            return false;
        }
        if (this.inputIndex < 0) {
            this.inputIndex = this.codec.dequeueInputBuffer(0);
            if (this.inputIndex < 0) {
                return false;
            }
            this.sampleHolder.data = this.inputBuffers[this.inputIndex];
            this.sampleHolder.clearData();
        }
        if (this.codecReinitializationState == 1) {
            if (!this.codecNeedsEosPropagationWorkaround) {
                this.codecReceivedEos = true;
                this.codec.queueInputBuffer(this.inputIndex, 0, 0, 0, 4);
                this.inputIndex = -1;
            }
            this.codecReinitializationState = 2;
            return false;
        }
        if (this.codecNeedsAdaptationWorkaroundBuffer) {
            this.codecNeedsAdaptationWorkaroundBuffer = false;
            this.sampleHolder.data.put(ADAPTATION_WORKAROUND_BUFFER);
            this.codec.queueInputBuffer(this.inputIndex, 0, ADAPTATION_WORKAROUND_BUFFER.length, 0, 0);
            this.inputIndex = -1;
            this.codecReceivedBuffers = true;
            return true;
        }
        if (this.waitingForKeys) {
            n3 = -3;
        } else {
            if (this.codecReconfigurationState == 1) {
                for (n3 = 0; n3 < this.format.initializationData.size(); ++n3) {
                    object = this.format.initializationData.get(n3);
                    this.sampleHolder.data.put((byte[])object);
                }
                this.codecReconfigurationState = 2;
            }
            n3 = n2 = this.readSource(l2, this.formatHolder, this.sampleHolder);
            if (bl) {
                n3 = n2;
                if (this.sourceState == 1) {
                    n3 = n2;
                    if (n2 == -2) {
                        this.sourceState = 2;
                        n3 = n2;
                    }
                }
            }
        }
        if (n3 == -2) {
            return false;
        }
        if (n3 == -4) {
            if (this.codecReconfigurationState == 2) {
                this.sampleHolder.clearData();
                this.codecReconfigurationState = 1;
            }
            this.onInputFormatChanged(this.formatHolder);
            return true;
        }
        if (n3 == -1) {
            if (this.codecReconfigurationState == 2) {
                this.sampleHolder.clearData();
                this.codecReconfigurationState = 1;
            }
            this.inputStreamEnded = true;
            if (!this.codecReceivedBuffers) {
                this.processEndOfStream();
                return false;
            }
            try {
                if (this.codecNeedsEosPropagationWorkaround) {
                    return false;
                }
                this.codecReceivedEos = true;
                this.codec.queueInputBuffer(this.inputIndex, 0, 0, 0, 4);
                this.inputIndex = -1;
                return false;
            }
            catch (MediaCodec.CryptoException var6_6) {
                this.notifyCryptoError(var6_6);
                throw new ExoPlaybackException((Throwable)var6_6);
            }
        }
        if (this.waitingForFirstSyncFrame) {
            if (!this.sampleHolder.isSyncFrame()) {
                this.sampleHolder.clearData();
                if (this.codecReconfigurationState != 2) return true;
                this.codecReconfigurationState = 1;
                return true;
            }
            this.waitingForFirstSyncFrame = false;
        }
        bl = this.sampleHolder.isEncrypted();
        this.waitingForKeys = this.shouldWaitForKeys(bl);
        if (this.waitingForKeys) {
            return false;
        }
        if (this.codecNeedsDiscardToSpsWorkaround && !bl) {
            NalUnitUtil.discardToSps(this.sampleHolder.data);
            if (this.sampleHolder.data.position() == 0) {
                return true;
            }
            this.codecNeedsDiscardToSpsWorkaround = false;
        }
        try {
            n3 = this.sampleHolder.data.position();
            n2 = this.sampleHolder.size;
            l2 = this.sampleHolder.timeUs;
            if (this.sampleHolder.isDecodeOnly()) {
                this.decodeOnlyPresentationTimestamps.add(l2);
            }
            this.onQueuedInputBuffer(l2, this.sampleHolder.data, n3, bl);
            if (bl) {
                object = MediaCodecTrackRenderer.getFrameworkCryptoInfo(this.sampleHolder, n3 - n2);
                this.codec.queueSecureInputBuffer(this.inputIndex, 0, (MediaCodec.CryptoInfo)object, l2, 0);
            } else {
                this.codec.queueInputBuffer(this.inputIndex, 0, n3, l2, 0);
            }
            this.inputIndex = -1;
            this.codecReceivedBuffers = true;
            this.codecReconfigurationState = 0;
            object = this.codecCounters;
            ++object.inputBufferCount;
            return true;
        }
        catch (MediaCodec.CryptoException var6_7) {
            this.notifyCryptoError(var6_7);
            throw new ExoPlaybackException((Throwable)var6_7);
        }
    }

    private int getDecodeOnlyIndex(long l2) {
        int n2 = this.decodeOnlyPresentationTimestamps.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            if (this.decodeOnlyPresentationTimestamps.get(i2) != l2) continue;
            return i2;
        }
        return -1;
    }

    private static MediaCodec.CryptoInfo getFrameworkCryptoInfo(SampleHolder sampleHolder, int n2) {
        sampleHolder = sampleHolder.cryptoInfo.getFrameworkCryptoInfoV16();
        if (n2 == 0) {
            return sampleHolder;
        }
        if (sampleHolder.numBytesOfClearData == null) {
            sampleHolder.numBytesOfClearData = new int[1];
        }
        int[] arrn = sampleHolder.numBytesOfClearData;
        arrn[0] = arrn[0] + n2;
        return sampleHolder;
    }

    private android.media.MediaFormat getFrameworkMediaFormat(MediaFormat mediaFormat) {
        mediaFormat = mediaFormat.getFrameworkMediaFormatV16();
        if (this.deviceNeedsAutoFrcWorkaround) {
            mediaFormat.setInteger("auto-frc", 0);
        }
        return mediaFormat;
    }

    private boolean isWithinHotswapPeriod() {
        if (SystemClock.elapsedRealtime() < this.codecHotswapTimeMs + 1000) {
            return true;
        }
        return false;
    }

    private void notifyAndThrowDecoderInitError(DecoderInitializationException decoderInitializationException) throws ExoPlaybackException {
        this.notifyDecoderInitializationError(decoderInitializationException);
        throw new ExoPlaybackException(decoderInitializationException);
    }

    private void notifyCryptoError(final MediaCodec.CryptoException cryptoException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable(){

                @Override
                public void run() {
                    MediaCodecTrackRenderer.this.eventListener.onCryptoError(cryptoException);
                }
            });
        }
    }

    private void notifyDecoderInitializationError(final DecoderInitializationException decoderInitializationException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable(){

                @Override
                public void run() {
                    MediaCodecTrackRenderer.this.eventListener.onDecoderInitializationError(decoderInitializationException);
                }
            });
        }
    }

    private void notifyDecoderInitialized(final String string2, final long l2, final long l3) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable(){

                @Override
                public void run() {
                    MediaCodecTrackRenderer.this.eventListener.onDecoderInitialized(string2, l2, l3);
                }
            });
        }
    }

    private void processEndOfStream() throws ExoPlaybackException {
        if (this.codecReinitializationState == 2) {
            this.releaseCodec();
            this.maybeInitCodec();
            return;
        }
        this.outputStreamEnded = true;
        this.onOutputStreamEnded();
    }

    private void processOutputFormat() throws ExoPlaybackException {
        Object object = this.codec.getOutputFormat();
        if (this.codecNeedsAdaptationWorkaround && object.getInteger("width") == 32 && object.getInteger("height") == 32) {
            this.shouldSkipAdaptationWorkaroundOutputBuffer = true;
            return;
        }
        if (this.codecNeedsMonoChannelCountWorkaround) {
            object.setInteger("channel-count", 1);
        }
        this.onOutputFormatChanged(this.codec, (android.media.MediaFormat)object);
        object = this.codecCounters;
        ++object.outputFormatChangedCount;
    }

    private void readFormat(long l2) throws ExoPlaybackException {
        if (this.readSource(l2, this.formatHolder, null) == -4) {
            this.onInputFormatChanged(this.formatHolder);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private boolean shouldWaitForKeys(boolean bl) throws ExoPlaybackException {
        if (!this.openedDrmSession) {
            return false;
        }
        int n2 = this.drmSessionManager.getState();
        if (n2 == 0) {
            throw new ExoPlaybackException(this.drmSessionManager.getError());
        }
        if (n2 == 4) return false;
        if (bl) return true;
        if (this.playClearSamplesWithoutKeys) return false;
        return true;
    }

    protected boolean canReconfigureCodec(MediaCodec mediaCodec, boolean bl, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
        return false;
    }

    protected final boolean codecInitialized() {
        if (this.codec != null) {
            return true;
        }
        return false;
    }

    protected abstract void configureCodec(MediaCodec var1, boolean var2, android.media.MediaFormat var3, MediaCrypto var4);

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void doSomeWork(long l2, long l3, boolean bl) throws ExoPlaybackException {
        int n2 = bl ? (this.sourceState == 0 ? 1 : this.sourceState) : 0;
        this.sourceState = n2;
        if (this.format == null) {
            this.readFormat(l2);
        }
        this.maybeInitCodec();
        if (this.codec != null) {
            TraceUtil.beginSection("drainAndFeed");
            while (this.drainOutputBuffer(l2, l3)) {
            }
            if (this.feedInputBuffer(l2, true)) {
                while (this.feedInputBuffer(l2, false)) {
                }
            }
            TraceUtil.endSection();
        }
        this.codecCounters.ensureUpdated();
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void flushCodec() throws ExoPlaybackException {
        this.codecHotswapTimeMs = -1;
        this.inputIndex = -1;
        this.outputIndex = -1;
        this.waitingForFirstSyncFrame = true;
        this.waitingForKeys = false;
        this.decodeOnlyPresentationTimestamps.clear();
        this.codecNeedsAdaptationWorkaroundBuffer = false;
        this.shouldSkipAdaptationWorkaroundOutputBuffer = false;
        if (this.codecNeedsFlushWorkaround || this.codecNeedsEosFlushWorkaround && this.codecReceivedEos) {
            this.releaseCodec();
            this.maybeInitCodec();
        } else if (this.codecReinitializationState != 0) {
            this.releaseCodec();
            this.maybeInitCodec();
        } else {
            this.codec.flush();
            this.codecReceivedBuffers = false;
        }
        if (this.codecReconfigured && this.format != null) {
            this.codecReconfigurationState = 1;
        }
    }

    protected DecoderInfo getDecoderInfo(MediaCodecSelector mediaCodecSelector, String string2, boolean bl) throws MediaCodecUtil.DecoderQueryException {
        return mediaCodecSelector.getDecoderInfo(string2, bl);
    }

    protected long getDequeueOutputBufferTimeoutUs() {
        return 0;
    }

    protected final int getSourceState() {
        return this.sourceState;
    }

    protected abstract boolean handlesTrack(MediaCodecSelector var1, MediaFormat var2) throws MediaCodecUtil.DecoderQueryException;

    @Override
    protected final boolean handlesTrack(MediaFormat mediaFormat) throws MediaCodecUtil.DecoderQueryException {
        return this.handlesTrack(this.mediaCodecSelector, mediaFormat);
    }

    protected final boolean haveFormat() {
        if (this.format != null) {
            return true;
        }
        return false;
    }

    @Override
    protected boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override
    protected boolean isReady() {
        if (this.format != null && !this.waitingForKeys && (this.sourceState != 0 || this.outputIndex >= 0 || this.isWithinHotswapPeriod())) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    protected final void maybeInitCodec() throws ExoPlaybackException {
        long l2;
        if (!this.shouldInitCodec()) {
            return;
        }
        Object object = this.format.mimeType;
        Object object2 = null;
        boolean bl = false;
        if (this.drmInitData != null) {
            int n2;
            if (this.drmSessionManager == null) {
                throw new ExoPlaybackException("Media requires a DrmSessionManager");
            }
            if (!this.openedDrmSession) {
                this.drmSessionManager.open(this.drmInitData);
                this.openedDrmSession = true;
            }
            if ((n2 = this.drmSessionManager.getState()) == 0) {
                throw new ExoPlaybackException(this.drmSessionManager.getError());
            }
            if (n2 != 3) {
                if (n2 != 4) return;
            }
            object2 = this.drmSessionManager.getMediaCrypto().getWrappedMediaCrypto();
            bl = this.drmSessionManager.requiresSecureDecoderComponent((String)object);
        }
        Object object3 = null;
        try {
            object3 = object = this.getDecoderInfo(this.mediaCodecSelector, (String)object, bl);
        }
        catch (MediaCodecUtil.DecoderQueryException var9_2) {
            this.notifyAndThrowDecoderInitError(new DecoderInitializationException(this.format, (Throwable)var9_2, bl, -49998));
        }
        if (object3 == null) {
            this.notifyAndThrowDecoderInitError(new DecoderInitializationException(this.format, null, bl, -49999));
        }
        object = object3.name;
        this.codecIsAdaptive = object3.adaptive;
        this.codecNeedsDiscardToSpsWorkaround = MediaCodecTrackRenderer.codecNeedsDiscardToSpsWorkaround((String)object, this.format);
        this.codecNeedsFlushWorkaround = MediaCodecTrackRenderer.codecNeedsFlushWorkaround((String)object);
        this.codecNeedsAdaptationWorkaround = MediaCodecTrackRenderer.codecNeedsAdaptationWorkaround((String)object);
        this.codecNeedsEosPropagationWorkaround = MediaCodecTrackRenderer.codecNeedsEosPropagationWorkaround((String)object);
        this.codecNeedsEosFlushWorkaround = MediaCodecTrackRenderer.codecNeedsEosFlushWorkaround((String)object);
        this.codecNeedsMonoChannelCountWorkaround = MediaCodecTrackRenderer.codecNeedsMonoChannelCountWorkaround((String)object, this.format);
        try {
            l2 = SystemClock.elapsedRealtime();
            TraceUtil.beginSection("createByCodecName(" + (String)object + ")");
            this.codec = MediaCodec.createByCodecName((String)object);
            TraceUtil.endSection();
            TraceUtil.beginSection("configureCodec");
            this.configureCodec(this.codec, object3.adaptive, this.getFrameworkMediaFormat(this.format), (MediaCrypto)object2);
            TraceUtil.endSection();
            TraceUtil.beginSection("codec.start()");
            this.codec.start();
            TraceUtil.endSection();
            long l3 = SystemClock.elapsedRealtime();
            this.notifyDecoderInitialized((String)object, l3, l3 - l2);
            this.inputBuffers = this.codec.getInputBuffers();
            this.outputBuffers = this.codec.getOutputBuffers();
        }
        catch (Exception var7_4) {
            this.notifyAndThrowDecoderInitError(new DecoderInitializationException(this.format, (Throwable)var7_4, bl, (String)object));
        }
        l2 = this.getState() == 3 ? SystemClock.elapsedRealtime() : -1;
        this.codecHotswapTimeMs = l2;
        this.inputIndex = -1;
        this.outputIndex = -1;
        this.waitingForFirstSyncFrame = true;
        object2 = this.codecCounters;
        ++object2.codecInitCount;
    }

    @Override
    protected void onDisabled() throws ExoPlaybackException {
        this.format = null;
        this.drmInitData = null;
        try {
            this.releaseCodec();
        }
        catch (Throwable var1_2) {
            try {
                if (this.openedDrmSession) {
                    this.drmSessionManager.close();
                    this.openedDrmSession = false;
                }
                throw var1_2;
            }
            finally {
                super.onDisabled();
            }
        }
        try {
            if (this.openedDrmSession) {
                this.drmSessionManager.close();
                this.openedDrmSession = false;
            }
            return;
        }
        finally {
            super.onDisabled();
        }
    }

    @Override
    protected void onDiscontinuity(long l2) throws ExoPlaybackException {
        this.sourceState = 0;
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        if (this.codec != null) {
            this.flushCodec();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onInputFormatChanged(MediaFormatHolder mediaFormatHolder) throws ExoPlaybackException {
        boolean bl = true;
        MediaFormat mediaFormat = this.format;
        this.format = mediaFormatHolder.format;
        this.drmInitData = mediaFormatHolder.drmInitData;
        if (Util.areEqual(this.format, mediaFormat)) {
            return;
        }
        if (this.codec != null && this.canReconfigureCodec(this.codec, this.codecIsAdaptive, mediaFormat, this.format)) {
            this.codecReconfigured = true;
            this.codecReconfigurationState = 1;
            if (!this.codecNeedsAdaptationWorkaround || this.format.width != mediaFormat.width || this.format.height != mediaFormat.height) {
                bl = false;
            }
            this.codecNeedsAdaptationWorkaroundBuffer = bl;
            return;
        }
        if (this.codecReceivedBuffers) {
            this.codecReinitializationState = 1;
            return;
        }
        this.releaseCodec();
        this.maybeInitCodec();
    }

    protected void onOutputFormatChanged(MediaCodec mediaCodec, android.media.MediaFormat mediaFormat) throws ExoPlaybackException {
    }

    protected void onOutputStreamEnded() {
    }

    protected void onProcessedOutputBuffer(long l2) {
    }

    protected void onQueuedInputBuffer(long l2, ByteBuffer byteBuffer, int n2, boolean bl) {
    }

    @Override
    protected void onStarted() {
    }

    @Override
    protected void onStopped() {
    }

    protected abstract boolean processOutputBuffer(long var1, long var3, MediaCodec var5, ByteBuffer var6, MediaCodec.BufferInfo var7, int var8, boolean var9) throws ExoPlaybackException;

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected void releaseCodec() {
        if (this.codec == null) return;
        this.codecHotswapTimeMs = -1;
        this.inputIndex = -1;
        this.outputIndex = -1;
        this.waitingForKeys = false;
        this.decodeOnlyPresentationTimestamps.clear();
        this.inputBuffers = null;
        this.outputBuffers = null;
        this.codecReconfigured = false;
        this.codecReceivedBuffers = false;
        this.codecIsAdaptive = false;
        this.codecNeedsDiscardToSpsWorkaround = false;
        this.codecNeedsFlushWorkaround = false;
        this.codecNeedsAdaptationWorkaround = false;
        this.codecNeedsEosPropagationWorkaround = false;
        this.codecNeedsEosFlushWorkaround = false;
        this.codecNeedsMonoChannelCountWorkaround = false;
        this.codecNeedsAdaptationWorkaroundBuffer = false;
        this.shouldSkipAdaptationWorkaroundOutputBuffer = false;
        this.codecReceivedEos = false;
        this.codecReconfigurationState = 0;
        this.codecReinitializationState = 0;
        CodecCounters codecCounters = this.codecCounters;
        ++codecCounters.codecReleaseCount;
        try {
            this.codec.stop();
        }
        catch (Throwable throwable) {
            try {
                this.codec.release();
                throw throwable;
            }
            finally {
                this.codec = null;
            }
        }
        this.codec.release();
        return;
        finally {
            this.codec = null;
        }
    }

    protected boolean shouldInitCodec() {
        if (this.codec == null && this.format != null) {
            return true;
        }
        return false;
    }

    public static class DecoderInitializationException
    extends Exception {
        private static final int CUSTOM_ERROR_CODE_BASE = -50000;
        private static final int DECODER_QUERY_ERROR = -49998;
        private static final int NO_SUITABLE_DECODER_ERROR = -49999;
        public final String decoderName;
        public final String diagnosticInfo;
        public final String mimeType;
        public final boolean secureDecoderRequired;

        public DecoderInitializationException(MediaFormat mediaFormat, Throwable throwable, boolean bl, int n2) {
            super("Decoder init failed: [" + n2 + "], " + mediaFormat, throwable);
            this.mimeType = mediaFormat.mimeType;
            this.secureDecoderRequired = bl;
            this.decoderName = null;
            this.diagnosticInfo = DecoderInitializationException.buildCustomDiagnosticInfo(n2);
        }

        /*
         * Enabled aggressive block sorting
         */
        public DecoderInitializationException(MediaFormat object, Throwable throwable, boolean bl, String string2) {
            super("Decoder init failed: " + string2 + ", " + object, throwable);
            this.mimeType = object.mimeType;
            this.secureDecoderRequired = bl;
            this.decoderName = string2;
            object = Util.SDK_INT >= 21 ? DecoderInitializationException.getDiagnosticInfoV21(throwable) : null;
            this.diagnosticInfo = object;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        private static String buildCustomDiagnosticInfo(int n2) {
            String string2;
            if (n2 < 0) {
                string2 = "neg_";
                do {
                    return "com.google.android.exoplayer.MediaCodecTrackRenderer_" + string2 + Math.abs(n2);
                    break;
                } while (true);
            }
            string2 = "";
            return "com.google.android.exoplayer.MediaCodecTrackRenderer_" + string2 + Math.abs(n2);
        }

        @TargetApi(value=21)
        private static String getDiagnosticInfoV21(Throwable throwable) {
            if (throwable instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException)throwable).getDiagnosticInfo();
            }
            return null;
        }
    }

    public static interface EventListener {
        public void onCryptoError(MediaCodec.CryptoException var1);

        public void onDecoderInitializationError(DecoderInitializationException var1);

        public void onDecoderInitialized(String var1, long var2, long var4);
    }

}

