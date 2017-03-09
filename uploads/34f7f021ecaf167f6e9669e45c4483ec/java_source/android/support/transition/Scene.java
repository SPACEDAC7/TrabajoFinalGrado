/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.SparseArray
 *  android.view.View
 *  android.view.ViewGroup
 */
package android.support.transition;

import android.content.Context;
import android.os.Build;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.transition.R;
import android.support.transition.SceneApi21;
import android.support.transition.SceneIcs;
import android.support.transition.SceneImpl;
import android.support.transition.SceneKitKat;
import android.support.transition.SceneStaticsApi21;
import android.support.transition.SceneStaticsIcs;
import android.support.transition.SceneStaticsImpl;
import android.support.transition.SceneStaticsKitKat;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;

public class Scene {
    private static SceneStaticsImpl sImpl = Build.VERSION.SDK_INT >= 21 ? new SceneStaticsApi21() : (Build.VERSION.SDK_INT >= 19 ? new SceneStaticsKitKat() : new SceneStaticsIcs());
    SceneImpl mImpl;

    private Scene(SceneImpl sceneImpl) {
        this.mImpl = sceneImpl;
    }

    public Scene(@NonNull ViewGroup viewGroup) {
        this.mImpl = this.createSceneImpl();
        this.mImpl.init(viewGroup);
    }

    public Scene(@NonNull ViewGroup viewGroup, @NonNull View view) {
        this.mImpl = this.createSceneImpl();
        this.mImpl.init(viewGroup, view);
    }

    private SceneImpl createSceneImpl() {
        if (Build.VERSION.SDK_INT >= 21) {
            return new SceneApi21();
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return new SceneKitKat();
        }
        return new SceneIcs();
    }

    @NonNull
    public static Scene getSceneForLayout(@NonNull ViewGroup object, @LayoutRes int n2, @NonNull Context context) {
        Object object2;
        Object object3 = object2 = (SparseArray)object.getTag(R.id.transition_scene_layoutid_cache);
        if (object2 == null) {
            object3 = new SparseArray();
            object.setTag(R.id.transition_scene_layoutid_cache, object3);
        }
        if ((object2 = (Scene)object3.get(n2)) != null) {
            return object2;
        }
        object = new Scene(sImpl.getSceneForLayout((ViewGroup)object, n2, context));
        object3.put(n2, object);
        return object;
    }

    public void enter() {
        this.mImpl.enter();
    }

    public void exit() {
        this.mImpl.exit();
    }

    @NonNull
    public ViewGroup getSceneRoot() {
        return this.mImpl.getSceneRoot();
    }

    public void setEnterAction(@Nullable Runnable runnable) {
        this.mImpl.setEnterAction(runnable);
    }

    public void setExitAction(@Nullable Runnable runnable) {
        this.mImpl.setExitAction(runnable);
    }
}

