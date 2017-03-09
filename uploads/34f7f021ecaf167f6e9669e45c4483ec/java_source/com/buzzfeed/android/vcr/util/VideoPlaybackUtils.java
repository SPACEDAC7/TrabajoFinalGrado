/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 */
package com.buzzfeed.android.vcr.util;

import android.text.TextUtils;
import com.buzzfeed.android.vcr.VCRConfig;
import com.buzzfeed.android.vcr.player.VideoSurfacePresenter;
import com.buzzfeed.android.vcr.toolbox.PositionCache;

public final class VideoPlaybackUtils {
    private VideoPlaybackUtils() {
    }

    public static long getLastKnownVideoPosition(VideoSurfacePresenter videoSurfacePresenter, String string2) {
        if (videoSurfacePresenter == null || TextUtils.isEmpty((CharSequence)string2)) {
            return 0;
        }
        boolean bl = videoSurfacePresenter.isPlaying();
        boolean bl2 = TextUtils.equals((CharSequence)string2, (CharSequence)videoSurfacePresenter.getContent());
        if (bl && bl2) {
            return videoSurfacePresenter.getCurrentPosition();
        }
        return VCRConfig.getInstance().getGlobalPositionCache().getPosition(string2);
    }

    public static ProgressMarker getProgressMarkerForPosition(long l2, long l3) {
        if (l3 <= 0) {
            return ProgressMarker.START;
        }
        if ((l2 = 100 * l2 / l3) < 25) {
            return ProgressMarker.START;
        }
        if (l2 >= 25 && l2 < 50) {
            return ProgressMarker.FIRST_QUARTILE;
        }
        if (l2 >= 50 && l2 < 75) {
            return ProgressMarker.MIDPOINT;
        }
        if (l2 >= 75 && l2 < 100) {
            return ProgressMarker.THIRD_QUARTILE;
        }
        return ProgressMarker.FINISHED;
    }

    public static enum ProgressMarker {
        START(0),
        FIRST_QUARTILE(25),
        MIDPOINT(50),
        THIRD_QUARTILE(75),
        FINISHED(100);
        
        public final int percentage;

        private ProgressMarker(int n3) {
            this.percentage = n3;
        }
    }

}

