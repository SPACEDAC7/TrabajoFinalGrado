/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.transition.ChangeBounds
 *  android.transition.Transition
 */
package android.support.transition;

import android.support.transition.ChangeBoundsInterface;
import android.support.transition.TransitionInterface;
import android.support.transition.TransitionKitKat;
import android.transition.ChangeBounds;
import android.transition.Transition;

class ChangeBoundsKitKat
extends TransitionKitKat
implements ChangeBoundsInterface {
    public ChangeBoundsKitKat(TransitionInterface transitionInterface) {
        this.init(transitionInterface, (Object)new ChangeBounds());
    }

    @Override
    public void setResizeClip(boolean bl) {
        ((ChangeBounds)this.mTransition).setResizeClip(bl);
    }
}

