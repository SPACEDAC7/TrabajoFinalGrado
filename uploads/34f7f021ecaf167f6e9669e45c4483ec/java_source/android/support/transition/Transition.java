/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.animation.TimeInterpolator
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.view.View
 *  android.view.ViewGroup
 */
package android.support.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.os.Build;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.transition.TransitionApi23;
import android.support.transition.TransitionIcs;
import android.support.transition.TransitionImpl;
import android.support.transition.TransitionInterface;
import android.support.transition.TransitionInterfaceListener;
import android.support.transition.TransitionKitKat;
import android.support.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public abstract class Transition
implements TransitionInterface {
    TransitionImpl mImpl;

    public Transition() {
        this(false);
    }

    /*
     * Enabled aggressive block sorting
     */
    Transition(boolean bl) {
        if (!bl) {
            this.mImpl = Build.VERSION.SDK_INT >= 23 ? new TransitionApi23() : (Build.VERSION.SDK_INT >= 19 ? new TransitionKitKat() : new TransitionIcs());
            this.mImpl.init(this);
        }
    }

    @NonNull
    public Transition addListener(@NonNull TransitionListener transitionListener) {
        this.mImpl.addListener(transitionListener);
        return this;
    }

    @NonNull
    public Transition addTarget(@IdRes int n2) {
        this.mImpl.addTarget(n2);
        return this;
    }

    @NonNull
    public Transition addTarget(@NonNull View view) {
        this.mImpl.addTarget(view);
        return this;
    }

    @Override
    public abstract void captureEndValues(@NonNull TransitionValues var1);

    @Override
    public abstract void captureStartValues(@NonNull TransitionValues var1);

    @Nullable
    @Override
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        return null;
    }

    @NonNull
    public Transition excludeChildren(@IdRes int n2, boolean bl) {
        this.mImpl.excludeChildren(n2, bl);
        return this;
    }

    @NonNull
    public Transition excludeChildren(@NonNull View view, boolean bl) {
        this.mImpl.excludeChildren(view, bl);
        return this;
    }

    @NonNull
    public Transition excludeChildren(@NonNull Class class_, boolean bl) {
        this.mImpl.excludeChildren(class_, bl);
        return this;
    }

    @NonNull
    public Transition excludeTarget(@IdRes int n2, boolean bl) {
        this.mImpl.excludeTarget(n2, bl);
        return this;
    }

    @NonNull
    public Transition excludeTarget(@NonNull View view, boolean bl) {
        this.mImpl.excludeTarget(view, bl);
        return this;
    }

    @NonNull
    public Transition excludeTarget(@NonNull Class class_, boolean bl) {
        this.mImpl.excludeTarget(class_, bl);
        return this;
    }

    public long getDuration() {
        return this.mImpl.getDuration();
    }

    @Nullable
    public TimeInterpolator getInterpolator() {
        return this.mImpl.getInterpolator();
    }

    @NonNull
    public String getName() {
        return this.mImpl.getName();
    }

    public long getStartDelay() {
        return this.mImpl.getStartDelay();
    }

    @NonNull
    public List<Integer> getTargetIds() {
        return this.mImpl.getTargetIds();
    }

    @NonNull
    public List<View> getTargets() {
        return this.mImpl.getTargets();
    }

    @Nullable
    public String[] getTransitionProperties() {
        return this.mImpl.getTransitionProperties();
    }

    @NonNull
    public TransitionValues getTransitionValues(@NonNull View view, boolean bl) {
        return this.mImpl.getTransitionValues(view, bl);
    }

    @NonNull
    public Transition removeListener(@NonNull TransitionListener transitionListener) {
        this.mImpl.removeListener(transitionListener);
        return this;
    }

    @NonNull
    public Transition removeTarget(@IdRes int n2) {
        this.mImpl.removeTarget(n2);
        return this;
    }

    @NonNull
    public Transition removeTarget(@NonNull View view) {
        this.mImpl.removeTarget(view);
        return this;
    }

    @NonNull
    public Transition setDuration(long l2) {
        this.mImpl.setDuration(l2);
        return this;
    }

    @NonNull
    public Transition setInterpolator(@Nullable TimeInterpolator timeInterpolator) {
        this.mImpl.setInterpolator(timeInterpolator);
        return this;
    }

    @NonNull
    public Transition setStartDelay(long l2) {
        this.mImpl.setStartDelay(l2);
        return this;
    }

    public String toString() {
        return this.mImpl.toString();
    }

    public static interface TransitionListener
    extends TransitionInterfaceListener<Transition> {
        @Override
        public void onTransitionCancel(@NonNull Transition var1);

        @Override
        public void onTransitionEnd(@NonNull Transition var1);

        @Override
        public void onTransitionPause(@NonNull Transition var1);

        @Override
        public void onTransitionResume(@NonNull Transition var1);

        @Override
        public void onTransitionStart(@NonNull Transition var1);
    }

}

