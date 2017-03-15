/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads.interactivemedia.v3.api;

import com.google.ads.interactivemedia.v3.api.AdError;

public interface AdErrorEvent {
    public AdError getError();

    public Object getUserRequestContext();

    public static interface AdErrorListener {
        public void onAdError(AdErrorEvent var1);
    }

}

