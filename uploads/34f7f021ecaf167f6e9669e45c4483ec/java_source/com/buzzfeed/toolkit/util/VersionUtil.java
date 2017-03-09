/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package com.buzzfeed.toolkit.util;

import android.os.Build;

public class VersionUtil {
    public static boolean hasHoneyComb() {
        if (Build.VERSION.SDK_INT >= 11) {
            return true;
        }
        return false;
    }

    public static boolean hasIceCreamSandwichMR1() {
        if (Build.VERSION.SDK_INT >= 15) {
            return true;
        }
        return false;
    }

    public static boolean hasJellyBean() {
        if (Build.VERSION.SDK_INT >= 16) {
            return true;
        }
        return false;
    }

    public static boolean hasJellyBeanMR1() {
        if (Build.VERSION.SDK_INT >= 17) {
            return true;
        }
        return false;
    }

    public static boolean hasJellyBeanMR2() {
        if (Build.VERSION.SDK_INT >= 18) {
            return true;
        }
        return false;
    }

    public static boolean hasKitKat() {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        return false;
    }

    public static boolean hasLollipop() {
        if (Build.VERSION.SDK_INT >= 21) {
            return true;
        }
        return false;
    }

    public static boolean hasMarshmallow() {
        if (Build.VERSION.SDK_INT >= 23) {
            return true;
        }
        return false;
    }

    public static boolean hasNougat() {
        if (Build.VERSION.SDK_INT >= 24) {
            return true;
        }
        return false;
    }
}

