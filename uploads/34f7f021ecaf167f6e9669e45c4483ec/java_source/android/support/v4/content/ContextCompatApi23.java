/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.ColorStateList
 */
package android.support.v4.content;

import android.content.Context;
import android.content.res.ColorStateList;

class ContextCompatApi23 {
    ContextCompatApi23() {
    }

    public static int getColor(Context context, int n2) {
        return context.getColor(n2);
    }

    public static ColorStateList getColorStateList(Context context, int n2) {
        return context.getColorStateList(n2);
    }
}

