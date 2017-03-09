/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.transition.Scene
 *  android.transition.Transition
 *  android.transition.TransitionManager
 */
package android.support.transition;

import android.support.transition.SceneImpl;
import android.support.transition.SceneWrapper;
import android.support.transition.TransitionImpl;
import android.support.transition.TransitionKitKat;
import android.support.transition.TransitionManagerImpl;
import android.transition.Scene;
import android.transition.Transition;
import android.transition.TransitionManager;

class TransitionManagerKitKat
extends TransitionManagerImpl {
    private final TransitionManager mTransitionManager = new TransitionManager();

    TransitionManagerKitKat() {
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setTransition(SceneImpl sceneImpl, SceneImpl sceneImpl2, TransitionImpl transitionImpl) {
        TransitionManager transitionManager = this.mTransitionManager;
        Scene scene = ((SceneWrapper)sceneImpl).mScene;
        sceneImpl2 = ((SceneWrapper)sceneImpl2).mScene;
        sceneImpl = transitionImpl == null ? null : ((TransitionKitKat)transitionImpl).mTransition;
        transitionManager.setTransition(scene, (Scene)sceneImpl2, (Transition)sceneImpl);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setTransition(SceneImpl sceneImpl, TransitionImpl transitionImpl) {
        TransitionManager transitionManager = this.mTransitionManager;
        Scene scene = ((SceneWrapper)sceneImpl).mScene;
        sceneImpl = transitionImpl == null ? null : ((TransitionKitKat)transitionImpl).mTransition;
        transitionManager.setTransition(scene, (Transition)sceneImpl);
    }

    @Override
    public void transitionTo(SceneImpl sceneImpl) {
        this.mTransitionManager.transitionTo(((SceneWrapper)sceneImpl).mScene);
    }
}

