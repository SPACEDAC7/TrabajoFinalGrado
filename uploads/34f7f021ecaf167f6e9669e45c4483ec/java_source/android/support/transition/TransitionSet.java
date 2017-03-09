/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.view.ViewGroup
 */
package android.support.transition;

import android.animation.Animator;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.transition.Transition;
import android.support.transition.TransitionImpl;
import android.support.transition.TransitionInterface;
import android.support.transition.TransitionSetIcs;
import android.support.transition.TransitionSetImpl;
import android.support.transition.TransitionSetKitKat;
import android.support.transition.TransitionValues;
import android.view.ViewGroup;

public class TransitionSet
extends Transition {
    public static final int ORDERING_SEQUENTIAL = 1;
    public static final int ORDERING_TOGETHER = 0;

    public TransitionSet() {
        super(true);
        if (Build.VERSION.SDK_INT < 19) {
            this.mImpl = new TransitionSetIcs(this);
            return;
        }
        this.mImpl = new TransitionSetKitKat(this);
    }

    @NonNull
    public TransitionSet addTransition(@NonNull Transition transition) {
        ((TransitionSetImpl)((Object)this.mImpl)).addTransition(transition.mImpl);
        return this;
    }

    @Override
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        this.mImpl.captureEndValues(transitionValues);
    }

    @Override
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        this.mImpl.captureStartValues(transitionValues);
    }

    @Nullable
    @Override
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @NonNull TransitionValues transitionValues, @NonNull TransitionValues transitionValues2) {
        return this.mImpl.createAnimator(viewGroup, transitionValues, transitionValues2);
    }

    public int getOrdering() {
        return ((TransitionSetImpl)((Object)this.mImpl)).getOrdering();
    }

    @NonNull
    public TransitionSet removeTransition(@NonNull Transition transition) {
        ((TransitionSetImpl)((Object)this.mImpl)).removeTransition(transition.mImpl);
        return this;
    }

    @NonNull
    public TransitionSet setOrdering(int n2) {
        ((TransitionSetImpl)((Object)this.mImpl)).setOrdering(n2);
        return this;
    }
}

