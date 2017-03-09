/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.TypedArray
 */
package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.appcompat.R;

class ThemeUtils {
    private static final int[] APPCOMPAT_CHECK_ATTRS = new int[]{R.attr.colorPrimary};

    ThemeUtils() {
    }

    static void checkAppCompatTheme(Context context) {
        boolean bl = false;
        if (!(context = context.obtainStyledAttributes(APPCOMPAT_CHECK_ATTRS)).hasValue(0)) {
            bl = true;
        }
        if (context != null) {
            context.recycle();
        }
        if (bl) {
            throw new IllegalArgumentException("You need to use a Theme.AppCompat theme (or descendant) with the design library.");
        }
    }
}

