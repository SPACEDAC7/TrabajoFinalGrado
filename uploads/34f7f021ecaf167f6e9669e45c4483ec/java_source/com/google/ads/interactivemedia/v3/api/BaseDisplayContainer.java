/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.ViewGroup
 *  com.google.ads.interactivemedia.v3.api.CompanionAdSlot
 */
package com.google.ads.interactivemedia.v3.api;

import android.view.ViewGroup;
import com.google.ads.interactivemedia.v3.api.CompanionAdSlot;
import java.util.Collection;

public interface BaseDisplayContainer {
    public ViewGroup getAdContainer();

    public Collection<CompanionAdSlot> getCompanionSlots();

    public void setAdContainer(ViewGroup var1);

    public void setCompanionSlots(Collection<CompanionAdSlot> var1);
}

