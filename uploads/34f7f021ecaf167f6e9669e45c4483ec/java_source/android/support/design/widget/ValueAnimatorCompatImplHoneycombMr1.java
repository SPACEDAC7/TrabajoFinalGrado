/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.animation.Animator$AnimatorListener
 *  android.animation.AnimatorListenerAdapter
 *  android.animation.TimeInterpolator
 *  android.animation.ValueAnimator
 *  android.animation.ValueAnimator$AnimatorUpdateListener
 *  android.view.animation.Interpolator
 */
package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.support.design.widget.ValueAnimatorCompat;
import android.view.animation.Interpolator;

class ValueAnimatorCompatImplHoneycombMr1
extends ValueAnimatorCompat.Impl {
    private final ValueAnimator mValueAnimator = new ValueAnimator();

    ValueAnimatorCompatImplHoneycombMr1() {
    }

    @Override
    public void addListener(final ValueAnimatorCompat.Impl.AnimatorListenerProxy animatorListenerProxy) {
        this.mValueAnimator.addListener((Animator.AnimatorListener)new AnimatorListenerAdapter(){

            public void onAnimationCancel(Animator animator2) {
                animatorListenerProxy.onAnimationCancel();
            }

            public void onAnimationEnd(Animator animator2) {
                animatorListenerProxy.onAnimationEnd();
            }

            public void onAnimationStart(Animator animator2) {
                animatorListenerProxy.onAnimationStart();
            }
        });
    }

    @Override
    public void addUpdateListener(final ValueAnimatorCompat.Impl.AnimatorUpdateListenerProxy animatorUpdateListenerProxy) {
        this.mValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(){

            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                animatorUpdateListenerProxy.onAnimationUpdate();
            }
        });
    }

    @Override
    public void cancel() {
        this.mValueAnimator.cancel();
    }

    @Override
    public void end() {
        this.mValueAnimator.end();
    }

    @Override
    public float getAnimatedFloatValue() {
        return ((Float)this.mValueAnimator.getAnimatedValue()).floatValue();
    }

    @Override
    public float getAnimatedFraction() {
        return this.mValueAnimator.getAnimatedFraction();
    }

    @Override
    public int getAnimatedIntValue() {
        return (Integer)this.mValueAnimator.getAnimatedValue();
    }

    @Override
    public long getDuration() {
        return this.mValueAnimator.getDuration();
    }

    @Override
    public boolean isRunning() {
        return this.mValueAnimator.isRunning();
    }

    @Override
    public void setDuration(long l2) {
        this.mValueAnimator.setDuration(l2);
    }

    @Override
    public void setFloatValues(float f2, float f3) {
        this.mValueAnimator.setFloatValues(new float[]{f2, f3});
    }

    @Override
    public void setIntValues(int n2, int n3) {
        this.mValueAnimator.setIntValues(new int[]{n2, n3});
    }

    @Override
    public void setInterpolator(Interpolator interpolator2) {
        this.mValueAnimator.setInterpolator((TimeInterpolator)interpolator2);
    }

    @Override
    public void start() {
        this.mValueAnimator.start();
    }

}

