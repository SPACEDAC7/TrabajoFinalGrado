/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package com.comscore.android.id;

import android.annotation.SuppressLint;
import android.os.Build;

@SuppressLint(value={"NewApi"})
public class API9 {
    public static String getAndroidSerial() {
        if (Integer.valueOf(Build.VERSION.SDK_INT) >= 9) {
            return Build.SERIAL;
        }
        return null;
    }
}

