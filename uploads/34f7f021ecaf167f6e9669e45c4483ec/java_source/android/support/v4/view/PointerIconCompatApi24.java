/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.graphics.Bitmap
 *  android.view.PointerIcon
 */
package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.PointerIcon;

class PointerIconCompatApi24 {
    PointerIconCompatApi24() {
    }

    public static Object create(Bitmap bitmap, float f2, float f3) {
        return PointerIcon.create((Bitmap)bitmap, (float)f2, (float)f3);
    }

    public static Object getSystemIcon(Context context, int n2) {
        return PointerIcon.getSystemIcon((Context)context, (int)n2);
    }

    public static Object load(Resources resources, int n2) {
        return PointerIcon.load((Resources)resources, (int)n2);
    }
}

