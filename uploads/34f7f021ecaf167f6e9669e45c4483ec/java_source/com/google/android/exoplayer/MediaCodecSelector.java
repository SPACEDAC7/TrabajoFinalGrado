/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.android.exoplayer.MediaCodecSelector$1
 */
package com.google.android.exoplayer;

import com.google.android.exoplayer.DecoderInfo;
import com.google.android.exoplayer.MediaCodecSelector;
import com.google.android.exoplayer.MediaCodecUtil;

public interface MediaCodecSelector {
    public static final MediaCodecSelector DEFAULT = new /* Unavailable Anonymous Inner Class!! */;

    public DecoderInfo getDecoderInfo(String var1, boolean var2) throws MediaCodecUtil.DecoderQueryException;

    public DecoderInfo getPassthroughDecoderInfo() throws MediaCodecUtil.DecoderQueryException;
}

