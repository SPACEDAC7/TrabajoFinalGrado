/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads;

import com.google.ads.AdListener;
import com.google.ads.AdRequest;

public interface Ad {
    public boolean isReady();

    public void loadAd(AdRequest var1);

    public void setAdListener(AdListener var1);

    public void stopLoading();
}

