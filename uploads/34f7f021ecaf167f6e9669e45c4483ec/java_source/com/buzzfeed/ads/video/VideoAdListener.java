/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.ads.video;

import com.buzzfeed.ads.model.VideoAd;

public interface VideoAdListener {
    public void onError();

    public void onReady(VideoAd var1);
}

