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
import android.support.transition.FadeIcs;
import android.support.transition.FadeKitKat;
import android.support.transition.TransitionImpl;
import android.support.transition.TransitionInterface;
import android.support.transition.TransitionValues;
import android.support.transition.Visibility;
import android.view.ViewGroup;

public class Fade
extends Visibility {
    public static final int IN = 1;
    public static final int OUT = 2;

    public Fade() {
        this(-1);
    }

    public Fade(int n2) {
        super(true);
        if (Build.VERSION.SDK_INT >= 19) {
            if (n2 > 0) {
                this.mImpl = new FadeKitKat(this, n2);
                return;
            }
            this.mImpl = new FadeKitKat(this);
            return;
        }
        if (n2 > 0) {
            this.mImpl = new FadeIcs(this, n2);
            return;
        }
        this.mImpl = new FadeIcs(this);
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
}

