/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.preference.PreferenceManager
 */
package com.buzzfeed.toolkit.util;

import android.content.Context;
import android.preference.PreferenceManager;
import com.buzzfeed.toolkit.R;
import com.buzzfeed.toolkit.util.NetworkUtil;

public class VideoSettings {
    public static final String ALWAYS = "Always";
    private static final String NEVER = "Never";
    private static final String ON_WIFI_ONLY = "On Wi-Fi Only";

    public static String getAutoplaySetting(String string2, Context context) {
        if (string2.equals(context.getString(R.string.autoplay_always))) {
            return "Always";
        }
        if (string2.equals(context.getString(R.string.autoplay_on_wifi_only))) {
            return "On Wi-Fi Only";
        }
        return "Never";
    }

    public static boolean isInAutoplayMode(Context context) {
        String string2 = PreferenceManager.getDefaultSharedPreferences((Context)context).getString(context.getString(R.string.preference_key_autoplay_mode_select), context.getString(R.string.default_autoplay_mode));
        if (string2.equals("Always") || string2.equals("On Wi-Fi Only") && NetworkUtil.isConnectedToWifi(context)) {
            return true;
        }
        return false;
    }
}

