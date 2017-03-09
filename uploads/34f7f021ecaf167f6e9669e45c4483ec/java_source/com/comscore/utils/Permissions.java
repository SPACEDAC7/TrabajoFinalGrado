/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.pm.PackageInfo
 *  android.content.pm.PackageManager
 */
package com.comscore.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

public class Permissions {
    private static String[] a = null;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static Boolean check(Context context, String string2) {
        int n2;
        n2 = 0;
        if (a == null) {
            try {
                a = context.getPackageManager().getPackageInfo((String)context.getPackageName(), (int)4096).requestedPermissions;
            }
            catch (Exception var0_1) {}
        }
        if (a != null) {
            while (n2 < a.length) {
                if (a[n2].equals(string2)) {
                    return true;
                }
                ++n2;
            }
        }
        return false;
    }
}

