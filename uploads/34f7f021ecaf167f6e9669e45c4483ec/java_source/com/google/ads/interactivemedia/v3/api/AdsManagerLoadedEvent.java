/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.ads.interactivemedia.v3.api.StreamManager
 */
package com.google.ads.interactivemedia.v3.api;

import com.google.ads.interactivemedia.v3.api.AdsManager;
import com.google.ads.interactivemedia.v3.api.StreamManager;

public interface AdsManagerLoadedEvent {
    public AdsManager getAdsManager();

    public StreamManager getStreamManager();

    public Object getUserRequestContext();
}

