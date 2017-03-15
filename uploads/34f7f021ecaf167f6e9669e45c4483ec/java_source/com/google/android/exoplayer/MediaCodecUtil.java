/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.media.MediaCodecInfo
 *  android.media.MediaCodecInfo$CodecCapabilities
 *  android.media.MediaCodecInfo$CodecProfileLevel
 *  android.media.MediaCodecInfo$VideoCapabilities
 *  android.util.Log
 *  com.google.android.exoplayer.MediaCodecUtil$1
 *  com.google.android.exoplayer.MediaCodecUtil$CodecKey
 *  com.google.android.exoplayer.MediaCodecUtil$MediaCodecListCompat
 *  com.google.android.exoplayer.MediaCodecUtil$MediaCodecListCompatV16
 *  com.google.android.exoplayer.MediaCodecUtil$MediaCodecListCompatV21
 */
package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.util.Log;
import com.google.android.exoplayer.DecoderInfo;
import com.google.android.exoplayer.MediaCodecUtil;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@TargetApi(value=16)
public final class MediaCodecUtil {
    private static final DecoderInfo PASSTHROUGH_DECODER_INFO = new DecoderInfo("OMX.google.raw.decoder", null);
    private static final String TAG = "MediaCodecUtil";
    private static final Map<CodecKey, List<DecoderInfo>> decoderInfosCache = new HashMap<CodecKey, List<DecoderInfo>>();
    private static int maxH264DecodableFrameSize = -1;

    private MediaCodecUtil() {
    }

    private static int avcLevelToMaxFrameSize(int n2) {
        int n3 = 25344;
        switch (n2) {
            default: {
                n3 = -1;
            }
            case 1: 
            case 2: {
                return n3;
            }
            case 8: {
                return 101376;
            }
            case 16: {
                return 101376;
            }
            case 32: {
                return 101376;
            }
            case 64: {
                return 202752;
            }
            case 128: {
                return 414720;
            }
            case 256: {
                return 414720;
            }
            case 512: {
                return 921600;
            }
            case 1024: {
                return 1310720;
            }
            case 2048: {
                return 2097152;
            }
            case 4096: {
                return 2097152;
            }
            case 8192: {
                return 2228224;
            }
            case 16384: {
                return 5652480;
            }
            case 32768: 
        }
        return 9437184;
    }

    public static DecoderInfo getDecoderInfo(String object, boolean bl) throws DecoderQueryException {
        if ((object = MediaCodecUtil.getDecoderInfos((String)object, bl)).isEmpty()) {
            return null;
        }
        return (DecoderInfo)object.get(0);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static List<DecoderInfo> getDecoderInfos(String list, boolean bl) throws DecoderQueryException {
        synchronized (MediaCodecUtil.class) {
            MediaCodecListCompatV21 mediaCodecListCompatV21;
            void var1_1;
            CodecKey codecKey = new CodecKey(list, (boolean)var1_1);
            MediaCodecListCompatV21 mediaCodecListCompatV212 = decoderInfosCache.get((Object)codecKey);
            if (mediaCodecListCompatV212 != null) {
                return mediaCodecListCompatV212;
            }
            mediaCodecListCompatV212 = Util.SDK_INT >= 21 ? new MediaCodecListCompatV21((boolean)var1_1) : new MediaCodecListCompatV16(null);
            mediaCodecListCompatV212 = mediaCodecListCompatV21 = MediaCodecUtil.getDecoderInfosInternal(codecKey, (MediaCodecListCompat)mediaCodecListCompatV212);
            if (var1_1 != false) {
                mediaCodecListCompatV212 = mediaCodecListCompatV21;
                if (mediaCodecListCompatV21.isEmpty()) {
                    mediaCodecListCompatV212 = mediaCodecListCompatV21;
                    if (21 <= Util.SDK_INT) {
                        mediaCodecListCompatV212 = mediaCodecListCompatV21;
                        if (Util.SDK_INT <= 23) {
                            mediaCodecListCompatV212 = mediaCodecListCompatV21 = MediaCodecUtil.getDecoderInfosInternal(codecKey, (MediaCodecListCompat)new MediaCodecListCompatV16(null));
                            if (!mediaCodecListCompatV21.isEmpty()) {
                                Log.w((String)"MediaCodecUtil", (String)("MediaCodecList API didn't list secure decoder for: " + list + ". Assuming: " + mediaCodecListCompatV21.get((int)0).name));
                                mediaCodecListCompatV212 = mediaCodecListCompatV21;
                            }
                        }
                    }
                }
            }
            list = Collections.unmodifiableList(mediaCodecListCompatV212);
            decoderInfosCache.put(codecKey, list);
            return list;
        }
    }

    /*
     * Exception decompiling
     */
    private static List<DecoderInfo> getDecoderInfosInternal(CodecKey var0, MediaCodecListCompat var1_2) throws DecoderQueryException {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // java.lang.IllegalStateException: Backjump on non jumping statement [] lbl38 : TryStatement: try { 4[TRYBLOCK]

        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Cleaner$1.call(Cleaner.java:44)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Cleaner$1.call(Cleaner.java:22)
        // org.benf.cfr.reader.util.graph.GraphVisitorDFS.process(GraphVisitorDFS.java:68)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Cleaner.removeUnreachableCode(Cleaner.java:54)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.RemoveDeterministicJumps.apply(RemoveDeterministicJumps.java:35)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:519)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doJar(Main.java:129)
        // org.benf.cfr.reader.Main.main(Main.java:181)
        throw new IllegalStateException("Decompilation failed");
    }

    public static DecoderInfo getPassthroughDecoderInfo() {
        return PASSTHROUGH_DECODER_INFO;
    }

    @TargetApi(value=21)
    private static MediaCodecInfo.VideoCapabilities getVideoCapabilitiesV21(String object, boolean bl) throws DecoderQueryException {
        if ((object = MediaCodecUtil.getDecoderInfo((String)object, bl)) == null) {
            return null;
        }
        return object.capabilities.getVideoCapabilities();
    }

    /*
     * Enabled aggressive block sorting
     */
    private static boolean isCodecUsableDecoder(MediaCodecInfo mediaCodecInfo, String string2, boolean bl) {
        if (mediaCodecInfo.isEncoder() || !bl && string2.endsWith(".secure") || Util.SDK_INT < 21 && ("CIPAACDecoder".equals(string2) || "CIPMP3Decoder".equals(string2) || "CIPVorbisDecoder".equals(string2) || "AACDecoder".equals(string2) || "MP3Decoder".equals(string2)) || Util.SDK_INT < 18 && "OMX.SEC.MP3.Decoder".equals(string2) || Util.SDK_INT < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(string2) && "a70".equals(Util.DEVICE) || Util.SDK_INT == 16 && Util.DEVICE != null && "OMX.qcom.audio.decoder.mp3".equals(string2) && ("dlxu".equals(Util.DEVICE) || "protou".equals(Util.DEVICE) || "ville".equals(Util.DEVICE) || "villeplus".equals(Util.DEVICE) || "villec2".equals(Util.DEVICE) || Util.DEVICE.startsWith("gee") || "C6602".equals(Util.DEVICE) || "C6603".equals(Util.DEVICE) || "C6606".equals(Util.DEVICE) || "C6616".equals(Util.DEVICE) || "L36h".equals(Util.DEVICE) || "SO-02E".equals(Util.DEVICE)) || Util.SDK_INT == 16 && "OMX.qcom.audio.decoder.aac".equals(string2) && ("C1504".equals(Util.DEVICE) || "C1505".equals(Util.DEVICE) || "C1604".equals(Util.DEVICE) || "C1605".equals(Util.DEVICE)) || Util.SDK_INT <= 19 && Util.DEVICE != null && (Util.DEVICE.startsWith("d2") || Util.DEVICE.startsWith("serrano") || Util.DEVICE.startsWith("jflte") || Util.DEVICE.startsWith("santos")) && "samsung".equals(Util.MANUFACTURER) && string2.equals("OMX.SEC.vp8.dec") || Util.SDK_INT <= 19 && Util.DEVICE != null && Util.DEVICE.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(string2)) {
            return false;
        }
        return true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Deprecated
    public static boolean isH264ProfileSupported(int n2, int n3) throws DecoderQueryException {
        MediaCodecInfo.CodecProfileLevel[] arrcodecProfileLevel = MediaCodecUtil.getDecoderInfo("video/avc", false);
        if (arrcodecProfileLevel == null) {
            return false;
        }
        arrcodecProfileLevel = arrcodecProfileLevel.capabilities.profileLevels;
        int n4 = arrcodecProfileLevel.length;
        int n5 = 0;
        while (n5 < n4) {
            MediaCodecInfo.CodecProfileLevel codecProfileLevel = arrcodecProfileLevel[n5];
            if (codecProfileLevel.profile == n2 && codecProfileLevel.level >= n3) {
                return true;
            }
            ++n5;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @TargetApi(value=21)
    public static boolean isSizeAndRateSupportedV21(String string2, boolean bl, int n2, int n3, double d2) throws DecoderQueryException {
        boolean bl2 = Util.SDK_INT >= 21;
        Assertions.checkState(bl2);
        string2 = MediaCodecUtil.getVideoCapabilitiesV21(string2, bl);
        if (string2 != null && string2.areSizeAndRateSupported(n2, n3, d2)) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @TargetApi(value=21)
    public static boolean isSizeSupportedV21(String string2, boolean bl, int n2, int n3) throws DecoderQueryException {
        boolean bl2 = Util.SDK_INT >= 21;
        Assertions.checkState(bl2);
        string2 = MediaCodecUtil.getVideoCapabilitiesV21(string2, bl);
        if (string2 != null && string2.isSizeSupported(n2, n3)) {
            return true;
        }
        return false;
    }

    public static int maxH264DecodableFrameSize() throws DecoderQueryException {
        int n2 = 0;
        if (maxH264DecodableFrameSize == -1) {
            int n3 = 0;
            int n4 = 0;
            MediaCodecInfo.CodecProfileLevel[] arrcodecProfileLevel = MediaCodecUtil.getDecoderInfo("video/avc", false);
            if (arrcodecProfileLevel != null) {
                arrcodecProfileLevel = arrcodecProfileLevel.capabilities.profileLevels;
                int n5 = arrcodecProfileLevel.length;
                for (n3 = n2; n3 < n5; ++n3) {
                    n4 = Math.max(MediaCodecUtil.avcLevelToMaxFrameSize(arrcodecProfileLevel[n3].level), n4);
                }
                n3 = Math.max(n4, 172800);
            }
            maxH264DecodableFrameSize = n3;
        }
        return maxH264DecodableFrameSize;
    }

    public static void warmCodec(String string2, boolean bl) {
        try {
            MediaCodecUtil.getDecoderInfos(string2, bl);
            return;
        }
        catch (DecoderQueryException var0_1) {
            Log.e((String)"MediaCodecUtil", (String)"Codec warming failed", (Throwable)var0_1);
            return;
        }
    }

    public static class DecoderQueryException
    extends IOException {
        private DecoderQueryException(Throwable throwable) {
            super("Failed to query underlying media codecs", throwable);
        }
    }

}

