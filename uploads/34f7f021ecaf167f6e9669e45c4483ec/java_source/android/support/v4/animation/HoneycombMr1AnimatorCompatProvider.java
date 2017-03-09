/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.animation.Animator$AnimatorListener
 *  android.animation.TimeInterpolator
 *  android.animation.ValueAnimator
 *  android.animation.ValueAnimator$AnimatorUpdateListener
 *  android.view.View
 *  android.view.ViewPropertyAnimator
 */
package android.support.v4.animation;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.support.v4.animation.AnimatorListenerCompat;
import android.support.v4.animation.AnimatorProvider;
import android.support.v4.animation.AnimatorUpdateListenerCompat;
import android.support.v4.animation.ValueAnimatorCompat;
import android.view.View;
import android.view.ViewPropertyAnimator;

class HoneycombMr1AnimatorCompatProvider
implements AnimatorProvider {
    private TimeInterpolator mDefaultInterpolator;

    HoneycombMr1AnimatorCompatProvider() {
    }

    @Override
    public void clearInterpolator(View view) {
        if (this.mDefaultInterpolator == null) {
            this.mDefaultInterpolator = new ValueAnimator().getInterpolator();
        }
        view.animate().setInterpolator(this.mDefaultInterpolator);
    }

    @Override
    public ValueAnimatorCompat emptyValueAnimator() {
        return new HoneycombValueAnimatorCompat((Animator)ValueAnimator.ofFloat((float[])new float[]{0.0f, 1.0f}));
    }

    static class AnimatorListenerCompatWrapper
    implements Animator.AnimatorListener {
        final ValueAnimatorCompat mValueAnimatorCompat;
        final AnimatorListenerCompat mWrapped;

        public AnimatorListenerCompatWrapper(AnimatorListenerCompat animatorListenerCompat, ValueAnimatorCompat valueAnimatorCompat) {
            this.mWrapped = animatorListenerCompat;
            this.mValueAnimatorCompat = valueAnimatorCompat;
        }

        public void onAnimationCancel(Animator animator2) {
            this.mWrapped.onAnimationCancel(this.mValueAnimatorCompat);
        }

        public void onAnimationEnd(Animator animator2) {
            this.mWrapped.onAnimationEnd(this.mValueAnimatorCompat);
        }

        public void onAnimationRepeat(Animator animator2) {
            this.mWrapped.onAnimationRepeat(this.mValueAnimatorCompat);
        }

        public void onAnimationStart(Animator animator2) {
            this.mWrapped.onAnimationStart(this.mValueAnimatorCompat);
        }
    }

    static class HoneycombValueAnimatorCompat
    implements ValueAnimatorCompat {
        final Animator mWrapped;

        public HoneycombValueAnimatorCompat(Animator animator2) {
            this.mWrapped = animator2;
        }

        @Override
        public void addListener(AnimatorListenerCompat animatorListenerCompat) {
            this.mWrapped.addListener((Animator.AnimatorListener)new AnimatorListenerCompatWrapper(animatorListenerCompat, this));
        }

        @Override
        public void addUpdateListener(final AnimatorUpdateListenerCompat animatorUpdateListenerCompat) {
            if (this.mWrapped instanceof ValueAnimator) {
                ((ValueAnimator)this.mWrapped).addUpdateListener(new ValueAnimator.AnimatorUpdateListener(){

                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        animatorUpdateListenerCompat.onAnimationUpdate(HoneycombValueAnimatorCompat.this);
                    }
                });
            }
        }

        @Override
        public void cancel() {
            this.mWrapped.cancel();
        }

        @Override
        public float getAnimatedFraction() {
            return ((ValueAnimator)this.mWrapped).getAnimatedFraction();
        }

        @Override
        public void setDuration(long l2) {
            this.mWrapped.setDuration(l2);
        }

        @Override
        public void setTarget(View view) {
            this.mWrapped.setTarget((Object)view);
        }

        @Override
        public void start() {
            this.mWrapped.start();
        }

    }

}

