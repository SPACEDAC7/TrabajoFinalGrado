/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.TimeInterpolator
 *  android.view.ViewGroup
 */
package android.support.design.internal;

import android.animation.TimeInterpolator;
import android.support.design.internal.BottomNavigationAnimationHelperBase;
import android.support.design.internal.TextScale;
import android.support.transition.AutoTransition;
import android.support.transition.Transition;
import android.support.transition.TransitionManager;
import android.support.transition.TransitionSet;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.view.ViewGroup;

class BottomNavigationAnimationHelperIcs
extends BottomNavigationAnimationHelperBase {
    private static final long ACTIVE_ANIMATION_DURATION_MS = 115;
    private final TransitionSet mSet = new AutoTransition();

    BottomNavigationAnimationHelperIcs() {
        this.mSet.setOrdering(0);
        this.mSet.setDuration(115);
        this.mSet.setInterpolator((TimeInterpolator)new FastOutSlowInInterpolator());
        TextScale textScale = new TextScale();
        this.mSet.addTransition(textScale);
    }

    @Override
    void beginDelayedTransition(ViewGroup viewGroup) {
        TransitionManager.beginDelayedTransition(viewGroup, this.mSet);
    }
}

