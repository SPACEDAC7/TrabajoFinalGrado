/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.provider.Settings
 *  android.provider.Settings$Secure
 */
package com.adjust.sdk.plugin;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;

public class AndroidIdUtil {
    public static String getAndroidId(Context context) {
        return Settings.Secure.getString((ContentResolver)context.getContentResolver(), (String)"android_id");
    }
}

