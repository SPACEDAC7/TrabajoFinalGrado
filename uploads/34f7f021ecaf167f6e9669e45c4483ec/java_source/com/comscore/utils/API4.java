/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.pm.PackageManager
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package com.comscore.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;

public class API4 {
    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean isPackageInstalledFromGooglePlayStore(Context object) {
        boolean bl2;
        boolean bl = bl2 = false;
        if (Build.VERSION.SDK_INT <= 4) return bl;
        try {
            object = object.getPackageManager().getInstallerPackageName(object.getPackageName());
            if ("com.android.vending".equals(object)) return true;
            bl = bl2;
            if (!"com.google.play".equals(object)) return bl;
            return true;
        }
        catch (Exception exception) {
            return false;
        }
    }
}

