/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.TypeEvaluator
 *  android.graphics.Rect
 */
package android.support.transition;

import android.animation.TypeEvaluator;
import android.graphics.Rect;

class RectEvaluator
implements TypeEvaluator<Rect> {
    private Rect mRect;

    public RectEvaluator() {
    }

    public RectEvaluator(Rect rect) {
        this.mRect = rect;
    }

    public Rect evaluate(float f2, Rect rect, Rect rect2) {
        int n2 = rect.left + (int)((float)(rect2.left - rect.left) * f2);
        int n3 = rect.top + (int)((float)(rect2.top - rect.top) * f2);
        int n4 = rect.right + (int)((float)(rect2.right - rect.right) * f2);
        int n5 = rect.bottom + (int)((float)(rect2.bottom - rect.bottom) * f2);
        if (this.mRect == null) {
            return new Rect(n2, n3, n4, n5);
        }
        this.mRect.set(n2, n3, n4, n5);
        return this.mRect;
    }
}

