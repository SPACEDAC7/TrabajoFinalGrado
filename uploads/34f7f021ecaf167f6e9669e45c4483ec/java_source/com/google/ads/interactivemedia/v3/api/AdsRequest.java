/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.ads.interactivemedia.v3.api.player.ContentProgressProvider
 */
package com.google.ads.interactivemedia.v3.api;

import com.google.ads.interactivemedia.v3.api.AdDisplayContainer;
import com.google.ads.interactivemedia.v3.api.player.ContentProgressProvider;
import java.util.Map;

public interface AdsRequest {
    public AdDisplayContainer getAdDisplayContainer();

    public String getAdTagUrl();

    public String getAdsResponse();

    public ContentProgressProvider getContentProgressProvider();

    public String getExtraParameter(String var1);

    public Map<String, String> getExtraParameters();

    public Object getUserRequestContext();

    public void setAdDisplayContainer(AdDisplayContainer var1);

    public void setAdTagUrl(String var1);

    public void setAdWillAutoPlay(boolean var1);

    public void setAdsResponse(String var1);

    public void setContentProgressProvider(ContentProgressProvider var1);

    public void setExtraParameter(String var1, String var2);

    public void setUserRequestContext(Object var1);
}

