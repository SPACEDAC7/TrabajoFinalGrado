/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.content.Context
 *  android.content.pm.PackageManager
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package com.comscore.android.id;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;

@SuppressLint(value={"NewApi"})
public class API4 {
    private static boolean a = false;
    private static boolean b = false;

    public static boolean isPackageInstalledFromGooglePlayStore(Context object) {
        if (a) {
            return b;
        }
        if (Build.VERSION.SDK_INT > 4) {
            try {
                object = object.getPackageManager().getInstallerPackageName(object.getPackageName());
                if ("com.android.vending".equals(object) || "com.google.play".equals(object)) {
                    a = true;
                    b = true;
                    return true;
                }
            }
            catch (Exception var0_1) {
                a = true;
                b = false;
                return false;
            }
        }
        a = true;
        b = false;
        return false;
    }
}

