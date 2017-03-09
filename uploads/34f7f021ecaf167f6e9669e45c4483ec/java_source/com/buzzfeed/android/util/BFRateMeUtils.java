/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.ActivityNotFoundException
 *  android.content.Context
 *  android.content.Intent
 *  android.content.pm.PackageManager
 *  android.net.Uri
 */
package com.buzzfeed.android.util;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.buzzfeed.android.util.BuzzUtils;
import com.buzzfeed.toolkit.util.LogUtil;

public class BFRateMeUtils {
    private static final String MARKET_BUZZFEED_URI_AMAZON = "http://www.amazon.com/gp/mas/dl/android?p=com.buzzfeed.android";
    private static final String MARKET_BUZZFEED_URI_GOOGLE = "market://details?id=com.buzzfeed.android";
    private static final String TAG = BuzzUtils.class.getSimpleName();
    private static String marketUri;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static String getMarketUri(Context object) {
        String string2 = TAG + ".getMarketUri";
        if (marketUri == null) {
            synchronized (BFRateMeUtils.class) {
                if (marketUri == null) {
                    String string3 = object.getPackageManager().getInstallerPackageName(object.getPackageName());
                    marketUri = string3 != null && string3.startsWith("com.amazon.venezia") ? "http://www.amazon.com/gp/mas/dl/android?p=com.buzzfeed.android" : "market://details?id=com.buzzfeed.android";
                    StringBuilder stringBuilder = new StringBuilder().append("installationSource: ");
                    object = string3;
                    if (string3 == null) {
                        object = "null";
                    }
                    LogUtil.i(string2, stringBuilder.append((String)object).append(", marketUri: ").append(marketUri).toString());
                }
            }
        }
        return marketUri;
    }

    public static void openRateApplication(Activity activity) {
        String string2 = TAG + ".openRateApplication";
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse((String)BFRateMeUtils.getMarketUri((Context)activity)));
            intent.setFlags(268435456);
            activity.startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException var0_1) {
            LogUtil.e(string2, "Could not find activity for market");
            return;
        }
    }
}

