/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads.interactivemedia.v3.api;

import com.google.ads.interactivemedia.v3.api.BaseDisplayContainer;
import com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer;

public interface AdDisplayContainer
extends BaseDisplayContainer {
    public VideoAdPlayer getPlayer();

    public void setPlayer(VideoAdPlayer var1);
}

