/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads.interactivemedia.v3.api;

import com.google.ads.interactivemedia.v3.api.Ad;
import com.google.ads.interactivemedia.v3.api.AdErrorEvent;
import com.google.ads.interactivemedia.v3.api.AdEvent;
import com.google.ads.interactivemedia.v3.api.AdsRenderingSettings;
import com.google.ads.interactivemedia.v3.api.player.AdProgressProvider;

public interface BaseManager
extends AdProgressProvider {
    public void addAdErrorListener(AdErrorEvent.AdErrorListener var1);

    public void addAdEventListener(AdEvent.AdEventListener var1);

    public void destroy();

    public Ad getCurrentAd();

    public void init();

    public void init(AdsRenderingSettings var1);

    public boolean isCustomPlaybackUsed();

    public void removeAdErrorListener(AdErrorEvent.AdErrorListener var1);

    public void removeAdEventListener(AdEvent.AdEventListener var1);
}

