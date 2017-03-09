/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 */
package android.support.v4.view;

import android.view.View;

class ViewCompatMarshmallow {
    ViewCompatMarshmallow() {
    }

    public static int getScrollIndicators(View view) {
        return view.getScrollIndicators();
    }

    static void offsetLeftAndRight(View view, int n2) {
        view.offsetLeftAndRight(n2);
    }

    static void offsetTopAndBottom(View view, int n2) {
        view.offsetTopAndBottom(n2);
    }

    public static void setScrollIndicators(View view, int n2) {
        view.setScrollIndicators(n2);
    }

    public static void setScrollIndicators(View view, int n2, int n3) {
        view.setScrollIndicators(n2, n3);
    }
}

