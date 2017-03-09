/*
 * Decompiled with CFR 0_115.
 */
package android.support.transition;

import android.support.transition.ChangeBoundsPort;
import android.support.transition.FadePort;
import android.support.transition.TransitionPort;
import android.support.transition.TransitionSetPort;

class AutoTransitionPort
extends TransitionSetPort {
    public AutoTransitionPort() {
        this.setOrdering(1);
        this.addTransition(new FadePort(2)).addTransition(new ChangeBoundsPort()).addTransition(new FadePort(1));
    }
}

