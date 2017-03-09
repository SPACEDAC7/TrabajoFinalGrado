/*
 * Decompiled with CFR 0_115.
 */
package com.google.android.exoplayer.hls;

import com.google.android.exoplayer.hls.HlsMasterPlaylist;
import com.google.android.exoplayer.hls.Variant;
import java.io.IOException;

public interface HlsTrackSelector {
    public void selectTracks(HlsMasterPlaylist var1, Output var2) throws IOException;

    public static interface Output {
        public void adaptiveTrack(HlsMasterPlaylist var1, Variant[] var2);

        public void fixedTrack(HlsMasterPlaylist var1, Variant var2);
    }

}

