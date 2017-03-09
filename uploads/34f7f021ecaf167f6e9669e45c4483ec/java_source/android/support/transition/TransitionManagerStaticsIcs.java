/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.ViewGroup
 */
package android.support.transition;

import android.support.transition.SceneIcs;
import android.support.transition.SceneImpl;
import android.support.transition.ScenePort;
import android.support.transition.TransitionIcs;
import android.support.transition.TransitionImpl;
import android.support.transition.TransitionManagerPort;
import android.support.transition.TransitionManagerStaticsImpl;
import android.support.transition.TransitionPort;
import android.view.ViewGroup;

class TransitionManagerStaticsIcs
extends TransitionManagerStaticsImpl {
    TransitionManagerStaticsIcs() {
    }

    @Override
    public void beginDelayedTransition(ViewGroup viewGroup) {
        TransitionManagerPort.beginDelayedTransition(viewGroup);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void beginDelayedTransition(ViewGroup viewGroup, TransitionImpl object) {
        object = object == null ? null : ((TransitionIcs)object).mTransition;
        TransitionManagerPort.beginDelayedTransition(viewGroup, (TransitionPort)object);
    }

    @Override
    public void go(SceneImpl sceneImpl) {
        TransitionManagerPort.go(((SceneIcs)sceneImpl).mScene);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void go(SceneImpl object, TransitionImpl transitionImpl) {
        ScenePort scenePort = ((SceneIcs)object).mScene;
        object = transitionImpl == null ? null : ((TransitionIcs)transitionImpl).mTransition;
        TransitionManagerPort.go(scenePort, (TransitionPort)object);
    }
}

