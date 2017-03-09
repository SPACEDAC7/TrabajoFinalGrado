/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.animation.ValueAnimator
 *  android.animation.ValueAnimator$AnimatorUpdateListener
 *  android.view.View
 *  android.view.ViewGroup
 *  android.widget.TextView
 */
package android.support.design.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.support.transition.Transition;
import android.support.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.Map;

public class TextScale
extends Transition {
    private static final String PROPNAME_SCALE = "android:textscale:scale";

    private void captureValues(TransitionValues transitionValues) {
        if (transitionValues.view instanceof TextView) {
            TextView textView = (TextView)transitionValues.view;
            transitionValues.values.put("android:textscale:scale", Float.valueOf(textView.getScaleX()));
        }
    }

    @Override
    public void captureEndValues(TransitionValues transitionValues) {
        this.captureValues(transitionValues);
    }

    @Override
    public void captureStartValues(TransitionValues transitionValues) {
        this.captureValues(transitionValues);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public Animator createAnimator(ViewGroup viewGroup, TransitionValues valueAnimator, TransitionValues map) {
        if (valueAnimator == null || map == null || !(valueAnimator.view instanceof TextView) || !(map.view instanceof TextView)) {
            return null;
        }
        viewGroup = (TextView)map.view;
        valueAnimator = valueAnimator.values;
        map = map.values;
        float f2 = valueAnimator.get("android:textscale:scale") != null ? ((Float)valueAnimator.get("android:textscale:scale")).floatValue() : 1.0f;
        if (map.get("android:textscale:scale") == null) return null;
        float f3 = ((Float)map.get("android:textscale:scale")).floatValue();
        if (f2 == f3) return null;
        valueAnimator = ValueAnimator.ofFloat((float[])new float[]{f2, f3});
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener((TextView)viewGroup){
            final /* synthetic */ TextView val$view;

            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float f2 = ((Float)valueAnimator.getAnimatedValue()).floatValue();
                this.val$view.setScaleX(f2);
                this.val$view.setScaleY(f2);
            }
        });
        return valueAnimator;
    }

}

