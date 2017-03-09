/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.toolkit.dustbuster;

import android.content.Context;
import com.buzzfeed.toolkit.util.DeviceUtil;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

class DustbusterMetadata {
    private DustbusterMetadata() {
    }

    private static String getAppVersion(Context context) {
        return DeviceUtil.getVersionName(context);
    }

    private static int getAppVersionCode(Context context) {
        return DeviceUtil.getVersionCode(context);
    }

    public static Map<String, Object> getBaseMetadataForEvent(Context context, String string2, long l2) {
        HashMap<String, Object> hashMap = new HashMap<String, Object>();
        hashMap.put("app_version", DustbusterMetadata.getAppVersion(context));
        hashMap.put("build_number", DustbusterMetadata.getAppVersionCode(context));
        hashMap.put("os", "Android");
        hashMap.put("os_version", DustbusterMetadata.getOsVersion());
        hashMap.put("device", DustbusterMetadata.getDeviceName());
        hashMap.put("build_environment", string2);
        hashMap.put("client_id", l2);
        return hashMap;
    }

    private static String getDeviceName() {
        return DeviceUtil.getDeviceName();
    }

    public static Map<String, Object> getMetadataForSessionEvent() {
        HashMap<String, Object> hashMap = new HashMap<String, Object>();
        hashMap.put("device", DustbusterMetadata.getDeviceName());
        hashMap.put("os_version", DustbusterMetadata.getOsVersion());
        hashMap.put("system_language", DustbusterMetadata.getSystemLanguage());
        return hashMap;
    }

    private static String getOsVersion() {
        return DeviceUtil.getOSVersion();
    }

    private static String getSystemLanguage() {
        return Locale.getDefault().getLanguage();
    }
}

