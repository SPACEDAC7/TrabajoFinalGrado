/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads.interactivemedia.v3.api.player;

import com.google.ads.interactivemedia.v3.api.player.AdProgressProvider;

public interface VideoAdPlayer
extends AdProgressProvider {
    public void addCallback(VideoAdPlayerCallback var1);

    public void loadAd(String var1);

    public void pauseAd();

    public void playAd();

    public void removeCallback(VideoAdPlayerCallback var1);

    public void resumeAd();

    public void stopAd();

    public static interface VideoAdPlayerCallback {
        public void onEnded();

        public void onError();

        public void onPause();

        public void onPlay();

        public void onResume();

        public void onVolumeChanged(int var1);
    }

}

