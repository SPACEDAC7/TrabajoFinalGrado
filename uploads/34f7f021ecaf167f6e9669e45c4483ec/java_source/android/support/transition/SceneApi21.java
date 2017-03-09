/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.transition.Scene
 *  android.view.View
 *  android.view.ViewGroup
 */
package android.support.transition;

import android.support.transition.SceneWrapper;
import android.transition.Scene;
import android.view.View;
import android.view.ViewGroup;

class SceneApi21
extends SceneWrapper {
    SceneApi21() {
    }

    @Override
    public void enter() {
        this.mScene.enter();
    }

    @Override
    public void init(ViewGroup viewGroup) {
        this.mScene = new Scene(viewGroup);
    }

    @Override
    public void init(ViewGroup viewGroup, View view) {
        this.mScene = new Scene(viewGroup, view);
    }
}

