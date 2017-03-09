/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.res.Resources
 *  android.content.res.Resources$NotFoundException
 *  android.graphics.drawable.Drawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.view.KeyEvent
 *  android.view.Menu
 *  android.view.MenuInflater
 *  android.view.View
 *  android.view.Window
 *  android.view.Window$Callback
 */
package android.support.v7.app;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatCallback;
import android.support.v7.app.AppCompatDelegate;
import android.support.v7.appcompat.R;
import android.support.v7.view.ActionMode;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.WindowCallbackWrapper;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.widget.TintTypedArray;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.Window;

abstract class AppCompatDelegateImplBase
extends AppCompatDelegate {
    static final boolean DEBUG = false;
    static final String EXCEPTION_HANDLER_MESSAGE_SUFFIX = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.";
    private static final boolean SHOULD_INSTALL_EXCEPTION_HANDLER;
    private static boolean sInstalledExceptionHandler;
    private static final int[] sWindowBackgroundStyleable;
    ActionBar mActionBar;
    final AppCompatCallback mAppCompatCallback;
    final Window.Callback mAppCompatWindowCallback;
    final Context mContext;
    boolean mHasActionBar;
    private boolean mIsDestroyed;
    boolean mIsFloating;
    private boolean mIsStarted;
    MenuInflater mMenuInflater;
    final Window.Callback mOriginalWindowCallback;
    boolean mOverlayActionBar;
    boolean mOverlayActionMode;
    private CharSequence mTitle;
    final Window mWindow;
    boolean mWindowNoTitle;

    /*
     * Enabled aggressive block sorting
     */
    static {
        boolean bl = Build.VERSION.SDK_INT < 21;
        SHOULD_INSTALL_EXCEPTION_HANDLER = bl;
        if (SHOULD_INSTALL_EXCEPTION_HANDLER && !sInstalledExceptionHandler) {
            Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler(Thread.getDefaultUncaughtExceptionHandler()){
                final /* synthetic */ Thread.UncaughtExceptionHandler val$defHandler;

                /*
                 * Enabled force condition propagation
                 * Lifted jumps to return sites
                 */
                private boolean shouldWrapException(Throwable object) {
                    boolean bl;
                    boolean bl2 = bl = false;
                    if (!(object instanceof Resources.NotFoundException)) return bl2;
                    object = object.getMessage();
                    bl2 = bl;
                    if (object == null) return bl2;
                    if (object.contains("drawable")) return true;
                    bl2 = bl;
                    if (!object.contains("Drawable")) return bl2;
                    return true;
                }

                @Override
                public void uncaughtException(Thread thread, Throwable throwable) {
                    if (this.shouldWrapException(throwable)) {
                        Resources.NotFoundException notFoundException = new Resources.NotFoundException(throwable.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
                        notFoundException.initCause(throwable.getCause());
                        notFoundException.setStackTrace(throwable.getStackTrace());
                        this.val$defHandler.uncaughtException(thread, (Throwable)notFoundException);
                        return;
                    }
                    this.val$defHandler.uncaughtException(thread, throwable);
                }
            });
            sInstalledExceptionHandler = true;
        }
        sWindowBackgroundStyleable = new int[]{16842836};
    }

    AppCompatDelegateImplBase(Context object, Window window, AppCompatCallback appCompatCallback) {
        this.mContext = object;
        this.mWindow = window;
        this.mAppCompatCallback = appCompatCallback;
        this.mOriginalWindowCallback = this.mWindow.getCallback();
        if (this.mOriginalWindowCallback instanceof AppCompatWindowCallbackBase) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        this.mAppCompatWindowCallback = this.wrapWindowCallback(this.mOriginalWindowCallback);
        this.mWindow.setCallback(this.mAppCompatWindowCallback);
        object = TintTypedArray.obtainStyledAttributes((Context)object, null, sWindowBackgroundStyleable);
        window = object.getDrawableIfKnown(0);
        if (window != null) {
            this.mWindow.setBackgroundDrawable((Drawable)window);
        }
        object.recycle();
    }

    @Override
    public boolean applyDayNight() {
        return false;
    }

    abstract boolean dispatchKeyEvent(KeyEvent var1);

    final Context getActionBarThemedContext() {
        Context context = null;
        ActionBar actionBar = this.getSupportActionBar();
        if (actionBar != null) {
            context = actionBar.getThemedContext();
        }
        actionBar = context;
        if (context == null) {
            actionBar = this.mContext;
        }
        return actionBar;
    }

    @Override
    public final ActionBarDrawerToggle.Delegate getDrawerToggleDelegate() {
        return new ActionBarDrawableToggleImpl();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public MenuInflater getMenuInflater() {
        if (this.mMenuInflater == null) {
            this.initWindowDecorActionBar();
            Context context = this.mActionBar != null ? this.mActionBar.getThemedContext() : this.mContext;
            this.mMenuInflater = new SupportMenuInflater(context);
        }
        return this.mMenuInflater;
    }

    @Override
    public ActionBar getSupportActionBar() {
        this.initWindowDecorActionBar();
        return this.mActionBar;
    }

    final CharSequence getTitle() {
        if (this.mOriginalWindowCallback instanceof Activity) {
            return ((Activity)this.mOriginalWindowCallback).getTitle();
        }
        return this.mTitle;
    }

    final Window.Callback getWindowCallback() {
        return this.mWindow.getCallback();
    }

    abstract void initWindowDecorActionBar();

    final boolean isDestroyed() {
        return this.mIsDestroyed;
    }

    @Override
    public boolean isHandleNativeActionModesEnabled() {
        return false;
    }

    final boolean isStarted() {
        return this.mIsStarted;
    }

    @Override
    public void onDestroy() {
        this.mIsDestroyed = true;
    }

    abstract boolean onKeyShortcut(int var1, KeyEvent var2);

    abstract boolean onMenuOpened(int var1, Menu var2);

    abstract void onPanelClosed(int var1, Menu var2);

    @Override
    public void onSaveInstanceState(Bundle bundle) {
    }

    @Override
    public void onStart() {
        this.mIsStarted = true;
    }

    @Override
    public void onStop() {
        this.mIsStarted = false;
    }

    abstract void onTitleChanged(CharSequence var1);

    final ActionBar peekSupportActionBar() {
        return this.mActionBar;
    }

    @Override
    public void setHandleNativeActionModesEnabled(boolean bl) {
    }

    @Override
    public void setLocalNightMode(int n2) {
    }

    @Override
    public final void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        this.onTitleChanged(charSequence);
    }

    abstract ActionMode startSupportActionModeFromWindow(ActionMode.Callback var1);

    Window.Callback wrapWindowCallback(Window.Callback callback) {
        return new AppCompatWindowCallbackBase(callback);
    }

    private class ActionBarDrawableToggleImpl
    implements ActionBarDrawerToggle.Delegate {
        ActionBarDrawableToggleImpl() {
        }

        @Override
        public Context getActionBarThemedContext() {
            return AppCompatDelegateImplBase.this.getActionBarThemedContext();
        }

        @Override
        public Drawable getThemeUpIndicator() {
            TintTypedArray tintTypedArray = TintTypedArray.obtainStyledAttributes(this.getActionBarThemedContext(), null, new int[]{R.attr.homeAsUpIndicator});
            Drawable drawable2 = tintTypedArray.getDrawable(0);
            tintTypedArray.recycle();
            return drawable2;
        }

        @Override
        public boolean isNavigationVisible() {
            ActionBar actionBar = AppCompatDelegateImplBase.this.getSupportActionBar();
            if (actionBar != null && (actionBar.getDisplayOptions() & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override
        public void setActionBarDescription(int n2) {
            ActionBar actionBar = AppCompatDelegateImplBase.this.getSupportActionBar();
            if (actionBar != null) {
                actionBar.setHomeActionContentDescription(n2);
            }
        }

        @Override
        public void setActionBarUpIndicator(Drawable drawable2, int n2) {
            ActionBar actionBar = AppCompatDelegateImplBase.this.getSupportActionBar();
            if (actionBar != null) {
                actionBar.setHomeAsUpIndicator(drawable2);
                actionBar.setHomeActionContentDescription(n2);
            }
        }
    }

    class AppCompatWindowCallbackBase
    extends WindowCallbackWrapper {
        AppCompatWindowCallbackBase(Window.Callback callback) {
            super(callback);
        }

        @Override
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            if (AppCompatDelegateImplBase.this.dispatchKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent)) {
                return true;
            }
            return false;
        }

        @Override
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            if (super.dispatchKeyShortcutEvent(keyEvent) || AppCompatDelegateImplBase.this.onKeyShortcut(keyEvent.getKeyCode(), keyEvent)) {
                return true;
            }
            return false;
        }

        @Override
        public void onContentChanged() {
        }

        @Override
        public boolean onCreatePanelMenu(int n2, Menu menu2) {
            if (n2 == 0 && !(menu2 instanceof MenuBuilder)) {
                return false;
            }
            return super.onCreatePanelMenu(n2, menu2);
        }

        @Override
        public boolean onMenuOpened(int n2, Menu menu2) {
            super.onMenuOpened(n2, menu2);
            AppCompatDelegateImplBase.this.onMenuOpened(n2, menu2);
            return true;
        }

        @Override
        public void onPanelClosed(int n2, Menu menu2) {
            super.onPanelClosed(n2, menu2);
            AppCompatDelegateImplBase.this.onPanelClosed(n2, menu2);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onPreparePanel(int n2, View view, Menu menu2) {
            boolean bl;
            MenuBuilder menuBuilder = menu2 instanceof MenuBuilder ? (MenuBuilder)menu2 : null;
            if (n2 == 0) {
                if (menuBuilder == null) {
                    return false;
                }
                if (menuBuilder != null) {
                    menuBuilder.setOverrideVisibleItems(true);
                }
            }
            boolean bl2 = bl = super.onPreparePanel(n2, view, menu2);
            if (menuBuilder == null) return bl2;
            menuBuilder.setOverrideVisibleItems(false);
            return bl;
        }
    }

}

