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
import android.support.transition.Transition;
import android.support.transition.TransitionImpl;
import android.support.transition.TransitionInterface;
import android.support.transition.TransitionValues;
import android.support.transition.VisibilityIcs;
import android.support.transition.VisibilityImpl;
import android.support.transition.VisibilityInterface;
import android.support.transition.VisibilityKitKat;
import android.view.ViewGroup;

public abstract class Visibility
extends Transition
implements VisibilityInterface {
    public Visibility() {
        this(false);
    }

    /*
     * Enabled aggressive block sorting
     */
    Visibility(boolean bl) {
        super(true);
        if (!bl) {
            this.mImpl = Build.VERSION.SDK_INT >= 19 ? new VisibilityKitKat() : new VisibilityIcs();
            this.mImpl.init(this);
        }
    }

    @Override
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        this.mImpl.captureEndValues(transitionValues);
    }

    @Override
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        this.mImpl.captureStartValues(transitionValues);
    }

    @Override
    public boolean isVisible(TransitionValues transitionValues) {
        return ((VisibilityImpl)((Object)this.mImpl)).isVisible(transitionValues);
    }

    @Override
    public Animator onAppear(ViewGroup viewGroup, TransitionValues transitionValues, int n2, TransitionValues transitionValues2, int n3) {
        return ((VisibilityImpl)((Object)this.mImpl)).onAppear(viewGroup, transitionValues, n2, transitionValues2, n3);
    }

    @Override
    public Animator onDisappear(ViewGroup viewGroup, TransitionValues transitionValues, int n2, TransitionValues transitionValues2, int n3) {
        return ((VisibilityImpl)((Object)this.mImpl)).onDisappear(viewGroup, transitionValues, n2, transitionValues2, n3);
    }
}

