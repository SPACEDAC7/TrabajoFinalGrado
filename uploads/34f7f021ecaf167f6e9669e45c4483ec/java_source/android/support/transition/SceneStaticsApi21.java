/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.transition.Scene
 *  android.view.ViewGroup
 */
package android.support.transition;

import android.content.Context;
import android.support.transition.SceneApi21;
import android.support.transition.SceneImpl;
import android.support.transition.SceneStaticsImpl;
import android.transition.Scene;
import android.view.ViewGroup;

class SceneStaticsApi21
extends SceneStaticsImpl {
    SceneStaticsApi21() {
    }

    @Override
    public SceneImpl getSceneForLayout(ViewGroup viewGroup, int n2, Context context) {
        SceneApi21 sceneApi21 = new SceneApi21();
        sceneApi21.mScene = Scene.getSceneForLayout((ViewGroup)viewGroup, (int)n2, (Context)context);
        return sceneApi21;
    }
}

