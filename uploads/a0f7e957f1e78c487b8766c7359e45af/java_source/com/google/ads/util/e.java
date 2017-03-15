/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.content.pm.ApplicationInfo
 *  android.util.DisplayMetrics
 */
package com.google.ads.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.util.DisplayMetrics;

@TargetApi(value=4)
public final class e {
    private static int a(Context context, float f2, int n2) {
        int n3 = n2;
        if ((context.getApplicationInfo().flags & 8192) != 0) {
            n3 = (int)((float)n2 / f2);
        }
        return n3;
    }

    public static int a(Context context, DisplayMetrics displayMetrics) {
        return e.a(context, displayMetrics.density, displayMetrics.heightPixels);
    }

    public static int b(Context context, DisplayMetrics displayMetrics) {
        return e.a(context, displayMetrics.density, displayMetrics.widthPixels);
    }
}

