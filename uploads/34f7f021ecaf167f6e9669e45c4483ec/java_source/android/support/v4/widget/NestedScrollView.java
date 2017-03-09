/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.content.res.Resources$Theme
 *  android.content.res.TypedArray
 *  android.graphics.Canvas
 *  android.graphics.Rect
 *  android.os.Bundle
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.util.Log
 *  android.util.TypedValue
 *  android.view.FocusFinder
 *  android.view.KeyEvent
 *  android.view.MotionEvent
 *  android.view.VelocityTracker
 *  android.view.View
 *  android.view.View$BaseSavedState
 *  android.view.View$MeasureSpec
 *  android.view.ViewConfiguration
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewGroup$MarginLayoutParams
 *  android.view.ViewParent
 *  android.view.accessibility.AccessibilityEvent
 *  android.view.animation.AnimationUtils
 *  android.widget.FrameLayout
 *  android.widget.FrameLayout$LayoutParams
 *  android.widget.ScrollView
 */
package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.NestedScrollingChild;
import android.support.v4.view.NestedScrollingChildHelper;
import android.support.v4.view.NestedScrollingParent;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.ScrollingView;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.support.v4.widget.ScrollerCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import java.util.ArrayList;

public class NestedScrollView
extends FrameLayout
implements NestedScrollingParent,
NestedScrollingChild,
ScrollingView {
    private static final AccessibilityDelegate ACCESSIBILITY_DELEGATE = new AccessibilityDelegate();
    static final int ANIMATED_SCROLL_GAP = 250;
    private static final int INVALID_POINTER = -1;
    static final float MAX_SCROLL_FACTOR = 0.5f;
    private static final int[] SCROLLVIEW_STYLEABLE = new int[]{16843130};
    private static final String TAG = "NestedScrollView";
    private int mActivePointerId = -1;
    private final NestedScrollingChildHelper mChildHelper;
    private View mChildToScrollTo = null;
    private EdgeEffectCompat mEdgeGlowBottom;
    private EdgeEffectCompat mEdgeGlowTop;
    private boolean mFillViewport;
    private boolean mIsBeingDragged = false;
    private boolean mIsLaidOut = false;
    private boolean mIsLayoutDirty = true;
    private int mLastMotionY;
    private long mLastScroll;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private int mNestedYOffset;
    private OnScrollChangeListener mOnScrollChangeListener;
    private final NestedScrollingParentHelper mParentHelper;
    private SavedState mSavedState;
    private final int[] mScrollConsumed = new int[2];
    private final int[] mScrollOffset = new int[2];
    private ScrollerCompat mScroller;
    private boolean mSmoothScrollingEnabled = true;
    private final Rect mTempRect = new Rect();
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    private float mVerticalScrollFactor;

    public NestedScrollView(Context context) {
        this(context, null);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.initScrollView();
        context = context.obtainStyledAttributes(attributeSet, SCROLLVIEW_STYLEABLE, n2, 0);
        this.setFillViewport(context.getBoolean(0, false));
        context.recycle();
        this.mParentHelper = new NestedScrollingParentHelper((ViewGroup)this);
        this.mChildHelper = new NestedScrollingChildHelper((View)this);
        this.setNestedScrollingEnabled(true);
        ViewCompat.setAccessibilityDelegate((View)this, ACCESSIBILITY_DELEGATE);
    }

    private boolean canScroll() {
        boolean bl = false;
        View view = this.getChildAt(0);
        boolean bl2 = bl;
        if (view != null) {
            int n2 = view.getHeight();
            bl2 = bl;
            if (this.getHeight() < this.getPaddingTop() + n2 + this.getPaddingBottom()) {
                bl2 = true;
            }
        }
        return bl2;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static int clamp(int n2, int n3, int n4) {
        if (n3 >= n4) return 0;
        if (n2 < 0) {
            return 0;
        }
        int n5 = n2;
        if (n3 + n2 <= n4) return n5;
        return n4 - n3;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void doScrollY(int n2) {
        if (n2 == 0) return;
        if (this.mSmoothScrollingEnabled) {
            this.smoothScrollBy(0, n2);
            return;
        }
        this.scrollBy(0, n2);
    }

    private void endDrag() {
        this.mIsBeingDragged = false;
        this.recycleVelocityTracker();
        this.stopNestedScroll();
        if (this.mEdgeGlowTop != null) {
            this.mEdgeGlowTop.onRelease();
            this.mEdgeGlowBottom.onRelease();
        }
    }

    private void ensureGlows() {
        if (this.getOverScrollMode() != 2) {
            if (this.mEdgeGlowTop == null) {
                Context context = this.getContext();
                this.mEdgeGlowTop = new EdgeEffectCompat(context);
                this.mEdgeGlowBottom = new EdgeEffectCompat(context);
            }
            return;
        }
        this.mEdgeGlowTop = null;
        this.mEdgeGlowBottom = null;
    }

    /*
     * Enabled aggressive block sorting
     */
    private View findFocusableViewInBounds(boolean bl, int n2, int n3) {
        ArrayList arrayList = this.getFocusables(2);
        View view = null;
        boolean bl2 = false;
        int n4 = arrayList.size();
        int n5 = 0;
        while (n5 < n4) {
            View view2 = (View)arrayList.get(n5);
            int n6 = view2.getTop();
            int n7 = view2.getBottom();
            View view3 = view;
            boolean bl3 = bl2;
            if (n2 < n7) {
                view3 = view;
                bl3 = bl2;
                if (n6 < n3) {
                    boolean bl4 = n2 < n6 && n7 < n3;
                    if (view == null) {
                        view3 = view2;
                        bl3 = bl4;
                    } else {
                        n6 = bl && n6 < view.getTop() || !bl && n7 > view.getBottom() ? 1 : 0;
                        if (bl2) {
                            view3 = view;
                            bl3 = bl2;
                            if (bl4) {
                                view3 = view;
                                bl3 = bl2;
                                if (n6 != 0) {
                                    view3 = view2;
                                    bl3 = bl2;
                                }
                            }
                        } else if (bl4) {
                            view3 = view2;
                            bl3 = true;
                        } else {
                            view3 = view;
                            bl3 = bl2;
                            if (n6 != 0) {
                                view3 = view2;
                                bl3 = bl2;
                            }
                        }
                    }
                }
            }
            ++n5;
            view = view3;
            bl2 = bl3;
        }
        return view;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void flingWithNestedDispatch(int n2) {
        int n3 = this.getScrollY();
        boolean bl = !(n3 <= 0 && n2 <= 0 || n3 >= this.getScrollRange() && n2 >= 0);
        if (this.dispatchNestedPreFling(0.0f, n2)) return;
        this.dispatchNestedFling(0.0f, n2, bl);
        if (bl) {
            this.fling(n2);
        }
    }

    private float getVerticalScrollFactorCompat() {
        if (this.mVerticalScrollFactor == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = this.getContext();
            if (!context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.mVerticalScrollFactor = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.mVerticalScrollFactor;
    }

    private boolean inChild(int n2, int n3) {
        boolean bl;
        boolean bl2 = bl = false;
        if (this.getChildCount() > 0) {
            int n4 = this.getScrollY();
            View view = this.getChildAt(0);
            bl2 = bl;
            if (n3 >= view.getTop() - n4) {
                bl2 = bl;
                if (n3 < view.getBottom() - n4) {
                    bl2 = bl;
                    if (n2 >= view.getLeft()) {
                        bl2 = bl;
                        if (n2 < view.getRight()) {
                            bl2 = true;
                        }
                    }
                }
            }
        }
        return bl2;
    }

    private void initOrResetVelocityTracker() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
            return;
        }
        this.mVelocityTracker.clear();
    }

    private void initScrollView() {
        this.mScroller = ScrollerCompat.create(this.getContext(), null);
        this.setFocusable(true);
        this.setDescendantFocusability(262144);
        this.setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get((Context)this.getContext());
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinimumVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    private void initVelocityTrackerIfNotExists() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
    }

    private boolean isOffScreen(View view) {
        boolean bl = false;
        if (!this.isWithinDeltaOfScreen(view, 0, this.getHeight())) {
            bl = true;
        }
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static boolean isViewDescendantOf(View view, View view2) {
        if (view == view2 || (view = view.getParent()) instanceof ViewGroup && NestedScrollView.isViewDescendantOf(view, view2)) {
            return true;
        }
        return false;
    }

    private boolean isWithinDeltaOfScreen(View view, int n2, int n3) {
        view.getDrawingRect(this.mTempRect);
        this.offsetDescendantRectToMyCoords(view, this.mTempRect);
        if (this.mTempRect.bottom + n2 >= this.getScrollY() && this.mTempRect.top - n2 <= this.getScrollY() + n3) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int n2 = (motionEvent.getAction() & 65280) >> 8;
        if (motionEvent.getPointerId(n2) == this.mActivePointerId) {
            n2 = n2 == 0 ? 1 : 0;
            this.mLastMotionY = (int)motionEvent.getY(n2);
            this.mActivePointerId = motionEvent.getPointerId(n2);
            if (this.mVelocityTracker != null) {
                this.mVelocityTracker.clear();
            }
        }
    }

    private void recycleVelocityTracker() {
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean scrollAndFocus(int n2, int n3, int n4) {
        View view;
        boolean bl = true;
        int n5 = this.getHeight();
        int n6 = this.getScrollY();
        n5 = n6 + n5;
        boolean bl2 = n2 == 33;
        Object object = view = this.findFocusableViewInBounds(bl2, n3, n4);
        if (view == null) {
            object = this;
        }
        if (n3 >= n6 && n4 <= n5) {
            bl2 = false;
        } else {
            n3 = bl2 ? (n3 -= n6) : n4 - n5;
            this.doScrollY(n3);
            bl2 = bl;
        }
        if (object != this.findFocus()) {
            object.requestFocus(n2);
        }
        return bl2;
    }

    private void scrollToChild(View view) {
        view.getDrawingRect(this.mTempRect);
        this.offsetDescendantRectToMyCoords(view, this.mTempRect);
        int n2 = this.computeScrollDeltaToGetChildRectOnScreen(this.mTempRect);
        if (n2 != 0) {
            this.scrollBy(0, n2);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean scrollToChildRect(Rect rect, boolean bl) {
        int n2 = this.computeScrollDeltaToGetChildRectOnScreen(rect);
        if (n2 == 0) return false;
        boolean bl2 = true;
        if (!bl2) return bl2;
        if (bl) {
            this.scrollBy(0, n2);
            return bl2;
        }
        this.smoothScrollBy(0, n2);
        return bl2;
    }

    public void addView(View view) {
        if (this.getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    public void addView(View view, int n2) {
        if (this.getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, n2);
    }

    public void addView(View view, int n2, ViewGroup.LayoutParams layoutParams) {
        if (this.getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, n2, layoutParams);
    }

    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (this.getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, layoutParams);
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean arrowScroll(int n2) {
        View view;
        boolean bl = false;
        View view2 = view = this.findFocus();
        if (view == this) {
            view2 = null;
        }
        view = FocusFinder.getInstance().findNextFocus((ViewGroup)this, view2, n2);
        int n3 = this.getMaxScrollAmount();
        if (view != null && this.isWithinDeltaOfScreen(view, n3, this.getHeight())) {
            view.getDrawingRect(this.mTempRect);
            this.offsetDescendantRectToMyCoords(view, this.mTempRect);
            this.doScrollY(this.computeScrollDeltaToGetChildRectOnScreen(this.mTempRect));
            view.requestFocus(n2);
        } else {
            int n4;
            int n5 = n3;
            if (n2 == 33 && this.getScrollY() < n5) {
                n4 = this.getScrollY();
            } else {
                n4 = n5;
                if (n2 == 130) {
                    n4 = n5;
                    if (this.getChildCount() > 0) {
                        int n6 = this.getChildAt(0).getBottom();
                        int n7 = this.getScrollY() + this.getHeight() - this.getPaddingBottom();
                        n4 = n5;
                        if (n6 - n7 < n3) {
                            n4 = n6 - n7;
                        }
                    }
                }
            }
            if (n4 == 0) return bl;
            if (n2 != 130) {
                n4 = - n4;
            }
            this.doScrollY(n4);
        }
        if (view2 == null) return true;
        if (!view2.isFocused()) return true;
        if (!this.isOffScreen(view2)) return true;
        n2 = this.getDescendantFocusability();
        this.setDescendantFocusability(131072);
        this.requestFocus();
        this.setDescendantFocusability(n2);
        return true;
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    @Override
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    @Override
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    @Override
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void computeScroll() {
        boolean bl = true;
        if (!this.mScroller.computeScrollOffset()) return;
        int n2 = this.getScrollX();
        int n3 = this.getScrollY();
        int n4 = this.mScroller.getCurrX();
        int n5 = this.mScroller.getCurrY();
        if (n2 == n4 && n3 == n5) return;
        {
            int n6 = this.getScrollRange();
            int n7 = this.getOverScrollMode();
            boolean bl2 = bl;
            if (n7 != 0) {
                bl2 = n7 == 1 && n6 > 0 ? bl : false;
            }
            this.overScrollByCompat(n4 - n2, n5 - n3, n2, n3, 0, n6, 0, 0, false);
            if (!bl2) return;
            {
                this.ensureGlows();
                if (n5 <= 0 && n3 > 0) {
                    this.mEdgeGlowTop.onAbsorb((int)this.mScroller.getCurrVelocity());
                    return;
                } else {
                    if (n5 < n6 || n3 >= n6) return;
                    {
                        this.mEdgeGlowBottom.onAbsorb((int)this.mScroller.getCurrVelocity());
                        return;
                    }
                }
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected int computeScrollDeltaToGetChildRectOnScreen(Rect rect) {
        if (this.getChildCount() == 0) {
            return 0;
        }
        int n2 = this.getHeight();
        int n3 = this.getScrollY();
        int n4 = n3 + n2;
        int n5 = this.getVerticalFadingEdgeLength();
        int n6 = n3;
        if (rect.top > 0) {
            n6 = n3 + n5;
        }
        n3 = n4;
        if (rect.bottom < this.getChildAt(0).getHeight()) {
            n3 = n4 - n5;
        }
        if (rect.bottom > n3 && rect.top > n6) {
            if (rect.height() > n2) {
                n6 = 0 + (rect.top - n6);
                return Math.min(n6, this.getChildAt(0).getBottom() - n3);
            }
            n6 = 0 + (rect.bottom - n3);
            return Math.min(n6, this.getChildAt(0).getBottom() - n3);
        }
        if (rect.top >= n6) return 0;
        if (rect.bottom >= n3) return 0;
        if (rect.height() > n2) {
            n3 = 0 - (n3 - rect.bottom);
            return Math.max(n3, - this.getScrollY());
        }
        n3 = 0 - (n6 - rect.top);
        return Math.max(n3, - this.getScrollY());
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    @Override
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    @Override
    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    @Override
    public int computeVerticalScrollRange() {
        int n2 = this.getChildCount();
        int n3 = this.getHeight() - this.getPaddingBottom() - this.getPaddingTop();
        if (n2 == 0) {
            return n3;
        }
        n2 = this.getChildAt(0).getBottom();
        int n4 = this.getScrollY();
        int n5 = Math.max(0, n2 - n3);
        if (n4 < 0) {
            return n2 - n4;
        }
        n3 = n2;
        if (n4 <= n5) return n3;
        return n2 + (n4 - n5);
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (super.dispatchKeyEvent(keyEvent) || this.executeKeyEvent(keyEvent)) {
            return true;
        }
        return false;
    }

    @Override
    public boolean dispatchNestedFling(float f2, float f3, boolean bl) {
        return this.mChildHelper.dispatchNestedFling(f2, f3, bl);
    }

    @Override
    public boolean dispatchNestedPreFling(float f2, float f3) {
        return this.mChildHelper.dispatchNestedPreFling(f2, f3);
    }

    @Override
    public boolean dispatchNestedPreScroll(int n2, int n3, int[] arrn, int[] arrn2) {
        return this.mChildHelper.dispatchNestedPreScroll(n2, n3, arrn, arrn2);
    }

    @Override
    public boolean dispatchNestedScroll(int n2, int n3, int n4, int n5, int[] arrn) {
        return this.mChildHelper.dispatchNestedScroll(n2, n3, n4, n5, arrn);
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.mEdgeGlowTop != null) {
            int n2;
            int n3;
            int n4;
            int n5 = this.getScrollY();
            if (!this.mEdgeGlowTop.isFinished()) {
                n4 = canvas.save();
                n3 = this.getWidth();
                n2 = this.getPaddingLeft();
                int n6 = this.getPaddingRight();
                canvas.translate((float)this.getPaddingLeft(), (float)Math.min(0, n5));
                this.mEdgeGlowTop.setSize(n3 - n2 - n6, this.getHeight());
                if (this.mEdgeGlowTop.draw(canvas)) {
                    ViewCompat.postInvalidateOnAnimation((View)this);
                }
                canvas.restoreToCount(n4);
            }
            if (!this.mEdgeGlowBottom.isFinished()) {
                n4 = canvas.save();
                n3 = this.getWidth() - this.getPaddingLeft() - this.getPaddingRight();
                n2 = this.getHeight();
                canvas.translate((float)(- n3 + this.getPaddingLeft()), (float)(Math.max(this.getScrollRange(), n5) + n2));
                canvas.rotate(180.0f, (float)n3, 0.0f);
                this.mEdgeGlowBottom.setSize(n3, n2);
                if (this.mEdgeGlowBottom.draw(canvas)) {
                    ViewCompat.postInvalidateOnAnimation((View)this);
                }
                canvas.restoreToCount(n4);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean executeKeyEvent(KeyEvent keyEvent) {
        boolean bl = false;
        this.mTempRect.setEmpty();
        if (!this.canScroll()) {
            View view;
            boolean bl2 = bl;
            if (!this.isFocused()) return bl2;
            bl2 = bl;
            if (keyEvent.getKeyCode() == 4) return bl2;
            keyEvent = view = this.findFocus();
            if (view == this) {
                keyEvent = null;
            }
            keyEvent = FocusFinder.getInstance().findNextFocus((ViewGroup)this, (View)keyEvent, 130);
            bl2 = bl;
            if (keyEvent == null) return bl2;
            bl2 = bl;
            if (keyEvent == this) return bl2;
            bl2 = bl;
            if (!keyEvent.requestFocus(130)) return bl2;
            return true;
        }
        boolean bl3 = bl = false;
        if (keyEvent.getAction() != 0) return bl3;
        switch (keyEvent.getKeyCode()) {
            default: {
                return bl;
            }
            case 19: {
                if (keyEvent.isAltPressed()) return this.fullScroll(33);
                return this.arrowScroll(33);
            }
            case 20: {
                if (keyEvent.isAltPressed()) return this.fullScroll(130);
                return this.arrowScroll(130);
            }
            case 62: 
        }
        int n2 = keyEvent.isShiftPressed() ? 33 : 130;
        this.pageScroll(n2);
        return bl;
    }

    public void fling(int n2) {
        if (this.getChildCount() > 0) {
            int n3 = this.getHeight() - this.getPaddingBottom() - this.getPaddingTop();
            int n4 = this.getChildAt(0).getHeight();
            this.mScroller.fling(this.getScrollX(), this.getScrollY(), 0, n2, 0, 0, 0, Math.max(0, n4 - n3), 0, n3 / 2);
            ViewCompat.postInvalidateOnAnimation((View)this);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean fullScroll(int n2) {
        int n3 = n2 == 130 ? 1 : 0;
        int n4 = this.getHeight();
        this.mTempRect.top = 0;
        this.mTempRect.bottom = n4;
        if (n3 != 0 && (n3 = this.getChildCount()) > 0) {
            View view = this.getChildAt(n3 - 1);
            this.mTempRect.bottom = view.getBottom() + this.getPaddingBottom();
            this.mTempRect.top = this.mTempRect.bottom - n4;
        }
        return this.scrollAndFocus(n2, this.mTempRect.top, this.mTempRect.bottom);
    }

    protected float getBottomFadingEdgeStrength() {
        if (this.getChildCount() == 0) {
            return 0.0f;
        }
        int n2 = this.getVerticalFadingEdgeLength();
        int n3 = this.getHeight();
        int n4 = this.getPaddingBottom();
        n3 = this.getChildAt(0).getBottom() - this.getScrollY() - (n3 - n4);
        if (n3 < n2) {
            return (float)n3 / (float)n2;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int)(0.5f * (float)this.getHeight());
    }

    @Override
    public int getNestedScrollAxes() {
        return this.mParentHelper.getNestedScrollAxes();
    }

    int getScrollRange() {
        int n2 = 0;
        if (this.getChildCount() > 0) {
            n2 = Math.max(0, this.getChildAt(0).getHeight() - (this.getHeight() - this.getPaddingBottom() - this.getPaddingTop()));
        }
        return n2;
    }

    protected float getTopFadingEdgeStrength() {
        if (this.getChildCount() == 0) {
            return 0.0f;
        }
        int n2 = this.getVerticalFadingEdgeLength();
        int n3 = this.getScrollY();
        if (n3 < n2) {
            return (float)n3 / (float)n2;
        }
        return 1.0f;
    }

    @Override
    public boolean hasNestedScrollingParent() {
        return this.mChildHelper.hasNestedScrollingParent();
    }

    public boolean isFillViewport() {
        return this.mFillViewport;
    }

    @Override
    public boolean isNestedScrollingEnabled() {
        return this.mChildHelper.isNestedScrollingEnabled();
    }

    public boolean isSmoothScrollingEnabled() {
        return this.mSmoothScrollingEnabled;
    }

    protected void measureChild(View view, int n2, int n3) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(NestedScrollView.getChildMeasureSpec((int)n2, (int)(this.getPaddingLeft() + this.getPaddingRight()), (int)layoutParams.width), View.MeasureSpec.makeMeasureSpec((int)0, (int)0));
    }

    protected void measureChildWithMargins(View view, int n2, int n3, int n4, int n5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams)view.getLayoutParams();
        view.measure(NestedScrollView.getChildMeasureSpec((int)n2, (int)(this.getPaddingLeft() + this.getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + n3), (int)marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec((int)(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin), (int)0));
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mIsLaidOut = false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0) return false;
        switch (motionEvent.getAction()) {
            default: {
                return false;
            }
            case 8: 
        }
        if (this.mIsBeingDragged) return false;
        float f2 = MotionEventCompat.getAxisValue(motionEvent, 9);
        if (f2 == 0.0f) return false;
        int n2 = (int)(this.getVerticalScrollFactorCompat() * f2);
        int n3 = this.getScrollRange();
        int n4 = this.getScrollY();
        int n5 = n4 - n2;
        if (n5 < 0) {
            n2 = 0;
        } else {
            n2 = n5;
            if (n5 > n3) {
                n2 = n3;
            }
        }
        if (n2 == n4) return false;
        super.scrollTo(this.getScrollX(), n2);
        return true;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean onInterceptTouchEvent(MotionEvent var1_1) {
        var4_2 = false;
        var2_3 = var1_1.getAction();
        if (var2_3 == 2 && this.mIsBeingDragged) {
            return true;
        }
        switch (var2_3 & 255) {
            case 2: {
                var2_3 = this.mActivePointerId;
                if (var2_3 == -1) return this.mIsBeingDragged;
                var3_4 = var1_1.findPointerIndex(var2_3);
                if (var3_4 == -1) {
                    Log.e((String)"NestedScrollView", (String)("Invalid pointerId=" + var2_3 + " in onInterceptTouchEvent"));
                    ** break;
                }
                var2_3 = (int)var1_1.getY(var3_4);
                if (Math.abs(var2_3 - this.mLastMotionY) <= this.mTouchSlop) return this.mIsBeingDragged;
                if ((this.getNestedScrollAxes() & 2) != 0) return this.mIsBeingDragged;
                this.mIsBeingDragged = true;
                this.mLastMotionY = var2_3;
                this.initVelocityTrackerIfNotExists();
                this.mVelocityTracker.addMovement(var1_1);
                this.mNestedYOffset = 0;
                var1_1 = this.getParent();
                if (var1_1 == null) return this.mIsBeingDragged;
                var1_1.requestDisallowInterceptTouchEvent(true);
                ** break;
            }
            case 0: {
                var2_3 = (int)var1_1.getY();
                if (!this.inChild((int)var1_1.getX(), var2_3)) {
                    this.mIsBeingDragged = false;
                    this.recycleVelocityTracker();
                    ** break;
                }
                this.mLastMotionY = var2_3;
                this.mActivePointerId = var1_1.getPointerId(0);
                this.initOrResetVelocityTracker();
                this.mVelocityTracker.addMovement(var1_1);
                this.mScroller.computeScrollOffset();
                if (!this.mScroller.isFinished()) {
                    var4_2 = true;
                }
                this.mIsBeingDragged = var4_2;
                this.startNestedScroll(2);
                ** break;
            }
            case 1: 
            case 3: {
                this.mIsBeingDragged = false;
                this.mActivePointerId = -1;
                this.recycleVelocityTracker();
                if (this.mScroller.springBack(this.getScrollX(), this.getScrollY(), 0, 0, 0, this.getScrollRange())) {
                    ViewCompat.postInvalidateOnAnimation((View)this);
                }
                this.stopNestedScroll();
            }
lbl48: // 6 sources:
            default: {
                return this.mIsBeingDragged;
            }
            case 6: 
        }
        this.onSecondaryPointerUp(var1_1);
        return this.mIsBeingDragged;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onLayout(boolean bl, int n2, int n3, int n4, int n5) {
        super.onLayout(bl, n2, n3, n4, n5);
        this.mIsLayoutDirty = false;
        if (this.mChildToScrollTo != null && NestedScrollView.isViewDescendantOf(this.mChildToScrollTo, (View)this)) {
            this.scrollToChild(this.mChildToScrollTo);
        }
        this.mChildToScrollTo = null;
        if (!this.mIsLaidOut) {
            if (this.mSavedState != null) {
                this.scrollTo(this.getScrollX(), this.mSavedState.scrollPosition);
                this.mSavedState = null;
            }
            n2 = this.getChildCount() > 0 ? this.getChildAt(0).getMeasuredHeight() : 0;
            n2 = Math.max(0, n2 - (n5 - n3 - this.getPaddingBottom() - this.getPaddingTop()));
            if (this.getScrollY() > n2) {
                this.scrollTo(this.getScrollX(), n2);
            } else if (this.getScrollY() < 0) {
                this.scrollTo(this.getScrollX(), 0);
            }
        }
        this.scrollTo(this.getScrollX(), this.getScrollY());
        this.mIsLaidOut = true;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected void onMeasure(int n2, int n3) {
        super.onMeasure(n2, n3);
        if (!this.mFillViewport) {
            return;
        }
        if (View.MeasureSpec.getMode((int)n3) == 0) return;
        if (this.getChildCount() <= 0) return;
        View view = this.getChildAt(0);
        n3 = this.getMeasuredHeight();
        if (view.getMeasuredHeight() >= n3) return;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams)view.getLayoutParams();
        view.measure(NestedScrollView.getChildMeasureSpec((int)n2, (int)(this.getPaddingLeft() + this.getPaddingRight()), (int)layoutParams.width), View.MeasureSpec.makeMeasureSpec((int)(n3 - this.getPaddingTop() - this.getPaddingBottom()), (int)1073741824));
    }

    @Override
    public boolean onNestedFling(View view, float f2, float f3, boolean bl) {
        if (!bl) {
            this.flingWithNestedDispatch((int)f3);
            return true;
        }
        return false;
    }

    @Override
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return this.dispatchNestedPreFling(f2, f3);
    }

    @Override
    public void onNestedPreScroll(View view, int n2, int n3, int[] arrn) {
        this.dispatchNestedPreScroll(n2, n3, arrn, null);
    }

    @Override
    public void onNestedScroll(View view, int n2, int n3, int n4, int n5) {
        n2 = this.getScrollY();
        this.scrollBy(0, n5);
        n2 = this.getScrollY() - n2;
        this.dispatchNestedScroll(0, n2, 0, n5 - n2, null);
    }

    @Override
    public void onNestedScrollAccepted(View view, View view2, int n2) {
        this.mParentHelper.onNestedScrollAccepted(view, view2, n2);
        this.startNestedScroll(2);
    }

    protected void onOverScrolled(int n2, int n3, boolean bl, boolean bl2) {
        super.scrollTo(n2, n3);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected boolean onRequestFocusInDescendants(int n2, Rect rect) {
        int n3;
        if (n2 == 2) {
            n3 = 130;
        } else {
            n3 = n2;
            if (n2 == 1) {
                n3 = 33;
            }
        }
        View view = rect == null ? FocusFinder.getInstance().findNextFocus((ViewGroup)this, null, n3) : FocusFinder.getInstance().findNextFocusFromRect((ViewGroup)this, rect, n3);
        if (view == null || this.isOffScreen(view)) {
            return false;
        }
        return view.requestFocus(n3, rect);
    }

    protected void onRestoreInstanceState(Parcelable object) {
        if (!(object instanceof SavedState)) {
            super.onRestoreInstanceState((Parcelable)object);
            return;
        }
        object = (SavedState)((Object)object);
        super.onRestoreInstanceState(object.getSuperState());
        this.mSavedState = object;
        this.requestLayout();
    }

    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.scrollPosition = this.getScrollY();
        return savedState;
    }

    protected void onScrollChanged(int n2, int n3, int n4, int n5) {
        super.onScrollChanged(n2, n3, n4, n5);
        if (this.mOnScrollChangeListener != null) {
            this.mOnScrollChangeListener.onScrollChange(this, n2, n3, n4, n5);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onSizeChanged(int n2, int n3, int n4, int n5) {
        super.onSizeChanged(n2, n3, n4, n5);
        View view = this.findFocus();
        if (view == null || this == view || !this.isWithinDeltaOfScreen(view, 0, n5)) {
            return;
        }
        view.getDrawingRect(this.mTempRect);
        this.offsetDescendantRectToMyCoords(view, this.mTempRect);
        this.doScrollY(this.computeScrollDeltaToGetChildRectOnScreen(this.mTempRect));
    }

    @Override
    public boolean onStartNestedScroll(View view, View view2, int n2) {
        if ((n2 & 2) != 0) {
            return true;
        }
        return false;
    }

    @Override
    public void onStopNestedScroll(View view) {
        this.mParentHelper.onStopNestedScroll(view);
        this.stopNestedScroll();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean onTouchEvent(MotionEvent var1_1) {
        this.initVelocityTrackerIfNotExists();
        var9_2 = MotionEvent.obtain((MotionEvent)var1_1);
        var2_3 = MotionEventCompat.getActionMasked(var1_1);
        if (var2_3 == 0) {
            this.mNestedYOffset = 0;
        }
        var9_2.offsetLocation(0.0f, (float)this.mNestedYOffset);
        switch (var2_3) {
            case 0: {
                if (this.getChildCount() == 0) {
                    return false;
                }
                var8_4 = this.mScroller.isFinished() == false;
                this.mIsBeingDragged = var8_4;
                if (var8_4 && (var10_5 = this.getParent()) != null) {
                    var10_5.requestDisallowInterceptTouchEvent(true);
                }
                if (!this.mScroller.isFinished()) {
                    this.mScroller.abortAnimation();
                }
                this.mLastMotionY = (int)var1_1.getY();
                this.mActivePointerId = var1_1.getPointerId(0);
                this.startNestedScroll(2);
                ** break;
            }
            case 2: {
                var4_7 = var1_1.findPointerIndex(this.mActivePointerId);
                if (var4_7 == -1) {
                    Log.e((String)"NestedScrollView", (String)("Invalid pointerId=" + this.mActivePointerId + " in onTouchEvent"));
                    ** break;
                }
                var5_8 = (int)var1_1.getY(var4_7);
                var3_9 = var2_3 = this.mLastMotionY - var5_8;
                if (this.dispatchNestedPreScroll(0, var2_3, this.mScrollConsumed, this.mScrollOffset)) {
                    var3_9 = var2_3 - this.mScrollConsumed[1];
                    var9_2.offsetLocation(0.0f, (float)this.mScrollOffset[1]);
                    this.mNestedYOffset += this.mScrollOffset[1];
                }
                var2_3 = var3_9;
                if (!this.mIsBeingDragged) {
                    var2_3 = var3_9;
                    if (Math.abs(var3_9) > this.mTouchSlop) {
                        var10_6 = this.getParent();
                        if (var10_6 != null) {
                            var10_6.requestDisallowInterceptTouchEvent(true);
                        }
                        this.mIsBeingDragged = true;
                        var2_3 = var3_9 > 0 ? var3_9 - this.mTouchSlop : var3_9 + this.mTouchSlop;
                    }
                }
                if (this.mIsBeingDragged) {
                    this.mLastMotionY = var5_8 - this.mScrollOffset[1];
                    var6_10 = this.getScrollY();
                    var5_8 = this.getScrollRange();
                    var3_9 = this.getOverScrollMode();
                    var3_9 = var3_9 == 0 || var3_9 == 1 && var5_8 > 0 ? 1 : 0;
                    if (this.overScrollByCompat(0, var2_3, 0, this.getScrollY(), 0, var5_8, 0, 0, true) && !this.hasNestedScrollingParent()) {
                        this.mVelocityTracker.clear();
                    }
                    if (this.dispatchNestedScroll(0, var7_11 = this.getScrollY() - var6_10, 0, var2_3 - var7_11, this.mScrollOffset)) {
                        this.mLastMotionY -= this.mScrollOffset[1];
                        var9_2.offsetLocation(0.0f, (float)this.mScrollOffset[1]);
                        this.mNestedYOffset += this.mScrollOffset[1];
                        ** break;
                    }
                    if (var3_9 != 0) {
                        this.ensureGlows();
                        var3_9 = var6_10 + var2_3;
                        if (var3_9 < 0) {
                            this.mEdgeGlowTop.onPull((float)var2_3 / (float)this.getHeight(), var1_1.getX(var4_7) / (float)this.getWidth());
                            if (!this.mEdgeGlowBottom.isFinished()) {
                                this.mEdgeGlowBottom.onRelease();
                            }
                        } else if (var3_9 > var5_8) {
                            this.mEdgeGlowBottom.onPull((float)var2_3 / (float)this.getHeight(), 1.0f - var1_1.getX(var4_7) / (float)this.getWidth());
                            if (!this.mEdgeGlowTop.isFinished()) {
                                this.mEdgeGlowTop.onRelease();
                            }
                        }
                        if (!(this.mEdgeGlowTop == null || this.mEdgeGlowTop.isFinished() && this.mEdgeGlowBottom.isFinished())) {
                            ViewCompat.postInvalidateOnAnimation((View)this);
                            ** break;
                        }
                    }
                }
                ** GOTO lbl93
            }
            case 1: {
                if (this.mIsBeingDragged) {
                    var1_1 = this.mVelocityTracker;
                    var1_1.computeCurrentVelocity(1000, (float)this.mMaximumVelocity);
                    var2_3 = (int)VelocityTrackerCompat.getYVelocity((VelocityTracker)var1_1, this.mActivePointerId);
                    if (Math.abs(var2_3) > this.mMinimumVelocity) {
                        this.flingWithNestedDispatch(- var2_3);
                    } else if (this.mScroller.springBack(this.getScrollX(), this.getScrollY(), 0, 0, 0, this.getScrollRange())) {
                        ViewCompat.postInvalidateOnAnimation((View)this);
                    }
                }
                this.mActivePointerId = -1;
                this.endDrag();
                ** break;
            }
            case 3: {
                if (this.mIsBeingDragged && this.getChildCount() > 0 && this.mScroller.springBack(this.getScrollX(), this.getScrollY(), 0, 0, 0, this.getScrollRange())) {
                    ViewCompat.postInvalidateOnAnimation((View)this);
                }
                this.mActivePointerId = -1;
                this.endDrag();
                ** break;
            }
            case 5: {
                var2_3 = MotionEventCompat.getActionIndex(var1_1);
                this.mLastMotionY = (int)var1_1.getY(var2_3);
                this.mActivePointerId = var1_1.getPointerId(var2_3);
            }
lbl93: // 9 sources:
            default: {
                ** GOTO lbl98
            }
            case 6: 
        }
        this.onSecondaryPointerUp(var1_1);
        this.mLastMotionY = (int)var1_1.getY(var1_1.findPointerIndex(this.mActivePointerId));
lbl98: // 2 sources:
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.addMovement(var9_2);
        }
        var9_2.recycle();
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    boolean overScrollByCompat(int n2, int n3, int n4, int n5, int n6, int n7, int n8, int n9, boolean bl) {
        int n10 = this.getOverScrollMode();
        boolean bl2 = this.computeHorizontalScrollRange() > this.computeHorizontalScrollExtent();
        boolean bl3 = this.computeVerticalScrollRange() > this.computeVerticalScrollExtent();
        bl2 = n10 == 0 || n10 == 1 && bl2;
        bl3 = n10 == 0 || n10 == 1 && bl3;
        n4 += n2;
        if (!bl2) {
            n8 = 0;
        }
        n5 += n3;
        if (!bl3) {
            n9 = 0;
        }
        n3 = - n8;
        n2 = n8 + n6;
        n6 = - n9;
        n7 = n9 + n7;
        bl = false;
        if (n4 > n2) {
            bl = true;
        } else {
            n2 = n4;
            if (n4 < n3) {
                n2 = n3;
                bl = true;
            }
        }
        boolean bl4 = false;
        if (n5 > n7) {
            n3 = n7;
            bl4 = true;
        } else {
            n3 = n5;
            if (n5 < n6) {
                n3 = n6;
                bl4 = true;
            }
        }
        if (bl4) {
            this.mScroller.springBack(n2, n3, 0, 0, 0, this.getScrollRange());
        }
        this.onOverScrolled(n2, n3, bl, bl4);
        if (!bl && !bl4) {
            return false;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean pageScroll(int n2) {
        int n3 = n2 == 130 ? 1 : 0;
        int n4 = this.getHeight();
        if (n3 != 0) {
            View view;
            this.mTempRect.top = this.getScrollY() + n4;
            n3 = this.getChildCount();
            if (n3 > 0 && this.mTempRect.top + n4 > (view = this.getChildAt(n3 - 1)).getBottom()) {
                this.mTempRect.top = view.getBottom() - n4;
            }
        } else {
            this.mTempRect.top = this.getScrollY() - n4;
            if (this.mTempRect.top < 0) {
                this.mTempRect.top = 0;
            }
        }
        this.mTempRect.bottom = this.mTempRect.top + n4;
        return this.scrollAndFocus(n2, this.mTempRect.top, this.mTempRect.bottom);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void requestChildFocus(View view, View view2) {
        if (!this.mIsLayoutDirty) {
            this.scrollToChild(view2);
        } else {
            this.mChildToScrollTo = view2;
        }
        super.requestChildFocus(view, view2);
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean bl) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return this.scrollToChildRect(rect, bl);
    }

    public void requestDisallowInterceptTouchEvent(boolean bl) {
        if (bl) {
            this.recycleVelocityTracker();
        }
        super.requestDisallowInterceptTouchEvent(bl);
    }

    public void requestLayout() {
        this.mIsLayoutDirty = true;
        super.requestLayout();
    }

    public void scrollTo(int n2, int n3) {
        if (this.getChildCount() > 0) {
            View view = this.getChildAt(0);
            n2 = NestedScrollView.clamp(n2, this.getWidth() - this.getPaddingRight() - this.getPaddingLeft(), view.getWidth());
            n3 = NestedScrollView.clamp(n3, this.getHeight() - this.getPaddingBottom() - this.getPaddingTop(), view.getHeight());
            if (n2 != this.getScrollX() || n3 != this.getScrollY()) {
                super.scrollTo(n2, n3);
            }
        }
    }

    public void setFillViewport(boolean bl) {
        if (bl != this.mFillViewport) {
            this.mFillViewport = bl;
            this.requestLayout();
        }
    }

    @Override
    public void setNestedScrollingEnabled(boolean bl) {
        this.mChildHelper.setNestedScrollingEnabled(bl);
    }

    public void setOnScrollChangeListener(OnScrollChangeListener onScrollChangeListener) {
        this.mOnScrollChangeListener = onScrollChangeListener;
    }

    public void setSmoothScrollingEnabled(boolean bl) {
        this.mSmoothScrollingEnabled = bl;
    }

    public boolean shouldDelayChildPressedState() {
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void smoothScrollBy(int n2, int n3) {
        if (this.getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.mLastScroll > 250) {
            n2 = this.getHeight();
            int n4 = this.getPaddingBottom();
            int n5 = this.getPaddingTop();
            n4 = Math.max(0, this.getChildAt(0).getHeight() - (n2 - n4 - n5));
            n2 = this.getScrollY();
            n3 = Math.max(0, Math.min(n2 + n3, n4));
            this.mScroller.startScroll(this.getScrollX(), n2, 0, n3 - n2);
            ViewCompat.postInvalidateOnAnimation((View)this);
        } else {
            if (!this.mScroller.isFinished()) {
                this.mScroller.abortAnimation();
            }
            this.scrollBy(n2, n3);
        }
        this.mLastScroll = AnimationUtils.currentAnimationTimeMillis();
    }

    public final void smoothScrollTo(int n2, int n3) {
        this.smoothScrollBy(n2 - this.getScrollX(), n3 - this.getScrollY());
    }

    @Override
    public boolean startNestedScroll(int n2) {
        return this.mChildHelper.startNestedScroll(n2);
    }

    @Override
    public void stopNestedScroll() {
        this.mChildHelper.stopNestedScroll();
    }

    static class AccessibilityDelegate
    extends AccessibilityDelegateCompat {
        AccessibilityDelegate() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onInitializeAccessibilityEvent(View object, AccessibilityEvent object2) {
            super.onInitializeAccessibilityEvent((View)object, (AccessibilityEvent)object2);
            object = (NestedScrollView)object;
            object2.setClassName((CharSequence)ScrollView.class.getName());
            object2 = AccessibilityEventCompat.asRecord((AccessibilityEvent)object2);
            boolean bl = object.getScrollRange() > 0;
            object2.setScrollable(bl);
            object2.setScrollX(object.getScrollX());
            object2.setScrollY(object.getScrollY());
            object2.setMaxScrollX(object.getScrollX());
            object2.setMaxScrollY(object.getScrollRange());
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View object, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            int n2;
            super.onInitializeAccessibilityNodeInfo((View)object, accessibilityNodeInfoCompat);
            object = (NestedScrollView)object;
            accessibilityNodeInfoCompat.setClassName(ScrollView.class.getName());
            if (object.isEnabled() && (n2 = object.getScrollRange()) > 0) {
                accessibilityNodeInfoCompat.setScrollable(true);
                if (object.getScrollY() > 0) {
                    accessibilityNodeInfoCompat.addAction(8192);
                }
                if (object.getScrollY() < n2) {
                    accessibilityNodeInfoCompat.addAction(4096);
                }
            }
        }

        @Override
        public boolean performAccessibilityAction(View object, int n2, Bundle bundle) {
            if (super.performAccessibilityAction((View)object, n2, bundle)) {
                return true;
            }
            if (!(object = (NestedScrollView)object).isEnabled()) {
                return false;
            }
            switch (n2) {
                default: {
                    return false;
                }
                case 4096: {
                    n2 = object.getHeight();
                    int n3 = object.getPaddingBottom();
                    int n4 = object.getPaddingTop();
                    n2 = Math.min(object.getScrollY() + (n2 - n3 - n4), object.getScrollRange());
                    if (n2 != object.getScrollY()) {
                        object.smoothScrollTo(0, n2);
                        return true;
                    }
                    return false;
                }
                case 8192: 
            }
            n2 = object.getHeight();
            int n5 = object.getPaddingBottom();
            int n6 = object.getPaddingTop();
            n2 = Math.max(object.getScrollY() - (n2 - n5 - n6), 0);
            if (n2 != object.getScrollY()) {
                object.smoothScrollTo(0, n2);
                return true;
            }
            return false;
        }
    }

    public static interface OnScrollChangeListener {
        public void onScrollChange(NestedScrollView var1, int var2, int var3, int var4, int var5);
    }

    static class SavedState
    extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>(){

            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            public SavedState[] newArray(int n2) {
                return new SavedState[n2];
            }
        };
        public int scrollPosition;

        SavedState(Parcel parcel) {
            super(parcel);
            this.scrollPosition = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode((Object)this)) + " scrollPosition=" + this.scrollPosition + "}";
        }

        public void writeToParcel(Parcel parcel, int n2) {
            super.writeToParcel(parcel, n2);
            parcel.writeInt(this.scrollPosition);
        }

    }

}

