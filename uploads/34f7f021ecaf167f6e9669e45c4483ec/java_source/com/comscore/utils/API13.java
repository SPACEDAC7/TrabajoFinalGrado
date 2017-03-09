/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Point
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.view.Display
 */
package com.comscore.utils;

import android.graphics.Point;
import android.os.Build;
import android.view.Display;

public class API13 {
    public static Point getDisplaySize(Display display) {
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 13) {
            display.getSize(point);
        }
        return point;
    }
}

