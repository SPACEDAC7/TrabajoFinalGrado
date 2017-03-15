/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads.interactivemedia.v3.api;

import com.google.ads.interactivemedia.v3.api.Ad;
import java.util.Map;

public interface AdEvent {
    public Ad getAd();

    public Map<String, String> getAdData();

    public AdEventType getType();

    public static interface AdEventListener {
        public void onAdEvent(AdEvent var1);
    }

    public static enum AdEventType {
        ALL_ADS_COMPLETED,
        CLICKED,
        COMPLETED,
        CUEPOINTS_CHANGED,
        CONTENT_PAUSE_REQUESTED,
        CONTENT_RESUME_REQUESTED,
        FIRST_QUARTILE,
        LOG,
        AD_BREAK_READY,
        MIDPOINT,
        PAUSED,
        RESUMED,
        SKIPPED,
        STARTED,
        TAPPED,
        ICON_TAPPED,
        THIRD_QUARTILE,
        LOADED,
        AD_PROGRESS,
        AD_BREAK_STARTED,
        AD_BREAK_ENDED;
        

        private AdEventType() {
        }
    }

}

