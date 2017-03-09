/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Handler
 *  android.os.Looper
 *  android.os.SystemClock
 *  android.view.animation.AccelerateDecelerateInterpolator
 *  android.view.animation.Interpolator
 */
package android.support.design.widget;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.design.widget.AnimationUtils;
import android.support.design.widget.MathUtils;
import android.support.design.widget.ValueAnimatorCompat;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import java.util.ArrayList;

class ValueAnimatorCompatImplGingerbread
extends ValueAnimatorCompat.Impl {
    private static final int DEFAULT_DURATION = 200;
    private static final int HANDLER_DELAY = 10;
    private static final Handler sHandler = new Handler(Looper.getMainLooper());
    private float mAnimatedFraction;
    private long mDuration = 200;
    private final float[] mFloatValues = new float[2];
    private final int[] mIntValues = new int[2];
    private Interpolator mInterpolator;
    private boolean mIsRunning;
    private ArrayList<ValueAnimatorCompat.Impl.AnimatorListenerProxy> mListeners;
    private final Runnable mRunnable;
    private long mStartTime;
    private ArrayList<ValueAnimatorCompat.Impl.AnimatorUpdateListenerProxy> mUpdateListeners;

    ValueAnimatorCompatImplGingerbread() {
        this.mRunnable = new Runnable(){

            @Override
            public void run() {
                ValueAnimatorCompatImplGingerbread.this.update();
            }
        };
    }

    private void dispatchAnimationCancel() {
        if (this.mListeners != null) {
            int n2 = this.mListeners.size();
            for (int i2 = 0; i2 < n2; ++i2) {
                this.mListeners.get(i2).onAnimationCancel();
            }
        }
    }

    private void dispatchAnimationEnd() {
        if (this.mListeners != null) {
            int n2 = this.mListeners.size();
            for (int i2 = 0; i2 < n2; ++i2) {
                this.mListeners.get(i2).onAnimationEnd();
            }
        }
    }

    private void dispatchAnimationStart() {
        if (this.mListeners != null) {
            int n2 = this.mListeners.size();
            for (int i2 = 0; i2 < n2; ++i2) {
                this.mListeners.get(i2).onAnimationStart();
            }
        }
    }

    private void dispatchAnimationUpdate() {
        if (this.mUpdateListeners != null) {
            int n2 = this.mUpdateListeners.size();
            for (int i2 = 0; i2 < n2; ++i2) {
                this.mUpdateListeners.get(i2).onAnimationUpdate();
            }
        }
    }

    @Override
    public void addListener(ValueAnimatorCompat.Impl.AnimatorListenerProxy animatorListenerProxy) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList();
        }
        this.mListeners.add(animatorListenerProxy);
    }

    @Override
    public void addUpdateListener(ValueAnimatorCompat.Impl.AnimatorUpdateListenerProxy animatorUpdateListenerProxy) {
        if (this.mUpdateListeners == null) {
            this.mUpdateListeners = new ArrayList();
        }
        this.mUpdateListeners.add(animatorUpdateListenerProxy);
    }

    @Override
    public void cancel() {
        this.mIsRunning = false;
        sHandler.removeCallbacks(this.mRunnable);
        this.dispatchAnimationCancel();
        this.dispatchAnimationEnd();
    }

    @Override
    public void end() {
        if (this.mIsRunning) {
            this.mIsRunning = false;
            sHandler.removeCallbacks(this.mRunnable);
            this.mAnimatedFraction = 1.0f;
            this.dispatchAnimationUpdate();
            this.dispatchAnimationEnd();
        }
    }

    @Override
    public float getAnimatedFloatValue() {
        return AnimationUtils.lerp(this.mFloatValues[0], this.mFloatValues[1], this.getAnimatedFraction());
    }

    @Override
    public float getAnimatedFraction() {
        return this.mAnimatedFraction;
    }

    @Override
    public int getAnimatedIntValue() {
        return AnimationUtils.lerp(this.mIntValues[0], this.mIntValues[1], this.getAnimatedFraction());
    }

    @Override
    public long getDuration() {
        return this.mDuration;
    }

    @Override
    public boolean isRunning() {
        return this.mIsRunning;
    }

    @Override
    public void setDuration(long l2) {
        this.mDuration = l2;
    }

    @Override
    public void setFloatValues(float f2, float f3) {
        this.mFloatValues[0] = f2;
        this.mFloatValues[1] = f3;
    }

    @Override
    public void setIntValues(int n2, int n3) {
        this.mIntValues[0] = n2;
        this.mIntValues[1] = n3;
    }

    @Override
    public void setInterpolator(Interpolator interpolator2) {
        this.mInterpolator = interpolator2;
    }

    @Override
    public void start() {
        if (this.mIsRunning) {
            return;
        }
        if (this.mInterpolator == null) {
            this.mInterpolator = new AccelerateDecelerateInterpolator();
        }
        this.mIsRunning = true;
        this.mAnimatedFraction = 0.0f;
        this.startInternal();
    }

    final void startInternal() {
        this.mStartTime = SystemClock.uptimeMillis();
        this.dispatchAnimationUpdate();
        this.dispatchAnimationStart();
        sHandler.postDelayed(this.mRunnable, 10);
    }

    final void update() {
        if (this.mIsRunning) {
            float f2;
            float f3 = f2 = MathUtils.constrain((float)(SystemClock.uptimeMillis() - this.mStartTime) / (float)this.mDuration, 0.0f, 1.0f);
            if (this.mInterpolator != null) {
                f3 = this.mInterpolator.getInterpolation(f2);
            }
            this.mAnimatedFraction = f3;
            this.dispatchAnimationUpdate();
            if (SystemClock.uptimeMillis() >= this.mStartTime + this.mDuration) {
                this.mIsRunning = false;
                this.dispatchAnimationEnd();
            }
        }
        if (this.mIsRunning) {
            sHandler.postDelayed(this.mRunnable, 10);
        }
    }

}

