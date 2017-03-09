/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.transition.Scene
 *  android.view.ViewGroup
 */
package android.support.transition;

import android.support.transition.SceneImpl;
import android.transition.Scene;
import android.view.ViewGroup;

abstract class SceneWrapper
extends SceneImpl {
    Scene mScene;

    SceneWrapper() {
    }

    @Override
    public void exit() {
        this.mScene.exit();
    }

    @Override
    public ViewGroup getSceneRoot() {
        return this.mScene.getSceneRoot();
    }

    @Override
    public void setEnterAction(Runnable runnable) {
        this.mScene.setEnterAction(runnable);
    }

    @Override
    public void setExitAction(Runnable runnable) {
        this.mScene.setExitAction(runnable);
    }
}

