/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.transition.Scene
 *  android.transition.Transition
 *  android.transition.TransitionManager
 *  android.view.ViewGroup
 */
package android.support.transition;

import android.support.transition.SceneImpl;
import android.support.transition.SceneWrapper;
import android.support.transition.TransitionImpl;
import android.support.transition.TransitionKitKat;
import android.support.transition.TransitionManagerStaticsImpl;
import android.transition.Scene;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.view.ViewGroup;

class TransitionManagerStaticsKitKat
extends TransitionManagerStaticsImpl {
    TransitionManagerStaticsKitKat() {
    }

    @Override
    public void beginDelayedTransition(ViewGroup viewGroup) {
        TransitionManager.beginDelayedTransition((ViewGroup)viewGroup);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void beginDelayedTransition(ViewGroup viewGroup, TransitionImpl transitionImpl) {
        transitionImpl = transitionImpl == null ? null : ((TransitionKitKat)transitionImpl).mTransition;
        TransitionManager.beginDelayedTransition((ViewGroup)viewGroup, (Transition)transitionImpl);
    }

    @Override
    public void go(SceneImpl sceneImpl) {
        TransitionManager.go((Scene)((SceneWrapper)sceneImpl).mScene);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void go(SceneImpl sceneImpl, TransitionImpl transitionImpl) {
        Scene scene = ((SceneWrapper)sceneImpl).mScene;
        sceneImpl = transitionImpl == null ? null : ((TransitionKitKat)transitionImpl).mTransition;
        TransitionManager.go((Scene)scene, (Transition)sceneImpl);
    }
}

