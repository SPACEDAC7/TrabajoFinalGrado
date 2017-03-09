/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.transition.Fade
 *  android.transition.Transition
 *  android.transition.TransitionValues
 *  android.view.ViewGroup
 */
package android.support.transition;

import android.animation.Animator;
import android.support.transition.TransitionInterface;
import android.support.transition.TransitionKitKat;
import android.support.transition.TransitionValues;
import android.support.transition.VisibilityImpl;
import android.transition.Fade;
import android.transition.Transition;
import android.view.ViewGroup;

class FadeKitKat
extends TransitionKitKat
implements VisibilityImpl {
    public FadeKitKat(TransitionInterface transitionInterface) {
        this.init(transitionInterface, (Object)new Fade());
    }

    public FadeKitKat(TransitionInterface transitionInterface, int n2) {
        this.init(transitionInterface, (Object)new Fade(n2));
    }

    @Override
    public boolean isVisible(TransitionValues transitionValues) {
        return ((Fade)this.mTransition).isVisible(FadeKitKat.convertToPlatform(transitionValues));
    }

    @Override
    public Animator onAppear(ViewGroup viewGroup, TransitionValues transitionValues, int n2, TransitionValues transitionValues2, int n3) {
        return ((Fade)this.mTransition).onAppear(viewGroup, FadeKitKat.convertToPlatform(transitionValues), n2, FadeKitKat.convertToPlatform(transitionValues2), n3);
    }

    @Override
    public Animator onDisappear(ViewGroup viewGroup, TransitionValues transitionValues, int n2, TransitionValues transitionValues2, int n3) {
        return ((Fade)this.mTransition).onDisappear(viewGroup, FadeKitKat.convertToPlatform(transitionValues), n2, FadeKitKat.convertToPlatform(transitionValues2), n3);
    }
}

