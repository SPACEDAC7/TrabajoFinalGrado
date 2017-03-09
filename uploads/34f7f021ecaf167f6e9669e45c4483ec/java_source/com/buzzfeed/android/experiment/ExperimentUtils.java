/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.experiment;

public class ExperimentUtils {
    private static final String ANALYTICS_CATEGORY = "ABTestRegister";

    public static String getAnalyticsAction(String string2) {
        return "ab:" + string2;
    }

    public static String getAnalyticsCategory() {
        return "ABTestRegister";
    }

    public static String getAnalyticsLabel(String string2, String string3) {
        return "ab:" + string2 + ":" + string3;
    }
}

