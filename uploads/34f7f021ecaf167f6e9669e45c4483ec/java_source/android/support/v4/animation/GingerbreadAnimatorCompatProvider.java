/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 *  android.view.ViewParent
 */
package android.support.v4.animation;

import android.support.v4.animation.AnimatorListenerCompat;
import android.support.v4.animation.AnimatorProvider;
import android.support.v4.animation.AnimatorUpdateListenerCompat;
import android.support.v4.animation.ValueAnimatorCompat;
import android.view.View;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.List;

class GingerbreadAnimatorCompatProvider
implements AnimatorProvider {
    GingerbreadAnimatorCompatProvider() {
    }

    @Override
    public void clearInterpolator(View view) {
    }

    @Override
    public ValueAnimatorCompat emptyValueAnimator() {
        return new GingerbreadFloatValueAnimator();
    }

    private static class GingerbreadFloatValueAnimator
    implements ValueAnimatorCompat {
        private long mDuration = 200;
        private boolean mEnded = false;
        private float mFraction = 0.0f;
        List<AnimatorListenerCompat> mListeners = new ArrayList<AnimatorListenerCompat>();
        private Runnable mLoopRunnable;
        private long mStartTime;
        private boolean mStarted = false;
        View mTarget;
        List<AnimatorUpdateListenerCompat> mUpdateListeners = new ArrayList<AnimatorUpdateListenerCompat>();

        public GingerbreadFloatValueAnimator() {
            this.mLoopRunnable = new Runnable(){

                @Override
                public void run() {
                    float f2 = (float)(GingerbreadFloatValueAnimator.this.getTime() - GingerbreadFloatValueAnimator.this.mStartTime) * 1.0f / (float)GingerbreadFloatValueAnimator.this.mDuration;
                    if (f2 > 1.0f || GingerbreadFloatValueAnimator.this.mTarget.getParent() == null) {
                        f2 = 1.0f;
                    }
                    GingerbreadFloatValueAnimator.this.mFraction = f2;
                    GingerbreadFloatValueAnimator.this.notifyUpdateListeners();
                    if (GingerbreadFloatValueAnimator.this.mFraction >= 1.0f) {
                        GingerbreadFloatValueAnimator.this.dispatchEnd();
                        return;
                    }
                    GingerbreadFloatValueAnimator.this.mTarget.postDelayed(GingerbreadFloatValueAnimator.this.mLoopRunnable, 16);
                }
            };
        }

        private void dispatchCancel() {
            for (int i2 = this.mListeners.size() - 1; i2 >= 0; --i2) {
                this.mListeners.get(i2).onAnimationCancel(this);
            }
        }

        private void dispatchEnd() {
            for (int i2 = this.mListeners.size() - 1; i2 >= 0; --i2) {
                this.mListeners.get(i2).onAnimationEnd(this);
            }
        }

        private void dispatchStart() {
            for (int i2 = this.mListeners.size() - 1; i2 >= 0; --i2) {
                this.mListeners.get(i2).onAnimationStart(this);
            }
        }

        private long getTime() {
            return this.mTarget.getDrawingTime();
        }

        private void notifyUpdateListeners() {
            for (int i2 = this.mUpdateListeners.size() - 1; i2 >= 0; --i2) {
                this.mUpdateListeners.get(i2).onAnimationUpdate(this);
            }
        }

        @Override
        public void addListener(AnimatorListenerCompat animatorListenerCompat) {
            this.mListeners.add(animatorListenerCompat);
        }

        @Override
        public void addUpdateListener(AnimatorUpdateListenerCompat animatorUpdateListenerCompat) {
            this.mUpdateListeners.add(animatorUpdateListenerCompat);
        }

        @Override
        public void cancel() {
            if (this.mEnded) {
                return;
            }
            this.mEnded = true;
            if (this.mStarted) {
                this.dispatchCancel();
            }
            this.dispatchEnd();
        }

        @Override
        public float getAnimatedFraction() {
            return this.mFraction;
        }

        @Override
        public void setDuration(long l2) {
            if (!this.mStarted) {
                this.mDuration = l2;
            }
        }

        @Override
        public void setTarget(View view) {
            this.mTarget = view;
        }

        @Override
        public void start() {
            if (this.mStarted) {
                return;
            }
            this.mStarted = true;
            this.dispatchStart();
            this.mFraction = 0.0f;
            this.mStartTime = this.getTime();
            this.mTarget.postDelayed(this.mLoopRunnable, 16);
        }

    }

}

