/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.ActionBar
 *  android.app.Activity
 *  android.content.res.TypedArray
 *  android.graphics.drawable.Drawable
 */
package android.support.v4.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;

class ActionBarDrawerToggleJellybeanMR2 {
    private static final String TAG = "ActionBarDrawerToggleImplJellybeanMR2";
    private static final int[] THEME_ATTRS = new int[]{16843531};

    ActionBarDrawerToggleJellybeanMR2() {
    }

    public static Drawable getThemeUpIndicator(Activity activity) {
        activity = activity.obtainStyledAttributes(THEME_ATTRS);
        Drawable drawable2 = activity.getDrawable(0);
        activity.recycle();
        return drawable2;
    }

    public static Object setActionBarDescription(Object object, Activity activity, int n2) {
        if ((activity = activity.getActionBar()) != null) {
            activity.setHomeActionContentDescription(n2);
        }
        return object;
    }

    public static Object setActionBarUpIndicator(Object object, Activity activity, Drawable drawable2, int n2) {
        if ((activity = activity.getActionBar()) != null) {
            activity.setHomeAsUpIndicator(drawable2);
            activity.setHomeActionContentDescription(n2);
        }
        return object;
    }
}

