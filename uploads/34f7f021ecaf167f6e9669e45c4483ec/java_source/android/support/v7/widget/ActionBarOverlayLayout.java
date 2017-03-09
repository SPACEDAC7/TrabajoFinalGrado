/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.pm.ApplicationInfo
 *  android.content.res.Configuration
 *  android.content.res.Resources
 *  android.content.res.Resources$Theme
 *  android.content.res.TypedArray
 *  android.graphics.Canvas
 *  android.graphics.Rect
 *  android.graphics.drawable.Drawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.IBinder
 *  android.os.Parcelable
 *  android.util.AttributeSet
 *  android.util.SparseArray
 *  android.view.Menu
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewGroup$MarginLayoutParams
 *  android.view.Window
 *  android.view.Window$Callback
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.IBinder;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.NestedScrollingParent;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v4.widget.ScrollerCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.widget.ActionBarContainer;
import android.support.v7.widget.ContentFrameLayout;
import android.support.v7.widget.DecorContentParent;
import android.support.v7.widget.DecorToolbar;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.ViewUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class ActionBarOverlayLayout
extends ViewGroup
implements DecorContentParent,
NestedScrollingParent {
    static final int[] ATTRS = new int[]{R.attr.actionBarSize, 16842841};
    private static final String TAG = "ActionBarOverlayLayout";
    private final int ACTION_BAR_ANIMATE_DELAY = 600;
    private int mActionBarHeight;
    ActionBarContainer mActionBarTop;
    private ActionBarVisibilityCallback mActionBarVisibilityCallback;
    private final Runnable mAddActionBarHideOffset;
    boolean mAnimatingForFling;
    private final Rect mBaseContentInsets = new Rect();
    private final Rect mBaseInnerInsets = new Rect();
    private ContentFrameLayout mContent;
    private final Rect mContentInsets = new Rect();
    ViewPropertyAnimatorCompat mCurrentActionBarTopAnimator;
    private DecorToolbar mDecorToolbar;
    private ScrollerCompat mFlingEstimator;
    private boolean mHasNonEmbeddedTabs;
    private boolean mHideOnContentScroll;
    private int mHideOnContentScrollReference;
    private boolean mIgnoreWindowContentOverlay;
    private final Rect mInnerInsets = new Rect();
    private final Rect mLastBaseContentInsets = new Rect();
    private final Rect mLastInnerInsets = new Rect();
    private int mLastSystemUiVisibility;
    private boolean mOverlayMode;
    private final NestedScrollingParentHelper mParentHelper;
    private final Runnable mRemoveActionBarHideOffset;
    final ViewPropertyAnimatorListener mTopAnimatorListener;
    private Drawable mWindowContentOverlay;
    private int mWindowVisibility = 0;

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTopAnimatorListener = new ViewPropertyAnimatorListenerAdapter(){

            @Override
            public void onAnimationCancel(View view) {
                ActionBarOverlayLayout.this.mCurrentActionBarTopAnimator = null;
                ActionBarOverlayLayout.this.mAnimatingForFling = false;
            }

            @Override
            public void onAnimationEnd(View view) {
                ActionBarOverlayLayout.this.mCurrentActionBarTopAnimator = null;
                ActionBarOverlayLayout.this.mAnimatingForFling = false;
            }
        };
        this.mRemoveActionBarHideOffset = new Runnable(){

            @Override
            public void run() {
                ActionBarOverlayLayout.this.haltActionBarHideOffsetAnimations();
                ActionBarOverlayLayout.this.mCurrentActionBarTopAnimator = ViewCompat.animate((View)ActionBarOverlayLayout.this.mActionBarTop).translationY(0.0f).setListener(ActionBarOverlayLayout.this.mTopAnimatorListener);
            }
        };
        this.mAddActionBarHideOffset = new Runnable(){

            @Override
            public void run() {
                ActionBarOverlayLayout.this.haltActionBarHideOffsetAnimations();
                ActionBarOverlayLayout.this.mCurrentActionBarTopAnimator = ViewCompat.animate((View)ActionBarOverlayLayout.this.mActionBarTop).translationY(- ActionBarOverlayLayout.this.mActionBarTop.getHeight()).setListener(ActionBarOverlayLayout.this.mTopAnimatorListener);
            }
        };
        this.init(context);
        this.mParentHelper = new NestedScrollingParentHelper(this);
    }

    private void addActionBarHideOffset() {
        this.haltActionBarHideOffsetAnimations();
        this.mAddActionBarHideOffset.run();
    }

    private boolean applyInsets(View object, Rect rect, boolean bl, boolean bl2, boolean bl3, boolean bl4) {
        boolean bl5 = false;
        object = (LayoutParams)object.getLayoutParams();
        boolean bl6 = bl5;
        if (bl) {
            bl6 = bl5;
            if (object.leftMargin != rect.left) {
                bl6 = true;
                object.leftMargin = rect.left;
            }
        }
        bl = bl6;
        if (bl2) {
            bl = bl6;
            if (object.topMargin != rect.top) {
                bl = true;
                object.topMargin = rect.top;
            }
        }
        bl2 = bl;
        if (bl4) {
            bl2 = bl;
            if (object.rightMargin != rect.right) {
                bl2 = true;
                object.rightMargin = rect.right;
            }
        }
        bl = bl2;
        if (bl3) {
            bl = bl2;
            if (object.bottomMargin != rect.bottom) {
                bl = true;
                object.bottomMargin = rect.bottom;
            }
        }
        return bl;
    }

    private DecorToolbar getDecorToolbar(View view) {
        if (view instanceof DecorToolbar) {
            return (DecorToolbar)view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar)view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void init(Context context) {
        boolean bl = true;
        TypedArray typedArray = this.getContext().getTheme().obtainStyledAttributes(ATTRS);
        this.mActionBarHeight = typedArray.getDimensionPixelSize(0, 0);
        this.mWindowContentOverlay = typedArray.getDrawable(1);
        boolean bl2 = this.mWindowContentOverlay == null;
        this.setWillNotDraw(bl2);
        typedArray.recycle();
        bl2 = context.getApplicationInfo().targetSdkVersion < 19 ? bl : false;
        this.mIgnoreWindowContentOverlay = bl2;
        this.mFlingEstimator = ScrollerCompat.create(context);
    }

    private void postAddActionBarHideOffset() {
        this.haltActionBarHideOffsetAnimations();
        this.postDelayed(this.mAddActionBarHideOffset, 600);
    }

    private void postRemoveActionBarHideOffset() {
        this.haltActionBarHideOffsetAnimations();
        this.postDelayed(this.mRemoveActionBarHideOffset, 600);
    }

    private void removeActionBarHideOffset() {
        this.haltActionBarHideOffsetAnimations();
        this.mRemoveActionBarHideOffset.run();
    }

    private boolean shouldHideActionBarOnFling(float f2, float f3) {
        boolean bl = false;
        this.mFlingEstimator.fling(0, 0, 0, (int)f3, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        if (this.mFlingEstimator.getFinalY() > this.mActionBarTop.getHeight()) {
            bl = true;
        }
        return bl;
    }

    @Override
    public boolean canShowOverflowMenu() {
        this.pullChildren();
        return this.mDecorToolbar.canShowOverflowMenu();
    }

    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override
    public void dismissPopups() {
        this.pullChildren();
        this.mDecorToolbar.dismissPopupMenus();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.mWindowContentOverlay != null && !this.mIgnoreWindowContentOverlay) {
            int n2 = this.mActionBarTop.getVisibility() == 0 ? (int)((float)this.mActionBarTop.getBottom() + ViewCompat.getTranslationY((View)this.mActionBarTop) + 0.5f) : 0;
            this.mWindowContentOverlay.setBounds(0, n2, this.getWidth(), this.mWindowContentOverlay.getIntrinsicHeight() + n2);
            this.mWindowContentOverlay.draw(canvas);
        }
    }

    protected boolean fitSystemWindows(Rect rect) {
        this.pullChildren();
        if ((ViewCompat.getWindowSystemUiVisibility((View)this) & 256) != 0) {
            // empty if block
        }
        boolean bl = this.applyInsets((View)this.mActionBarTop, rect, true, true, false, true);
        this.mBaseInnerInsets.set(rect);
        ViewUtils.computeFitSystemWindows((View)this, this.mBaseInnerInsets, this.mBaseContentInsets);
        if (!this.mLastBaseContentInsets.equals((Object)this.mBaseContentInsets)) {
            bl = true;
            this.mLastBaseContentInsets.set(this.mBaseContentInsets);
        }
        if (bl) {
            this.requestLayout();
        }
        return true;
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(this.getContext(), attributeSet);
    }

    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public int getActionBarHideOffset() {
        if (this.mActionBarTop != null) {
            return - (int)ViewCompat.getTranslationY((View)this.mActionBarTop);
        }
        return 0;
    }

    @Override
    public int getNestedScrollAxes() {
        return this.mParentHelper.getNestedScrollAxes();
    }

    @Override
    public CharSequence getTitle() {
        this.pullChildren();
        return this.mDecorToolbar.getTitle();
    }

    void haltActionBarHideOffsetAnimations() {
        this.removeCallbacks(this.mRemoveActionBarHideOffset);
        this.removeCallbacks(this.mAddActionBarHideOffset);
        if (this.mCurrentActionBarTopAnimator != null) {
            this.mCurrentActionBarTopAnimator.cancel();
        }
    }

    @Override
    public boolean hasIcon() {
        this.pullChildren();
        return this.mDecorToolbar.hasIcon();
    }

    @Override
    public boolean hasLogo() {
        this.pullChildren();
        return this.mDecorToolbar.hasLogo();
    }

    @Override
    public boolean hideOverflowMenu() {
        this.pullChildren();
        return this.mDecorToolbar.hideOverflowMenu();
    }

    @Override
    public void initFeature(int n2) {
        this.pullChildren();
        switch (n2) {
            default: {
                return;
            }
            case 2: {
                this.mDecorToolbar.initProgress();
                return;
            }
            case 5: {
                this.mDecorToolbar.initIndeterminateProgress();
                return;
            }
            case 109: 
        }
        this.setOverlayMode(true);
    }

    public boolean isHideOnContentScrollEnabled() {
        return this.mHideOnContentScroll;
    }

    public boolean isInOverlayMode() {
        return this.mOverlayMode;
    }

    @Override
    public boolean isOverflowMenuShowPending() {
        this.pullChildren();
        return this.mDecorToolbar.isOverflowMenuShowPending();
    }

    @Override
    public boolean isOverflowMenuShowing() {
        this.pullChildren();
        return this.mDecorToolbar.isOverflowMenuShowing();
    }

    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.init(this.getContext());
        ViewCompat.requestApplyInsets((View)this);
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.haltActionBarHideOffsetAnimations();
    }

    protected void onLayout(boolean bl, int n2, int n3, int n4, int n5) {
        n3 = this.getChildCount();
        n4 = this.getPaddingLeft();
        this.getPaddingRight();
        n5 = this.getPaddingTop();
        this.getPaddingBottom();
        for (n2 = 0; n2 < n3; ++n2) {
            View view = this.getChildAt(n2);
            if (view.getVisibility() == 8) continue;
            LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
            int n6 = view.getMeasuredWidth();
            int n7 = view.getMeasuredHeight();
            int n8 = n4 + layoutParams.leftMargin;
            int n9 = n5 + layoutParams.topMargin;
            view.layout(n8, n9, n8 + n6, n9 + n7);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onMeasure(int n2, int n3) {
        int n4;
        this.pullChildren();
        int n5 = 0;
        this.measureChildWithMargins((View)this.mActionBarTop, n2, 0, n3, 0);
        LayoutParams layoutParams = (LayoutParams)this.mActionBarTop.getLayoutParams();
        int n6 = Math.max(0, this.mActionBarTop.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin);
        int n7 = Math.max(0, this.mActionBarTop.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin);
        int n8 = ViewUtils.combineMeasuredStates(0, ViewCompat.getMeasuredState((View)this.mActionBarTop));
        int n9 = (ViewCompat.getWindowSystemUiVisibility((View)this) & 256) != 0 ? 1 : 0;
        if (n9 != 0) {
            n5 = n4 = this.mActionBarHeight;
            if (this.mHasNonEmbeddedTabs) {
                n5 = n4;
                if (this.mActionBarTop.getTabContainer() != null) {
                    n5 = n4 + this.mActionBarHeight;
                }
            }
        } else if (this.mActionBarTop.getVisibility() != 8) {
            n5 = this.mActionBarTop.getMeasuredHeight();
        }
        this.mContentInsets.set(this.mBaseContentInsets);
        this.mInnerInsets.set(this.mBaseInnerInsets);
        if (!this.mOverlayMode && n9 == 0) {
            layoutParams = this.mContentInsets;
            layoutParams.top += n5;
            layoutParams = this.mContentInsets;
            layoutParams.bottom += 0;
        } else {
            layoutParams = this.mInnerInsets;
            layoutParams.top += n5;
            layoutParams = this.mInnerInsets;
            layoutParams.bottom += 0;
        }
        this.applyInsets((View)this.mContent, this.mContentInsets, true, true, true, true);
        if (!this.mLastInnerInsets.equals((Object)this.mInnerInsets)) {
            this.mLastInnerInsets.set(this.mInnerInsets);
            this.mContent.dispatchFitSystemWindows(this.mInnerInsets);
        }
        this.measureChildWithMargins((View)this.mContent, n2, 0, n3, 0);
        layoutParams = (LayoutParams)this.mContent.getLayoutParams();
        n5 = Math.max(n6, this.mContent.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin);
        n9 = Math.max(n7, this.mContent.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin);
        n4 = ViewUtils.combineMeasuredStates(n8, ViewCompat.getMeasuredState((View)this.mContent));
        n8 = this.getPaddingLeft();
        n7 = this.getPaddingRight();
        n9 = Math.max(n9 + (this.getPaddingTop() + this.getPaddingBottom()), this.getSuggestedMinimumHeight());
        this.setMeasuredDimension(ViewCompat.resolveSizeAndState(Math.max(n5 + (n8 + n7), this.getSuggestedMinimumWidth()), n2, n4), ViewCompat.resolveSizeAndState(n9, n3, n4 << 16));
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean onNestedFling(View view, float f2, float f3, boolean bl) {
        if (!this.mHideOnContentScroll || !bl) {
            return false;
        }
        if (this.shouldHideActionBarOnFling(f2, f3)) {
            this.addActionBarHideOffset();
        } else {
            this.removeActionBarHideOffset();
        }
        this.mAnimatingForFling = true;
        return true;
    }

    @Override
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return false;
    }

    @Override
    public void onNestedPreScroll(View view, int n2, int n3, int[] arrn) {
    }

    @Override
    public void onNestedScroll(View view, int n2, int n3, int n4, int n5) {
        this.mHideOnContentScrollReference += n3;
        this.setActionBarHideOffset(this.mHideOnContentScrollReference);
    }

    @Override
    public void onNestedScrollAccepted(View view, View view2, int n2) {
        this.mParentHelper.onNestedScrollAccepted(view, view2, n2);
        this.mHideOnContentScrollReference = this.getActionBarHideOffset();
        this.haltActionBarHideOffsetAnimations();
        if (this.mActionBarVisibilityCallback != null) {
            this.mActionBarVisibilityCallback.onContentScrollStarted();
        }
    }

    @Override
    public boolean onStartNestedScroll(View view, View view2, int n2) {
        if ((n2 & 2) == 0 || this.mActionBarTop.getVisibility() != 0) {
            return false;
        }
        return this.mHideOnContentScroll;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onStopNestedScroll(View view) {
        if (this.mHideOnContentScroll && !this.mAnimatingForFling) {
            if (this.mHideOnContentScrollReference <= this.mActionBarTop.getHeight()) {
                this.postRemoveActionBarHideOffset();
            } else {
                this.postAddActionBarHideOffset();
            }
        }
        if (this.mActionBarVisibilityCallback != null) {
            this.mActionBarVisibilityCallback.onContentScrollStopped();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onWindowSystemUiVisibilityChanged(int n2) {
        boolean bl = true;
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(n2);
        }
        this.pullChildren();
        int n3 = this.mLastSystemUiVisibility;
        this.mLastSystemUiVisibility = n2;
        boolean bl2 = (n2 & 4) == 0;
        boolean bl3 = (n2 & 256) != 0;
        if (this.mActionBarVisibilityCallback != null) {
            ActionBarVisibilityCallback actionBarVisibilityCallback = this.mActionBarVisibilityCallback;
            if (bl3) {
                bl = false;
            }
            actionBarVisibilityCallback.enableContentAnimations(bl);
            if (bl2 || !bl3) {
                this.mActionBarVisibilityCallback.showForSystem();
            } else {
                this.mActionBarVisibilityCallback.hideForSystem();
            }
        }
        if (((n3 ^ n2) & 256) != 0 && this.mActionBarVisibilityCallback != null) {
            ViewCompat.requestApplyInsets((View)this);
        }
    }

    protected void onWindowVisibilityChanged(int n2) {
        super.onWindowVisibilityChanged(n2);
        this.mWindowVisibility = n2;
        if (this.mActionBarVisibilityCallback != null) {
            this.mActionBarVisibilityCallback.onWindowVisibilityChanged(n2);
        }
    }

    void pullChildren() {
        if (this.mContent == null) {
            this.mContent = (ContentFrameLayout)this.findViewById(R.id.action_bar_activity_content);
            this.mActionBarTop = (ActionBarContainer)this.findViewById(R.id.action_bar_container);
            this.mDecorToolbar = this.getDecorToolbar(this.findViewById(R.id.action_bar));
        }
    }

    @Override
    public void restoreToolbarHierarchyState(SparseArray<Parcelable> sparseArray) {
        this.pullChildren();
        this.mDecorToolbar.restoreHierarchyState(sparseArray);
    }

    @Override
    public void saveToolbarHierarchyState(SparseArray<Parcelable> sparseArray) {
        this.pullChildren();
        this.mDecorToolbar.saveHierarchyState(sparseArray);
    }

    public void setActionBarHideOffset(int n2) {
        this.haltActionBarHideOffsetAnimations();
        n2 = Math.max(0, Math.min(n2, this.mActionBarTop.getHeight()));
        ViewCompat.setTranslationY((View)this.mActionBarTop, - n2);
    }

    public void setActionBarVisibilityCallback(ActionBarVisibilityCallback actionBarVisibilityCallback) {
        this.mActionBarVisibilityCallback = actionBarVisibilityCallback;
        if (this.getWindowToken() != null) {
            this.mActionBarVisibilityCallback.onWindowVisibilityChanged(this.mWindowVisibility);
            if (this.mLastSystemUiVisibility != 0) {
                this.onWindowSystemUiVisibilityChanged(this.mLastSystemUiVisibility);
                ViewCompat.requestApplyInsets((View)this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean bl) {
        this.mHasNonEmbeddedTabs = bl;
    }

    public void setHideOnContentScrollEnabled(boolean bl) {
        if (bl != this.mHideOnContentScroll) {
            this.mHideOnContentScroll = bl;
            if (!bl) {
                this.haltActionBarHideOffsetAnimations();
                this.setActionBarHideOffset(0);
            }
        }
    }

    @Override
    public void setIcon(int n2) {
        this.pullChildren();
        this.mDecorToolbar.setIcon(n2);
    }

    @Override
    public void setIcon(Drawable drawable2) {
        this.pullChildren();
        this.mDecorToolbar.setIcon(drawable2);
    }

    @Override
    public void setLogo(int n2) {
        this.pullChildren();
        this.mDecorToolbar.setLogo(n2);
    }

    @Override
    public void setMenu(Menu menu2, MenuPresenter.Callback callback) {
        this.pullChildren();
        this.mDecorToolbar.setMenu(menu2, callback);
    }

    @Override
    public void setMenuPrepared() {
        this.pullChildren();
        this.mDecorToolbar.setMenuPrepared();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setOverlayMode(boolean bl) {
        this.mOverlayMode = bl;
        bl = bl && this.getContext().getApplicationInfo().targetSdkVersion < 19;
        this.mIgnoreWindowContentOverlay = bl;
    }

    public void setShowingForActionMode(boolean bl) {
    }

    @Override
    public void setUiOptions(int n2) {
    }

    @Override
    public void setWindowCallback(Window.Callback callback) {
        this.pullChildren();
        this.mDecorToolbar.setWindowCallback(callback);
    }

    @Override
    public void setWindowTitle(CharSequence charSequence) {
        this.pullChildren();
        this.mDecorToolbar.setWindowTitle(charSequence);
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override
    public boolean showOverflowMenu() {
        this.pullChildren();
        return this.mDecorToolbar.showOverflowMenu();
    }

    public static interface ActionBarVisibilityCallback {
        public void enableContentAnimations(boolean var1);

        public void hideForSystem();

        public void onContentScrollStarted();

        public void onContentScrollStopped();

        public void onWindowVisibilityChanged(int var1);

        public void showForSystem();
    }

    public static class LayoutParams
    extends ViewGroup.MarginLayoutParams {
        public LayoutParams(int n2, int n3) {
            super(n2, n3);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

}

