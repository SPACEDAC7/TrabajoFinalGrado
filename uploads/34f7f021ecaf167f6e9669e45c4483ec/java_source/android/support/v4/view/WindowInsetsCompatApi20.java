/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.WindowInsets
 */
package android.support.v4.view;

import android.view.WindowInsets;

class WindowInsetsCompatApi20 {
    WindowInsetsCompatApi20() {
    }

    public static Object consumeSystemWindowInsets(Object object) {
        return ((WindowInsets)object).consumeSystemWindowInsets();
    }

    public static Object getSourceWindowInsets(Object object) {
        return new WindowInsets((WindowInsets)object);
    }

    public static int getSystemWindowInsetBottom(Object object) {
        return ((WindowInsets)object).getSystemWindowInsetBottom();
    }

    public static int getSystemWindowInsetLeft(Object object) {
        return ((WindowInsets)object).getSystemWindowInsetLeft();
    }

    public static int getSystemWindowInsetRight(Object object) {
        return ((WindowInsets)object).getSystemWindowInsetRight();
    }

    public static int getSystemWindowInsetTop(Object object) {
        return ((WindowInsets)object).getSystemWindowInsetTop();
    }

    public static boolean hasInsets(Object object) {
        return ((WindowInsets)object).hasInsets();
    }

    public static boolean hasSystemWindowInsets(Object object) {
        return ((WindowInsets)object).hasSystemWindowInsets();
    }

    public static boolean isRound(Object object) {
        return ((WindowInsets)object).isRound();
    }

    public static Object replaceSystemWindowInsets(Object object, int n2, int n3, int n4, int n5) {
        return ((WindowInsets)object).replaceSystemWindowInsets(n2, n3, n4, n5);
    }
}

