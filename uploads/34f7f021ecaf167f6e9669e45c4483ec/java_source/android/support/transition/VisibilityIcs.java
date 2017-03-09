/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.view.ViewGroup
 */
package android.support.transition;

import android.animation.Animator;
import android.support.transition.TransitionIcs;
import android.support.transition.TransitionInterface;
import android.support.transition.TransitionPort;
import android.support.transition.TransitionValues;
import android.support.transition.VisibilityImpl;
import android.support.transition.VisibilityInterface;
import android.support.transition.VisibilityPort;
import android.view.ViewGroup;

class VisibilityIcs
extends TransitionIcs
implements VisibilityImpl {
    VisibilityIcs() {
    }

    @Override
    public void init(TransitionInterface transitionInterface, Object object) {
        this.mExternalTransition = transitionInterface;
        if (object == null) {
            this.mTransition = new VisibilityWrapper((VisibilityInterface)transitionInterface);
            return;
        }
        this.mTransition = (VisibilityPort)object;
    }

    @Override
    public boolean isVisible(TransitionValues transitionValues) {
        return ((VisibilityPort)this.mTransition).isVisible(transitionValues);
    }

    @Override
    public Animator onAppear(ViewGroup viewGroup, TransitionValues transitionValues, int n2, TransitionValues transitionValues2, int n3) {
        return ((VisibilityPort)this.mTransition).onAppear(viewGroup, transitionValues, n2, transitionValues2, n3);
    }

    @Override
    public Animator onDisappear(ViewGroup viewGroup, TransitionValues transitionValues, int n2, TransitionValues transitionValues2, int n3) {
        return ((VisibilityPort)this.mTransition).onDisappear(viewGroup, transitionValues, n2, transitionValues2, n3);
    }

    private static class VisibilityWrapper
    extends VisibilityPort {
        private VisibilityInterface mVisibility;

        VisibilityWrapper(VisibilityInterface visibilityInterface) {
            this.mVisibility = visibilityInterface;
        }

        @Override
        public void captureEndValues(TransitionValues transitionValues) {
            this.mVisibility.captureEndValues(transitionValues);
        }

        @Override
        public void captureStartValues(TransitionValues transitionValues) {
            this.mVisibility.captureStartValues(transitionValues);
        }

        @Override
        public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
            return this.mVisibility.createAnimator(viewGroup, transitionValues, transitionValues2);
        }

        @Override
        public boolean isVisible(TransitionValues transitionValues) {
            return this.mVisibility.isVisible(transitionValues);
        }

        @Override
        public Animator onAppear(ViewGroup viewGroup, TransitionValues transitionValues, int n2, TransitionValues transitionValues2, int n3) {
            return this.mVisibility.onAppear(viewGroup, transitionValues, n2, transitionValues2, n3);
        }

        @Override
        public Animator onDisappear(ViewGroup viewGroup, TransitionValues transitionValues, int n2, TransitionValues transitionValues2, int n3) {
            return this.mVisibility.onDisappear(viewGroup, transitionValues, n2, transitionValues2, n3);
        }
    }

}

