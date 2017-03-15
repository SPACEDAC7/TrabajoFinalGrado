/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.StateSet
 */
package android.support.design.widget;

import android.support.design.widget.ValueAnimatorCompat;
import android.util.StateSet;
import java.util.ArrayList;

final class StateListAnimator {
    private final ValueAnimatorCompat.AnimatorListener mAnimationListener;
    private Tuple mLastMatch = null;
    ValueAnimatorCompat mRunningAnimator = null;
    private final ArrayList<Tuple> mTuples = new ArrayList();

    StateListAnimator() {
        this.mAnimationListener = new ValueAnimatorCompat.AnimatorListenerAdapter(){

            @Override
            public void onAnimationEnd(ValueAnimatorCompat valueAnimatorCompat) {
                if (StateListAnimator.this.mRunningAnimator == valueAnimatorCompat) {
                    StateListAnimator.this.mRunningAnimator = null;
                }
            }
        };
    }

    private void cancel() {
        if (this.mRunningAnimator != null) {
            this.mRunningAnimator.cancel();
            this.mRunningAnimator = null;
        }
    }

    private void start(Tuple tuple) {
        this.mRunningAnimator = tuple.mAnimator;
        this.mRunningAnimator.start();
    }

    public void addState(int[] object, ValueAnimatorCompat valueAnimatorCompat) {
        object = new Tuple((int[])object, valueAnimatorCompat);
        valueAnimatorCompat.addListener(this.mAnimationListener);
        this.mTuples.add((Tuple)object);
    }

    public void jumpToCurrentState() {
        if (this.mRunningAnimator != null) {
            this.mRunningAnimator.end();
            this.mRunningAnimator = null;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void setState(int[] var1_1) {
        var3_2 = null;
        var5_3 = this.mTuples.size();
        var4_4 = 0;
        do {
            var2_5 = var3_2;
            if (var4_4 >= var5_3) ** GOTO lbl-1000
            var2_5 = this.mTuples.get(var4_4);
            if (StateSet.stateSetMatches((int[])var2_5.mSpecs, (int[])var1_1)) lbl-1000: // 2 sources:
            {
                if (var2_5 != this.mLastMatch) break;
                return;
            }
            ++var4_4;
        } while (true);
        if (this.mLastMatch != null) {
            this.cancel();
        }
        this.mLastMatch = var2_5;
        if (var2_5 == null) return;
        this.start(var2_5);
    }

    static class Tuple {
        final ValueAnimatorCompat mAnimator;
        final int[] mSpecs;

        Tuple(int[] arrn, ValueAnimatorCompat valueAnimatorCompat) {
            this.mSpecs = arrn;
            this.mAnimator = valueAnimatorCompat;
        }
    }

}

