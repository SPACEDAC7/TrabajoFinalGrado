/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package android.support.design.widget;

import android.graphics.PorterDuff;
import android.os.Build;
import android.support.design.widget.ValueAnimatorCompat;
import android.support.design.widget.ValueAnimatorCompatImplGingerbread;
import android.support.design.widget.ValueAnimatorCompatImplHoneycombMr1;

class ViewUtils {
    static final ValueAnimatorCompat.Creator DEFAULT_ANIMATOR_CREATOR = new ValueAnimatorCompat.Creator(){

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public ValueAnimatorCompat createAnimator() {
            void var1_2;
            if (Build.VERSION.SDK_INT >= 12) {
                ValueAnimatorCompatImplHoneycombMr1 valueAnimatorCompatImplHoneycombMr1 = new ValueAnimatorCompatImplHoneycombMr1();
                do {
                    return new ValueAnimatorCompat((ValueAnimatorCompat.Impl)var1_2);
                    break;
                } while (true);
            }
            ValueAnimatorCompatImplGingerbread valueAnimatorCompatImplGingerbread = new ValueAnimatorCompatImplGingerbread();
            return new ValueAnimatorCompat((ValueAnimatorCompat.Impl)var1_2);
        }
    };

    ViewUtils() {
    }

    static ValueAnimatorCompat createAnimator() {
        return DEFAULT_ANIMATOR_CREATOR.createAnimator();
    }

    static boolean objectEquals(Object object, Object object2) {
        if (object == object2 || object != null && object.equals(object2)) {
            return true;
        }
        return false;
    }

    static PorterDuff.Mode parseTintMode(int n2, PorterDuff.Mode mode) {
        switch (n2) {
            default: {
                return mode;
            }
            case 3: {
                return PorterDuff.Mode.SRC_OVER;
            }
            case 5: {
                return PorterDuff.Mode.SRC_IN;
            }
            case 9: {
                return PorterDuff.Mode.SRC_ATOP;
            }
            case 14: {
                return PorterDuff.Mode.MULTIPLY;
            }
            case 15: 
        }
        return PorterDuff.Mode.SCREEN;
    }

}

