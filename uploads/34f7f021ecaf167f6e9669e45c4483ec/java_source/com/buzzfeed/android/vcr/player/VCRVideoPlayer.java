/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.Surface
 */
package com.buzzfeed.android.vcr.player;

import android.support.annotation.FloatRange;
import android.view.Surface;

public interface VCRVideoPlayer {
    public long getBufferedPercentage();

    public long getCurrentPosition();

    public long getDuration();

    public int getPlaybackState();

    public void prepare();

    public void release();

    public void seekTo(long var1);

    public void setAudioMuted(boolean var1);

    public void setAudioVolume(@FloatRange(from=0.0, to=1.0) float var1);

    public void setPlayWhenReady(boolean var1);

    public void setSurface(Surface var1);

    public void stop();
}

