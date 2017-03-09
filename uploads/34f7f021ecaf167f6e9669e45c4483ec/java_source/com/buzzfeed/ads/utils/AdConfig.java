/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.ads.utils;

import com.buzzfeed.toolkit.util.LogUtil;

public class AdConfig {
    private static final String TAG = AdConfig.class.getSimpleName();
    public static final int TEST_AD_TYPE_ADOPS_GIRAFFE = 3;
    public static final int TEST_AD_TYPE_DEBUG = 1;
    public static final int TEST_AD_TYPE_GIRAFFE = 2;
    public static final int TEST_AD_TYPE_NONE = 0;
    private static String advertisingId;
    private static boolean optOutInterestAds;
    private static int testAdType;

    public static String getAdvertisingId() {
        return advertisingId;
    }

    public static int getTestAdType() {
        return testAdType;
    }

    public static boolean isOptOutInterestAds() {
        return optOutInterestAds;
    }

    public static void setAdvertisingId(String string2) {
        String string3 = TAG + ".setAdvertisingId";
        advertisingId = string2;
        LogUtil.i(string3, "setAdvertisingId: " + advertisingId);
    }

    public static void setOptOutInterestAds(boolean bl) {
        String string2 = TAG + ".setOptOutInterestAds";
        optOutInterestAds = bl;
        LogUtil.i(string2, "setOptOutInterestAds: " + optOutInterestAds);
    }

    public static void setTestAdType(int n2) {
        String string2 = TAG + ".setTestAdType";
        testAdType = n2;
        LogUtil.i(string2, "Ad testing set to: " + n2);
    }
}

