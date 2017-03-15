/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.ads.interactivemedia.v3.api.StreamRequest
 */
package com.google.ads.interactivemedia.v3.api;

import com.google.ads.interactivemedia.v3.api.AdErrorEvent;
import com.google.ads.interactivemedia.v3.api.AdsManagerLoadedEvent;
import com.google.ads.interactivemedia.v3.api.AdsRequest;
import com.google.ads.interactivemedia.v3.api.ImaSdkSettings;
import com.google.ads.interactivemedia.v3.api.StreamRequest;

public interface AdsLoader {
    public void addAdErrorListener(AdErrorEvent.AdErrorListener var1);

    public void addAdsLoadedListener(AdsLoadedListener var1);

    public void contentComplete();

    public ImaSdkSettings getSettings();

    public void removeAdErrorListener(AdErrorEvent.AdErrorListener var1);

    public void removeAdsLoadedListener(AdsLoadedListener var1);

    public void requestAds(AdsRequest var1);

    public String requestStream(StreamRequest var1);

    public static interface AdsLoadedListener {
        public void onAdsManagerLoaded(AdsManagerLoadedEvent var1);
    }

}

