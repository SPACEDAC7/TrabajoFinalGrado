/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.UiModeManager
 *  android.content.Context
 *  android.view.ActionMode
 *  android.view.ActionMode$Callback
 *  android.view.Window
 *  android.view.Window$Callback
 */
package android.support.v7.app;

import android.app.UiModeManager;
import android.content.Context;
import android.support.v7.app.AppCompatCallback;
import android.support.v7.app.AppCompatDelegateImplV14;
import android.view.ActionMode;
import android.view.Window;

class AppCompatDelegateImplV23
extends AppCompatDelegateImplV14 {
    private final UiModeManager mUiModeManager;

    AppCompatDelegateImplV23(Context context, Window window, AppCompatCallback appCompatCallback) {
        super(context, window, appCompatCallback);
        this.mUiModeManager = (UiModeManager)context.getSystemService("uimode");
    }

    @Override
    int mapNightMode(int n2) {
        if (n2 == 0 && this.mUiModeManager.getNightMode() == 0) {
            return -1;
        }
        return super.mapNightMode(n2);
    }

    @Override
    Window.Callback wrapWindowCallback(Window.Callback callback) {
        return new AppCompatWindowCallbackV23(callback);
    }

    class AppCompatWindowCallbackV23
    extends AppCompatDelegateImplV14.AppCompatWindowCallbackV14 {
        AppCompatWindowCallbackV23(Window.Callback callback) {
            super(callback);
        }

        @Override
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return null;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int n2) {
            if (!AppCompatDelegateImplV23.this.isHandleNativeActionModesEnabled()) return super.onWindowStartingActionMode(callback, n2);
            switch (n2) {
                default: {
                    return super.onWindowStartingActionMode(callback, n2);
                }
                case 0: 
            }
            return this.startAsSupportActionMode(callback);
        }
    }

}

