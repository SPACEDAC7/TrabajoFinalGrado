/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.view.ViewGroup
 */
package android.support.transition;

import android.animation.Animator;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.transition.ChangeBoundsIcs;
import android.support.transition.ChangeBoundsInterface;
import android.support.transition.ChangeBoundsKitKat;
import android.support.transition.Transition;
import android.support.transition.TransitionImpl;
import android.support.transition.TransitionInterface;
import android.support.transition.TransitionValues;
import android.view.ViewGroup;

public class ChangeBounds
extends Transition {
    public ChangeBounds() {
        super(true);
        if (Build.VERSION.SDK_INT < 19) {
            this.mImpl = new ChangeBoundsIcs(this);
            return;
        }
        this.mImpl = new ChangeBoundsKitKat(this);
    }

    @Override
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        this.mImpl.captureEndValues(transitionValues);
    }

    @Override
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        this.mImpl.captureStartValues(transitionValues);
    }

    @Nullable
    @Override
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @NonNull TransitionValues transitionValues, @NonNull TransitionValues transitionValues2) {
        return this.mImpl.createAnimator(viewGroup, transitionValues, transitionValues2);
    }

    public void setResizeClip(boolean bl) {
        ((ChangeBoundsInterface)((Object)this.mImpl)).setResizeClip(bl);
    }
}

