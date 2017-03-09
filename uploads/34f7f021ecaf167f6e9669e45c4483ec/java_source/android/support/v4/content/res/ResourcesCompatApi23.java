/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.res.ColorStateList
 *  android.content.res.Resources
 *  android.content.res.Resources$NotFoundException
 *  android.content.res.Resources$Theme
 */
package android.support.v4.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;

class ResourcesCompatApi23 {
    ResourcesCompatApi23() {
    }

    public static int getColor(Resources resources, int n2, Resources.Theme theme) throws Resources.NotFoundException {
        return resources.getColor(n2, theme);
    }

    public static ColorStateList getColorStateList(Resources resources, int n2, Resources.Theme theme) throws Resources.NotFoundException {
        return resources.getColorStateList(n2, theme);
    }
}

