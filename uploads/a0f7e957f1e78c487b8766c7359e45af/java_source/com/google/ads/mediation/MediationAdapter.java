/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads.mediation;

import com.google.ads.mediation.MediationServerParameters;

public interface MediationAdapter<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS extends MediationServerParameters> {
    public void destroy();

    public Class<ADDITIONAL_PARAMETERS> getAdditionalParametersType();

    public Class<SERVER_PARAMETERS> getServerParametersType();
}

