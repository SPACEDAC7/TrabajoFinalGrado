/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.transition.Transition
 */
package android.support.transition;

import android.support.transition.TransitionImpl;
import android.support.transition.TransitionKitKat;
import android.transition.Transition;

class TransitionApi23
extends TransitionKitKat {
    TransitionApi23() {
    }

    @Override
    public TransitionImpl removeTarget(int n2) {
        this.mTransition.removeTarget(n2);
        return this;
    }
}

