/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.android.gms.ads.formats.NativeAd
 *  com.google.android.gms.ads.formats.NativeAd$Image
 */
package com.google.android.gms.ads.formats;

import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;

public interface NativeCustomTemplateAd {
    public List<String> getAvailableAssetNames();

    public String getCustomTemplateId();

    public NativeAd.Image getImage(String var1);

    public CharSequence getText(String var1);

    public void performClick(String var1);

    public void recordImpression();

    public static interface OnCustomClickListener {
        public void onCustomClick(NativeCustomTemplateAd var1, String var2);
    }

    public static interface OnCustomTemplateAdLoadedListener {
        public void onCustomTemplateAdLoaded(NativeCustomTemplateAd var1);
    }

}

