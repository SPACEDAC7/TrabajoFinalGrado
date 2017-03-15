/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads;

import com.google.ads.Ad;
import com.google.ads.AdRequest;

public interface AdListener {
    public void onDismissScreen(Ad var1);

    public void onFailedToReceiveAd(Ad var1, AdRequest.ErrorCode var2);

    public void onLeaveApplication(Ad var1);

    public void onPresentScreen(Ad var1);

    public void onReceiveAd(Ad var1);
}

