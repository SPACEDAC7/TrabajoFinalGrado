/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.view.ViewGroup
 */
package android.support.transition;

import android.content.Context;
import android.support.transition.SceneIcs;
import android.support.transition.SceneImpl;
import android.support.transition.ScenePort;
import android.support.transition.SceneStaticsImpl;
import android.view.ViewGroup;

class SceneStaticsIcs
extends SceneStaticsImpl {
    SceneStaticsIcs() {
    }

    @Override
    public SceneImpl getSceneForLayout(ViewGroup viewGroup, int n2, Context context) {
        SceneIcs sceneIcs = new SceneIcs();
        sceneIcs.mScene = ScenePort.getSceneForLayout(viewGroup, n2, context);
        return sceneIcs;
    }
}

