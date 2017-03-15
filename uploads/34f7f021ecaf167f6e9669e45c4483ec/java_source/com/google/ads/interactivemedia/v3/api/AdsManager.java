/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads.interactivemedia.v3.api;

import com.google.ads.interactivemedia.v3.api.BaseManager;
import java.util.List;

public interface AdsManager
extends BaseManager {
    public void discardAdBreak();

    public List<Float> getAdCuePoints();

    public void pause();

    public void resume();

    public void skip();

    public void start();
}

