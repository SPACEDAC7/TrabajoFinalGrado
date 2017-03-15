/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads.mediation.admob;

import com.google.ads.mediation.MediationServerParameters;

public final class AdMobAdapterServerParameters
extends MediationServerParameters {
    @MediationServerParameters.Parameter(name="pubid")
    public String adUnitId;
    @MediationServerParameters.Parameter(name="mad_hac", required=0)
    public String allowHouseAds = null;
}

