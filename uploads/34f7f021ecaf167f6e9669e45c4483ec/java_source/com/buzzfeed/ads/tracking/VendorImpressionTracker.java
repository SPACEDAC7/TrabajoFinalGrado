/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.Log
 */
package com.buzzfeed.ads.tracking;

import android.content.Context;
import android.util.Log;
import com.buzzfeed.toolkit.util.LogUtil;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;

public class VendorImpressionTracker {
    public static final String TAG = VendorImpressionTracker.class.getSimpleName();
    private static String sAdUnit;
    private static String sNativeCustomTemplateID;

    static {
        sNativeCustomTemplateID = "10178413";
        sAdUnit = "/6556/bfd.partnerpost.mobile";
    }

    public static void makeRequest(String string2, String string3, Context object) {
        object = new AdLoader.Builder((Context)object, sAdUnit);
        object.forCustomTemplateAd(sNativeCustomTemplateID, new NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener(){

            @Override
            public void onCustomTemplateAdLoaded(NativeCustomTemplateAd nativeCustomTemplateAd) {
                nativeCustomTemplateAd.recordImpression();
                Log.d((String)VendorImpressionTracker.TAG, (String)"Vendor native bpage impression has been recorded");
            }
        }, new NativeCustomTemplateAd.OnCustomClickListener(){

            @Override
            public void onCustomClick(NativeCustomTemplateAd nativeCustomTemplateAd, String string2) {
            }
        });
        object.withAdListener(new AdListener(){

            @Override
            public void onAdFailedToLoad(int n2) {
                LogUtil.d(VendorImpressionTracker.TAG + ".onAdFailedToLoad", "Failed to request vendor impression object: " + n2);
            }

            @Override
            public void onAdLoaded() {
                String string2 = VendorImpressionTracker.TAG + ".onAdLoaded";
                super.onAdLoaded();
                Log.d((String)string2, (String)"Vendor impression ad request returned");
            }
        }).build().loadAd(new PublisherAdRequest.Builder().addCustomTargeting("bid", string2).addCustomTargeting("user", string3).addCustomTargeting("pos", "story-bpage").addCustomTargeting("nsfw", "0").addCustomTargeting("trending", "0").addCustomTargeting("wid", "1").build());
    }

}

