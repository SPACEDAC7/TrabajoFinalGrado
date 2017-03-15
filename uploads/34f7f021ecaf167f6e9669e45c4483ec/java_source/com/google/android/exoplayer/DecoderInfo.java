/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.media.MediaCodecInfo
 *  android.media.MediaCodecInfo$CodecCapabilities
 */
package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import com.google.android.exoplayer.util.Util;

@TargetApi(value=16)
public final class DecoderInfo {
    public final boolean adaptive;
    public final MediaCodecInfo.CodecCapabilities capabilities;
    public final String name;

    DecoderInfo(String string2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        this.name = string2;
        this.capabilities = codecCapabilities;
        this.adaptive = DecoderInfo.isAdaptive(codecCapabilities);
    }

    private static boolean isAdaptive(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        if (codecCapabilities != null && Util.SDK_INT >= 19 && DecoderInfo.isAdaptiveV19(codecCapabilities)) {
            return true;
        }
        return false;
    }

    @TargetApi(value=19)
    private static boolean isAdaptiveV19(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }
}

