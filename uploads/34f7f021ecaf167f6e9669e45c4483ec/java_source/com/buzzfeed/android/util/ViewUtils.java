/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewParent
 */
package com.buzzfeed.android.util;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

public class ViewUtils {
    public static boolean contains(float f2, float f3, View view) {
        int[] arrn = new int[2];
        view.getLocationOnScreen(arrn);
        if (view.getLeft() < view.getRight() && view.getTop() < view.getBottom() && f2 >= (float)arrn[0] && f2 < (float)(arrn[0] + view.getWidth()) && f3 >= (float)arrn[1] && f3 < (float)(arrn[1] + view.getHeight())) {
            return true;
        }
        return false;
    }

    public static void dispatchTouchEventRecursive(MotionEvent motionEvent, View view) {
        ViewUtils.dispatchTouchEventToView(motionEvent, view);
        if (view instanceof ViewGroup && (view = (ViewGroup)view).getChildCount() > 0) {
            for (int i2 = 0; i2 < view.getChildCount(); ++i2) {
                ViewUtils.dispatchTouchEventRecursive(motionEvent, view.getChildAt(i2));
            }
        }
    }

    public static void dispatchTouchEventToView(MotionEvent motionEvent, View view) {
        if (ViewUtils.contains((int)motionEvent.getRawX(), (int)motionEvent.getRawY(), view)) {
            motionEvent = MotionEvent.obtain((MotionEvent)motionEvent);
            int[] arrn = new int[2];
            view.getLocationOnScreen(arrn);
            arrn[0] = (int)(motionEvent.getRawX() - (float)arrn[0]);
            arrn[1] = (int)(motionEvent.getRawY() - (float)arrn[1]);
            motionEvent.setLocation((float)arrn[0], (float)arrn[1]);
            view.onTouchEvent(motionEvent);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void removeFromParent(View view) {
        if (view == null || view.getParent() == null || !(view.getParent() instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup)view.getParent()).removeView(view);
    }

    public static /* varargs */ void setVisibility(int n2, View ... arrview) {
        int n3 = arrview.length;
        for (int i2 = 0; i2 < n3; ++i2) {
            arrview[i2].setVisibility(n2);
        }
    }
}

