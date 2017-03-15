/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.media.AudioTrack
 *  android.media.PlaybackParams
 *  android.os.ConditionVariable
 *  android.util.Log
 *  com.google.android.exoplayer.C
 *  com.google.android.exoplayer.audio.AudioTrack$1
 *  com.google.android.exoplayer.audio.AudioTrack$2
 *  com.google.android.exoplayer.audio.AudioTrack$AudioTrackUtil
 *  com.google.android.exoplayer.audio.AudioTrack$AudioTrackUtilV19
 *  com.google.android.exoplayer.audio.AudioTrack$AudioTrackUtilV23
 *  com.google.android.exoplayer.audio.AudioTrack$InvalidAudioTrackTimestampException
 *  com.google.android.exoplayer.util.Ac3Util
 *  com.google.android.exoplayer.util.DtsUtil
 */
package com.google.android.exoplayer.audio;

import android.annotation.TargetApi;
import android.media.PlaybackParams;
import android.os.ConditionVariable;
import android.util.Log;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.audio.AudioCapabilities;
import com.google.android.exoplayer.audio.AudioTrack;
import com.google.android.exoplayer.util.Ac3Util;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.DtsUtil;
import com.google.android.exoplayer.util.Util;
import java.lang.reflect.Method;
import java.nio.Buffer;
import java.nio.ByteBuffer;

public final class AudioTrack {
    private static final int BUFFER_MULTIPLICATION_FACTOR = 4;
    public static final long CURRENT_POSITION_NOT_SET = Long.MIN_VALUE;
    private static final long MAX_AUDIO_TIMESTAMP_OFFSET_US = 5000000;
    private static final long MAX_BUFFER_DURATION_US = 750000;
    private static final long MAX_LATENCY_US = 5000000;
    private static final int MAX_PLAYHEAD_OFFSET_COUNT = 10;
    private static final long MIN_BUFFER_DURATION_US = 250000;
    private static final int MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US = 30000;
    private static final int MIN_TIMESTAMP_SAMPLE_INTERVAL_US = 500000;
    private static final long PASSTHROUGH_BUFFER_DURATION_US = 250000;
    public static final int RESULT_BUFFER_CONSUMED = 2;
    public static final int RESULT_POSITION_DISCONTINUITY = 1;
    public static final int SESSION_ID_NOT_SET = 0;
    private static final int START_IN_SYNC = 1;
    private static final int START_NEED_SYNC = 2;
    private static final int START_NOT_SET = 0;
    private static final String TAG = "AudioTrack";
    public static boolean enablePreV21AudioSessionWorkaround = false;
    public static boolean failOnSpuriousAudioTimestamp = false;
    private final AudioCapabilities audioCapabilities;
    private boolean audioTimestampSet;
    private android.media.AudioTrack audioTrack;
    private final AudioTrackUtil audioTrackUtil;
    private int bufferBytesRemaining;
    private int bufferSize;
    private long bufferSizeUs;
    private int channelConfig;
    private int framesPerEncodedSample;
    private Method getLatencyMethod;
    private android.media.AudioTrack keepSessionIdAudioTrack;
    private long lastPlayheadSampleTimeUs;
    private long lastTimestampSampleTimeUs;
    private long latencyUs;
    private int nextPlayheadOffsetIndex;
    private boolean passthrough;
    private int pcmFrameSize;
    private int playheadOffsetCount;
    private final long[] playheadOffsets;
    private final ConditionVariable releasingConditionVariable;
    private ByteBuffer resampledBuffer;
    private long resumeSystemTimeUs;
    private int sampleRate;
    private long smoothedPlayheadOffsetUs;
    private int sourceEncoding;
    private int startMediaTimeState;
    private long startMediaTimeUs;
    private final int streamType;
    private long submittedEncodedFrames;
    private long submittedPcmBytes;
    private int targetEncoding;
    private byte[] temporaryBuffer;
    private int temporaryBufferOffset;
    private boolean useResampledBuffer;
    private float volume;

    public AudioTrack() {
        this(null, 3);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public AudioTrack(AudioCapabilities audioCapabilities, int n2) {
        this.audioCapabilities = audioCapabilities;
        this.streamType = n2;
        this.releasingConditionVariable = new ConditionVariable(true);
        if (Util.SDK_INT >= 18) {
            try {
                this.getLatencyMethod = android.media.AudioTrack.class.getMethod("getLatency", null);
            }
            catch (NoSuchMethodException var1_2) {}
        }
        this.audioTrackUtil = Util.SDK_INT >= 23 ? new AudioTrackUtilV23() : (Util.SDK_INT >= 19 ? new AudioTrackUtilV19() : new AudioTrackUtil(null));
        this.playheadOffsets = new long[10];
        this.volume = 1.0f;
        this.startMediaTimeState = 0;
    }

    static /* synthetic */ ConditionVariable access$100(AudioTrack audioTrack) {
        return audioTrack.releasingConditionVariable;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void checkAudioTrackInitialized() throws InitializationException {
        int n2 = this.audioTrack.getState();
        if (n2 == 1) {
            return;
        }
        try {
            this.audioTrack.release();
        }
        catch (Exception var1_2) {}
        do {
            throw new InitializationException(n2, this.sampleRate, this.channelConfig, this.bufferSize);
            break;
        } while (true);
        throw new InitializationException(n2, this.sampleRate, this.channelConfig, this.bufferSize);
        finally {
            this.audioTrack = null;
            throw new InitializationException(n2, this.sampleRate, this.channelConfig, this.bufferSize);
        }
    }

    private long durationUsToFrames(long l2) {
        return (long)this.sampleRate * l2 / 1000000;
    }

    private long framesToDurationUs(long l2) {
        return 1000000 * l2 / (long)this.sampleRate;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static int getEncodingForMimeType(String var0) {
        var1_1 = -1;
        switch (var0.hashCode()) {
            case 187078296: {
                if (var0.equals("audio/ac3")) {
                    var1_1 = 0;
                    ** break;
                }
                ** GOTO lbl16
            }
            case 1504578661: {
                if (var0.equals("audio/eac3")) {
                    var1_1 = 1;
                    ** break;
                }
                ** GOTO lbl16
            }
            case -1095064472: {
                if (var0.equals("audio/vnd.dts")) {
                    var1_1 = 2;
                }
            }
lbl16: // 8 sources:
            default: {
                ** GOTO lbl21
            }
            case 1505942594: 
        }
        if (var0.equals("audio/vnd.dts.hd")) {
            var1_1 = 3;
        }
lbl21: // 4 sources:
        switch (var1_1) {
            default: {
                return 0;
            }
            case 0: {
                return 5;
            }
            case 1: {
                return 6;
            }
            case 2: {
                return 7;
            }
            case 3: 
        }
        return 8;
    }

    private static int getFramesPerEncodedSample(int n2, ByteBuffer byteBuffer) {
        if (n2 == 7 || n2 == 8) {
            return DtsUtil.parseDtsAudioSampleCount((ByteBuffer)byteBuffer);
        }
        if (n2 == 5) {
            return Ac3Util.getAc3SyncframeAudioSampleCount();
        }
        if (n2 == 6) {
            return Ac3Util.parseEAc3SyncframeAudioSampleCount((ByteBuffer)byteBuffer);
        }
        throw new IllegalStateException("Unexpected audio encoding: " + n2);
    }

    private long getSubmittedFrames() {
        if (this.passthrough) {
            return this.submittedEncodedFrames;
        }
        return this.pcmBytesToFrames(this.submittedPcmBytes);
    }

    private boolean hasCurrentPositionUs() {
        if (this.isInitialized() && this.startMediaTimeState != 0) {
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
    private void maybeSampleSyncParams() {
        long l2 = this.audioTrackUtil.getPlaybackHeadPositionUs();
        if (l2 == 0) {
            return;
        }
        long l3 = System.nanoTime() / 1000;
        if (l3 - this.lastPlayheadSampleTimeUs >= 30000) {
            this.playheadOffsets[this.nextPlayheadOffsetIndex] = l2 - l3;
            this.nextPlayheadOffsetIndex = (this.nextPlayheadOffsetIndex + 1) % 10;
            if (this.playheadOffsetCount < 10) {
                ++this.playheadOffsetCount;
            }
            this.lastPlayheadSampleTimeUs = l3;
            this.smoothedPlayheadOffsetUs = 0;
            for (int i2 = 0; i2 < this.playheadOffsetCount; this.smoothedPlayheadOffsetUs += this.playheadOffsets[i2] / (long)this.playheadOffsetCount, ++i2) {
            }
        }
        if (this.needsPassthroughWorkarounds()) return;
        if (l3 - this.lastTimestampSampleTimeUs < 500000) return;
        this.audioTimestampSet = this.audioTrackUtil.updateTimestamp();
        if (this.audioTimestampSet) {
            long l4 = this.audioTrackUtil.getTimestampNanoTime() / 1000;
            long l5 = this.audioTrackUtil.getTimestampFramePosition();
            if (l4 < this.resumeSystemTimeUs) {
                this.audioTimestampSet = false;
            } else if (Math.abs(l4 - l3) > 5000000) {
                String string2 = "Spurious audio timestamp (system clock mismatch): " + l5 + ", " + l4 + ", " + l3 + ", " + l2;
                if (failOnSpuriousAudioTimestamp) {
                    throw new InvalidAudioTrackTimestampException(string2);
                }
                Log.w((String)"AudioTrack", (String)string2);
                this.audioTimestampSet = false;
            } else if (Math.abs(this.framesToDurationUs(l5) - l2) > 5000000) {
                String string3 = "Spurious audio timestamp (frame position mismatch): " + l5 + ", " + l4 + ", " + l3 + ", " + l2;
                if (failOnSpuriousAudioTimestamp) {
                    throw new InvalidAudioTrackTimestampException(string3);
                }
                Log.w((String)"AudioTrack", (String)string3);
                this.audioTimestampSet = false;
            }
        }
        if (this.getLatencyMethod != null && !this.passthrough) {
            try {
                this.latencyUs = (long)((Integer)this.getLatencyMethod.invoke((Object)this.audioTrack, null)).intValue() * 1000 - this.bufferSizeUs;
                this.latencyUs = Math.max(this.latencyUs, 0);
                if (this.latencyUs > 5000000) {
                    Log.w((String)"AudioTrack", (String)("Ignoring impossibly large audio latency: " + this.latencyUs));
                    this.latencyUs = 0;
                }
            }
            catch (Exception var1_8) {
                this.getLatencyMethod = null;
            }
        }
        this.lastTimestampSampleTimeUs = l3;
    }

    private boolean needsPassthroughWorkarounds() {
        if (Util.SDK_INT < 23 && (this.targetEncoding == 5 || this.targetEncoding == 6)) {
            return true;
        }
        return false;
    }

    private boolean overrideHasPendingData() {
        if (this.needsPassthroughWorkarounds() && this.audioTrack.getPlayState() == 2 && this.audioTrack.getPlaybackHeadPosition() == 0) {
            return true;
        }
        return false;
    }

    private long pcmBytesToFrames(long l2) {
        return l2 / (long)this.pcmFrameSize;
    }

    private void releaseKeepSessionIdAudioTrack() {
        if (this.keepSessionIdAudioTrack == null) {
            return;
        }
        android.media.AudioTrack audioTrack = this.keepSessionIdAudioTrack;
        this.keepSessionIdAudioTrack = null;
        new /* Unavailable Anonymous Inner Class!! */.start();
    }

    /*
     * Enabled aggressive block sorting
     */
    private static ByteBuffer resampleTo16BitPcm(ByteBuffer byteBuffer, int n2, int n3, int n4, ByteBuffer byteBuffer2) {
        int n5;
        ByteBuffer byteBuffer3;
        block15 : {
            switch (n4) {
                default: {
                    throw new IllegalStateException();
                }
                case 3: {
                    n5 = n3 * 2;
                    break;
                }
                case Integer.MIN_VALUE: {
                    n5 = n3 / 3 * 2;
                    break;
                }
                case 1073741824: {
                    n5 = n3 / 2;
                }
            }
            if (byteBuffer2 != null) {
                byteBuffer3 = byteBuffer2;
                if (byteBuffer2.capacity() >= n5) break block15;
            }
            byteBuffer3 = ByteBuffer.allocateDirect(n5);
        }
        byteBuffer3.position(0);
        byteBuffer3.limit(n5);
        n3 = n2 + n3;
        switch (n4) {
            default: {
                throw new IllegalStateException();
            }
            case 3: {
                while (n2 < n3) {
                    byteBuffer3.put(0);
                    byteBuffer3.put((byte)((byteBuffer.get(n2) & 255) - 128));
                    ++n2;
                }
                break;
            }
            case Integer.MIN_VALUE: {
                while (n2 < n3) {
                    byteBuffer3.put(byteBuffer.get(n2 + 1));
                    byteBuffer3.put(byteBuffer.get(n2 + 2));
                    n2 += 3;
                }
                break;
            }
            case 1073741824: {
                while (n2 < n3) {
                    byteBuffer3.put(byteBuffer.get(n2 + 2));
                    byteBuffer3.put(byteBuffer.get(n2 + 3));
                    n2 += 4;
                }
                break block5;
            }
        }
        byteBuffer3.position(0);
        return byteBuffer3;
    }

    private void resetSyncParams() {
        this.smoothedPlayheadOffsetUs = 0;
        this.playheadOffsetCount = 0;
        this.nextPlayheadOffsetIndex = 0;
        this.lastPlayheadSampleTimeUs = 0;
        this.audioTimestampSet = false;
        this.lastTimestampSampleTimeUs = 0;
    }

    private void setAudioTrackVolume() {
        if (!this.isInitialized()) {
            return;
        }
        if (Util.SDK_INT >= 21) {
            AudioTrack.setAudioTrackVolumeV21(this.audioTrack, this.volume);
            return;
        }
        AudioTrack.setAudioTrackVolumeV3(this.audioTrack, this.volume);
    }

    @TargetApi(value=21)
    private static void setAudioTrackVolumeV21(android.media.AudioTrack audioTrack, float f2) {
        audioTrack.setVolume(f2);
    }

    private static void setAudioTrackVolumeV3(android.media.AudioTrack audioTrack, float f2) {
        audioTrack.setStereoVolume(f2, f2);
    }

    @TargetApi(value=21)
    private static int writeNonBlockingV21(android.media.AudioTrack audioTrack, ByteBuffer byteBuffer, int n2) {
        return audioTrack.write(byteBuffer, n2, 1);
    }

    public void configure(String string2, int n2, int n3, int n4) {
        this.configure(string2, n2, n3, n4, 0);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void configure(String string2, int n2, int n3, int n4, int n5) {
        int n6;
        switch (n2) {
            default: {
                throw new IllegalArgumentException("Unsupported channel count: " + n2);
            }
            case 1: {
                n6 = 4;
                break;
            }
            case 2: {
                n6 = 12;
                break;
            }
            case 3: {
                n6 = 28;
                break;
            }
            case 4: {
                n6 = 204;
                break;
            }
            case 5: {
                n6 = 220;
                break;
            }
            case 6: {
                n6 = 252;
                break;
            }
            case 7: {
                n6 = 1276;
                break;
            }
            case 8: {
                n6 = C.CHANNEL_OUT_7POINT1_SURROUND;
            }
        }
        boolean bl = !"audio/raw".equals(string2);
        if (bl) {
            n4 = AudioTrack.getEncodingForMimeType(string2);
        } else if (n4 != 3 && n4 != 2 && n4 != Integer.MIN_VALUE && n4 != 1073741824) {
            throw new IllegalArgumentException("Unsupported PCM encoding: " + n4);
        }
        if (this.isInitialized() && this.sourceEncoding == n4 && this.sampleRate == n3 && this.channelConfig == n6) {
            return;
        }
        this.reset();
        this.sourceEncoding = n4;
        this.passthrough = bl;
        this.sampleRate = n3;
        this.channelConfig = n6;
        if (!bl) {
            n4 = 2;
        }
        this.targetEncoding = n4;
        this.pcmFrameSize = n2 * 2;
        if (n5 != 0) {
            this.bufferSize = n5;
        } else if (bl) {
            this.bufferSize = this.targetEncoding == 5 || this.targetEncoding == 6 ? 20480 : 49152;
        } else {
            n4 = android.media.AudioTrack.getMinBufferSize((int)n3, (int)n6, (int)this.targetEncoding);
            boolean bl2 = n4 != -2;
            Assertions.checkState(bl2);
            n2 = n4 * 4;
            n3 = (int)this.durationUsToFrames(250000) * this.pcmFrameSize;
            n4 = (int)Math.max((long)n4, this.durationUsToFrames(750000) * (long)this.pcmFrameSize);
            if (n2 < n3) {
                n2 = n3;
            } else if (n2 > n4) {
                n2 = n4;
            }
            this.bufferSize = n2;
        }
        long l2 = bl ? -1 : this.framesToDurationUs(this.pcmBytesToFrames(this.bufferSize));
        this.bufferSizeUs = l2;
    }

    public int getBufferSize() {
        return this.bufferSize;
    }

    public long getBufferSizeUs() {
        return this.bufferSizeUs;
    }

    /*
     * Enabled aggressive block sorting
     */
    public long getCurrentPositionUs(boolean bl) {
        if (!this.hasCurrentPositionUs()) {
            return Long.MIN_VALUE;
        }
        if (this.audioTrack.getPlayState() == 3) {
            this.maybeSampleSyncParams();
        }
        long l2 = System.nanoTime() / 1000;
        if (this.audioTimestampSet) {
            l2 = this.durationUsToFrames((long)((float)(l2 - this.audioTrackUtil.getTimestampNanoTime() / 1000) * this.audioTrackUtil.getPlaybackSpeed()));
            return this.framesToDurationUs(this.audioTrackUtil.getTimestampFramePosition() + l2) + this.startMediaTimeUs;
        }
        l2 = this.playheadOffsetCount == 0 ? this.audioTrackUtil.getPlaybackHeadPositionUs() + this.startMediaTimeUs : this.smoothedPlayheadOffsetUs + l2 + this.startMediaTimeUs;
        long l3 = l2;
        if (bl) return l3;
        return l2 - this.latencyUs;
    }

    /*
     * Enabled aggressive block sorting
     */
    public int handleBuffer(ByteBuffer byteBuffer, int n2, int n3, long l2) throws WriteException {
        if (this.needsPassthroughWorkarounds()) {
            if (this.audioTrack.getPlayState() == 2) {
                return 0;
            }
            if (this.audioTrack.getPlayState() == 1 && this.audioTrackUtil.getPlaybackHeadPosition() != 0) {
                return 0;
            }
        }
        int n4 = 0;
        int n5 = 0;
        ByteBuffer byteBuffer2 = byteBuffer;
        if (this.bufferBytesRemaining == 0) {
            if (n3 == 0) {
                return 2;
            }
            boolean bl = this.targetEncoding != this.sourceEncoding;
            this.useResampledBuffer = bl;
            ByteBuffer byteBuffer3 = byteBuffer;
            n4 = n2;
            int n6 = n3;
            if (this.useResampledBuffer) {
                bl = this.targetEncoding == 2;
                Assertions.checkState(bl);
                byteBuffer3 = this.resampledBuffer = AudioTrack.resampleTo16BitPcm(byteBuffer, n2, n3, this.sourceEncoding, this.resampledBuffer);
                n4 = this.resampledBuffer.position();
                n6 = this.resampledBuffer.limit();
            }
            this.bufferBytesRemaining = n6;
            byteBuffer3.position(n4);
            if (this.passthrough && this.framesPerEncodedSample == 0) {
                this.framesPerEncodedSample = AudioTrack.getFramesPerEncodedSample(this.targetEncoding, byteBuffer3);
            }
            if (this.startMediaTimeState == 0) {
                this.startMediaTimeUs = Math.max(0, l2);
                this.startMediaTimeState = 1;
                n2 = n5;
            } else {
                long l3 = this.startMediaTimeUs + this.framesToDurationUs(this.getSubmittedFrames());
                if (this.startMediaTimeState == 1 && Math.abs(l3 - l2) > 200000) {
                    Log.e((String)"AudioTrack", (String)("Discontinuity detected [expected " + l3 + ", got " + l2 + "]"));
                    this.startMediaTimeState = 2;
                }
                n2 = n5;
                if (this.startMediaTimeState == 2) {
                    this.startMediaTimeUs += l2 - l3;
                    this.startMediaTimeState = 1;
                    n2 = false | true;
                }
            }
            n4 = n2;
            byteBuffer2 = byteBuffer3;
            if (Util.SDK_INT < 21) {
                if (this.temporaryBuffer == null || this.temporaryBuffer.length < n6) {
                    this.temporaryBuffer = new byte[n6];
                }
                byteBuffer3.get(this.temporaryBuffer, 0, n6);
                this.temporaryBufferOffset = 0;
                byteBuffer2 = byteBuffer3;
                n4 = n2;
            }
        }
        n2 = 0;
        if (Util.SDK_INT < 21) {
            n3 = (int)(this.submittedPcmBytes - this.audioTrackUtil.getPlaybackHeadPosition() * (long)this.pcmFrameSize);
            if ((n3 = this.bufferSize - n3) > 0) {
                n2 = Math.min(this.bufferBytesRemaining, n3);
                n2 = n3 = this.audioTrack.write(this.temporaryBuffer, this.temporaryBufferOffset, n2);
                if (n3 >= 0) {
                    this.temporaryBufferOffset += n3;
                    n2 = n3;
                }
            }
        } else {
            byteBuffer = this.useResampledBuffer ? this.resampledBuffer : byteBuffer2;
            n2 = AudioTrack.writeNonBlockingV21(this.audioTrack, byteBuffer, this.bufferBytesRemaining);
        }
        if (n2 < 0) {
            throw new WriteException(n2);
        }
        this.bufferBytesRemaining -= n2;
        if (!this.passthrough) {
            this.submittedPcmBytes += (long)n2;
        }
        n2 = n4;
        if (this.bufferBytesRemaining != 0) return n2;
        if (!this.passthrough) return n4 | 2;
        this.submittedEncodedFrames += (long)this.framesPerEncodedSample;
        return n4 | 2;
    }

    public void handleDiscontinuity() {
        if (this.startMediaTimeState == 1) {
            this.startMediaTimeState = 2;
        }
    }

    public void handleEndOfStream() {
        if (this.isInitialized()) {
            this.audioTrackUtil.handleEndOfStream(this.getSubmittedFrames());
        }
    }

    public boolean hasPendingData() {
        if (this.isInitialized() && (this.getSubmittedFrames() > this.audioTrackUtil.getPlaybackHeadPosition() || this.overrideHasPendingData())) {
            return true;
        }
        return false;
    }

    public int initialize() throws InitializationException {
        return this.initialize(0);
    }

    /*
     * Enabled aggressive block sorting
     */
    public int initialize(int n2) throws InitializationException {
        this.releasingConditionVariable.block();
        this.audioTrack = n2 == 0 ? new android.media.AudioTrack(this.streamType, this.sampleRate, this.channelConfig, this.targetEncoding, this.bufferSize, 1) : new android.media.AudioTrack(this.streamType, this.sampleRate, this.channelConfig, this.targetEncoding, this.bufferSize, 1, n2);
        this.checkAudioTrackInitialized();
        n2 = this.audioTrack.getAudioSessionId();
        if (enablePreV21AudioSessionWorkaround && Util.SDK_INT < 21) {
            if (this.keepSessionIdAudioTrack != null && n2 != this.keepSessionIdAudioTrack.getAudioSessionId()) {
                this.releaseKeepSessionIdAudioTrack();
            }
            if (this.keepSessionIdAudioTrack == null) {
                this.keepSessionIdAudioTrack = new android.media.AudioTrack(this.streamType, 4000, 4, 2, 2, 0, n2);
            }
        }
        this.audioTrackUtil.reconfigure(this.audioTrack, this.needsPassthroughWorkarounds());
        this.setAudioTrackVolume();
        return n2;
    }

    public boolean isInitialized() {
        if (this.audioTrack != null) {
            return true;
        }
        return false;
    }

    public boolean isPassthroughSupported(String string2) {
        if (this.audioCapabilities != null && this.audioCapabilities.supportsEncoding(AudioTrack.getEncodingForMimeType(string2))) {
            return true;
        }
        return false;
    }

    public void pause() {
        if (this.isInitialized()) {
            this.resetSyncParams();
            this.audioTrackUtil.pause();
        }
    }

    public void play() {
        if (this.isInitialized()) {
            this.resumeSystemTimeUs = System.nanoTime() / 1000;
            this.audioTrack.play();
        }
    }

    public void release() {
        this.reset();
        this.releaseKeepSessionIdAudioTrack();
    }

    public void reset() {
        if (this.isInitialized()) {
            this.submittedPcmBytes = 0;
            this.submittedEncodedFrames = 0;
            this.framesPerEncodedSample = 0;
            this.bufferBytesRemaining = 0;
            this.startMediaTimeState = 0;
            this.latencyUs = 0;
            this.resetSyncParams();
            if (this.audioTrack.getPlayState() == 3) {
                this.audioTrack.pause();
            }
            android.media.AudioTrack audioTrack = this.audioTrack;
            this.audioTrack = null;
            this.audioTrackUtil.reconfigure(null, false);
            this.releasingConditionVariable.close();
            new /* Unavailable Anonymous Inner Class!! */.start();
        }
    }

    public void setPlaybackParams(PlaybackParams playbackParams) {
        this.audioTrackUtil.setPlaybackParameters(playbackParams);
    }

    public void setVolume(float f2) {
        if (this.volume != f2) {
            this.volume = f2;
            this.setAudioTrackVolume();
        }
    }

    public static final class InitializationException
    extends Exception {
        public final int audioTrackState;

        public InitializationException(int n2, int n3, int n4, int n5) {
            super("AudioTrack init failed: " + n2 + ", Config(" + n3 + ", " + n4 + ", " + n5 + ")");
            this.audioTrackState = n2;
        }
    }

    public static final class WriteException
    extends Exception {
        public final int errorCode;

        public WriteException(int n2) {
            super("AudioTrack write failed: " + n2);
            this.errorCode = n2;
        }
    }

}

