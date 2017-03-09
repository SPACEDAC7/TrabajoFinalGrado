/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.transition.Transition
 *  android.transition.TransitionValues
 *  android.transition.Visibility
 *  android.view.ViewGroup
 */
package android.support.transition;

import android.animation.Animator;
import android.support.transition.TransitionInterface;
import android.support.transition.TransitionKitKat;
import android.support.transition.TransitionValues;
import android.support.transition.VisibilityImpl;
import android.support.transition.VisibilityInterface;
import android.transition.Transition;
import android.transition.Visibility;
import android.view.ViewGroup;

class VisibilityKitKat
extends TransitionKitKat
implements VisibilityImpl {
    VisibilityKitKat() {
    }

    @Override
    public void init(TransitionInterface transitionInterface, Object object) {
        this.mExternalTransition = transitionInterface;
        if (object == null) {
            this.mTransition = new VisibilityWrapper((VisibilityInterface)transitionInterface);
            return;
        }
        this.mTransition = (Visibility)object;
    }

    @Override
    public boolean isVisible(TransitionValues transitionValues) {
        return ((Visibility)this.mTransition).isVisible(VisibilityKitKat.convertToPlatform(transitionValues));
    }

    @Override
    public Animator onAppear(ViewGroup viewGroup, TransitionValues transitionValues, int n2, TransitionValues transitionValues2, int n3) {
        return ((Visibility)this.mTransition).onAppear(viewGroup, VisibilityKitKat.convertToPlatform(transitionValues), n2, VisibilityKitKat.convertToPlatform(transitionValues2), n3);
    }

    @Override
    public Animator onDisappear(ViewGroup viewGroup, TransitionValues transitionValues, int n2, TransitionValues transitionValues2, int n3) {
        return ((Visibility)this.mTransition).onDisappear(viewGroup, VisibilityKitKat.convertToPlatform(transitionValues), n2, VisibilityKitKat.convertToPlatform(transitionValues2), n3);
    }

    private static class VisibilityWrapper
    extends Visibility {
        private final VisibilityInterface mVisibility;

        VisibilityWrapper(VisibilityInterface visibilityInterface) {
            this.mVisibility = visibilityInterface;
        }

        public void captureEndValues(android.transition.TransitionValues transitionValues) {
            TransitionKitKat.wrapCaptureEndValues(this.mVisibility, transitionValues);
        }

        public void captureStartValues(android.transition.TransitionValues transitionValues) {
            TransitionKitKat.wrapCaptureStartValues(this.mVisibility, transitionValues);
        }

        public Animator createAnimator(ViewGroup viewGroup, android.transition.TransitionValues transitionValues, android.transition.TransitionValues transitionValues2) {
            return this.mVisibility.createAnimator(viewGroup, TransitionKitKat.convertToSupport(transitionValues), TransitionKitKat.convertToSupport(transitionValues2));
        }

        public boolean isVisible(android.transition.TransitionValues transitionValues) {
            if (transitionValues == null) {
                return false;
            }
            TransitionValues transitionValues2 = new TransitionValues();
            TransitionKitKat.copyValues(transitionValues, transitionValues2);
            return this.mVisibility.isVisible(transitionValues2);
        }

        public Animator onAppear(ViewGroup viewGroup, android.transition.TransitionValues transitionValues, int n2, android.transition.TransitionValues transitionValues2, int n3) {
            return this.mVisibility.onAppear(viewGroup, TransitionKitKat.convertToSupport(transitionValues), n2, TransitionKitKat.convertToSupport(transitionValues2), n3);
        }

        public Animator onDisappear(ViewGroup viewGroup, android.transition.TransitionValues transitionValues, int n2, android.transition.TransitionValues transitionValues2, int n3) {
            return this.mVisibility.onDisappear(viewGroup, TransitionKitKat.convertToSupport(transitionValues), n2, TransitionKitKat.convertToSupport(transitionValues2), n3);
        }
    }

}

