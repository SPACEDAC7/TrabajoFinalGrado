/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.widget.EdgeEffect
 */
package android.support.v4.widget;

import android.widget.EdgeEffect;

class EdgeEffectCompatLollipop {
    EdgeEffectCompatLollipop() {
    }

    public static boolean onPull(Object object, float f2, float f3) {
        ((EdgeEffect)object).onPull(f2, f3);
        return true;
    }
}

