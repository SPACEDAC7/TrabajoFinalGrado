/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.transition.Transition
 *  android.transition.TransitionSet
 */
package android.support.transition;

import android.support.transition.TransitionImpl;
import android.support.transition.TransitionInterface;
import android.support.transition.TransitionKitKat;
import android.support.transition.TransitionSetImpl;
import android.transition.Transition;
import android.transition.TransitionSet;

class TransitionSetKitKat
extends TransitionKitKat
implements TransitionSetImpl {
    private TransitionSet mTransitionSet = new TransitionSet();

    public TransitionSetKitKat(TransitionInterface transitionInterface) {
        this.init(transitionInterface, (Object)this.mTransitionSet);
    }

    @Override
    public TransitionSetKitKat addTransition(TransitionImpl transitionImpl) {
        this.mTransitionSet.addTransition(((TransitionKitKat)transitionImpl).mTransition);
        return this;
    }

    @Override
    public int getOrdering() {
        return this.mTransitionSet.getOrdering();
    }

    @Override
    public TransitionSetKitKat removeTransition(TransitionImpl transitionImpl) {
        this.mTransitionSet.removeTransition(((TransitionKitKat)transitionImpl).mTransition);
        return this;
    }

    @Override
    public TransitionSetKitKat setOrdering(int n2) {
        this.mTransitionSet.setOrdering(n2);
        return this;
    }
}

