/*
 * Decompiled with CFR 0_115.
 */
package android.support.transition;

import android.support.transition.TransitionIcs;
import android.support.transition.TransitionImpl;
import android.support.transition.TransitionInterface;
import android.support.transition.TransitionPort;
import android.support.transition.TransitionSetImpl;
import android.support.transition.TransitionSetPort;

class TransitionSetIcs
extends TransitionIcs
implements TransitionSetImpl {
    private TransitionSetPort mTransitionSet = new TransitionSetPort();

    public TransitionSetIcs(TransitionInterface transitionInterface) {
        this.init(transitionInterface, this.mTransitionSet);
    }

    @Override
    public TransitionSetIcs addTransition(TransitionImpl transitionImpl) {
        this.mTransitionSet.addTransition(((TransitionIcs)transitionImpl).mTransition);
        return this;
    }

    @Override
    public int getOrdering() {
        return this.mTransitionSet.getOrdering();
    }

    @Override
    public TransitionSetIcs removeTransition(TransitionImpl transitionImpl) {
        this.mTransitionSet.removeTransition(((TransitionIcs)transitionImpl).mTransition);
        return this;
    }

    @Override
    public TransitionSetIcs setOrdering(int n2) {
        this.mTransitionSet.setOrdering(n2);
        return this;
    }
}

