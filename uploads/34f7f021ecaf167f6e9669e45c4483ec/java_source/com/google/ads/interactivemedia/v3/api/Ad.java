/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.ads.interactivemedia.v3.api.AdPodInfo
 *  com.google.ads.interactivemedia.v3.api.UiElement
 */
package com.google.ads.interactivemedia.v3.api;

import com.google.ads.interactivemedia.v3.api.AdPodInfo;
import com.google.ads.interactivemedia.v3.api.UiElement;
import java.util.Set;

public interface Ad {
    public String getAdId();

    public AdPodInfo getAdPodInfo();

    public String getAdSystem();

    public String[] getAdWrapperIds();

    public String[] getAdWrapperSystems();

    public String getContentType();

    public String getDescription();

    public double getDuration();

    public int getHeight();

    public String getTitle();

    public String getTraffickingParameters();

    public Set<UiElement> getUiElements();

    public int getWidth();

    public boolean isLinear();

    public boolean isSkippable();
}

