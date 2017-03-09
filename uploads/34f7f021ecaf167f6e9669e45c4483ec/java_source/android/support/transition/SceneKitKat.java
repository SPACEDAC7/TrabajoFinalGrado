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
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class SceneKitKat
extends SceneWrapper {
    private static Field sEnterAction;
    private static Method sSetCurrentScene;
    private View mLayout;

    SceneKitKat() {
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private void invokeEnterAction() {
        if (sEnterAction == null) {
            sEnterAction = Scene.class.getDeclaredField("mEnterAction");
            sEnterAction.setAccessible(true);
        }
        try {
            Runnable runnable = (Runnable)sEnterAction.get((Object)this.mScene);
            if (runnable == null) return;
            runnable.run();
            return;
        }
        catch (IllegalAccessException var1_3) {
            throw new RuntimeException(var1_3);
        }
        catch (NoSuchFieldException noSuchFieldException) {
            throw new RuntimeException(noSuchFieldException);
        }
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private void updateCurrentScene(View view) {
        void var1_4;
        if (sSetCurrentScene == null) {
            sSetCurrentScene = Scene.class.getDeclaredMethod("setCurrentScene", View.class, Scene.class);
            sSetCurrentScene.setAccessible(true);
        }
        sSetCurrentScene.invoke(null, new Object[]{view, this.mScene});
        return;
        catch (NoSuchMethodException noSuchMethodException) {
            throw new RuntimeException(noSuchMethodException);
        }
        catch (IllegalAccessException illegalAccessException) {
            throw new RuntimeException((Throwable)var1_4);
        }
        catch (InvocationTargetException invocationTargetException) {
            throw new RuntimeException((Throwable)var1_4);
        }
    }

    @Override
    public void enter() {
        if (this.mLayout != null) {
            ViewGroup viewGroup = this.getSceneRoot();
            viewGroup.removeAllViews();
            viewGroup.addView(this.mLayout);
            this.invokeEnterAction();
            this.updateCurrentScene((View)viewGroup);
            return;
        }
        this.mScene.enter();
    }

    @Override
    public void init(ViewGroup viewGroup) {
        this.mScene = new Scene(viewGroup);
    }

    @Override
    public void init(ViewGroup viewGroup, View view) {
        if (view instanceof ViewGroup) {
            this.mScene = new Scene(viewGroup, (ViewGroup)view);
            return;
        }
        this.mScene = new Scene(viewGroup);
        this.mLayout = view;
    }
}

