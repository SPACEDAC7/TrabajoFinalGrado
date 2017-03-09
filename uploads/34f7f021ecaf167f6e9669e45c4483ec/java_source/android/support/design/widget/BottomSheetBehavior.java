/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.content.res.TypedArray
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.util.AttributeSet
 *  android.util.TypedValue
 *  android.view.MotionEvent
 *  android.view.VelocityTracker
 *  android.view.View
 *  android.view.ViewConfiguration
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewParent
 */
package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.design.R;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.MathUtils;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.NestedScrollingChild;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ViewDragHelper;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;

public class BottomSheetBehavior<V extends View>
extends CoordinatorLayout.Behavior<V> {
    private static final float HIDE_FRICTION = 0.1f;
    private static final float HIDE_THRESHOLD = 0.5f;
    public static final int PEEK_HEIGHT_AUTO = -1;
    public static final int STATE_COLLAPSED = 4;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_EXPANDED = 3;
    public static final int STATE_HIDDEN = 5;
    public static final int STATE_SETTLING = 2;
    int mActivePointerId;
    private BottomSheetCallback mCallback;
    private final ViewDragHelper.Callback mDragCallback;
    boolean mHideable;
    private boolean mIgnoreEvents;
    private int mInitialY;
    private int mLastNestedScrollDy;
    int mMaxOffset;
    private float mMaximumVelocity;
    int mMinOffset;
    private boolean mNestedScrolled;
    WeakReference<View> mNestedScrollingChildRef;
    int mParentHeight;
    private int mPeekHeight;
    private boolean mPeekHeightAuto;
    private int mPeekHeightMin;
    private boolean mSkipCollapsed;
    int mState = 4;
    boolean mTouchingScrollingChild;
    private VelocityTracker mVelocityTracker;
    ViewDragHelper mViewDragHelper;
    WeakReference<V> mViewRef;

    public BottomSheetBehavior() {
        this.mDragCallback = new ViewDragHelper.Callback(){

            @Override
            public int clampViewPositionHorizontal(View view, int n2, int n3) {
                return view.getLeft();
            }

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            @Override
            public int clampViewPositionVertical(View view, int n2, int n3) {
                int n4 = BottomSheetBehavior.this.mMinOffset;
                if (BottomSheetBehavior.this.mHideable) {
                    n3 = BottomSheetBehavior.this.mParentHeight;
                    do {
                        return MathUtils.constrain(n2, n4, n3);
                        break;
                    } while (true);
                }
                n3 = BottomSheetBehavior.this.mMaxOffset;
                return MathUtils.constrain(n2, n4, n3);
            }

            @Override
            public int getViewVerticalDragRange(View view) {
                if (BottomSheetBehavior.this.mHideable) {
                    return BottomSheetBehavior.this.mParentHeight - BottomSheetBehavior.this.mMinOffset;
                }
                return BottomSheetBehavior.this.mMaxOffset - BottomSheetBehavior.this.mMinOffset;
            }

            @Override
            public void onViewDragStateChanged(int n2) {
                if (n2 == 1) {
                    BottomSheetBehavior.this.setStateInternal(1);
                }
            }

            @Override
            public void onViewPositionChanged(View view, int n2, int n3, int n4, int n5) {
                BottomSheetBehavior.this.dispatchOnSlide(n3);
            }

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void onViewReleased(View view, float f2, float f3) {
                int n2;
                int n3;
                if (f3 < 0.0f) {
                    n2 = BottomSheetBehavior.this.mMinOffset;
                    n3 = 3;
                } else if (BottomSheetBehavior.this.mHideable && BottomSheetBehavior.this.shouldHide(view, f3)) {
                    n2 = BottomSheetBehavior.this.mParentHeight;
                    n3 = 5;
                } else if (f3 == 0.0f) {
                    n3 = view.getTop();
                    if (Math.abs(n3 - BottomSheetBehavior.this.mMinOffset) < Math.abs(n3 - BottomSheetBehavior.this.mMaxOffset)) {
                        n2 = BottomSheetBehavior.this.mMinOffset;
                        n3 = 3;
                    } else {
                        n2 = BottomSheetBehavior.this.mMaxOffset;
                        n3 = 4;
                    }
                } else {
                    n2 = BottomSheetBehavior.this.mMaxOffset;
                    n3 = 4;
                }
                if (BottomSheetBehavior.this.mViewDragHelper.settleCapturedViewAt(view.getLeft(), n2)) {
                    BottomSheetBehavior.this.setStateInternal(2);
                    ViewCompat.postOnAnimation(view, new SettleRunnable(view, n3));
                    return;
                }
                BottomSheetBehavior.this.setStateInternal(n3);
            }

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            @Override
            public boolean tryCaptureView(View view, int n2) {
                View view2;
                boolean bl = true;
                if (BottomSheetBehavior.this.mState == 1) {
                    return false;
                }
                if (BottomSheetBehavior.this.mTouchingScrollingChild) return false;
                if (BottomSheetBehavior.this.mState == 3 && BottomSheetBehavior.this.mActivePointerId == n2 && (view2 = BottomSheetBehavior.this.mNestedScrollingChildRef.get()) != null) {
                    if (ViewCompat.canScrollVertically(view2, -1)) return false;
                }
                if (BottomSheetBehavior.this.mViewRef == null) return false;
                if (BottomSheetBehavior.this.mViewRef.get() != view) return false;
                return bl;
            }
        };
    }

    /*
     * Enabled aggressive block sorting
     */
    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDragCallback = new ;
        attributeSet = context.obtainStyledAttributes(attributeSet, R.styleable.BottomSheetBehavior_Layout);
        TypedValue typedValue = attributeSet.peekValue(R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (typedValue != null && typedValue.data == -1) {
            this.setPeekHeight(typedValue.data);
        } else {
            this.setPeekHeight(attributeSet.getDimensionPixelSize(R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        }
        this.setHideable(attributeSet.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        this.setSkipCollapsed(attributeSet.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        attributeSet.recycle();
        this.mMaximumVelocity = ViewConfiguration.get((Context)context).getScaledMaximumFlingVelocity();
    }

    private View findScrollingChild(View view) {
        if (view instanceof NestedScrollingChild) {
            return view;
        }
        if (view instanceof ViewGroup) {
            view = (ViewGroup)view;
            int n2 = view.getChildCount();
            for (int i2 = 0; i2 < n2; ++i2) {
                View view2 = this.findScrollingChild(view.getChildAt(i2));
                if (view2 == null) continue;
                return view2;
            }
        }
        return null;
    }

    public static <V extends View> BottomSheetBehavior<V> from(V object) {
        if (!((object = object.getLayoutParams()) instanceof CoordinatorLayout.LayoutParams)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        if (!((object = ((CoordinatorLayout.LayoutParams)((Object)object)).getBehavior()) instanceof BottomSheetBehavior)) {
            throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
        }
        return (BottomSheetBehavior)object;
    }

    private float getYVelocity() {
        this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
        return VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId);
    }

    private void reset() {
        this.mActivePointerId = -1;
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    void dispatchOnSlide(int n2) {
        View view = (View)this.mViewRef.get();
        if (view == null || this.mCallback == null) return;
        if (n2 > this.mMaxOffset) {
            this.mCallback.onSlide(view, (float)(this.mMaxOffset - n2) / (float)(this.mParentHeight - this.mMaxOffset));
            return;
        }
        this.mCallback.onSlide(view, (float)(this.mMaxOffset - n2) / (float)(this.mMaxOffset - this.mMinOffset));
    }

    public final int getPeekHeight() {
        if (this.mPeekHeightAuto) {
            return -1;
        }
        return this.mPeekHeight;
    }

    @VisibleForTesting
    int getPeekHeightMin() {
        return this.mPeekHeightMin;
    }

    public boolean getSkipCollapsed() {
        return this.mSkipCollapsed;
    }

    public final int getState() {
        return this.mState;
    }

    public boolean isHideable() {
        return this.mHideable;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V object, MotionEvent motionEvent) {
        boolean bl = true;
        if (!object.isShown()) {
            this.mIgnoreEvents = true;
            return false;
        }
        int n2 = MotionEventCompat.getActionMasked(motionEvent);
        if (n2 == 0) {
            this.reset();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        switch (n2) {
            case 1: 
            case 3: {
                this.mTouchingScrollingChild = false;
                this.mActivePointerId = -1;
                if (!this.mIgnoreEvents) break;
                this.mIgnoreEvents = false;
                return false;
            }
            case 0: {
                int n3 = (int)motionEvent.getX();
                this.mInitialY = (int)motionEvent.getY();
                View view = this.mNestedScrollingChildRef.get();
                if (view != null && coordinatorLayout.isPointInChildBounds(view, n3, this.mInitialY)) {
                    this.mActivePointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.mTouchingScrollingChild = true;
                }
                boolean bl2 = this.mActivePointerId == -1 && !coordinatorLayout.isPointInChildBounds((View)object, n3, this.mInitialY);
                this.mIgnoreEvents = bl2;
            }
        }
        if (!this.mIgnoreEvents && this.mViewDragHelper.shouldInterceptTouchEvent(motionEvent)) {
            return true;
        }
        object = this.mNestedScrollingChildRef.get();
        if (n2 != 2) return false;
        if (object == null) return false;
        if (this.mIgnoreEvents) return false;
        if (this.mState == 1) return false;
        if (coordinatorLayout.isPointInChildBounds((View)object, (int)motionEvent.getX(), (int)motionEvent.getY())) return false;
        if (Math.abs((float)this.mInitialY - motionEvent.getY()) <= (float)this.mViewDragHelper.getTouchSlop()) return false;
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v2, int n2) {
        if (ViewCompat.getFitsSystemWindows((View)coordinatorLayout) && !ViewCompat.getFitsSystemWindows(v2)) {
            ViewCompat.setFitsSystemWindows(v2, true);
        }
        int n3 = v2.getTop();
        coordinatorLayout.onLayoutChild((View)v2, n2);
        this.mParentHeight = coordinatorLayout.getHeight();
        if (this.mPeekHeightAuto) {
            if (this.mPeekHeightMin == 0) {
                this.mPeekHeightMin = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            }
            n2 = Math.max(this.mPeekHeightMin, this.mParentHeight - coordinatorLayout.getWidth() * 9 / 16);
        } else {
            n2 = this.mPeekHeight;
        }
        this.mMinOffset = Math.max(0, this.mParentHeight - v2.getHeight());
        this.mMaxOffset = Math.max(this.mParentHeight - n2, this.mMinOffset);
        if (this.mState == 3) {
            ViewCompat.offsetTopAndBottom(v2, this.mMinOffset);
        } else if (this.mHideable && this.mState == 5) {
            ViewCompat.offsetTopAndBottom(v2, this.mParentHeight);
        } else if (this.mState == 4) {
            ViewCompat.offsetTopAndBottom(v2, this.mMaxOffset);
        } else if (this.mState == 1 || this.mState == 2) {
            ViewCompat.offsetTopAndBottom(v2, n3 - v2.getTop());
        }
        if (this.mViewDragHelper == null) {
            this.mViewDragHelper = ViewDragHelper.create(coordinatorLayout, this.mDragCallback);
        }
        this.mViewRef = new WeakReference<V>(v2);
        this.mNestedScrollingChildRef = new WeakReference<View>(this.findScrollingChild((View)v2));
        return true;
    }

    @Override
    public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, V v2, View view, float f2, float f3) {
        if (view == this.mNestedScrollingChildRef.get() && (this.mState != 3 || super.onNestedPreFling(coordinatorLayout, v2, view, f2, f3))) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v2, View view, int n2, int n3, int[] arrn) {
        if (view != this.mNestedScrollingChildRef.get()) {
            return;
        }
        n2 = v2.getTop();
        int n4 = n2 - n3;
        if (n3 > 0) {
            if (n4 < this.mMinOffset) {
                arrn[1] = n2 - this.mMinOffset;
                ViewCompat.offsetTopAndBottom(v2, - arrn[1]);
                this.setStateInternal(3);
            } else {
                arrn[1] = n3;
                ViewCompat.offsetTopAndBottom(v2, - n3);
                this.setStateInternal(1);
            }
        } else if (n3 < 0 && !ViewCompat.canScrollVertically(view, -1)) {
            if (n4 <= this.mMaxOffset || this.mHideable) {
                arrn[1] = n3;
                ViewCompat.offsetTopAndBottom(v2, - n3);
                this.setStateInternal(1);
            } else {
                arrn[1] = n2 - this.mMaxOffset;
                ViewCompat.offsetTopAndBottom(v2, - arrn[1]);
                this.setStateInternal(4);
            }
        }
        this.dispatchOnSlide(v2.getTop());
        this.mLastNestedScrollDy = n3;
        this.mNestedScrolled = true;
    }

    @Override
    public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v2, Parcelable parcelable) {
        parcelable = (SavedState)parcelable;
        super.onRestoreInstanceState(coordinatorLayout, v2, parcelable.getSuperState());
        if (parcelable.state == 1 || parcelable.state == 2) {
            this.mState = 4;
            return;
        }
        this.mState = parcelable.state;
    }

    @Override
    public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v2) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, v2), this.mState);
    }

    @Override
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v2, View view, View view2, int n2) {
        boolean bl = false;
        this.mLastNestedScrollDy = 0;
        this.mNestedScrolled = false;
        if ((n2 & 2) != 0) {
            bl = true;
        }
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v2, View view) {
        int n2;
        int n3;
        if (v2.getTop() == this.mMinOffset) {
            this.setStateInternal(3);
            return;
        }
        if (view != this.mNestedScrollingChildRef.get() || !this.mNestedScrolled) return;
        if (this.mLastNestedScrollDy > 0) {
            n2 = this.mMinOffset;
            n3 = 3;
        } else if (this.mHideable && this.shouldHide((View)v2, this.getYVelocity())) {
            n2 = this.mParentHeight;
            n3 = 5;
        } else if (this.mLastNestedScrollDy == 0) {
            n3 = v2.getTop();
            if (Math.abs(n3 - this.mMinOffset) < Math.abs(n3 - this.mMaxOffset)) {
                n2 = this.mMinOffset;
                n3 = 3;
            } else {
                n2 = this.mMaxOffset;
                n3 = 4;
            }
        } else {
            n2 = this.mMaxOffset;
            n3 = 4;
        }
        if (this.mViewDragHelper.smoothSlideViewTo((View)v2, v2.getLeft(), n2)) {
            this.setStateInternal(2);
            ViewCompat.postOnAnimation(v2, new SettleRunnable((View)v2, n3));
        } else {
            this.setStateInternal(n3);
        }
        this.mNestedScrolled = false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v2, MotionEvent motionEvent) {
        boolean bl;
        boolean bl2 = true;
        if (!v2.isShown()) {
            return false;
        }
        int n2 = MotionEventCompat.getActionMasked(motionEvent);
        if (this.mState == 1) {
            bl = bl2;
            if (n2 == 0) return bl;
        }
        this.mViewDragHelper.processTouchEvent(motionEvent);
        if (n2 == 0) {
            this.reset();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        if (n2 == 2 && !this.mIgnoreEvents && Math.abs((float)this.mInitialY - motionEvent.getY()) > (float)this.mViewDragHelper.getTouchSlop()) {
            this.mViewDragHelper.captureChildView((View)v2, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        bl = bl2;
        if (!this.mIgnoreEvents) return bl;
        return false;
    }

    public void setBottomSheetCallback(BottomSheetCallback bottomSheetCallback) {
        this.mCallback = bottomSheetCallback;
    }

    public void setHideable(boolean bl) {
        this.mHideable = bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void setPeekHeight(int n2) {
        boolean bl = false;
        if (n2 == -1) {
            if (!this.mPeekHeightAuto) {
                this.mPeekHeightAuto = true;
                bl = true;
            }
        } else if (this.mPeekHeightAuto || this.mPeekHeight != n2) {
            this.mPeekHeightAuto = false;
            this.mPeekHeight = Math.max(0, n2);
            this.mMaxOffset = this.mParentHeight - n2;
            bl = true;
        }
        if (bl) {
            View view;
            if (this.mState != 4) return;
            if (this.mViewRef != null && (view = (View)this.mViewRef.get()) != null) {
                view.requestLayout();
            }
        }
    }

    public void setSkipCollapsed(boolean bl) {
        this.mSkipCollapsed = bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void setState(final int n2) {
        if (n2 == this.mState) return;
        if (this.mViewRef == null) {
            if (n2 != 4 && n2 != 3 && (!this.mHideable || n2 != 5)) return;
            {
                this.mState = n2;
                return;
            }
        }
        final View view = (View)this.mViewRef.get();
        if (view == null) {
            return;
        }
        ViewParent viewParent = view.getParent();
        if (viewParent != null && viewParent.isLayoutRequested() && ViewCompat.isAttachedToWindow(view)) {
            view.post(new Runnable(){

                @Override
                public void run() {
                    BottomSheetBehavior.this.startSettlingAnimation(view, n2);
                }
            });
            return;
        }
        this.startSettlingAnimation(view, n2);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void setStateInternal(int n2) {
        if (this.mState == n2) {
            return;
        }
        this.mState = n2;
        View view = (View)this.mViewRef.get();
        if (view == null) return;
        if (this.mCallback == null) return;
        this.mCallback.onStateChanged(view, n2);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    boolean shouldHide(View view, float f2) {
        if (this.mSkipCollapsed) {
            return true;
        }
        if (view.getTop() < this.mMaxOffset) {
            return false;
        }
        if (Math.abs((float)view.getTop() + 0.1f * f2 - (float)this.mMaxOffset) / (float)this.mPeekHeight > 0.5f) return true;
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void startSettlingAnimation(View view, int n2) {
        int n3;
        if (n2 == 4) {
            n3 = this.mMaxOffset;
        } else if (n2 == 3) {
            n3 = this.mMinOffset;
        } else {
            if (!this.mHideable) throw new IllegalArgumentException("Illegal state argument: " + n2);
            if (n2 != 5) throw new IllegalArgumentException("Illegal state argument: " + n2);
            n3 = this.mParentHeight;
        }
        this.setStateInternal(2);
        if (!this.mViewDragHelper.smoothSlideViewTo(view, view.getLeft(), n3)) return;
        ViewCompat.postOnAnimation(view, new SettleRunnable(view, n2));
    }

    public static abstract class BottomSheetCallback {
        public abstract void onSlide(@NonNull View var1, float var2);

        public abstract void onStateChanged(@NonNull View var1, int var2);
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
        final int state;

        public SavedState(Parcel parcel) {
            this(parcel, null);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
        }

        public SavedState(Parcelable parcelable, int n2) {
            super(parcelable);
            this.state = n2;
        }

        @Override
        public void writeToParcel(Parcel parcel, int n2) {
            super.writeToParcel(parcel, n2);
            parcel.writeInt(this.state);
        }

    }

    private class SettleRunnable
    implements Runnable {
        private final int mTargetState;
        private final View mView;

        SettleRunnable(View view, int n2) {
            this.mView = view;
            this.mTargetState = n2;
        }

        @Override
        public void run() {
            if (BottomSheetBehavior.this.mViewDragHelper != null && BottomSheetBehavior.this.mViewDragHelper.continueSettling(true)) {
                ViewCompat.postOnAnimation(this.mView, this);
                return;
            }
            BottomSheetBehavior.this.setStateInternal(this.mTargetState);
        }
    }

    @Retention(value=RetentionPolicy.SOURCE)
    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public static @interface State {
    }

}

