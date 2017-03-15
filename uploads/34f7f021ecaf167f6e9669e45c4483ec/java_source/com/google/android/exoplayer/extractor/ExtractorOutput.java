/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.android.exoplayer.extractor.SeekMap
 *  com.google.android.exoplayer.extractor.TrackOutput
 */
package com.google.android.exoplayer.extractor;

import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.extractor.TrackOutput;

public interface ExtractorOutput {
    public void drmInitData(DrmInitData var1);

    public void endTracks();

    public void seekMap(SeekMap var1);

    public TrackOutput track(int var1);
}

