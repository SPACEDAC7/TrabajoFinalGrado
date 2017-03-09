/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.android.vcr.player;

import android.content.Context;
import com.buzzfeed.toolkit.util.LogUtil;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.hls.DefaultHlsTrackSelector;
import com.google.android.exoplayer.hls.HlsMasterPlaylist;
import com.google.android.exoplayer.hls.HlsTrackSelector;
import com.google.android.exoplayer.hls.Variant;
import java.io.IOException;
import java.util.ArrayList;

class HLSPeakBitrateTrackSelector
implements HlsTrackSelector {
    private static final String TAG = LogUtil.makeLogTag(HLSPeakBitrateTrackSelector.class);
    private final DefaultHlsTrackSelector mDefaultHlsTrackSelector;
    private final long mPeakBitrate;

    HLSPeakBitrateTrackSelector(Context context, long l2) {
        this.mPeakBitrate = l2;
        this.mDefaultHlsTrackSelector = DefaultHlsTrackSelector.newDefaultInstance(context);
    }

    @Override
    public void selectTracks(HlsMasterPlaylist hlsMasterPlaylist, final HlsTrackSelector.Output output) throws IOException {
        this.mDefaultHlsTrackSelector.selectTracks(hlsMasterPlaylist, new HlsTrackSelector.Output(){

            @Override
            public void adaptiveTrack(HlsMasterPlaylist hlsMasterPlaylist, Variant[] arrvariant) {
                ArrayList<Variant> arrayList = new ArrayList<Variant>();
                Variant variant = null;
                int n2 = arrvariant.length;
                for (int i2 = 0; i2 < n2; ++i2) {
                    Variant variant2;
                    block6 : {
                        Variant variant3 = arrvariant[i2];
                        if ((long)variant3.format.bitrate <= HLSPeakBitrateTrackSelector.this.mPeakBitrate) {
                            arrayList.add(variant3);
                        }
                        if (variant != null) {
                            variant2 = variant;
                            if (variant3.format.bitrate >= variant.format.bitrate) break block6;
                        }
                        variant2 = variant3;
                    }
                    variant = variant2;
                }
                if (!arrayList.isEmpty()) {
                    arrvariant = new Variant[arrayList.size()];
                    arrayList.toArray(arrvariant);
                    output.adaptiveTrack(hlsMasterPlaylist, arrvariant);
                    return;
                }
                if (variant != null) {
                    LogUtil.w(TAG, "All variants are higher than the peak bitrate. bitrate=" + HLSPeakBitrateTrackSelector.this.mPeakBitrate);
                    output.adaptiveTrack(hlsMasterPlaylist, new Variant[]{variant});
                    return;
                }
                LogUtil.e(TAG, "Unable to select tracks below the peak bitrate. bitrate=" + HLSPeakBitrateTrackSelector.this.mPeakBitrate);
                output.adaptiveTrack(hlsMasterPlaylist, arrvariant);
            }

            @Override
            public void fixedTrack(HlsMasterPlaylist hlsMasterPlaylist, Variant variant) {
                output.fixedTrack(hlsMasterPlaylist, variant);
            }
        });
    }

}

