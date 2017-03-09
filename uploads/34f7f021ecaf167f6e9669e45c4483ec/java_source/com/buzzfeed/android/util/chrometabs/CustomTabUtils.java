/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.ActivityNotFoundException
 *  android.content.Context
 *  android.content.Intent
 *  android.content.IntentFilter
 *  android.content.pm.ActivityInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.ResolveInfo
 *  android.content.res.Resources
 *  android.net.Uri
 *  android.text.TextUtils
 */
package com.buzzfeed.android.util.chrometabs;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.net.Uri;
import android.support.customtabs.CustomTabsIntent;
import android.text.TextUtils;
import com.buzzfeed.android.util.BuzzUtils;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.VersionUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CustomTabUtils {
    private static final String ACTION_CUSTOM_TABS_CONNECTION = "android.support.customtabs.action.CustomTabsService";
    static final String BETA_PACKAGE = "com.chrome.beta";
    static final String DEV_PACKAGE = "com.chrome.dev";
    static final String LOCAL_PACKAGE = "com.google.android.apps.chrome";
    static final String STABLE_PACKAGE = "com.android.chrome";
    private static final String TAG = CustomTabUtils.class.getSimpleName();
    private static String sPackageNameToUse;

    /*
     * Enabled aggressive block sorting
     */
    public static String getPackageNameToUse(Context context) {
        if (sPackageNameToUse != null) {
            return sPackageNameToUse;
        }
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse((String)"http://www.example.com"));
        Object object = packageManager.resolveActivity(intent, 0);
        String string2 = null;
        if (object != null) {
            string2 = object.activityInfo.packageName;
        }
        Object object2 = packageManager.queryIntentActivities(intent, 0);
        object = new ArrayList();
        object2 = object2.iterator();
        while (object2.hasNext()) {
            ResolveInfo resolveInfo = (ResolveInfo)object2.next();
            Intent intent2 = new Intent();
            intent2.setAction("android.support.customtabs.action.CustomTabsService");
            intent2.setPackage(resolveInfo.activityInfo.packageName);
            if (packageManager.resolveService(intent2, 0) == null) continue;
            object.add(resolveInfo.activityInfo.packageName);
        }
        if (object.isEmpty()) {
            sPackageNameToUse = null;
            return sPackageNameToUse;
        }
        if (object.size() == 1) {
            sPackageNameToUse = (String)object.get(0);
            return sPackageNameToUse;
        }
        if (!TextUtils.isEmpty((CharSequence)string2) && !CustomTabUtils.hasSpecializedHandlerIntents(context, intent) && object.contains(string2)) {
            sPackageNameToUse = string2;
            return sPackageNameToUse;
        }
        if (object.contains("com.android.chrome")) {
            sPackageNameToUse = "com.android.chrome";
            return sPackageNameToUse;
        }
        if (object.contains("com.chrome.beta")) {
            sPackageNameToUse = "com.chrome.beta";
            return sPackageNameToUse;
        }
        if (object.contains("com.chrome.dev")) {
            sPackageNameToUse = "com.chrome.dev";
            return sPackageNameToUse;
        }
        if (!object.contains("com.google.android.apps.chrome")) return sPackageNameToUse;
        sPackageNameToUse = "com.google.android.apps.chrome";
        return sPackageNameToUse;
    }

    public static String[] getPackages() {
        return new String[]{"", "com.android.chrome", "com.chrome.beta", "com.chrome.dev", "com.google.android.apps.chrome"};
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static boolean hasSpecializedHandlerIntents(Context iterator, Intent intent) {
        String string2 = TAG + ".hasSpecialHandlerIntents";
        try {
            iterator = iterator.getPackageManager().queryIntentActivities(intent, 64);
            if (iterator == null) return false;
            {
                if (iterator.size() == 0) {
                    return false;
                }
                iterator = iterator.iterator();
                while (iterator.hasNext()) {
                    intent = (ResolveInfo)iterator.next();
                    IntentFilter intentFilter = intent.filter;
                    if (intentFilter == null || intentFilter.countDataAuthorities() == 0 || intentFilter.countDataPaths() == 0 || (intent = intent.activityInfo) == null) continue;
                    return true;
                }
                return false;
            }
        }
        catch (RuntimeException var0_1) {
            LogUtil.e(string2, "Runtime exception while getting specialized handlers");
        }
        return false;
    }

    public static void openChromeTab(Activity activity, String string2) {
        CustomTabUtils.openCustomTab(activity, new CustomTabsIntent.Builder().setToolbarColor(activity.getResources().getColor(2131755045)).setShowTitle(false).build(), Uri.parse((String)string2));
    }

    private static void openCustomTab(Activity activity, CustomTabsIntent customTabsIntent, Uri uri) {
        String string2 = TAG + ".openCustomTab";
        String string3 = CustomTabUtils.getPackageNameToUse((Context)activity);
        if (string3 == null || !VersionUtil.hasIceCreamSandwichMR1()) {
            customTabsIntent = BuzzUtils.createViewBuzzIntentExcludingBfApp((Context)activity, uri);
            if (customTabsIntent == null) {
                LogUtil.e(string2, "Cannot find activity to handle intent with url: " + uri.toString());
                return;
            }
            BuzzUtils.startIntent(activity, (Intent)customTabsIntent);
            return;
        }
        customTabsIntent.intent.setPackage(string3);
        try {
            customTabsIntent.launchUrl((Context)activity, uri);
            return;
        }
        catch (ActivityNotFoundException var0_1) {
            LogUtil.e(string2, "cannot open custom tabs with url: " + uri.toString(), (Throwable)var0_1);
            return;
        }
    }
}

