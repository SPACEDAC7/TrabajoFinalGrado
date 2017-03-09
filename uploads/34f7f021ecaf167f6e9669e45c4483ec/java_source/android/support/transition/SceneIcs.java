/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 *  android.view.ViewGroup
 */
package android.support.transition;

import android.support.transition.SceneImpl;
import android.support.transition.ScenePort;
import android.view.View;
import android.view.ViewGroup;

class SceneIcs
extends SceneImpl {
    ScenePort mScene;

    SceneIcs() {
    }

    @Override
    public void enter() {
        this.mScene.enter();
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
    public void init(ViewGroup viewGroup) {
        this.mScene = new ScenePort(viewGroup);
    }

    @Override
    public void init(ViewGroup viewGroup, View view) {
        this.mScene = new ScenePort(viewGroup, view);
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

