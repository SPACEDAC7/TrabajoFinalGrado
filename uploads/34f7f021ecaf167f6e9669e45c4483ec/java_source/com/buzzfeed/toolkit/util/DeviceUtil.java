/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.BroadcastReceiver
 *  android.content.Context
 *  android.content.Intent
 *  android.content.IntentFilter
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.content.pm.PackageInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.PackageManager$NameNotFoundException
 *  android.content.res.Configuration
 *  android.content.res.Resources
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.preference.PreferenceManager
 *  android.telephony.TelephonyManager
 *  android.util.DisplayMetrics
 *  android.view.Display
 *  android.view.WindowManager
 */
package com.buzzfeed.toolkit.util;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.preference.PreferenceManager;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.buzzfeed.toolkit.R;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.NetworkUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.VersionUtil;
import java.util.Locale;
import java.util.TimeZone;

public class DeviceUtil {
    private static final boolean IS_AMAZON_DEVICE;
    public static final String SETTINGS_KEY_HAS_NAVBAR = "has_navigation_bar";
    private static final String TAG;

    static {
        TAG = DeviceUtil.class.getSimpleName();
        IS_AMAZON_DEVICE = Build.MANUFACTURER.equals("Amazon");
    }

    /*
     * Enabled aggressive block sorting
     */
    public static String buildFeedbackInfo(Context object) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("\n\n\n\n\nDevice Name: ").append(DeviceUtil.getDeviceName());
        stringBuffer.append("\nOS: Android ").append(DeviceUtil.getOSVersion());
        stringBuffer.append("\nApp Version: ").append(DeviceUtil.getVersionCode((Context)object));
        stringBuffer.append("\nCarrier: ").append(DeviceUtil.getCarrier((Context)object));
        if (NetworkUtil.isConnectedToWifi((Context)object)) {
            stringBuffer.append("\nNetwork Status: Wifi");
        } else if (NetworkUtil.isConnectedToNetwork((Context)object)) {
            stringBuffer.append("\nNetwork Status: Data Network");
        } else {
            stringBuffer.append("\nNetwork Status: Neither Wifi nor Data Network");
        }
        object = object.getResources().getConfiguration().locale;
        stringBuffer.append("\nDevice Language: ").append(object.getDisplayName());
        stringBuffer.append("\nDevice Country: ").append(object.getDisplayCountry());
        return stringBuffer.toString();
    }

    public static float getBatteryPercent(Context context) {
        context = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int n2 = context.getIntExtra("level", -1);
        int n3 = context.getIntExtra("scale", -1);
        return (float)n2 / (float)n3 * 100.0f;
    }

    public static String getCarrier(Context context) {
        return ((TelephonyManager)context.getSystemService("phone")).getNetworkOperatorName();
    }

    public static String getCountry(Context context) {
        return context.getResources().getConfiguration().locale.getCountry().toLowerCase();
    }

    public static String getDeviceName() {
        String string2 = Build.MODEL;
        String string3 = Build.MANUFACTURER;
        if (string2.startsWith(string3)) {
            return string2;
        }
        return string3 + " " + string2;
    }

    public static String getLanguage(Context context) {
        return context.getResources().getConfiguration().locale.getLanguage().toLowerCase();
    }

    public static String getOSVersion() {
        return Build.VERSION.RELEASE;
    }

    public static float getScreenDensityDpi(Context context) {
        return context.getResources().getDisplayMetrics().densityDpi;
    }

    public static int getVersionCode(Context object) {
        PackageManager packageManager = object.getPackageManager();
        object = object.getPackageName();
        try {
            int n2 = packageManager.getPackageInfo((String)object, (int)0).versionCode;
            return n2;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            return 0;
        }
    }

    public static String getVersionName(Context object) {
        PackageManager packageManager = object.getPackageManager();
        object = object.getPackageName();
        try {
            object = packageManager.getPackageInfo((String)object, (int)0).versionName;
            return object;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            return "N/A";
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @TargetApi(value=17)
    public static boolean hasNavBar(Context context) {
        if (VersionUtil.hasJellyBeanMR1() && !DeviceUtil.isDeviceScreenMeasured(context)) {
            Display display = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            display.getRealMetrics(displayMetrics);
            int n2 = displayMetrics.heightPixels;
            int n3 = displayMetrics.widthPixels;
            displayMetrics = new DisplayMetrics();
            display.getMetrics(displayMetrics);
            int n4 = displayMetrics.heightPixels;
            boolean bl = n3 - displayMetrics.widthPixels > 0 || n2 - n4 > 0;
            DeviceUtil.markDeviceNavBarAvailable(context, bl);
            return bl;
        }
        return DeviceUtil.isDeviceNavBarAvailable(context);
    }

    public static boolean isAmazonDevice() {
        return IS_AMAZON_DEVICE;
    }

    public static boolean isAppInstalled(Context context, String string2) {
        if (context.getPackageManager().getLaunchIntentForPackage(string2) != null) {
            return true;
        }
        return false;
    }

    public static boolean isDeviceNavBarAvailable(Context context) {
        return PreferenceManager.getDefaultSharedPreferences((Context)context).getBoolean("has_navigation_bar", false);
    }

    public static boolean isDeviceScreenMeasured(Context context) {
        return PreferenceManager.getDefaultSharedPreferences((Context)context).contains("has_navigation_bar");
    }

    public static boolean isTablet(Context context) {
        if (!"phone".equals(context.getString(R.string.screen_type))) {
            return true;
        }
        return false;
    }

    public static void logDeviceInfo() {
        String string2 = TAG + "logDeviceInfo";
        LogUtil.i(string2, "Build Manufacturer: " + Build.MANUFACTURER);
        LogUtil.i(string2, "Build Product: " + Build.PRODUCT);
        LogUtil.i(string2, "Build Model: " + Build.MODEL);
        LogUtil.i(string2, "Width: " + UIUtil.getScreenWidth());
        LogUtil.i(string2, "Height: " + UIUtil.getScreenHeight());
        LogUtil.i(string2, "Timezone: " + TimeZone.getDefault().getDisplayName(true, 1, Locale.getDefault()) + " [" + TimeZone.getDefault().getDisplayName(true, 0, Locale.getDefault()) + "]");
        LogUtil.i(string2, "Language: " + Locale.getDefault().getDisplayLanguage() + " [" + Locale.getDefault().getLanguage() + "]");
        LogUtil.i(string2, "Country: " + Locale.getDefault().getDisplayCountry() + " [" + Locale.getDefault().getCountry() + "]");
    }

    public static void markDeviceNavBarAvailable(Context context, boolean bl) {
        PreferenceManager.getDefaultSharedPreferences((Context)context).edit().putBoolean("has_navigation_bar", bl).commit();
    }
}

