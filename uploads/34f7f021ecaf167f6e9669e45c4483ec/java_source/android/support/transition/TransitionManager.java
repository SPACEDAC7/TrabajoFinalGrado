/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.view.ViewGroup
 */
package android.support.transition;

import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.transition.Scene;
import android.support.transition.SceneImpl;
import android.support.transition.Transition;
import android.support.transition.TransitionImpl;
import android.support.transition.TransitionManagerIcs;
import android.support.transition.TransitionManagerImpl;
import android.support.transition.TransitionManagerKitKat;
import android.support.transition.TransitionManagerStaticsIcs;
import android.support.transition.TransitionManagerStaticsImpl;
import android.support.transition.TransitionManagerStaticsKitKat;
import android.view.ViewGroup;

public class TransitionManager {
    private static TransitionManagerStaticsImpl sImpl = Build.VERSION.SDK_INT < 19 ? new TransitionManagerStaticsIcs() : new TransitionManagerStaticsKitKat();
    private TransitionManagerImpl mImpl;

    public TransitionManager() {
        if (Build.VERSION.SDK_INT < 19) {
            this.mImpl = new TransitionManagerIcs();
            return;
        }
        this.mImpl = new TransitionManagerKitKat();
    }

    public static void beginDelayedTransition(@NonNull ViewGroup viewGroup) {
        sImpl.beginDelayedTransition(viewGroup);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void beginDelayedTransition(@NonNull ViewGroup viewGroup, @Nullable Transition object) {
        TransitionManagerStaticsImpl transitionManagerStaticsImpl = sImpl;
        object = object == null ? null : object.mImpl;
        transitionManagerStaticsImpl.beginDelayedTransition(viewGroup, (TransitionImpl)object);
    }

    public static void go(@NonNull Scene scene) {
        sImpl.go(scene.mImpl);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void go(@NonNull Scene object, @Nullable Transition transition) {
        TransitionManagerStaticsImpl transitionManagerStaticsImpl = sImpl;
        SceneImpl sceneImpl = object.mImpl;
        object = transition == null ? null : transition.mImpl;
        transitionManagerStaticsImpl.go(sceneImpl, (TransitionImpl)object);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setTransition(@NonNull Scene object, @NonNull Scene object2, @Nullable Transition transition) {
        TransitionManagerImpl transitionManagerImpl = this.mImpl;
        SceneImpl sceneImpl = object.mImpl;
        object2 = object2.mImpl;
        object = transition == null ? null : transition.mImpl;
        transitionManagerImpl.setTransition(sceneImpl, (SceneImpl)object2, (TransitionImpl)object);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setTransition(@NonNull Scene object, @Nullable Transition transition) {
        TransitionManagerImpl transitionManagerImpl = this.mImpl;
        SceneImpl sceneImpl = object.mImpl;
        object = transition == null ? null : transition.mImpl;
        transitionManagerImpl.setTransition(sceneImpl, (TransitionImpl)object);
    }

    public void transitionTo(@NonNull Scene scene) {
        this.mImpl.transitionTo(scene.mImpl);
    }
}

