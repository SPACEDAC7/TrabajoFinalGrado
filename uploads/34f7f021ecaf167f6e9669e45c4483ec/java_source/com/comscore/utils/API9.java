/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package com.comscore.utils;

import android.annotation.SuppressLint;
import android.os.Build;

public class API9 {
    @SuppressLint(value={"NewApi"})
    public static String getSerial() {
        if (Build.VERSION.SDK_INT >= 9) {
            return Build.SERIAL;
        }
        return "";
    }
}

