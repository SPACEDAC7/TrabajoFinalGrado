/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.Dialog
 *  android.content.Context
 *  android.content.pm.ApplicationInfo
 *  android.content.res.Configuration
 *  android.content.res.Resources
 *  android.content.res.Resources$Theme
 *  android.content.res.TypedArray
 *  android.graphics.Rect
 *  android.graphics.drawable.Drawable
 *  android.media.AudioManager
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.text.TextUtils
 *  android.util.AndroidRuntimeException
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.util.Log
 *  android.util.TypedValue
 *  android.view.KeyCharacterMap
 *  android.view.KeyEvent
 *  android.view.LayoutInflater
 *  android.view.LayoutInflater$Factory
 *  android.view.Menu
 *  android.view.MenuInflater
 *  android.view.MenuItem
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.ViewConfiguration
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewGroup$MarginLayoutParams
 *  android.view.ViewParent
 *  android.view.Window
 *  android.view.Window$Callback
 *  android.view.WindowManager
 *  android.view.WindowManager$LayoutParams
 *  android.widget.FrameLayout
 *  android.widget.ListAdapter
 *  android.widget.PopupWindow
 *  android.widget.TextView
 */
package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.NavUtils;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.view.LayoutInflaterCompat;
import android.support.v4.view.LayoutInflaterFactory;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v4.widget.PopupWindowCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatCallback;
import android.support.v7.app.AppCompatDelegateImplBase;
import android.support.v7.app.AppCompatViewInflater;
import android.support.v7.app.ToolbarActionBar;
import android.support.v7.app.WindowDecorActionBar;
import android.support.v7.appcompat.R;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.view.ActionMode;
import android.support.v7.view.ContextThemeWrapper;
import android.support.v7.view.StandaloneActionMode;
import android.support.v7.view.menu.ListMenuPresenter;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuView;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.AppCompatDrawableManager;
import android.support.v7.widget.ContentFrameLayout;
import android.support.v7.widget.DecorContentParent;
import android.support.v7.widget.FitWindowsViewGroup;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.VectorEnabledTintResources;
import android.support.v7.widget.ViewStubCompat;
import android.support.v7.widget.ViewUtils;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;

class AppCompatDelegateImplV9
extends AppCompatDelegateImplBase
implements MenuBuilder.Callback,
LayoutInflaterFactory {
    private ActionMenuPresenterCallback mActionMenuPresenterCallback;
    ActionMode mActionMode;
    PopupWindow mActionModePopup;
    ActionBarContextView mActionModeView;
    private AppCompatViewInflater mAppCompatViewInflater;
    private boolean mClosingActionMenu;
    private DecorContentParent mDecorContentParent;
    private boolean mEnableDefaultActionBarUp;
    ViewPropertyAnimatorCompat mFadeAnim = null;
    private boolean mFeatureIndeterminateProgress;
    private boolean mFeatureProgress;
    int mInvalidatePanelMenuFeatures;
    boolean mInvalidatePanelMenuPosted;
    private final Runnable mInvalidatePanelMenuRunnable;
    private boolean mLongPressBackDown;
    private PanelMenuPresenterCallback mPanelMenuPresenterCallback;
    private PanelFeatureState[] mPanels;
    private PanelFeatureState mPreparedPanel;
    Runnable mShowActionModePopup;
    private View mStatusGuard;
    private ViewGroup mSubDecor;
    private boolean mSubDecorInstalled;
    private Rect mTempRect1;
    private Rect mTempRect2;
    private TextView mTitleView;

    AppCompatDelegateImplV9(Context context, Window window, AppCompatCallback appCompatCallback) {
        super(context, window, appCompatCallback);
        this.mInvalidatePanelMenuRunnable = new Runnable(){

            @Override
            public void run() {
                if ((AppCompatDelegateImplV9.this.mInvalidatePanelMenuFeatures & 1) != 0) {
                    AppCompatDelegateImplV9.this.doInvalidatePanelMenu(0);
                }
                if ((AppCompatDelegateImplV9.this.mInvalidatePanelMenuFeatures & 4096) != 0) {
                    AppCompatDelegateImplV9.this.doInvalidatePanelMenu(108);
                }
                AppCompatDelegateImplV9.this.mInvalidatePanelMenuPosted = false;
                AppCompatDelegateImplV9.this.mInvalidatePanelMenuFeatures = 0;
            }
        };
    }

    private void applyFixedSizeWindow() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout)this.mSubDecor.findViewById(16908290);
        View view = this.mWindow.getDecorView();
        contentFrameLayout.setDecorPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), view.getPaddingBottom());
        view = this.mContext.obtainStyledAttributes(R.styleable.AppCompatTheme);
        view.getValue(R.styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        view.getValue(R.styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (view.hasValue(R.styleable.AppCompatTheme_windowFixedWidthMajor)) {
            view.getValue(R.styleable.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (view.hasValue(R.styleable.AppCompatTheme_windowFixedWidthMinor)) {
            view.getValue(R.styleable.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (view.hasValue(R.styleable.AppCompatTheme_windowFixedHeightMajor)) {
            view.getValue(R.styleable.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (view.hasValue(R.styleable.AppCompatTheme_windowFixedHeightMinor)) {
            view.getValue(R.styleable.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        view.recycle();
        contentFrameLayout.requestLayout();
    }

    /*
     * Enabled aggressive block sorting
     */
    private ViewGroup createSubDecor() {
        Object object = this.mContext.obtainStyledAttributes(R.styleable.AppCompatTheme);
        if (!object.hasValue(R.styleable.AppCompatTheme_windowActionBar)) {
            object.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (object.getBoolean(R.styleable.AppCompatTheme_windowNoTitle, false)) {
            this.requestWindowFeature(1);
        } else if (object.getBoolean(R.styleable.AppCompatTheme_windowActionBar, false)) {
            this.requestWindowFeature(108);
        }
        if (object.getBoolean(R.styleable.AppCompatTheme_windowActionBarOverlay, false)) {
            this.requestWindowFeature(109);
        }
        if (object.getBoolean(R.styleable.AppCompatTheme_windowActionModeOverlay, false)) {
            this.requestWindowFeature(10);
        }
        this.mIsFloating = object.getBoolean(R.styleable.AppCompatTheme_android_windowIsFloating, false);
        object.recycle();
        this.mWindow.getDecorView();
        Object object2 = LayoutInflater.from((Context)this.mContext);
        object = null;
        if (!this.mWindowNoTitle) {
            if (this.mIsFloating) {
                object = (ViewGroup)object2.inflate(R.layout.abc_dialog_title_material, null);
                this.mOverlayActionBar = false;
                this.mHasActionBar = false;
            } else if (this.mHasActionBar) {
                object = new TypedValue();
                this.mContext.getTheme().resolveAttribute(R.attr.actionBarTheme, (TypedValue)object, true);
                object = object.resourceId != 0 ? new ContextThemeWrapper(this.mContext, object.resourceId) : this.mContext;
                object2 = (ViewGroup)LayoutInflater.from((Context)object).inflate(R.layout.abc_screen_toolbar, null);
                this.mDecorContentParent = (DecorContentParent)object2.findViewById(R.id.decor_content_parent);
                this.mDecorContentParent.setWindowCallback(this.getWindowCallback());
                if (this.mOverlayActionBar) {
                    this.mDecorContentParent.initFeature(109);
                }
                if (this.mFeatureProgress) {
                    this.mDecorContentParent.initFeature(2);
                }
                object = object2;
                if (this.mFeatureIndeterminateProgress) {
                    this.mDecorContentParent.initFeature(5);
                    object = object2;
                }
            }
        } else {
            object = this.mOverlayActionMode ? (ViewGroup)object2.inflate(R.layout.abc_screen_simple_overlay_action_mode, null) : (ViewGroup)object2.inflate(R.layout.abc_screen_simple, null);
            if (Build.VERSION.SDK_INT >= 21) {
                ViewCompat.setOnApplyWindowInsetsListener((View)object, new OnApplyWindowInsetsListener(){

                    @Override
                    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                        int n2 = windowInsetsCompat.getSystemWindowInsetTop();
                        int n3 = AppCompatDelegateImplV9.this.updateStatusGuard(n2);
                        WindowInsetsCompat windowInsetsCompat2 = windowInsetsCompat;
                        if (n2 != n3) {
                            windowInsetsCompat2 = windowInsetsCompat.replaceSystemWindowInsets(windowInsetsCompat.getSystemWindowInsetLeft(), n3, windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
                        }
                        return ViewCompat.onApplyWindowInsets(view, windowInsetsCompat2);
                    }
                });
            } else {
                ((FitWindowsViewGroup)object).setOnFitSystemWindowsListener(new FitWindowsViewGroup.OnFitSystemWindowsListener(){

                    @Override
                    public void onFitSystemWindows(Rect rect) {
                        rect.top = AppCompatDelegateImplV9.this.updateStatusGuard(rect.top);
                    }
                });
            }
        }
        if (object == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.mHasActionBar + ", windowActionBarOverlay: " + this.mOverlayActionBar + ", android:windowIsFloating: " + this.mIsFloating + ", windowActionModeOverlay: " + this.mOverlayActionMode + ", windowNoTitle: " + this.mWindowNoTitle + " }");
        }
        if (this.mDecorContentParent == null) {
            this.mTitleView = (TextView)object.findViewById(R.id.title);
        }
        ViewUtils.makeOptionalFitsSystemWindows((View)object);
        object2 = (ContentFrameLayout)object.findViewById(R.id.action_bar_activity_content);
        ViewGroup viewGroup = (ViewGroup)this.mWindow.findViewById(16908290);
        if (viewGroup != null) {
            while (viewGroup.getChildCount() > 0) {
                View view = viewGroup.getChildAt(0);
                viewGroup.removeViewAt(0);
                object2.addView(view);
            }
            viewGroup.setId(-1);
            object2.setId(16908290);
            if (viewGroup instanceof FrameLayout) {
                ((FrameLayout)viewGroup).setForeground(null);
            }
        }
        this.mWindow.setContentView((View)object);
        object2.setAttachListener(new ContentFrameLayout.OnAttachListener(){

            @Override
            public void onAttachedFromWindow() {
            }

            @Override
            public void onDetachedFromWindow() {
                AppCompatDelegateImplV9.this.dismissPopups();
            }
        });
        return object;
    }

    private void ensureSubDecor() {
        if (!this.mSubDecorInstalled) {
            this.mSubDecor = this.createSubDecor();
            Object object = this.getTitle();
            if (!TextUtils.isEmpty((CharSequence)object)) {
                this.onTitleChanged((CharSequence)object);
            }
            this.applyFixedSizeWindow();
            this.onSubDecorInstalled(this.mSubDecor);
            this.mSubDecorInstalled = true;
            object = this.getPanelState(0, false);
            if (!(this.isDestroyed() || object != null && object.menu != null)) {
                this.invalidatePanelMenu(108);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean initializePanelContent(PanelFeatureState panelFeatureState) {
        if (panelFeatureState.createdPanelView != null) {
            panelFeatureState.shownPanelView = panelFeatureState.createdPanelView;
            return true;
        } else {
            if (panelFeatureState.menu == null) {
                return false;
            }
            if (this.mPanelMenuPresenterCallback == null) {
                this.mPanelMenuPresenterCallback = new PanelMenuPresenterCallback();
            }
            panelFeatureState.shownPanelView = (View)panelFeatureState.getListMenuView(this.mPanelMenuPresenterCallback);
            if (panelFeatureState.shownPanelView != null) return true;
            return false;
        }
    }

    private boolean initializePanelDecor(PanelFeatureState panelFeatureState) {
        panelFeatureState.setStyle(this.getActionBarThemedContext());
        panelFeatureState.decorView = new ListMenuDecorView(panelFeatureState.listPresenterContext);
        panelFeatureState.gravity = 81;
        return true;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private boolean initializePanelMenu(PanelFeatureState var1_1) {
        var4_2 = this.mContext;
        if (var1_1.featureId == 0) ** GOTO lbl-1000
        var2_3 = var4_2;
        if (var1_1.featureId == 108) lbl-1000: // 2 sources:
        {
            var2_3 = var4_2;
            if (this.mDecorContentParent != null) {
                var5_4 = new TypedValue();
                var6_5 = var4_2.getTheme();
                var6_5.resolveAttribute(R.attr.actionBarTheme, var5_4, true);
                var2_3 = null;
                if (var5_4.resourceId != 0) {
                    var2_3 = var4_2.getResources().newTheme();
                    var2_3.setTo(var6_5);
                    var2_3.applyStyle(var5_4.resourceId, true);
                    var2_3.resolveAttribute(R.attr.actionBarWidgetTheme, var5_4, true);
                } else {
                    var6_5.resolveAttribute(R.attr.actionBarWidgetTheme, var5_4, true);
                }
                var3_6 = var2_3;
                if (var5_4.resourceId != 0) {
                    var3_6 = var2_3;
                    if (var2_3 == null) {
                        var3_6 = var4_2.getResources().newTheme();
                        var3_6.setTo(var6_5);
                    }
                    var3_6.applyStyle(var5_4.resourceId, true);
                }
                var2_3 = var4_2;
                if (var3_6 != null) {
                    var2_3 = new ContextThemeWrapper(var4_2, 0);
                    var2_3.getTheme().setTo((Resources.Theme)var3_6);
                }
            }
        }
        var2_3 = new MenuBuilder((Context)var2_3);
        var2_3.setCallback(this);
        var1_1.setMenu((MenuBuilder)var2_3);
        return true;
    }

    private void invalidatePanelMenu(int n2) {
        this.mInvalidatePanelMenuFeatures |= 1 << n2;
        if (!this.mInvalidatePanelMenuPosted) {
            ViewCompat.postOnAnimation(this.mWindow.getDecorView(), this.mInvalidatePanelMenuRunnable);
            this.mInvalidatePanelMenuPosted = true;
        }
    }

    private boolean onKeyDownPanel(int n2, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() == 0) {
            PanelFeatureState panelFeatureState = this.getPanelState(n2, true);
            if (!panelFeatureState.isOpen) {
                return this.preparePanel(panelFeatureState, keyEvent);
            }
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean onKeyUpPanel(int n2, KeyEvent keyEvent) {
        boolean bl;
        boolean bl2;
        if (this.mActionMode != null) {
            return false;
        }
        boolean bl3 = false;
        PanelFeatureState panelFeatureState = this.getPanelState(n2, true);
        if (n2 == 0 && this.mDecorContentParent != null && this.mDecorContentParent.canShowOverflowMenu() && !ViewConfigurationCompat.hasPermanentMenuKey(ViewConfiguration.get((Context)this.mContext))) {
            if (!this.mDecorContentParent.isOverflowMenuShowing()) {
                bl2 = bl3;
                if (!this.isDestroyed()) {
                    bl2 = bl3;
                    if (this.preparePanel(panelFeatureState, keyEvent)) {
                        bl2 = this.mDecorContentParent.showOverflowMenu();
                    }
                }
            } else {
                bl2 = this.mDecorContentParent.hideOverflowMenu();
            }
        } else if (panelFeatureState.isOpen || panelFeatureState.isHandled) {
            bl2 = panelFeatureState.isOpen;
            this.closePanel(panelFeatureState, true);
        } else {
            bl2 = bl3;
            if (panelFeatureState.isPrepared) {
                bl = true;
                if (panelFeatureState.refreshMenuContent) {
                    panelFeatureState.isPrepared = false;
                    bl = this.preparePanel(panelFeatureState, keyEvent);
                }
                bl2 = bl3;
                if (bl) {
                    this.openPanel(panelFeatureState, keyEvent);
                    bl2 = true;
                }
            }
        }
        bl = bl2;
        if (!bl2) return bl;
        keyEvent = (AudioManager)this.mContext.getSystemService("audio");
        if (keyEvent != null) {
            keyEvent.playSoundEffect(0);
            return bl2;
        }
        Log.w((String)"AppCompatDelegate", (String)"Couldn't get audio manager");
        return bl2;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void openPanel(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        Context context;
        int n2;
        int n3;
        if (panelFeatureState.isOpen) return;
        if (this.isDestroyed()) {
            return;
        }
        if (panelFeatureState.featureId == 0) {
            context = this.mContext;
            n3 = (context.getResources().getConfiguration().screenLayout & 15) == 4 ? 1 : 0;
            n2 = context.getApplicationInfo().targetSdkVersion >= 11 ? 1 : 0;
            if (n3 != 0) {
                if (n2 != 0) return;
            }
        }
        if ((context = this.getWindowCallback()) != null && !context.onMenuOpened(panelFeatureState.featureId, (Menu)panelFeatureState.menu)) {
            this.closePanel(panelFeatureState, true);
            return;
        }
        WindowManager windowManager = (WindowManager)this.mContext.getSystemService("window");
        if (windowManager == null) return;
        if (!this.preparePanel(panelFeatureState, keyEvent)) return;
        n2 = -2;
        if (panelFeatureState.decorView == null || panelFeatureState.refreshDecorView) {
            if (panelFeatureState.decorView == null) {
                if (!this.initializePanelDecor(panelFeatureState)) return;
                if (panelFeatureState.decorView == null) return;
            } else if (panelFeatureState.refreshDecorView && panelFeatureState.decorView.getChildCount() > 0) {
                panelFeatureState.decorView.removeAllViews();
            }
            if (!this.initializePanelContent(panelFeatureState)) return;
            if (!panelFeatureState.hasPanelItems()) return;
            keyEvent = context = panelFeatureState.shownPanelView.getLayoutParams();
            if (context == null) {
                keyEvent = new ViewGroup.LayoutParams(-2, -2);
            }
            n3 = panelFeatureState.background;
            panelFeatureState.decorView.setBackgroundResource(n3);
            context = panelFeatureState.shownPanelView.getParent();
            if (context != null && context instanceof ViewGroup) {
                ((ViewGroup)context).removeView(panelFeatureState.shownPanelView);
            }
            panelFeatureState.decorView.addView(panelFeatureState.shownPanelView, (ViewGroup.LayoutParams)keyEvent);
            n3 = n2;
            if (!panelFeatureState.shownPanelView.hasFocus()) {
                panelFeatureState.shownPanelView.requestFocus();
                n3 = n2;
            }
        } else {
            n3 = n2;
            if (panelFeatureState.createdPanelView != null) {
                keyEvent = panelFeatureState.createdPanelView.getLayoutParams();
                n3 = n2;
                if (keyEvent != null) {
                    n3 = n2;
                    if (keyEvent.width == -1) {
                        n3 = -1;
                    }
                }
            }
        }
        panelFeatureState.isHandled = false;
        keyEvent = new WindowManager.LayoutParams(n3, -2, panelFeatureState.x, panelFeatureState.y, 1002, 8519680, -3);
        keyEvent.gravity = panelFeatureState.gravity;
        keyEvent.windowAnimations = panelFeatureState.windowAnimations;
        windowManager.addView((View)panelFeatureState.decorView, (ViewGroup.LayoutParams)keyEvent);
        panelFeatureState.isOpen = true;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private boolean performPanelShortcut(PanelFeatureState var1_1, int var2_2, KeyEvent var3_3, int var4_4) {
        if (var3_3.isSystem()) {
            return false;
        }
        var6_5 = false;
        if (var1_1.isPrepared) ** GOTO lbl-1000
        var5_6 = var6_5;
        if (this.preparePanel(var1_1, var3_3)) lbl-1000: // 2 sources:
        {
            var5_6 = var6_5;
            if (var1_1.menu != null) {
                var5_6 = var1_1.menu.performShortcut(var2_2, var3_3, var4_4);
            }
        }
        var6_5 = var5_6;
        if (var5_6 == false) return var6_5;
        var6_5 = var5_6;
        if ((var4_4 & 1) != 0) return var6_5;
        var6_5 = var5_6;
        if (this.mDecorContentParent != null) return var6_5;
        this.closePanel(var1_1, true);
        return var5_6;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private boolean preparePanel(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        Window.Callback callback;
        if (this.isDestroyed()) {
            return false;
        }
        if (panelFeatureState.isPrepared) {
            return true;
        }
        if (this.mPreparedPanel != null && this.mPreparedPanel != panelFeatureState) {
            this.closePanel(this.mPreparedPanel, false);
        }
        if ((callback = this.getWindowCallback()) != null) {
            panelFeatureState.createdPanelView = callback.onCreatePanelView(panelFeatureState.featureId);
        }
        int n2 = panelFeatureState.featureId == 0 || panelFeatureState.featureId == 108 ? 1 : 0;
        if (n2 != 0 && this.mDecorContentParent != null) {
            this.mDecorContentParent.setMenuPrepared();
        }
        if (!(panelFeatureState.createdPanelView != null || n2 != 0 && this.peekSupportActionBar() instanceof ToolbarActionBar)) {
            if (panelFeatureState.menu == null || panelFeatureState.refreshMenuContent) {
                if (panelFeatureState.menu == null) {
                    if (!this.initializePanelMenu(panelFeatureState)) return false;
                    if (panelFeatureState.menu == null) return false;
                }
                if (n2 != 0 && this.mDecorContentParent != null) {
                    if (this.mActionMenuPresenterCallback == null) {
                        this.mActionMenuPresenterCallback = new ActionMenuPresenterCallback();
                    }
                    this.mDecorContentParent.setMenu(panelFeatureState.menu, this.mActionMenuPresenterCallback);
                }
                panelFeatureState.menu.stopDispatchingItemsChanged();
                if (!callback.onCreatePanelMenu(panelFeatureState.featureId, (Menu)panelFeatureState.menu)) {
                    panelFeatureState.setMenu(null);
                    if (n2 == 0) return false;
                    if (this.mDecorContentParent == null) return false;
                    this.mDecorContentParent.setMenu(null, this.mActionMenuPresenterCallback);
                    return false;
                }
                panelFeatureState.refreshMenuContent = false;
            }
            panelFeatureState.menu.stopDispatchingItemsChanged();
            if (panelFeatureState.frozenActionViewState != null) {
                panelFeatureState.menu.restoreActionViewStates(panelFeatureState.frozenActionViewState);
                panelFeatureState.frozenActionViewState = null;
            }
            if (!callback.onPreparePanel(0, panelFeatureState.createdPanelView, (Menu)panelFeatureState.menu)) {
                if (n2 != 0 && this.mDecorContentParent != null) {
                    this.mDecorContentParent.setMenu(null, this.mActionMenuPresenterCallback);
                }
                panelFeatureState.menu.startDispatchingItemsChanged();
                return false;
            }
            n2 = keyEvent != null ? keyEvent.getDeviceId() : -1;
            boolean bl = KeyCharacterMap.load((int)n2).getKeyboardType() != 1;
            panelFeatureState.qwertyMode = bl;
            panelFeatureState.menu.setQwertyMode(panelFeatureState.qwertyMode);
            panelFeatureState.menu.startDispatchingItemsChanged();
        }
        panelFeatureState.isPrepared = true;
        panelFeatureState.isHandled = false;
        this.mPreparedPanel = panelFeatureState;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void reopenMenu(MenuBuilder object, boolean bl) {
        if (this.mDecorContentParent != null && this.mDecorContentParent.canShowOverflowMenu() && (!ViewConfigurationCompat.hasPermanentMenuKey(ViewConfiguration.get((Context)this.mContext)) || this.mDecorContentParent.isOverflowMenuShowPending())) {
            object = this.getWindowCallback();
            if (!this.mDecorContentParent.isOverflowMenuShowing() || !bl) {
                if (object == null || this.isDestroyed()) return;
                {
                    if (this.mInvalidatePanelMenuPosted && (this.mInvalidatePanelMenuFeatures & 1) != 0) {
                        this.mWindow.getDecorView().removeCallbacks(this.mInvalidatePanelMenuRunnable);
                        this.mInvalidatePanelMenuRunnable.run();
                    }
                    PanelFeatureState panelFeatureState = this.getPanelState(0, true);
                    if (panelFeatureState.menu == null || panelFeatureState.refreshMenuContent || !object.onPreparePanel(0, panelFeatureState.createdPanelView, (Menu)panelFeatureState.menu)) return;
                    {
                        object.onMenuOpened(108, (Menu)panelFeatureState.menu);
                        this.mDecorContentParent.showOverflowMenu();
                        return;
                    }
                }
            } else {
                this.mDecorContentParent.hideOverflowMenu();
                if (this.isDestroyed()) return;
                {
                    object.onPanelClosed(108, (Menu)this.getPanelState((int)0, (boolean)true).menu);
                    return;
                }
            }
        }
        object = this.getPanelState(0, true);
        object.refreshDecorView = true;
        this.closePanel((PanelFeatureState)object, false);
        this.openPanel((PanelFeatureState)object, null);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int sanitizeWindowFeatureId(int n2) {
        if (n2 == 8) {
            Log.i((String)"AppCompatDelegate", (String)"You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        }
        int n3 = n2;
        if (n2 != 9) return n3;
        Log.i((String)"AppCompatDelegate", (String)"You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
        return 109;
    }

    private boolean shouldInheritContext(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View view = this.mWindow.getDecorView();
        while (viewParent != null) {
            if (viewParent == view || !(viewParent instanceof View) || ViewCompat.isAttachedToWindow((View)viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    private void throwFeatureRequestIfSubDecorInstalled() {
        if (this.mSubDecorInstalled) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    @Override
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        this.ensureSubDecor();
        ((ViewGroup)this.mSubDecor.findViewById(16908290)).addView(view, layoutParams);
        this.mOriginalWindowCallback.onContentChanged();
    }

    View callActivityOnCreateView(View view, String string2, Context context, AttributeSet attributeSet) {
        if (this.mOriginalWindowCallback instanceof LayoutInflater.Factory && (view = ((LayoutInflater.Factory)this.mOriginalWindowCallback).onCreateView(string2, context, attributeSet)) != null) {
            return view;
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    void callOnPanelClosed(int n2, PanelFeatureState panelFeatureState, Menu menu2) {
        PanelFeatureState panelFeatureState2 = panelFeatureState;
        Menu menu3 = menu2;
        if (menu2 == null) {
            PanelFeatureState panelFeatureState3 = panelFeatureState;
            if (panelFeatureState == null) {
                panelFeatureState3 = panelFeatureState;
                if (n2 >= 0) {
                    panelFeatureState3 = panelFeatureState;
                    if (n2 < this.mPanels.length) {
                        panelFeatureState3 = this.mPanels[n2];
                    }
                }
            }
            panelFeatureState2 = panelFeatureState3;
            menu3 = menu2;
            if (panelFeatureState3 != null) {
                menu3 = panelFeatureState3.menu;
                panelFeatureState2 = panelFeatureState3;
            }
        }
        if (panelFeatureState2 != null && !panelFeatureState2.isOpen || this.isDestroyed()) {
            return;
        }
        this.mOriginalWindowCallback.onPanelClosed(n2, menu3);
    }

    void checkCloseActionMenu(MenuBuilder menuBuilder) {
        if (this.mClosingActionMenu) {
            return;
        }
        this.mClosingActionMenu = true;
        this.mDecorContentParent.dismissPopups();
        Window.Callback callback = this.getWindowCallback();
        if (callback != null && !this.isDestroyed()) {
            callback.onPanelClosed(108, (Menu)menuBuilder);
        }
        this.mClosingActionMenu = false;
    }

    void closePanel(int n2) {
        this.closePanel(this.getPanelState(n2, true), true);
    }

    /*
     * Enabled aggressive block sorting
     */
    void closePanel(PanelFeatureState panelFeatureState, boolean bl) {
        if (bl && panelFeatureState.featureId == 0 && this.mDecorContentParent != null && this.mDecorContentParent.isOverflowMenuShowing()) {
            this.checkCloseActionMenu(panelFeatureState.menu);
            return;
        } else {
            WindowManager windowManager = (WindowManager)this.mContext.getSystemService("window");
            if (windowManager != null && panelFeatureState.isOpen && panelFeatureState.decorView != null) {
                windowManager.removeView((View)panelFeatureState.decorView);
                if (bl) {
                    this.callOnPanelClosed(panelFeatureState.featureId, panelFeatureState, null);
                }
            }
            panelFeatureState.isPrepared = false;
            panelFeatureState.isHandled = false;
            panelFeatureState.isOpen = false;
            panelFeatureState.shownPanelView = null;
            panelFeatureState.refreshDecorView = true;
            if (this.mPreparedPanel != panelFeatureState) return;
            {
                this.mPreparedPanel = null;
                return;
            }
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public View createView(View var1_1, String var2_2, @NonNull Context var3_3, @NonNull AttributeSet var4_4) {
        var5_5 = Build.VERSION.SDK_INT < 21;
        if (this.mAppCompatViewInflater != null) ** GOTO lbl-1000
        this.mAppCompatViewInflater = new AppCompatViewInflater();
        if (var5_5) lbl-1000: // 2 sources:
        {
            if (this.shouldInheritContext((ViewParent)var1_1)) {
                var6_6 = true;
                return this.mAppCompatViewInflater.createView(var1_1, var2_2, var3_3, var4_4, var6_6, var5_5, true, VectorEnabledTintResources.shouldBeUsed());
            }
        }
        var6_6 = false;
        return this.mAppCompatViewInflater.createView(var1_1, var2_2, var3_3, var4_4, var6_6, var5_5, true, VectorEnabledTintResources.shouldBeUsed());
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    void dismissPopups() {
        if (this.mDecorContentParent != null) {
            this.mDecorContentParent.dismissPopups();
        }
        if (this.mActionModePopup != null) {
            this.mWindow.getDecorView().removeCallbacks(this.mShowActionModePopup);
            if (this.mActionModePopup.isShowing()) {
                try {
                    this.mActionModePopup.dismiss();
                }
                catch (IllegalArgumentException var1_1) {}
            }
            this.mActionModePopup = null;
        }
        this.endOnGoingFadeAnimation();
        PanelFeatureState panelFeatureState = this.getPanelState(0, false);
        if (panelFeatureState != null && panelFeatureState.menu != null) {
            panelFeatureState.menu.close();
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 82 && this.mOriginalWindowCallback.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int n2 = keyEvent.getKeyCode();
        if (keyEvent.getAction() != 0) return this.onKeyUp(n2, keyEvent);
        return this.onKeyDown(n2, keyEvent);
    }

    void doInvalidatePanelMenu(int n2) {
        PanelFeatureState panelFeatureState = this.getPanelState(n2, true);
        if (panelFeatureState.menu != null) {
            Bundle bundle = new Bundle();
            panelFeatureState.menu.saveActionViewStates(bundle);
            if (bundle.size() > 0) {
                panelFeatureState.frozenActionViewState = bundle;
            }
            panelFeatureState.menu.stopDispatchingItemsChanged();
            panelFeatureState.menu.clear();
        }
        panelFeatureState.refreshMenuContent = true;
        panelFeatureState.refreshDecorView = true;
        if ((n2 == 108 || n2 == 0) && this.mDecorContentParent != null && (panelFeatureState = this.getPanelState(0, false)) != null) {
            panelFeatureState.isPrepared = false;
            this.preparePanel(panelFeatureState, null);
        }
    }

    void endOnGoingFadeAnimation() {
        if (this.mFadeAnim != null) {
            this.mFadeAnim.cancel();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    PanelFeatureState findMenuPanel(Menu menu2) {
        PanelFeatureState[] arrpanelFeatureState = this.mPanels;
        int n2 = arrpanelFeatureState != null ? arrpanelFeatureState.length : 0;
        int n3 = 0;
        while (n3 < n2) {
            PanelFeatureState panelFeatureState = arrpanelFeatureState[n3];
            if (panelFeatureState != null && panelFeatureState.menu == menu2) {
                return panelFeatureState;
            }
            ++n3;
        }
        return null;
    }

    @Nullable
    @Override
    public View findViewById(@IdRes int n2) {
        this.ensureSubDecor();
        return this.mWindow.findViewById(n2);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected PanelFeatureState getPanelState(int var1_1, boolean var2_2) {
        var4_3 = this.mPanels;
        if (var4_3 == null) ** GOTO lbl-1000
        var3_4 = var4_3;
        if (var4_3.length <= var1_1) lbl-1000: // 2 sources:
        {
            var5_5 = new PanelFeatureState[var1_1 + 1];
            if (var4_3 != null) {
                System.arraycopy(var4_3, 0, var5_5, 0, var4_3.length);
            }
            var3_4 = var5_5;
            this.mPanels = var5_5;
        }
        var4_3 = var5_5 = var3_4[var1_1];
        if (var5_5 != null) return var4_3;
        var3_4[var1_1] = var4_3 = new PanelFeatureState(var1_1);
        return var4_3;
    }

    ViewGroup getSubDecor() {
        return this.mSubDecor;
    }

    @Override
    public boolean hasWindowFeature(int n2) {
        n2 = this.sanitizeWindowFeatureId(n2);
        switch (n2) {
            default: {
                return this.mWindow.hasFeature(n2);
            }
            case 108: {
                return this.mHasActionBar;
            }
            case 109: {
                return this.mOverlayActionBar;
            }
            case 10: {
                return this.mOverlayActionMode;
            }
            case 2: {
                return this.mFeatureProgress;
            }
            case 5: {
                return this.mFeatureIndeterminateProgress;
            }
            case 1: 
        }
        return this.mWindowNoTitle;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void initWindowDecorActionBar() {
        this.ensureSubDecor();
        if (!this.mHasActionBar) return;
        if (this.mActionBar != null) {
            return;
        }
        if (this.mOriginalWindowCallback instanceof Activity) {
            this.mActionBar = new WindowDecorActionBar((Activity)this.mOriginalWindowCallback, this.mOverlayActionBar);
        } else if (this.mOriginalWindowCallback instanceof Dialog) {
            this.mActionBar = new WindowDecorActionBar((Dialog)this.mOriginalWindowCallback);
        }
        if (this.mActionBar == null) return;
        this.mActionBar.setDefaultDisplayHomeAsUpEnabled(this.mEnableDefaultActionBarUp);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void installViewFactory() {
        LayoutInflater layoutInflater = LayoutInflater.from((Context)this.mContext);
        if (layoutInflater.getFactory() == null) {
            LayoutInflaterCompat.setFactory(layoutInflater, this);
            return;
        } else {
            if (LayoutInflaterCompat.getFactory(layoutInflater) instanceof AppCompatDelegateImplV9) return;
            {
                Log.i((String)"AppCompatDelegate", (String)"The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
                return;
            }
        }
    }

    @Override
    public void invalidateOptionsMenu() {
        ActionBar actionBar = this.getSupportActionBar();
        if (actionBar != null && actionBar.invalidateOptionsMenu()) {
            return;
        }
        this.invalidatePanelMenu(0);
    }

    /*
     * Enabled aggressive block sorting
     */
    boolean onBackPressed() {
        if (this.mActionMode != null) {
            this.mActionMode.finish();
            return true;
        } else {
            ActionBar actionBar = this.getSupportActionBar();
            if (actionBar != null && actionBar.collapseActionView()) return true;
            return false;
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        ActionBar actionBar;
        if (this.mHasActionBar && this.mSubDecorInstalled && (actionBar = this.getSupportActionBar()) != null) {
            actionBar.onConfigurationChanged(configuration);
        }
        AppCompatDrawableManager.get().onConfigurationChanged(this.mContext);
        this.applyDayNight();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public void onCreate(Bundle object) {
        if (!(this.mOriginalWindowCallback instanceof Activity) || NavUtils.getParentActivityName((Activity)this.mOriginalWindowCallback) == null) return;
        object = this.peekSupportActionBar();
        if (object == null) {
            this.mEnableDefaultActionBarUp = true;
            return;
        }
        object.setDefaultDisplayHomeAsUpEnabled(true);
    }

    @Override
    public final View onCreateView(View view, String string2, Context context, AttributeSet attributeSet) {
        View view2 = this.callActivityOnCreateView(view, string2, context, attributeSet);
        if (view2 != null) {
            return view2;
        }
        return this.createView(view, string2, context, attributeSet);
    }

    @Override
    public void onDestroy() {
        if (this.mInvalidatePanelMenuPosted) {
            this.mWindow.getDecorView().removeCallbacks(this.mInvalidatePanelMenuRunnable);
        }
        super.onDestroy();
        if (this.mActionBar != null) {
            this.mActionBar.onDestroy();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    boolean onKeyDown(int n2, KeyEvent keyEvent) {
        boolean bl = true;
        switch (n2) {
            default: {
                break;
            }
            case 82: {
                this.onKeyDownPanel(0, keyEvent);
                return true;
            }
            case 4: {
                if ((keyEvent.getFlags() & 128) == 0) {
                    bl = false;
                }
                this.mLongPressBackDown = bl;
            }
        }
        if (Build.VERSION.SDK_INT < 11) {
            this.onKeyShortcut(n2, keyEvent);
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    boolean onKeyShortcut(int n2, KeyEvent keyEvent) {
        Object object = this.getSupportActionBar();
        if (object != null && object.onKeyShortcut(n2, keyEvent)) return true;
        if (this.mPreparedPanel != null && this.performPanelShortcut(this.mPreparedPanel, keyEvent.getKeyCode(), keyEvent, 1)) {
            if (this.mPreparedPanel == null) return true;
            {
                this.mPreparedPanel.isHandled = true;
                return true;
            }
        }
        if (this.mPreparedPanel != null) return false;
        {
            object = this.getPanelState(0, true);
            this.preparePanel((PanelFeatureState)object, keyEvent);
            boolean bl = this.performPanelShortcut((PanelFeatureState)object, keyEvent.getKeyCode(), keyEvent, 1);
            object.isPrepared = false;
            if (!bl) return false;
        }
        return true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    boolean onKeyUp(int n2, KeyEvent object) {
        boolean bl = true;
        switch (n2) {
            default: {
                return false;
            }
            case 82: {
                this.onKeyUpPanel(0, (KeyEvent)object);
                return true;
            }
            case 4: 
        }
        boolean bl2 = this.mLongPressBackDown;
        this.mLongPressBackDown = false;
        object = this.getPanelState(0, false);
        if (object != null && object.isOpen) {
            if (bl2) return bl;
            this.closePanel((PanelFeatureState)object, true);
            return true;
        }
        if (!this.onBackPressed()) return false;
        return true;
    }

    @Override
    public boolean onMenuItemSelected(MenuBuilder object, MenuItem menuItem) {
        Window.Callback callback = this.getWindowCallback();
        if (callback != null && !this.isDestroyed() && (object = this.findMenuPanel(object.getRootMenu())) != null) {
            return callback.onMenuItemSelected(object.featureId, menuItem);
        }
        return false;
    }

    @Override
    public void onMenuModeChange(MenuBuilder menuBuilder) {
        this.reopenMenu(menuBuilder, true);
    }

    @Override
    boolean onMenuOpened(int n2, Menu object) {
        if (n2 == 108) {
            object = this.getSupportActionBar();
            if (object != null) {
                object.dispatchMenuVisibilityChanged(true);
            }
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    void onPanelClosed(int n2, Menu object) {
        if (n2 == 108) {
            object = this.getSupportActionBar();
            if (object == null) return;
            {
                object.dispatchMenuVisibilityChanged(false);
                return;
            }
        } else {
            if (n2 != 0) return;
            {
                object = this.getPanelState(n2, true);
                if (!object.isOpen) return;
                {
                    this.closePanel((PanelFeatureState)object, false);
                    return;
                }
            }
        }
    }

    @Override
    public void onPostCreate(Bundle bundle) {
        this.ensureSubDecor();
    }

    @Override
    public void onPostResume() {
        ActionBar actionBar = this.getSupportActionBar();
        if (actionBar != null) {
            actionBar.setShowHideAnimationEnabled(true);
        }
    }

    @Override
    public void onStop() {
        ActionBar actionBar = this.getSupportActionBar();
        if (actionBar != null) {
            actionBar.setShowHideAnimationEnabled(false);
        }
    }

    void onSubDecorInstalled(ViewGroup viewGroup) {
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    void onTitleChanged(CharSequence charSequence) {
        if (this.mDecorContentParent != null) {
            this.mDecorContentParent.setWindowTitle(charSequence);
            return;
        } else {
            if (this.peekSupportActionBar() != null) {
                this.peekSupportActionBar().setWindowTitle(charSequence);
                return;
            }
            if (this.mTitleView == null) return;
            {
                this.mTitleView.setText(charSequence);
                return;
            }
        }
    }

    @Override
    public boolean requestWindowFeature(int n2) {
        n2 = this.sanitizeWindowFeatureId(n2);
        if (this.mWindowNoTitle && n2 == 108) {
            return false;
        }
        if (this.mHasActionBar && n2 == 1) {
            this.mHasActionBar = false;
        }
        switch (n2) {
            default: {
                return this.mWindow.requestFeature(n2);
            }
            case 108: {
                this.throwFeatureRequestIfSubDecorInstalled();
                this.mHasActionBar = true;
                return true;
            }
            case 109: {
                this.throwFeatureRequestIfSubDecorInstalled();
                this.mOverlayActionBar = true;
                return true;
            }
            case 10: {
                this.throwFeatureRequestIfSubDecorInstalled();
                this.mOverlayActionMode = true;
                return true;
            }
            case 2: {
                this.throwFeatureRequestIfSubDecorInstalled();
                this.mFeatureProgress = true;
                return true;
            }
            case 5: {
                this.throwFeatureRequestIfSubDecorInstalled();
                this.mFeatureIndeterminateProgress = true;
                return true;
            }
            case 1: 
        }
        this.throwFeatureRequestIfSubDecorInstalled();
        this.mWindowNoTitle = true;
        return true;
    }

    @Override
    public void setContentView(int n2) {
        this.ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup)this.mSubDecor.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from((Context)this.mContext).inflate(n2, viewGroup);
        this.mOriginalWindowCallback.onContentChanged();
    }

    @Override
    public void setContentView(View view) {
        this.ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup)this.mSubDecor.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.mOriginalWindowCallback.onContentChanged();
    }

    @Override
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        this.ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup)this.mSubDecor.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.mOriginalWindowCallback.onContentChanged();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setSupportActionBar(Toolbar object) {
        if (!(this.mOriginalWindowCallback instanceof Activity)) {
            return;
        }
        ActionBar actionBar = this.getSupportActionBar();
        if (actionBar instanceof WindowDecorActionBar) {
            throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
        }
        this.mMenuInflater = null;
        if (actionBar != null) {
            actionBar.onDestroy();
        }
        if (object != null) {
            this.mActionBar = object = new ToolbarActionBar((Toolbar)((Object)object), ((Activity)this.mContext).getTitle(), this.mAppCompatWindowCallback);
            this.mWindow.setCallback(object.getWrappedWindowCallback());
        } else {
            this.mActionBar = null;
            this.mWindow.setCallback(this.mAppCompatWindowCallback);
        }
        this.invalidateOptionsMenu();
    }

    final boolean shouldAnimateActionModeView() {
        if (this.mSubDecorInstalled && this.mSubDecor != null && ViewCompat.isLaidOut((View)this.mSubDecor)) {
            return true;
        }
        return false;
    }

    @Override
    public ActionMode startSupportActionMode(@NonNull ActionMode.Callback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        if (this.mActionMode != null) {
            this.mActionMode.finish();
        }
        callback = new ActionModeCallbackWrapperV9(callback);
        ActionBar actionBar = this.getSupportActionBar();
        if (actionBar != null) {
            this.mActionMode = actionBar.startActionMode(callback);
            if (this.mActionMode != null && this.mAppCompatCallback != null) {
                this.mAppCompatCallback.onSupportActionModeStarted(this.mActionMode);
            }
        }
        if (this.mActionMode == null) {
            this.mActionMode = this.startSupportActionModeFromWindow(callback);
        }
        return this.mActionMode;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    @Override
    ActionMode startSupportActionModeFromWindow(@NonNull ActionMode.Callback var1_1) {
        this.endOnGoingFadeAnimation();
        if (this.mActionMode != null) {
            this.mActionMode.finish();
        }
        var2_3 = var1_1;
        if (!(var1_1 instanceof ActionModeCallbackWrapperV9)) {
            var2_3 = new ActionModeCallbackWrapperV9((ActionMode.Callback)var1_1);
        }
        var1_1 = var3_4 = null;
        if (this.mAppCompatCallback == null) ** GOTO lbl-1000
        var1_1 = var3_4;
        if (!this.isDestroyed()) {
            try {
                var1_1 = this.mAppCompatCallback.onWindowStartingSupportActionMode((ActionMode.Callback)var2_3);
            }
            catch (AbstractMethodError var1_2) {
                var1_1 = var3_4;
            }
        }
        if (var1_1 != null) {
            this.mActionMode = var1_1;
        } else lbl-1000: // 2 sources:
        {
            if (this.mActionModeView == null) {
                if (this.mIsFloating) {
                    var3_4 = new TypedValue();
                    var1_1 = this.mContext.getTheme();
                    var1_1.resolveAttribute(R.attr.actionBarTheme, (TypedValue)var3_4, true);
                    if (var3_4.resourceId != 0) {
                        var4_5 = this.mContext.getResources().newTheme();
                        var4_5.setTo((Resources.Theme)var1_1);
                        var4_5.applyStyle(var3_4.resourceId, true);
                        var1_1 = new ContextThemeWrapper(this.mContext, 0);
                        var1_1.getTheme().setTo(var4_5);
                    } else {
                        var1_1 = this.mContext;
                    }
                    this.mActionModeView = new ActionBarContextView((Context)var1_1);
                    this.mActionModePopup = new PopupWindow((Context)var1_1, null, R.attr.actionModePopupWindowStyle);
                    PopupWindowCompat.setWindowLayoutType(this.mActionModePopup, 2);
                    this.mActionModePopup.setContentView((View)this.mActionModeView);
                    this.mActionModePopup.setWidth(-1);
                    var1_1.getTheme().resolveAttribute(R.attr.actionBarSize, (TypedValue)var3_4, true);
                    var5_6 = TypedValue.complexToDimensionPixelSize((int)var3_4.data, (DisplayMetrics)var1_1.getResources().getDisplayMetrics());
                    this.mActionModeView.setContentHeight(var5_6);
                    this.mActionModePopup.setHeight(-2);
                    this.mShowActionModePopup = new Runnable(){

                        @Override
                        public void run() {
                            AppCompatDelegateImplV9.this.mActionModePopup.showAtLocation((View)AppCompatDelegateImplV9.this.mActionModeView, 55, 0, 0);
                            AppCompatDelegateImplV9.this.endOnGoingFadeAnimation();
                            if (AppCompatDelegateImplV9.this.shouldAnimateActionModeView()) {
                                ViewCompat.setAlpha((View)AppCompatDelegateImplV9.this.mActionModeView, 0.0f);
                                AppCompatDelegateImplV9.this.mFadeAnim = ViewCompat.animate((View)AppCompatDelegateImplV9.this.mActionModeView).alpha(1.0f);
                                AppCompatDelegateImplV9.this.mFadeAnim.setListener(new ViewPropertyAnimatorListenerAdapter(){

                                    @Override
                                    public void onAnimationEnd(View view) {
                                        ViewCompat.setAlpha((View)AppCompatDelegateImplV9.this.mActionModeView, 1.0f);
                                        AppCompatDelegateImplV9.this.mFadeAnim.setListener(null);
                                        AppCompatDelegateImplV9.this.mFadeAnim = null;
                                    }

                                    @Override
                                    public void onAnimationStart(View view) {
                                        AppCompatDelegateImplV9.this.mActionModeView.setVisibility(0);
                                    }
                                });
                                return;
                            }
                            ViewCompat.setAlpha((View)AppCompatDelegateImplV9.this.mActionModeView, 1.0f);
                            AppCompatDelegateImplV9.this.mActionModeView.setVisibility(0);
                        }

                    };
                } else {
                    var1_1 = (ViewStubCompat)this.mSubDecor.findViewById(R.id.action_mode_bar_stub);
                    if (var1_1 != null) {
                        var1_1.setLayoutInflater(LayoutInflater.from((Context)this.getActionBarThemedContext()));
                        this.mActionModeView = (ActionBarContextView)var1_1.inflate();
                    }
                }
            }
            if (this.mActionModeView != null) {
                this.endOnGoingFadeAnimation();
                this.mActionModeView.killMode();
                var1_1 = this.mActionModeView.getContext();
                var3_4 = this.mActionModeView;
                var6_7 = this.mActionModePopup == null;
                if (var2_3.onCreateActionMode((ActionMode)(var1_1 = new StandaloneActionMode((Context)var1_1, (ActionBarContextView)var3_4, (ActionMode.Callback)var2_3, var6_7)), var1_1.getMenu())) {
                    var1_1.invalidate();
                    this.mActionModeView.initForMode((ActionMode)var1_1);
                    this.mActionMode = var1_1;
                    if (this.shouldAnimateActionModeView()) {
                        ViewCompat.setAlpha((View)this.mActionModeView, 0.0f);
                        this.mFadeAnim = ViewCompat.animate((View)this.mActionModeView).alpha(1.0f);
                        this.mFadeAnim.setListener(new ViewPropertyAnimatorListenerAdapter(){

                            @Override
                            public void onAnimationEnd(View view) {
                                ViewCompat.setAlpha((View)AppCompatDelegateImplV9.this.mActionModeView, 1.0f);
                                AppCompatDelegateImplV9.this.mFadeAnim.setListener(null);
                                AppCompatDelegateImplV9.this.mFadeAnim = null;
                            }

                            @Override
                            public void onAnimationStart(View view) {
                                AppCompatDelegateImplV9.this.mActionModeView.setVisibility(0);
                                AppCompatDelegateImplV9.this.mActionModeView.sendAccessibilityEvent(32);
                                if (AppCompatDelegateImplV9.this.mActionModeView.getParent() instanceof View) {
                                    ViewCompat.requestApplyInsets((View)AppCompatDelegateImplV9.this.mActionModeView.getParent());
                                }
                            }
                        });
                    } else {
                        ViewCompat.setAlpha((View)this.mActionModeView, 1.0f);
                        this.mActionModeView.setVisibility(0);
                        this.mActionModeView.sendAccessibilityEvent(32);
                        if (this.mActionModeView.getParent() instanceof View) {
                            ViewCompat.requestApplyInsets((View)this.mActionModeView.getParent());
                        }
                    }
                    if (this.mActionModePopup != null) {
                        this.mWindow.getDecorView().post(this.mShowActionModePopup);
                    }
                } else {
                    this.mActionMode = null;
                }
            }
        }
        if (this.mActionMode == null) return this.mActionMode;
        if (this.mAppCompatCallback == null) return this.mActionMode;
        this.mAppCompatCallback.onSupportActionModeStarted(this.mActionMode);
        return this.mActionMode;
    }

    /*
     * Enabled aggressive block sorting
     */
    int updateStatusGuard(int n2) {
        View view;
        int n3 = 0;
        int n4 = 0;
        int n5 = 0;
        int n6 = n4;
        int n7 = n2;
        if (this.mActionModeView != null) {
            n6 = n4;
            n7 = n2;
            if (this.mActionModeView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                int n8;
                int n9;
                view = (ViewGroup.MarginLayoutParams)this.mActionModeView.getLayoutParams();
                n4 = 0;
                n7 = 0;
                if (this.mActionModeView.isShown()) {
                    if (this.mTempRect1 == null) {
                        this.mTempRect1 = new Rect();
                        this.mTempRect2 = new Rect();
                    }
                    Rect rect = this.mTempRect1;
                    Rect rect2 = this.mTempRect2;
                    rect.set(0, n2, 0, 0);
                    ViewUtils.computeFitSystemWindows((View)this.mSubDecor, rect, rect2);
                    n4 = rect2.top == 0 ? n2 : 0;
                    if (view.topMargin != n4) {
                        n4 = 1;
                        view.topMargin = n2;
                        if (this.mStatusGuard == null) {
                            this.mStatusGuard = new View(this.mContext);
                            this.mStatusGuard.setBackgroundColor(this.mContext.getResources().getColor(R.color.abc_input_method_navigation_guard));
                            this.mSubDecor.addView(this.mStatusGuard, -1, new ViewGroup.LayoutParams(-1, n2));
                            n7 = n4;
                        } else {
                            rect = this.mStatusGuard.getLayoutParams();
                            n7 = n4;
                            if (rect.height != n2) {
                                rect.height = n2;
                                this.mStatusGuard.setLayoutParams((ViewGroup.LayoutParams)rect);
                                n7 = n4;
                            }
                        }
                    }
                    n6 = this.mStatusGuard != null ? 1 : 0;
                    n4 = n7;
                    n8 = n6;
                    n9 = n2;
                    if (!this.mOverlayActionMode) {
                        n4 = n7;
                        n8 = n6;
                        n9 = n2;
                        if (n6 != 0) {
                            n9 = 0;
                            n8 = n6;
                            n4 = n7;
                        }
                    }
                } else {
                    n8 = n5;
                    n9 = n2;
                    if (view.topMargin != 0) {
                        n4 = 1;
                        view.topMargin = 0;
                        n8 = n5;
                        n9 = n2;
                    }
                }
                n6 = n8;
                n7 = n9;
                if (n4 != 0) {
                    this.mActionModeView.setLayoutParams((ViewGroup.LayoutParams)view);
                    n7 = n9;
                    n6 = n8;
                }
            }
        }
        if (this.mStatusGuard != null) {
            view = this.mStatusGuard;
            n2 = n6 != 0 ? n3 : 8;
            view.setVisibility(n2);
        }
        return n7;
    }

    private final class ActionMenuPresenterCallback
    implements MenuPresenter.Callback {
        ActionMenuPresenterCallback() {
        }

        @Override
        public void onCloseMenu(MenuBuilder menuBuilder, boolean bl) {
            AppCompatDelegateImplV9.this.checkCloseActionMenu(menuBuilder);
        }

        @Override
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            Window.Callback callback = AppCompatDelegateImplV9.this.getWindowCallback();
            if (callback != null) {
                callback.onMenuOpened(108, (Menu)menuBuilder);
            }
            return true;
        }
    }

    class ActionModeCallbackWrapperV9
    implements ActionMode.Callback {
        private ActionMode.Callback mWrapped;

        public ActionModeCallbackWrapperV9(ActionMode.Callback callback) {
            this.mWrapped = callback;
        }

        @Override
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.mWrapped.onActionItemClicked(actionMode, menuItem);
        }

        @Override
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu2) {
            return this.mWrapped.onCreateActionMode(actionMode, menu2);
        }

        @Override
        public void onDestroyActionMode(ActionMode actionMode) {
            this.mWrapped.onDestroyActionMode(actionMode);
            if (AppCompatDelegateImplV9.this.mActionModePopup != null) {
                AppCompatDelegateImplV9.this.mWindow.getDecorView().removeCallbacks(AppCompatDelegateImplV9.this.mShowActionModePopup);
            }
            if (AppCompatDelegateImplV9.this.mActionModeView != null) {
                AppCompatDelegateImplV9.this.endOnGoingFadeAnimation();
                AppCompatDelegateImplV9.this.mFadeAnim = ViewCompat.animate((View)AppCompatDelegateImplV9.this.mActionModeView).alpha(0.0f);
                AppCompatDelegateImplV9.this.mFadeAnim.setListener(new ViewPropertyAnimatorListenerAdapter(){

                    /*
                     * Enabled aggressive block sorting
                     */
                    @Override
                    public void onAnimationEnd(View view) {
                        AppCompatDelegateImplV9.this.mActionModeView.setVisibility(8);
                        if (AppCompatDelegateImplV9.this.mActionModePopup != null) {
                            AppCompatDelegateImplV9.this.mActionModePopup.dismiss();
                        } else if (AppCompatDelegateImplV9.this.mActionModeView.getParent() instanceof View) {
                            ViewCompat.requestApplyInsets((View)AppCompatDelegateImplV9.this.mActionModeView.getParent());
                        }
                        AppCompatDelegateImplV9.this.mActionModeView.removeAllViews();
                        AppCompatDelegateImplV9.this.mFadeAnim.setListener(null);
                        AppCompatDelegateImplV9.this.mFadeAnim = null;
                    }
                });
            }
            if (AppCompatDelegateImplV9.this.mAppCompatCallback != null) {
                AppCompatDelegateImplV9.this.mAppCompatCallback.onSupportActionModeFinished(AppCompatDelegateImplV9.this.mActionMode);
            }
            AppCompatDelegateImplV9.this.mActionMode = null;
        }

        @Override
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu2) {
            return this.mWrapped.onPrepareActionMode(actionMode, menu2);
        }

    }

    private class ListMenuDecorView
    extends ContentFrameLayout {
        public ListMenuDecorView(Context context) {
            super(context);
        }

        private boolean isOutOfBounds(int n2, int n3) {
            if (n2 < -5 || n3 < -5 || n2 > this.getWidth() + 5 || n3 > this.getHeight() + 5) {
                return true;
            }
            return false;
        }

        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            if (AppCompatDelegateImplV9.this.dispatchKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent)) {
                return true;
            }
            return false;
        }

        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && this.isOutOfBounds((int)motionEvent.getX(), (int)motionEvent.getY())) {
                AppCompatDelegateImplV9.this.closePanel(0);
                return true;
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        public void setBackgroundResource(int n2) {
            this.setBackgroundDrawable(AppCompatResources.getDrawable(this.getContext(), n2));
        }
    }

    protected static final class PanelFeatureState {
        int background;
        View createdPanelView;
        ViewGroup decorView;
        int featureId;
        Bundle frozenActionViewState;
        Bundle frozenMenuState;
        int gravity;
        boolean isHandled;
        boolean isOpen;
        boolean isPrepared;
        ListMenuPresenter listMenuPresenter;
        Context listPresenterContext;
        MenuBuilder menu;
        public boolean qwertyMode;
        boolean refreshDecorView;
        boolean refreshMenuContent;
        View shownPanelView;
        boolean wasLastOpen;
        int windowAnimations;
        int x;
        int y;

        PanelFeatureState(int n2) {
            this.featureId = n2;
            this.refreshDecorView = false;
        }

        void applyFrozenState() {
            if (this.menu != null && this.frozenMenuState != null) {
                this.menu.restorePresenterStates(this.frozenMenuState);
                this.frozenMenuState = null;
            }
        }

        public void clearMenuPresenters() {
            if (this.menu != null) {
                this.menu.removeMenuPresenter(this.listMenuPresenter);
            }
            this.listMenuPresenter = null;
        }

        MenuView getListMenuView(MenuPresenter.Callback callback) {
            if (this.menu == null) {
                return null;
            }
            if (this.listMenuPresenter == null) {
                this.listMenuPresenter = new ListMenuPresenter(this.listPresenterContext, R.layout.abc_list_menu_item_layout);
                this.listMenuPresenter.setCallback(callback);
                this.menu.addMenuPresenter(this.listMenuPresenter);
            }
            return this.listMenuPresenter.getMenuView(this.decorView);
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public boolean hasPanelItems() {
            boolean bl = true;
            if (this.shownPanelView == null) {
                return false;
            }
            boolean bl2 = bl;
            if (this.createdPanelView != null) return bl2;
            bl2 = bl;
            if (this.listMenuPresenter.getAdapter().getCount() > 0) return bl2;
            return false;
        }

        void onRestoreInstanceState(Parcelable parcelable) {
            parcelable = (SavedState)parcelable;
            this.featureId = parcelable.featureId;
            this.wasLastOpen = parcelable.isOpen;
            this.frozenMenuState = parcelable.menuState;
            this.shownPanelView = null;
            this.decorView = null;
        }

        Parcelable onSaveInstanceState() {
            SavedState savedState = new SavedState();
            savedState.featureId = this.featureId;
            savedState.isOpen = this.isOpen;
            if (this.menu != null) {
                savedState.menuState = new Bundle();
                this.menu.savePresenterStates(savedState.menuState);
            }
            return savedState;
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        void setMenu(MenuBuilder menuBuilder) {
            if (menuBuilder == this.menu) {
                return;
            }
            if (this.menu != null) {
                this.menu.removeMenuPresenter(this.listMenuPresenter);
            }
            this.menu = menuBuilder;
            if (menuBuilder == null) return;
            if (this.listMenuPresenter == null) return;
            menuBuilder.addMenuPresenter(this.listMenuPresenter);
        }

        /*
         * Enabled aggressive block sorting
         */
        void setStyle(Context object) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = object.getResources().newTheme();
            theme.setTo(object.getTheme());
            theme.resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                theme.applyStyle(typedValue.resourceId, true);
            }
            theme.resolveAttribute(R.attr.panelMenuListTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                theme.applyStyle(typedValue.resourceId, true);
            } else {
                theme.applyStyle(R.style.Theme_AppCompat_CompactMenu, true);
            }
            object = new ContextThemeWrapper((Context)object, 0);
            object.getTheme().setTo(theme);
            this.listPresenterContext = object;
            object = object.obtainStyledAttributes(R.styleable.AppCompatTheme);
            this.background = object.getResourceId(R.styleable.AppCompatTheme_panelBackground, 0);
            this.windowAnimations = object.getResourceId(R.styleable.AppCompatTheme_android_windowAnimationStyle, 0);
            object.recycle();
        }

        private static class SavedState
        implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks<SavedState>(){

                @Override
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.readFromParcel(parcel, classLoader);
                }

                public SavedState[] newArray(int n2) {
                    return new SavedState[n2];
                }
            });
            int featureId;
            boolean isOpen;
            Bundle menuState;

            SavedState() {
            }

            /*
             * Enabled aggressive block sorting
             */
            static SavedState readFromParcel(Parcel parcel, ClassLoader classLoader) {
                boolean bl = true;
                SavedState savedState = new SavedState();
                savedState.featureId = parcel.readInt();
                if (parcel.readInt() != 1) {
                    bl = false;
                }
                savedState.isOpen = bl;
                if (savedState.isOpen) {
                    savedState.menuState = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            public int describeContents() {
                return 0;
            }

            /*
             * Enabled aggressive block sorting
             */
            public void writeToParcel(Parcel parcel, int n2) {
                parcel.writeInt(this.featureId);
                n2 = this.isOpen ? 1 : 0;
                parcel.writeInt(n2);
                if (this.isOpen) {
                    parcel.writeBundle(this.menuState);
                }
            }

        }

    }

    private final class PanelMenuPresenterCallback
    implements MenuPresenter.Callback {
        PanelMenuPresenterCallback() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onCloseMenu(MenuBuilder object, boolean bl) {
            MenuBuilder menuBuilder = object.getRootMenu();
            boolean bl2 = menuBuilder != object;
            AppCompatDelegateImplV9 appCompatDelegateImplV9 = AppCompatDelegateImplV9.this;
            if (bl2) {
                object = menuBuilder;
            }
            if ((object = appCompatDelegateImplV9.findMenuPanel((Menu)object)) != null) {
                if (!bl2) {
                    AppCompatDelegateImplV9.this.closePanel((PanelFeatureState)object, bl);
                    return;
                }
                AppCompatDelegateImplV9.this.callOnPanelClosed(object.featureId, (PanelFeatureState)object, menuBuilder);
                AppCompatDelegateImplV9.this.closePanel((PanelFeatureState)object, true);
            }
        }

        @Override
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            Window.Callback callback;
            if (menuBuilder == null && AppCompatDelegateImplV9.this.mHasActionBar && (callback = AppCompatDelegateImplV9.this.getWindowCallback()) != null && !AppCompatDelegateImplV9.this.isDestroyed()) {
                callback.onMenuOpened(108, (Menu)menuBuilder);
            }
            return true;
        }
    }

}

