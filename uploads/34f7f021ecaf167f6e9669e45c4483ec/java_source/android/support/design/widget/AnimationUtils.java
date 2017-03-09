/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.animation.Animation
 *  android.view.animation.Animation$AnimationListener
 *  android.view.animation.DecelerateInterpolator
 *  android.view.animation.Interpolator
 *  android.view.animation.LinearInterpolator
 */
package android.support.design.widget;

import android.support.v4.view.animation.FastOutLinearInInterpolator;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.support.v4.view.animation.LinearOutSlowInInterpolator;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;

class AnimationUtils {
    static final Interpolator DECELERATE_INTERPOLATOR;
    static final Interpolator FAST_OUT_LINEAR_IN_INTERPOLATOR;
    static final Interpolator FAST_OUT_SLOW_IN_INTERPOLATOR;
    static final Interpolator LINEAR_INTERPOLATOR;
    static final Interpolator LINEAR_OUT_SLOW_IN_INTERPOLATOR;

    static {
        LINEAR_INTERPOLATOR = new LinearInterpolator();
        FAST_OUT_SLOW_IN_INTERPOLATOR = new FastOutSlowInInterpolator();
        FAST_OUT_LINEAR_IN_INTERPOLATOR = new FastOutLinearInInterpolator();
        LINEAR_OUT_SLOW_IN_INTERPOLATOR = new LinearOutSlowInInterpolator();
        DECELERATE_INTERPOLATOR = new DecelerateInterpolator();
    }

    AnimationUtils() {
    }

    static float lerp(float f2, float f3, float f4) {
        return (f3 - f2) * f4 + f2;
    }

    static int lerp(int n2, int n3, float f2) {
        return Math.round((float)(n3 - n2) * f2) + n2;
    }

    static class AnimationListenerAdapter
    implements Animation.AnimationListener {
        AnimationListenerAdapter() {
        }

        public void onAnimationEnd(Animation animation) {
        }

        public void onAnimationRepeat(Animation animation) {
        }

        public void onAnimationStart(Animation animation) {
        }
    }

}

