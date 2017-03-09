/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.view.ViewGroup
 */
package android.support.transition;

import android.animation.Animator;
import android.support.transition.FadePort;
import android.support.transition.TransitionIcs;
import android.support.transition.TransitionInterface;
import android.support.transition.TransitionPort;
import android.support.transition.TransitionValues;
import android.support.transition.VisibilityImpl;
import android.view.ViewGroup;

class FadeIcs
extends TransitionIcs
implements VisibilityImpl {
    public FadeIcs(TransitionInterface transitionInterface) {
        this.init(transitionInterface, new FadePort());
    }

    public FadeIcs(TransitionInterface transitionInterface, int n2) {
        this.init(transitionInterface, new FadePort(n2));
    }

    @Override
    public boolean isVisible(TransitionValues transitionValues) {
        return ((FadePort)this.mTransition).isVisible(transitionValues);
    }

    @Override
    public Animator onAppear(ViewGroup viewGroup, TransitionValues transitionValues, int n2, TransitionValues transitionValues2, int n3) {
        return ((FadePort)this.mTransition).onAppear(viewGroup, transitionValues, n2, transitionValues2, n3);
    }

    @Override
    public Animator onDisappear(ViewGroup viewGroup, TransitionValues transitionValues, int n2, TransitionValues transitionValues2, int n3) {
        return ((FadePort)this.mTransition).onDisappear(viewGroup, transitionValues, n2, transitionValues, n2);
    }
}

