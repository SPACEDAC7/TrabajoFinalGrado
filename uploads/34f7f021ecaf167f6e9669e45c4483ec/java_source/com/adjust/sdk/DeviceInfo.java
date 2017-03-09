/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.content.pm.PackageInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.PackageManager$NameNotFoundException
 *  android.content.res.Configuration
 *  android.content.res.Resources
 *  android.database.Cursor
 *  android.net.Uri
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.DisplayMetrics
 */
package com.adjust.sdk;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.Util;
import java.util.Locale;
import java.util.Map;

class DeviceInfo {
    String abi;
    String androidId;
    String apiLevel;
    String appVersion;
    String buildName;
    String clientSdk;
    String country;
    String deviceManufacturer;
    String deviceName;
    String deviceType;
    String displayHeight;
    String displayWidth;
    String fbAttributionId;
    String hardwareName;
    String language;
    String macSha1;
    String macShortMd5;
    String osName;
    String osVersion;
    String packageName;
    Map<String, String> pluginKeys;
    String screenDensity;
    String screenFormat;
    String screenSize;
    String vmInstructionSet;

    /*
     * Enabled aggressive block sorting
     */
    DeviceInfo(Context context, String string2) {
        Object object = context.getResources();
        DisplayMetrics displayMetrics = object.getDisplayMetrics();
        Object object2 = object.getConfiguration();
        object = Util.getLocale((Configuration)object2);
        int n2 = object2.screenLayout;
        boolean bl = Util.getPlayAdId(context) != null;
        object2 = this.getMacAddress(context, bl);
        context.getContentResolver();
        this.packageName = this.getPackageName(context);
        this.appVersion = this.getAppVersion(context);
        this.deviceType = this.getDeviceType(n2);
        this.deviceName = this.getDeviceName();
        this.deviceManufacturer = this.getDeviceManufacturer();
        this.osName = this.getOsName();
        this.osVersion = this.getOsVersion();
        this.apiLevel = this.getApiLevel();
        this.language = this.getLanguage((Locale)object);
        this.country = this.getCountry((Locale)object);
        this.screenSize = this.getScreenSize(n2);
        this.screenFormat = this.getScreenFormat(n2);
        this.screenDensity = this.getScreenDensity(displayMetrics);
        this.displayWidth = this.getDisplayWidth(displayMetrics);
        this.displayHeight = this.getDisplayHeight(displayMetrics);
        this.clientSdk = this.getClientSdk(string2);
        this.androidId = this.getAndroidId(context, bl);
        this.fbAttributionId = this.getFacebookAttributionId(context);
        this.pluginKeys = Util.getPluginKeys(context);
        this.macSha1 = this.getMacSha1((String)object2);
        this.macShortMd5 = this.getMacShortMd5((String)object2);
        this.hardwareName = this.getHardwareName();
        this.abi = this.getABI();
        this.buildName = this.getBuildName();
        this.vmInstructionSet = this.getVmInstructionSet();
    }

    private String getABI() {
        String[] arrstring = Util.getSupportedAbis();
        if (arrstring == null || arrstring.length == 0) {
            return Util.getCpuAbi();
        }
        return arrstring[0];
    }

    private String getAndroidId(Context context, boolean bl) {
        if (!bl) {
            return Util.getAndroidId(context);
        }
        return null;
    }

    private String getApiLevel() {
        return "" + Build.VERSION.SDK_INT;
    }

    private String getAppVersion(Context object) {
        try {
            object = object.getPackageManager().getPackageInfo((String)object.getPackageName(), (int)0).versionName;
            return object;
        }
        catch (PackageManager.NameNotFoundException var1_2) {
            return null;
        }
    }

    private String getBuildName() {
        return Build.ID;
    }

    private String getClientSdk(String string2) {
        if (string2 == null) {
            return "android4.11.0";
        }
        return String.format(Locale.US, "%s@%s", string2, "android4.11.0");
    }

    private String getCountry(Locale locale) {
        return locale.getCountry();
    }

    private String getDeviceManufacturer() {
        return Build.MANUFACTURER;
    }

    private String getDeviceName() {
        return Build.MODEL;
    }

    private String getDeviceType(int n2) {
        switch (n2 & 15) {
            default: {
                return null;
            }
            case 1: 
            case 2: {
                return "phone";
            }
            case 3: 
            case 4: 
        }
        return "tablet";
    }

    private String getDisplayHeight(DisplayMetrics displayMetrics) {
        return String.valueOf(displayMetrics.heightPixels);
    }

    private String getDisplayWidth(DisplayMetrics displayMetrics) {
        return String.valueOf(displayMetrics.widthPixels);
    }

    private String getFacebookAttributionId(Context context) {
        block5 : {
            block4 : {
                try {
                    context = context.getContentResolver().query(Uri.parse((String)"content://com.facebook.katana.provider.AttributionIdProvider"), new String[]{"aid"}, null, null, null);
                    if (context != null) break block4;
                    return null;
                }
                catch (Exception var1_2) {
                    return null;
                }
            }
            if (context.moveToFirst()) break block5;
            context.close();
            return null;
        }
        String string2 = context.getString(context.getColumnIndex("aid"));
        context.close();
        return string2;
    }

    private String getHardwareName() {
        return Build.DISPLAY;
    }

    private String getLanguage(Locale locale) {
        return locale.getLanguage();
    }

    private String getMacAddress(Context context, boolean bl) {
        if (!bl) {
            if (!Util.checkPermission(context, "android.permission.ACCESS_WIFI_STATE")) {
                AdjustFactory.getLogger().warn("Missing permission: ACCESS_WIFI_STATE", new Object[0]);
            }
            return Util.getMacAddress(context);
        }
        return null;
    }

    private String getMacSha1(String string2) {
        if (string2 == null) {
            return null;
        }
        return Util.sha1(string2);
    }

    private String getMacShortMd5(String string2) {
        if (string2 == null) {
            return null;
        }
        return Util.md5(string2.replaceAll(":", ""));
    }

    private String getOsName() {
        return "android";
    }

    private String getOsVersion() {
        return Build.VERSION.RELEASE;
    }

    private String getPackageName(Context context) {
        return context.getPackageName();
    }

    private String getScreenDensity(DisplayMetrics displayMetrics) {
        int n2 = displayMetrics.densityDpi;
        if (n2 == 0) {
            return null;
        }
        if (n2 < 140) {
            return "low";
        }
        if (n2 > 200) {
            return "high";
        }
        return "medium";
    }

    private String getScreenFormat(int n2) {
        switch (n2 & 48) {
            default: {
                return null;
            }
            case 32: {
                return "long";
            }
            case 16: 
        }
        return "normal";
    }

    private String getScreenSize(int n2) {
        switch (n2 & 15) {
            default: {
                return null;
            }
            case 1: {
                return "small";
            }
            case 2: {
                return "normal";
            }
            case 3: {
                return "large";
            }
            case 4: 
        }
        return "xlarge";
    }

    private String getVmInstructionSet() {
        return Util.getVmInstructionSet();
    }
}

