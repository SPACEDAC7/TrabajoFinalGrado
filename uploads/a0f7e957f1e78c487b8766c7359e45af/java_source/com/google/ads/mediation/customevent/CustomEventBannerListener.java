/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 */
package com.google.ads.mediation.customevent;

import android.view.View;
import com.google.ads.mediation.customevent.CustomEventListener;

public interface CustomEventBannerListener
extends CustomEventListener {
    public void onClick();

    public void onReceivedAd(View var1);
}

