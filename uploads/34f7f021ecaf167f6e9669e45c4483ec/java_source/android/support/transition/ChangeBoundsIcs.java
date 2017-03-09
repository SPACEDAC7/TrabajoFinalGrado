/*
 * Decompiled with CFR 0_115.
 */
package android.support.transition;

import android.support.transition.ChangeBoundsInterface;
import android.support.transition.ChangeBoundsPort;
import android.support.transition.TransitionIcs;
import android.support.transition.TransitionInterface;
import android.support.transition.TransitionPort;

class ChangeBoundsIcs
extends TransitionIcs
implements ChangeBoundsInterface {
    public ChangeBoundsIcs(TransitionInterface transitionInterface) {
        this.init(transitionInterface, new ChangeBoundsPort());
    }

    @Override
    public void setResizeClip(boolean bl) {
        ((ChangeBoundsPort)this.mTransition).setResizeClip(bl);
    }
}

