/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Paint
 *  android.view.Display
 *  android.view.View
 */
package android.support.v4.view;

import android.graphics.Paint;
import android.view.Display;
import android.view.View;

class ViewCompatJellybeanMr1 {
    ViewCompatJellybeanMr1() {
    }

    public static Display getDisplay(View view) {
        return view.getDisplay();
    }

    public static int getLabelFor(View view) {
        return view.getLabelFor();
    }

    public static int getLayoutDirection(View view) {
        return view.getLayoutDirection();
    }

    public static int getPaddingEnd(View view) {
        return view.getPaddingEnd();
    }

    public static int getPaddingStart(View view) {
        return view.getPaddingStart();
    }

    public static int getWindowSystemUiVisibility(View view) {
        return view.getWindowSystemUiVisibility();
    }

    public static boolean isPaddingRelative(View view) {
        return view.isPaddingRelative();
    }

    public static void setLabelFor(View view, int n2) {
        view.setLabelFor(n2);
    }

    public static void setLayerPaint(View view, Paint paint) {
        view.setLayerPaint(paint);
    }

    public static void setLayoutDirection(View view, int n2) {
        view.setLayoutDirection(n2);
    }

    public static void setPaddingRelative(View view, int n2, int n3, int n4, int n5) {
        view.setPaddingRelative(n2, n3, n4, n5);
    }
}

