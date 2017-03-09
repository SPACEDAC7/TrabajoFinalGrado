/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.android.vcr.player;

import android.content.Context;
import com.buzzfeed.toolkit.util.LogUtil;
import com.google.android.exoplayer.hls.DefaultHlsTrackSelector;
import com.google.android.exoplayer.hls.HlsMasterPlaylist;
import com.google.android.exoplayer.hls.HlsTrackSelector;
import com.google.android.exoplayer.hls.Variant;
import java.io.IOException;

class HLSFixedVariantTrackSelector
implements HlsTrackSelector {
    private static final String TAG = LogUtil.makeLogTag(HLSFixedVariantTrackSelector.class);
    private final DefaultHlsTrackSelector mDefaultHlsTrackSelector;

    HLSFixedVariantTrackSelector(Context context) {
        this.mDefaultHlsTrackSelector = DefaultHlsTrackSelector.newDefaultInstance(context);
    }

    @Override
    public void selectTracks(HlsMasterPlaylist hlsMasterPlaylist, final HlsTrackSelector.Output output) throws IOException {
        this.mDefaultHlsTrackSelector.selectTracks(hlsMasterPlaylist, new HlsTrackSelector.Output(){

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void adaptiveTrack(HlsMasterPlaylist hlsMasterPlaylist, Variant[] arrvariant) {
                Variant variant = arrvariant.length > 0 ? arrvariant[0] : null;
                if (variant != null) {
                    output.adaptiveTrack(hlsMasterPlaylist, new Variant[]{variant});
                    return;
                }
                LogUtil.e(TAG, "Unable to select initial variant.");
                output.adaptiveTrack(hlsMasterPlaylist, arrvariant);
            }

            @Override
            public void fixedTrack(HlsMasterPlaylist hlsMasterPlaylist, Variant variant) {
                output.fixedTrack(hlsMasterPlaylist, variant);
            }
        });
    }

}

