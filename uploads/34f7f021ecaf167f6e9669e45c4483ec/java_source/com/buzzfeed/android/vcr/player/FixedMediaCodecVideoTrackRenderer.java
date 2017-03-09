/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.media.MediaCodec
 *  android.media.MediaCrypto
 *  android.media.MediaFormat
 *  android.os.Handler
 */
package com.buzzfeed.android.vcr.player;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import com.buzzfeed.toolkit.util.VersionUtil;
import com.google.android.exoplayer.MediaCodecSelector;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer;
import com.google.android.exoplayer.SampleSource;

class FixedMediaCodecVideoTrackRenderer
extends MediaCodecVideoTrackRenderer {
    private static final int NO_VALUE = -1;

    public FixedMediaCodecVideoTrackRenderer(Context context, SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, int n2, long l2, Handler handler, MediaCodecVideoTrackRenderer.EventListener eventListener, int n3) {
        super(context, sampleSource, mediaCodecSelector, n2, l2, handler, eventListener, n3);
    }

    @TargetApi(value=19)
    private void clearMaximumDimensions(MediaFormat mediaFormat) {
        if (VersionUtil.hasKitKat()) {
            mediaFormat.setInteger("max-height", -1);
            mediaFormat.setInteger("max-width", -1);
        }
    }

    @Override
    protected void configureCodec(MediaCodec mediaCodec, boolean bl, MediaFormat mediaFormat, MediaCrypto mediaCrypto) {
        this.clearMaximumDimensions(mediaFormat);
        super.configureCodec(mediaCodec, bl, mediaFormat, mediaCrypto);
    }
}

