/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.ads.interactivemedia.v3.api.UiElement
 */
package com.google.ads.interactivemedia.v3.api;

import com.google.ads.interactivemedia.v3.api.UiElement;
import java.util.List;
import java.util.Set;

public interface AdsRenderingSettings {
    public int getBitrateKbps();

    public boolean getEnablePreloading();

    public List<String> getMimeTypes();

    public boolean isRenderCompanions();

    public void setBitrateKbps(int var1);

    public void setEnablePreloading(boolean var1);

    public void setMimeTypes(List<String> var1);

    public void setPlayAdsAfterTime(double var1);

    public void setRenderCompanions(boolean var1);

    public void setUiElements(Set<UiElement> var1);
}

