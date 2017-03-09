/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.TypedArray
 *  android.graphics.Rect
 *  android.graphics.drawable.Drawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewGroup$MarginLayoutParams
 *  android.view.animation.AnimationUtils
 *  android.view.animation.Interpolator
 *  android.widget.LinearLayout
 *  android.widget.LinearLayout$LayoutParams
 */
package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.design.R;
import android.support.design.widget.AnimationUtils;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.HeaderBehavior;
import android.support.design.widget.HeaderScrollingViewBehavior;
import android.support.design.widget.MathUtils;
import android.support.design.widget.ThemeUtils;
import android.support.design.widget.ValueAnimatorCompat;
import android.support.design.widget.ViewUtils;
import android.support.design.widget.ViewUtilsLollipop;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

@CoordinatorLayout.DefaultBehavior(value=Behavior.class)
public class AppBarLayout
extends LinearLayout {
    private static final int INVALID_SCROLL_RANGE = -1;
    static final int PENDING_ACTION_ANIMATE_ENABLED = 4;
    static final int PENDING_ACTION_COLLAPSED = 2;
    static final int PENDING_ACTION_EXPANDED = 1;
    static final int PENDING_ACTION_NONE = 0;
    private boolean mCollapsed;
    private boolean mCollapsible;
    private int mDownPreScrollRange = -1;
    private int mDownScrollRange = -1;
    private boolean mHaveChildWithInterpolator;
    private WindowInsetsCompat mLastInsets;
    private List<OnOffsetChangedListener> mListeners;
    private int mPendingAction = 0;
    private final int[] mTmpStatesArray = new int[2];
    private int mTotalScrollRange = -1;

    public AppBarLayout(Context context) {
        this(context, null);
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.setOrientation(1);
        ThemeUtils.checkAppCompatTheme(context);
        if (Build.VERSION.SDK_INT >= 21) {
            ViewUtilsLollipop.setBoundsViewOutlineProvider((View)this);
            ViewUtilsLollipop.setStateListAnimatorFromAttrs((View)this, attributeSet, 0, R.style.Widget_Design_AppBarLayout);
        }
        context = context.obtainStyledAttributes(attributeSet, R.styleable.AppBarLayout, 0, R.style.Widget_Design_AppBarLayout);
        ViewCompat.setBackground((View)this, context.getDrawable(R.styleable.AppBarLayout_android_background));
        if (context.hasValue(R.styleable.AppBarLayout_expanded)) {
            this.setExpanded(context.getBoolean(R.styleable.AppBarLayout_expanded, false));
        }
        if (Build.VERSION.SDK_INT >= 21 && context.hasValue(R.styleable.AppBarLayout_elevation)) {
            ViewUtilsLollipop.setDefaultAppBarLayoutStateListAnimator((View)this, context.getDimensionPixelSize(R.styleable.AppBarLayout_elevation, 0));
        }
        context.recycle();
        ViewCompat.setOnApplyWindowInsetsListener((View)this, new OnApplyWindowInsetsListener(){

            @Override
            public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return AppBarLayout.this.onWindowInsetChanged(windowInsetsCompat);
            }
        });
    }

    private void invalidateScrollRanges() {
        this.mTotalScrollRange = -1;
        this.mDownPreScrollRange = -1;
        this.mDownScrollRange = -1;
    }

    private boolean setCollapsibleState(boolean bl) {
        if (this.mCollapsible != bl) {
            this.mCollapsible = bl;
            this.refreshDrawableState();
            return true;
        }
        return false;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void updateCollapsible() {
        var4_1 = false;
        var1_2 = 0;
        var2_3 = this.getChildCount();
        do {
            var3_4 = var4_1;
            if (var1_2 >= var2_3) ** GOTO lbl9
            if (((LayoutParams)this.getChildAt(var1_2).getLayoutParams()).isCollapsible()) {
                var3_4 = true;
lbl9: // 2 sources:
                this.setCollapsibleState(var3_4);
                return;
            }
            ++var1_2;
        } while (true);
    }

    public void addOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList<OnOffsetChangedListener>();
        }
        if (onOffsetChangedListener != null && !this.mListeners.contains(onOffsetChangedListener)) {
            this.mListeners.add(onOffsetChangedListener);
        }
    }

    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    void dispatchOffsetUpdates(int n2) {
        if (this.mListeners != null) {
            int n3 = this.mListeners.size();
            for (int i2 = 0; i2 < n3; ++i2) {
                OnOffsetChangedListener onOffsetChangedListener = this.mListeners.get(i2);
                if (onOffsetChangedListener == null) continue;
                onOffsetChangedListener.onOffsetChanged(this, n2);
            }
        }
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(this.getContext(), attributeSet);
    }

    protected LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return new LayoutParams((LinearLayout.LayoutParams)layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams)layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    /*
     * Enabled aggressive block sorting
     */
    int getDownNestedPreScrollRange() {
        int n2;
        if (this.mDownPreScrollRange != -1) {
            return this.mDownPreScrollRange;
        }
        int n3 = 0;
        for (int i2 = this.getChildCount() - 1; i2 >= 0; --i2) {
            View view = this.getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
            n2 = view.getMeasuredHeight();
            int n4 = layoutParams.mScrollFlags;
            if ((n4 & 5) == 5) {
                n3 += layoutParams.topMargin + layoutParams.bottomMargin;
                n2 = (n4 & 8) != 0 ? n3 + ViewCompat.getMinimumHeight(view) : ((n4 & 2) != 0 ? n3 + (n2 - ViewCompat.getMinimumHeight(view)) : n3 + n2);
            } else {
                n2 = n3;
                if (n3 > 0) break;
            }
            n3 = n2;
        }
        this.mDownPreScrollRange = n2 = Math.max(0, n3);
        return n2;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    int getDownNestedScrollRange() {
        if (this.mDownScrollRange != -1) {
            return this.mDownScrollRange;
        }
        var1_1 = 0;
        var2_2 = 0;
        var4_3 = this.getChildCount();
        do {
            var3_4 = var1_1;
            if (var2_2 >= var4_3) ** GOTO lbl20
            var9_9 = this.getChildAt(var2_2);
            var10_10 = (LayoutParams)var9_9.getLayoutParams();
            var6_6 = var9_9.getMeasuredHeight();
            var7_7 = var10_10.topMargin;
            var8_8 = var10_10.bottomMargin;
            var5_5 = var10_10.mScrollFlags;
            var3_4 = var1_1;
            if ((var5_5 & 1) == 0) ** GOTO lbl20
            var1_1 += var6_6 + (var7_7 + var8_8);
            if ((var5_5 & 2) != 0) {
                var3_4 = var1_1 - (ViewCompat.getMinimumHeight(var9_9) + this.getTopInset());
lbl20: // 3 sources:
                this.mDownScrollRange = var1_1 = Math.max(0, var3_4);
                return var1_1;
            }
            ++var2_2;
        } while (true);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    final int getMinimumHeightForVisibleOverlappingContent() {
        int n2 = this.getTopInset();
        int n3 = ViewCompat.getMinimumHeight((View)this);
        if (n3 != 0) {
            return n3 * 2 + n2;
        }
        n3 = this.getChildCount();
        if (n3 < 1) return this.getHeight() / 3;
        if ((n3 = ViewCompat.getMinimumHeight(this.getChildAt(n3 - 1))) == 0) return this.getHeight() / 3;
        return n3 * 2 + n2;
    }

    int getPendingAction() {
        return this.mPendingAction;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    @VisibleForTesting
    final int getTopInset() {
        if (this.mLastInsets != null) {
            return this.mLastInsets.getSystemWindowInsetTop();
        }
        return 0;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public final int getTotalScrollRange() {
        if (this.mTotalScrollRange != -1) {
            return this.mTotalScrollRange;
        }
        var1_1 = 0;
        var2_2 = 0;
        var4_3 = this.getChildCount();
        do {
            var3_4 = var1_1;
            if (var2_2 >= var4_3) ** GOTO lbl18
            var7_7 = this.getChildAt(var2_2);
            var8_8 = (LayoutParams)var7_7.getLayoutParams();
            var6_6 = var7_7.getMeasuredHeight();
            var5_5 = var8_8.mScrollFlags;
            var3_4 = var1_1;
            if ((var5_5 & 1) == 0) ** GOTO lbl18
            var1_1 += var8_8.topMargin + var6_6 + var8_8.bottomMargin;
            if ((var5_5 & 2) != 0) {
                var3_4 = var1_1 - ViewCompat.getMinimumHeight(var7_7);
lbl18: // 3 sources:
                this.mTotalScrollRange = var1_1 = Math.max(0, var3_4 - this.getTopInset());
                return var1_1;
            }
            ++var2_2;
        } while (true);
    }

    int getUpNestedPreScrollRange() {
        return this.getTotalScrollRange();
    }

    boolean hasChildWithInterpolator() {
        return this.mHaveChildWithInterpolator;
    }

    boolean hasScrollableChildren() {
        if (this.getTotalScrollRange() != 0) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected int[] onCreateDrawableState(int n2) {
        int[] arrn = this.mTmpStatesArray;
        int[] arrn2 = super.onCreateDrawableState(arrn.length + n2);
        n2 = this.mCollapsible ? R.attr.state_collapsible : - R.attr.state_collapsible;
        arrn[0] = n2;
        n2 = this.mCollapsible && this.mCollapsed ? R.attr.state_collapsed : - R.attr.state_collapsed;
        arrn[1] = n2;
        return AppBarLayout.mergeDrawableStates((int[])arrn2, (int[])arrn);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected void onLayout(boolean var1_1, int var2_2, int var3_3, int var4_4, int var5_5) {
        super.onLayout(var1_1, var2_2, var3_3, var4_4, var5_5);
        this.invalidateScrollRanges();
        this.mHaveChildWithInterpolator = false;
        var2_2 = 0;
        var3_3 = this.getChildCount();
        do {
            if (var2_2 >= var3_3) ** GOTO lbl10
            if (((LayoutParams)this.getChildAt(var2_2).getLayoutParams()).getScrollInterpolator() != null) {
                this.mHaveChildWithInterpolator = true;
lbl10: // 2 sources:
                this.updateCollapsible();
                return;
            }
            ++var2_2;
        } while (true);
    }

    protected void onMeasure(int n2, int n3) {
        super.onMeasure(n2, n3);
        this.invalidateScrollRanges();
    }

    WindowInsetsCompat onWindowInsetChanged(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = null;
        if (ViewCompat.getFitsSystemWindows((View)this)) {
            windowInsetsCompat2 = windowInsetsCompat;
        }
        if (!ViewUtils.objectEquals(this.mLastInsets, windowInsetsCompat2)) {
            this.mLastInsets = windowInsetsCompat2;
            this.invalidateScrollRanges();
        }
        return windowInsetsCompat;
    }

    public void removeOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        if (this.mListeners != null && onOffsetChangedListener != null) {
            this.mListeners.remove(onOffsetChangedListener);
        }
    }

    void resetPendingAction() {
        this.mPendingAction = 0;
    }

    boolean setCollapsedState(boolean bl) {
        if (this.mCollapsed != bl) {
            this.mCollapsed = bl;
            this.refreshDrawableState();
            return true;
        }
        return false;
    }

    public void setExpanded(boolean bl) {
        this.setExpanded(bl, ViewCompat.isLaidOut((View)this));
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setExpanded(boolean bl, boolean bl2) {
        int n2 = bl ? 1 : 2;
        int n3 = bl2 ? 4 : 0;
        this.mPendingAction = n3 | n2;
        this.requestLayout();
    }

    public void setOrientation(int n2) {
        if (n2 != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(n2);
    }

    @Deprecated
    public void setTargetElevation(float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            ViewUtilsLollipop.setDefaultAppBarLayoutStateListAnimator((View)this, f2);
        }
    }

    public static class Behavior
    extends HeaderBehavior<AppBarLayout> {
        private static final int INVALID_POSITION = -1;
        private static final int MAX_OFFSET_ANIMATION_DURATION = 600;
        private WeakReference<View> mLastNestedScrollingChildRef;
        private ValueAnimatorCompat mOffsetAnimator;
        private int mOffsetDelta;
        private int mOffsetToChildIndexOnLayout = -1;
        private boolean mOffsetToChildIndexOnLayoutIsMinHeight;
        private float mOffsetToChildIndexOnLayoutPerc;
        private DragCallback mOnDragCallback;
        private boolean mSkipNestedPreScroll;
        private boolean mWasNestedFlung;

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        /*
         * Enabled aggressive block sorting
         */
        private void animateOffsetTo(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int n2, float f2) {
            int n3 = Math.abs(this.getTopBottomOffsetForScrollingSibling() - n2);
            n3 = (f2 = Math.abs(f2)) > 0.0f ? Math.round(1000.0f * ((float)n3 / f2)) * 3 : (int)((1.0f + (float)n3 / (float)appBarLayout.getHeight()) * 150.0f);
            this.animateOffsetWithDuration(coordinatorLayout, appBarLayout, n2, n3);
        }

        /*
         * Enabled aggressive block sorting
         */
        private void animateOffsetWithDuration(final CoordinatorLayout coordinatorLayout, final AppBarLayout appBarLayout, int n2, int n3) {
            int n4 = this.getTopBottomOffsetForScrollingSibling();
            if (n4 == n2) {
                if (this.mOffsetAnimator != null && this.mOffsetAnimator.isRunning()) {
                    this.mOffsetAnimator.cancel();
                }
                return;
            }
            if (this.mOffsetAnimator == null) {
                this.mOffsetAnimator = ViewUtils.createAnimator();
                this.mOffsetAnimator.setInterpolator(AnimationUtils.DECELERATE_INTERPOLATOR);
                this.mOffsetAnimator.addUpdateListener(new ValueAnimatorCompat.AnimatorUpdateListener(){

                    @Override
                    public void onAnimationUpdate(ValueAnimatorCompat valueAnimatorCompat) {
                        Behavior.this.setHeaderTopBottomOffset(coordinatorLayout, appBarLayout, valueAnimatorCompat.getAnimatedIntValue());
                    }
                });
            } else {
                this.mOffsetAnimator.cancel();
            }
            this.mOffsetAnimator.setDuration(Math.min(n3, 600));
            this.mOffsetAnimator.setIntValues(n4, n2);
            this.mOffsetAnimator.start();
        }

        private static boolean checkFlag(int n2, int n3) {
            if ((n2 & n3) == n3) {
                return true;
            }
            return false;
        }

        private static View getAppBarChildOnOffset(AppBarLayout appBarLayout, int n2) {
            int n3 = Math.abs(n2);
            int n4 = appBarLayout.getChildCount();
            for (n2 = 0; n2 < n4; ++n2) {
                View view = appBarLayout.getChildAt(n2);
                if (n3 < view.getTop() || n3 > view.getBottom()) continue;
                return view;
            }
            return null;
        }

        private int getChildIndexOnOffset(AppBarLayout appBarLayout, int n2) {
            int n3 = appBarLayout.getChildCount();
            for (int i2 = 0; i2 < n3; ++i2) {
                View view = appBarLayout.getChildAt(i2);
                if (view.getTop() > - n2 || view.getBottom() < - n2) continue;
                return i2;
            }
            return -1;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        private int interpolateOffset(AppBarLayout appBarLayout, int n2) {
            int n3 = Math.abs(n2);
            int n4 = 0;
            int n5 = appBarLayout.getChildCount();
            do {
                int n6 = n2;
                if (n4 >= n5) return n6;
                View view = appBarLayout.getChildAt(n4);
                LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
                Interpolator interpolator2 = layoutParams.getScrollInterpolator();
                if (n3 >= view.getTop() && n3 <= view.getBottom()) {
                    n6 = n2;
                    if (interpolator2 == null) return n6;
                    n6 = 0;
                    n5 = layoutParams.getScrollFlags();
                    if ((n5 & 1) != 0) {
                        n6 = n4 = 0 + (view.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin);
                        if ((n5 & 2) != 0) {
                            n6 = n4 - ViewCompat.getMinimumHeight(view);
                        }
                    }
                    n4 = n6;
                    if (ViewCompat.getFitsSystemWindows(view)) {
                        n4 = n6 - appBarLayout.getTopInset();
                    }
                    n6 = n2;
                    if (n4 <= 0) return n6;
                    n6 = view.getTop();
                    n6 = Math.round((float)n4 * interpolator2.getInterpolation((float)(n3 - n6) / (float)n4));
                    return Integer.signum(n2) * (view.getTop() + n6);
                }
                ++n4;
            } while (true);
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        private boolean shouldJumpElevationState(CoordinatorLayout list, AppBarLayout object) {
            boolean bl = false;
            list = list.getDependents((View)object);
            int n2 = 0;
            int n3 = list.size();
            do {
                boolean bl2 = bl;
                if (n2 >= n3) return bl2;
                object = ((CoordinatorLayout.LayoutParams)list.get(n2).getLayoutParams()).getBehavior();
                if (object instanceof ScrollingViewBehavior) {
                    bl2 = bl;
                    if (((ScrollingViewBehavior)object).getOverlayTop() == 0) return bl2;
                    return true;
                }
                ++n2;
            } while (true);
        }

        /*
         * Enabled aggressive block sorting
         */
        private void snapToChildIfNeeded(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            int n2;
            View view;
            int n3 = this.getTopBottomOffsetForScrollingSibling();
            int n4 = this.getChildIndexOnOffset(appBarLayout, n3);
            if (n4 >= 0 && ((n2 = ((LayoutParams)(view = appBarLayout.getChildAt(n4)).getLayoutParams()).getScrollFlags()) & 17) == 17) {
                int n5;
                int n6 = - view.getTop();
                int n7 = n5 = - view.getBottom();
                if (n4 == appBarLayout.getChildCount() - 1) {
                    n7 = n5 + appBarLayout.getTopInset();
                }
                if (Behavior.checkFlag(n2, 2)) {
                    n5 = n7 + ViewCompat.getMinimumHeight(view);
                    n4 = n6;
                } else {
                    n5 = n7;
                    n4 = n6;
                    if (Behavior.checkFlag(n2, 5)) {
                        n5 = n7 + ViewCompat.getMinimumHeight(view);
                        if (n3 < n5) {
                            n4 = n5;
                            n5 = n7;
                        } else {
                            n4 = n6;
                        }
                    }
                }
                if (n3 >= (n5 + n4) / 2) {
                    n5 = n4;
                }
                this.animateOffsetTo(coordinatorLayout, appBarLayout, MathUtils.constrain(n5, - appBarLayout.getTotalScrollRange(), 0), 0.0f);
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        private void updateAppBarLayoutDrawableState(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int n2, int n3) {
            View view = Behavior.getAppBarChildOnOffset(appBarLayout, n2);
            if (view != null) {
                boolean bl;
                int n4 = ((LayoutParams)view.getLayoutParams()).getScrollFlags();
                boolean bl2 = bl = false;
                if ((n4 & 1) != 0) {
                    int n5 = ViewCompat.getMinimumHeight(view);
                    if (n3 > 0 && (n4 & 12) != 0) {
                        bl2 = - n2 >= view.getBottom() - n5 - appBarLayout.getTopInset();
                    } else {
                        bl2 = bl;
                        if ((n4 & 2) != 0) {
                            bl2 = - n2 >= view.getBottom() - n5 - appBarLayout.getTopInset();
                        }
                    }
                }
                if (!appBarLayout.setCollapsedState(bl2)) return;
                if (Build.VERSION.SDK_INT >= 11 && this.shouldJumpElevationState(coordinatorLayout, appBarLayout)) {
                    appBarLayout.jumpDrawablesToCurrentState();
                }
            }
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        boolean canDragView(AppBarLayout appBarLayout) {
            boolean bl = true;
            if (this.mOnDragCallback != null) {
                return this.mOnDragCallback.canDrag(appBarLayout);
            }
            boolean bl2 = bl;
            if (this.mLastNestedScrollingChildRef == null) return bl2;
            appBarLayout = this.mLastNestedScrollingChildRef.get();
            if (appBarLayout == null) return false;
            if (!appBarLayout.isShown()) return false;
            bl2 = bl;
            if (!ViewCompat.canScrollVertically((View)appBarLayout, -1)) return bl2;
            return false;
        }

        @Override
        int getMaxDragOffset(AppBarLayout appBarLayout) {
            return - appBarLayout.getDownNestedScrollRange();
        }

        @Override
        int getScrollRangeForDragFling(AppBarLayout appBarLayout) {
            return appBarLayout.getTotalScrollRange();
        }

        @Override
        int getTopBottomOffsetForScrollingSibling() {
            return this.getTopAndBottomOffset() + this.mOffsetDelta;
        }

        @VisibleForTesting
        boolean isOffsetAnimatorRunning() {
            if (this.mOffsetAnimator != null && this.mOffsetAnimator.isRunning()) {
                return true;
            }
            return false;
        }

        @Override
        void onFlingFinished(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            this.snapToChildIfNeeded(coordinatorLayout, appBarLayout);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int n2) {
            boolean bl = super.onLayoutChild(coordinatorLayout, appBarLayout, n2);
            int n3 = appBarLayout.getPendingAction();
            if (n3 != 0) {
                n2 = (n3 & 4) != 0 ? 1 : 0;
                if ((n3 & 2) != 0) {
                    n3 = - appBarLayout.getUpNestedPreScrollRange();
                    if (n2 != 0) {
                        this.animateOffsetTo(coordinatorLayout, appBarLayout, n3, 0.0f);
                    } else {
                        this.setHeaderTopBottomOffset(coordinatorLayout, appBarLayout, n3);
                    }
                } else if ((n3 & 1) != 0) {
                    if (n2 != 0) {
                        this.animateOffsetTo(coordinatorLayout, appBarLayout, 0, 0.0f);
                    } else {
                        this.setHeaderTopBottomOffset(coordinatorLayout, appBarLayout, 0);
                    }
                }
            } else if (this.mOffsetToChildIndexOnLayout >= 0) {
                coordinatorLayout = appBarLayout.getChildAt(this.mOffsetToChildIndexOnLayout);
                n2 = - coordinatorLayout.getBottom();
                n2 = this.mOffsetToChildIndexOnLayoutIsMinHeight ? (n2 += ViewCompat.getMinimumHeight((View)coordinatorLayout)) : (n2 += Math.round((float)coordinatorLayout.getHeight() * this.mOffsetToChildIndexOnLayoutPerc));
                this.setTopAndBottomOffset(n2);
            }
            appBarLayout.resetPendingAction();
            this.mOffsetToChildIndexOnLayout = -1;
            this.setTopAndBottomOffset(MathUtils.constrain(this.getTopAndBottomOffset(), - appBarLayout.getTotalScrollRange(), 0));
            appBarLayout.dispatchOffsetUpdates(this.getTopAndBottomOffset());
            return bl;
        }

        @Override
        public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int n2, int n3, int n4, int n5) {
            if (((CoordinatorLayout.LayoutParams)appBarLayout.getLayoutParams()).height == -2) {
                coordinatorLayout.onMeasureChild((View)appBarLayout, n2, n3, View.MeasureSpec.makeMeasureSpec((int)0, (int)0), n5);
                return true;
            }
            return super.onMeasureChild(coordinatorLayout, appBarLayout, n2, n3, n4, n5);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onNestedFling(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, float f2, float f3, boolean bl) {
            boolean bl2 = false;
            if (!bl) {
                bl = this.fling(coordinatorLayout, appBarLayout, - appBarLayout.getTotalScrollRange(), 0, - f3);
            } else if (f3 < 0.0f) {
                int n2 = - appBarLayout.getTotalScrollRange() + appBarLayout.getDownNestedPreScrollRange();
                bl = bl2;
                if (this.getTopBottomOffsetForScrollingSibling() < n2) {
                    this.animateOffsetTo(coordinatorLayout, appBarLayout, n2, f3);
                    bl = true;
                }
            } else {
                int n3 = - appBarLayout.getUpNestedPreScrollRange();
                bl = bl2;
                if (this.getTopBottomOffsetForScrollingSibling() > n3) {
                    this.animateOffsetTo(coordinatorLayout, appBarLayout, n3, f3);
                    bl = true;
                }
            }
            this.mWasNestedFlung = bl;
            return bl;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int n2, int n3, int[] arrn) {
            if (n3 != 0 && !this.mSkipNestedPreScroll) {
                int n4;
                if (n3 < 0) {
                    n2 = - appBarLayout.getTotalScrollRange();
                    n4 = n2 + appBarLayout.getDownNestedPreScrollRange();
                } else {
                    n2 = - appBarLayout.getUpNestedPreScrollRange();
                    n4 = 0;
                }
                arrn[1] = this.scroll(coordinatorLayout, appBarLayout, n3, n2, n4);
            }
        }

        @Override
        public void onNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int n2, int n3, int n4, int n5) {
            if (n5 < 0) {
                this.scroll(coordinatorLayout, appBarLayout, n5, - appBarLayout.getDownNestedScrollRange(), 0);
                this.mSkipNestedPreScroll = true;
                return;
            }
            this.mSkipNestedPreScroll = false;
        }

        @Override
        public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                parcelable = (SavedState)parcelable;
                super.onRestoreInstanceState(coordinatorLayout, appBarLayout, parcelable.getSuperState());
                this.mOffsetToChildIndexOnLayout = parcelable.firstVisibleChildIndex;
                this.mOffsetToChildIndexOnLayoutPerc = parcelable.firstVisibleChildPercentageShown;
                this.mOffsetToChildIndexOnLayoutIsMinHeight = parcelable.firstVisibleChildAtMinimumHeight;
                return;
            }
            super.onRestoreInstanceState(coordinatorLayout, appBarLayout, parcelable);
            this.mOffsetToChildIndexOnLayout = -1;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            Parcelable parcelable = super.onSaveInstanceState(coordinatorLayout, appBarLayout);
            int n2 = this.getTopAndBottomOffset();
            int n3 = 0;
            int n4 = appBarLayout.getChildCount();
            while (n3 < n4) {
                coordinatorLayout = appBarLayout.getChildAt(n3);
                int n5 = coordinatorLayout.getBottom() + n2;
                if (coordinatorLayout.getTop() + n2 <= 0 && n5 >= 0) {
                    parcelable = new SavedState(parcelable);
                    parcelable.firstVisibleChildIndex = n3;
                    boolean bl = n5 == ViewCompat.getMinimumHeight((View)coordinatorLayout) + appBarLayout.getTopInset();
                    parcelable.firstVisibleChildAtMinimumHeight = bl;
                    parcelable.firstVisibleChildPercentageShown = (float)n5 / (float)coordinatorLayout.getHeight();
                    return parcelable;
                }
                ++n3;
            }
            return parcelable;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int n2) {
            boolean bl = (n2 & 2) != 0 && appBarLayout.hasScrollableChildren() && coordinatorLayout.getHeight() - view.getHeight() <= appBarLayout.getHeight();
            if (bl && this.mOffsetAnimator != null) {
                this.mOffsetAnimator.cancel();
            }
            this.mLastNestedScrollingChildRef = null;
            return bl;
        }

        @Override
        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view) {
            if (!this.mWasNestedFlung) {
                this.snapToChildIfNeeded(coordinatorLayout, appBarLayout);
            }
            this.mSkipNestedPreScroll = false;
            this.mWasNestedFlung = false;
            this.mLastNestedScrollingChildRef = new WeakReference<View>(view);
        }

        public void setDragCallback(@Nullable DragCallback dragCallback) {
            this.mOnDragCallback = dragCallback;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        int setHeaderTopBottomOffset(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int n2, int n3, int n4) {
            int n5 = this.getTopBottomOffsetForScrollingSibling();
            int n6 = 0;
            if (n3 != 0 && n5 >= n3 && n5 <= n4) {
                n3 = MathUtils.constrain(n2, n3, n4);
                n2 = n6;
                if (n5 == n3) return n2;
                n2 = appBarLayout.hasChildWithInterpolator() ? this.interpolateOffset(appBarLayout, n3) : n3;
                boolean bl = this.setTopAndBottomOffset(n2);
                n4 = n5 - n3;
                this.mOffsetDelta = n3 - n2;
                if (!bl && appBarLayout.hasChildWithInterpolator()) {
                    coordinatorLayout.dispatchDependentViewsChanged((View)appBarLayout);
                }
                appBarLayout.dispatchOffsetUpdates(this.getTopAndBottomOffset());
                n2 = n3 < n5 ? -1 : 1;
                this.updateAppBarLayoutDrawableState(coordinatorLayout, appBarLayout, n3, n2);
                return n4;
            }
            this.mOffsetDelta = 0;
            return 0;
        }

        public static abstract class DragCallback {
            public abstract boolean canDrag(@NonNull AppBarLayout var1);
        }

        protected static class SavedState
        extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks<SavedState>(){

                @Override
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return new SavedState(parcel, classLoader);
                }

                public SavedState[] newArray(int n2) {
                    return new SavedState[n2];
                }
            });
            boolean firstVisibleChildAtMinimumHeight;
            int firstVisibleChildIndex;
            float firstVisibleChildPercentageShown;

            /*
             * Enabled aggressive block sorting
             */
            public SavedState(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.firstVisibleChildIndex = parcel.readInt();
                this.firstVisibleChildPercentageShown = parcel.readFloat();
                boolean bl = parcel.readByte() != 0;
                this.firstVisibleChildAtMinimumHeight = bl;
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void writeToParcel(Parcel parcel, int n2) {
                super.writeToParcel(parcel, n2);
                parcel.writeInt(this.firstVisibleChildIndex);
                parcel.writeFloat(this.firstVisibleChildPercentageShown);
                n2 = this.firstVisibleChildAtMinimumHeight ? 1 : 0;
                parcel.writeByte((byte)n2);
            }

        }

    }

    public static class LayoutParams
    extends LinearLayout.LayoutParams {
        static final int COLLAPSIBLE_FLAGS = 10;
        static final int FLAG_QUICK_RETURN = 5;
        static final int FLAG_SNAP = 17;
        public static final int SCROLL_FLAG_ENTER_ALWAYS = 4;
        public static final int SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED = 8;
        public static final int SCROLL_FLAG_EXIT_UNTIL_COLLAPSED = 2;
        public static final int SCROLL_FLAG_SCROLL = 1;
        public static final int SCROLL_FLAG_SNAP = 16;
        int mScrollFlags = 1;
        Interpolator mScrollInterpolator;

        public LayoutParams(int n2, int n3) {
            super(n2, n3);
        }

        public LayoutParams(int n2, int n3, float f2) {
            super(n2, n3, f2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            attributeSet = context.obtainStyledAttributes(attributeSet, R.styleable.AppBarLayout_Layout);
            this.mScrollFlags = attributeSet.getInt(R.styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
            if (attributeSet.hasValue(R.styleable.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.mScrollInterpolator = android.view.animation.AnimationUtils.loadInterpolator((Context)context, (int)attributeSet.getResourceId(R.styleable.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            attributeSet.recycle();
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((LinearLayout.LayoutParams)layoutParams);
            this.mScrollFlags = layoutParams.mScrollFlags;
            this.mScrollInterpolator = layoutParams.mScrollInterpolator;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public int getScrollFlags() {
            return this.mScrollFlags;
        }

        public Interpolator getScrollInterpolator() {
            return this.mScrollInterpolator;
        }

        boolean isCollapsible() {
            if ((this.mScrollFlags & 1) == 1 && (this.mScrollFlags & 10) != 0) {
                return true;
            }
            return false;
        }

        public void setScrollFlags(int n2) {
            this.mScrollFlags = n2;
        }

        public void setScrollInterpolator(Interpolator interpolator2) {
            this.mScrollInterpolator = interpolator2;
        }

        @Retention(value=RetentionPolicy.SOURCE)
        @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
        public static @interface ScrollFlags {
        }

    }

    public static interface OnOffsetChangedListener {
        public void onOffsetChanged(AppBarLayout var1, int var2);
    }

    public static class ScrollingViewBehavior
    extends HeaderScrollingViewBehavior {
        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            context = context.obtainStyledAttributes(attributeSet, R.styleable.ScrollingViewBehavior_Layout);
            this.setOverlayTop(context.getDimensionPixelSize(R.styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            context.recycle();
        }

        private static int getAppBarLayoutOffset(AppBarLayout object) {
            if ((object = ((CoordinatorLayout.LayoutParams)object.getLayoutParams()).getBehavior()) instanceof Behavior) {
                return ((Behavior)object).getTopBottomOffsetForScrollingSibling();
            }
            return 0;
        }

        private void offsetChildAsNeeded(CoordinatorLayout object, View view, View view2) {
            object = ((CoordinatorLayout.LayoutParams)view2.getLayoutParams()).getBehavior();
            if (object instanceof Behavior) {
                object = (Behavior)object;
                ViewCompat.offsetTopAndBottom(view, view2.getBottom() - view.getTop() + ((Behavior)object).mOffsetDelta + this.getVerticalLayoutGap() - this.getOverlapPixelsForOffset(view2));
            }
        }

        AppBarLayout findFirstDependency(List<View> list) {
            int n2 = list.size();
            for (int i2 = 0; i2 < n2; ++i2) {
                View view = list.get(i2);
                if (!(view instanceof AppBarLayout)) continue;
                return (AppBarLayout)view;
            }
            return null;
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        float getOverlapRatioForOffset(View object) {
            if (!(object instanceof AppBarLayout)) return 0.0f;
            object = (AppBarLayout)((Object)object);
            int n2 = object.getTotalScrollRange();
            int n3 = object.getDownNestedPreScrollRange();
            int n4 = ScrollingViewBehavior.getAppBarLayoutOffset((AppBarLayout)((Object)object));
            if (n3 != 0 && n2 + n4 <= n3) {
                return 0.0f;
            }
            if ((n2 -= n3) == 0) return 0.0f;
            return 1.0f + (float)n4 / (float)n2;
        }

        @Override
        int getScrollRange(View view) {
            if (view instanceof AppBarLayout) {
                return ((AppBarLayout)view).getTotalScrollRange();
            }
            return super.getScrollRange(view);
        }

        @Override
        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
            this.offsetChildAsNeeded(coordinatorLayout, view, view2);
            return false;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean bl) {
            AppBarLayout appBarLayout = this.findFirstDependency(coordinatorLayout.getDependencies(view));
            if (appBarLayout != null) {
                rect.offset(view.getLeft(), view.getTop());
                view = this.mTempRect1;
                view.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!view.contains(rect)) {
                    bl = !bl;
                    appBarLayout.setExpanded(false, bl);
                    return true;
                }
            }
            return false;
        }
    }

}

