/*
 * Decompiled with CFR 0_115.
 */
package android.support.transition;

import android.support.transition.SceneIcs;
import android.support.transition.SceneImpl;
import android.support.transition.ScenePort;
import android.support.transition.TransitionIcs;
import android.support.transition.TransitionImpl;
import android.support.transition.TransitionManagerImpl;
import android.support.transition.TransitionManagerPort;
import android.support.transition.TransitionPort;

class TransitionManagerIcs
extends TransitionManagerImpl {
    private final TransitionManagerPort mTransitionManager = new TransitionManagerPort();

    TransitionManagerIcs() {
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setTransition(SceneImpl object, SceneImpl object2, TransitionImpl transitionImpl) {
        TransitionManagerPort transitionManagerPort = this.mTransitionManager;
        ScenePort scenePort = ((SceneIcs)object).mScene;
        object2 = ((SceneIcs)object2).mScene;
        object = transitionImpl == null ? null : ((TransitionIcs)transitionImpl).mTransition;
        transitionManagerPort.setTransition(scenePort, (ScenePort)object2, (TransitionPort)object);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setTransition(SceneImpl object, TransitionImpl transitionImpl) {
        TransitionManagerPort transitionManagerPort = this.mTransitionManager;
        ScenePort scenePort = ((SceneIcs)object).mScene;
        object = transitionImpl == null ? null : ((TransitionIcs)transitionImpl).mTransition;
        transitionManagerPort.setTransition(scenePort, (TransitionPort)object);
    }

    @Override
    public void transitionTo(SceneImpl sceneImpl) {
        this.mTransitionManager.transitionTo(((SceneIcs)sceneImpl).mScene);
    }
}

