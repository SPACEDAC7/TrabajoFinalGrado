/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Rect
 *  android.view.WindowInsets
 */
package android.support.v4.view;

import android.graphics.Rect;
import android.view.WindowInsets;

class WindowInsetsCompatApi21 {
    WindowInsetsCompatApi21() {
    }

    public static Object consumeStableInsets(Object object) {
        return ((WindowInsets)object).consumeStableInsets();
    }

    public static int getStableInsetBottom(Object object) {
        return ((WindowInsets)object).getStableInsetBottom();
    }

    public static int getStableInsetLeft(Object object) {
        return ((WindowInsets)object).getStableInsetLeft();
    }

    public static int getStableInsetRight(Object object) {
        return ((WindowInsets)object).getStableInsetRight();
    }

    public static int getStableInsetTop(Object object) {
        return ((WindowInsets)object).getStableInsetTop();
    }

    public static boolean hasStableInsets(Object object) {
        return ((WindowInsets)object).hasStableInsets();
    }

    public static boolean isConsumed(Object object) {
        return ((WindowInsets)object).isConsumed();
    }

    public static Object replaceSystemWindowInsets(Object object, Rect rect) {
        return ((WindowInsets)object).replaceSystemWindowInsets(rect);
    }
}

