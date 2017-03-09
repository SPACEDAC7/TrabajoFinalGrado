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
import android.support.transition.SceneImpl;
import android.support.transition.SceneKitKat;
import android.support.transition.SceneStaticsImpl;
import android.transition.Scene;
import android.view.ViewGroup;

class SceneStaticsKitKat
extends SceneStaticsImpl {
    SceneStaticsKitKat() {
    }

    @Override
    public SceneImpl getSceneForLayout(ViewGroup viewGroup, int n2, Context context) {
        SceneKitKat sceneKitKat = new SceneKitKat();
        sceneKitKat.mScene = Scene.getSceneForLayout((ViewGroup)viewGroup, (int)n2, (Context)context);
        return sceneKitKat;
    }
}

