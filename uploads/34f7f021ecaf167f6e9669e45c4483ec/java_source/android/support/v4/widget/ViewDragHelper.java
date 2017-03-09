/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.util.DisplayMetrics
 *  android.util.Log
 *  android.view.MotionEvent
 *  android.view.VelocityTracker
 *  android.view.View
 *  android.view.ViewConfiguration
 *  android.view.ViewGroup
 *  android.view.ViewParent
 *  android.view.animation.Interpolator
 */
package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ScrollerCompat;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import java.util.Arrays;

public class ViewDragHelper {
    private static final int BASE_SETTLE_DURATION = 256;
    public static final int DIRECTION_ALL = 3;
    public static final int DIRECTION_HORIZONTAL = 1;
    public static final int DIRECTION_VERTICAL = 2;
    public static final int EDGE_ALL = 15;
    public static final int EDGE_BOTTOM = 8;
    public static final int EDGE_LEFT = 1;
    public static final int EDGE_RIGHT = 2;
    private static final int EDGE_SIZE = 20;
    public static final int EDGE_TOP = 4;
    public static final int INVALID_POINTER = -1;
    private static final int MAX_SETTLE_DURATION = 600;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final String TAG = "ViewDragHelper";
    private static final Interpolator sInterpolator = new Interpolator(){

        public float getInterpolation(float f2) {
            return f2 * f2 * f2 * f2 * (f2 -= 1.0f) + 1.0f;
        }
    };
    private int mActivePointerId = -1;
    private final Callback mCallback;
    private View mCapturedView;
    private int mDragState;
    private int[] mEdgeDragsInProgress;
    private int[] mEdgeDragsLocked;
    private int mEdgeSize;
    private int[] mInitialEdgesTouched;
    private float[] mInitialMotionX;
    private float[] mInitialMotionY;
    private float[] mLastMotionX;
    private float[] mLastMotionY;
    private float mMaxVelocity;
    private float mMinVelocity;
    private final ViewGroup mParentView;
    private int mPointersDown;
    private boolean mReleaseInProgress;
    private ScrollerCompat mScroller;
    private final Runnable mSetIdleRunnable;
    private int mTouchSlop;
    private int mTrackingEdges;
    private VelocityTracker mVelocityTracker;

    private ViewDragHelper(Context context, ViewGroup viewGroup, Callback callback) {
        this.mSetIdleRunnable = new Runnable(){

            @Override
            public void run() {
                ViewDragHelper.this.setDragState(0);
            }
        };
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (callback == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.mParentView = viewGroup;
        this.mCallback = callback;
        viewGroup = ViewConfiguration.get((Context)context);
        this.mEdgeSize = (int)(20.0f * context.getResources().getDisplayMetrics().density + 0.5f);
        this.mTouchSlop = viewGroup.getScaledTouchSlop();
        this.mMaxVelocity = viewGroup.getScaledMaximumFlingVelocity();
        this.mMinVelocity = viewGroup.getScaledMinimumFlingVelocity();
        this.mScroller = ScrollerCompat.create(context, sInterpolator);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private boolean checkNewEdgeDrag(float f2, float f3, int n2, int n3) {
        f2 = Math.abs(f2);
        f3 = Math.abs(f3);
        if ((this.mInitialEdgesTouched[n2] & n3) != n3) return false;
        if ((this.mTrackingEdges & n3) == 0) return false;
        if ((this.mEdgeDragsLocked[n2] & n3) == n3) return false;
        if ((this.mEdgeDragsInProgress[n2] & n3) == n3) return false;
        if (f2 <= (float)this.mTouchSlop && f3 <= (float)this.mTouchSlop) {
            return false;
        }
        if (f2 < 0.5f * f3 && this.mCallback.onEdgeLock(n3)) {
            int[] arrn = this.mEdgeDragsLocked;
            arrn[n2] = arrn[n2] | n3;
            return false;
        }
        if ((this.mEdgeDragsInProgress[n2] & n3) != 0) return false;
        if (f2 <= (float)this.mTouchSlop) return false;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean checkTouchSlop(View view, float f2, float f3) {
        boolean bl = true;
        if (view == null) {
            return false;
        }
        boolean bl2 = this.mCallback.getViewHorizontalDragRange(view) > 0;
        if (this.mCallback.getViewVerticalDragRange(view) <= 0) return false;
        boolean bl3 = true;
        if (bl2 && bl3) {
            if (f2 * f2 + f3 * f3 > (float)(this.mTouchSlop * this.mTouchSlop)) return bl;
            return false;
        }
        if (bl2) {
            if (Math.abs(f2) > (float)this.mTouchSlop) return bl;
            return false;
        }
        if (!bl3) {
            return false;
        }
        if (Math.abs(f3) > (float)this.mTouchSlop) return bl;
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private float clampMag(float f2, float f3, float f4) {
        float f5 = Math.abs(f2);
        if (f5 < f3) {
            return 0.0f;
        }
        if (f5 <= f4) return f2;
        f3 = f4;
        if (f2 > 0.0f) return f3;
        return - f4;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int clampMag(int n2, int n3, int n4) {
        int n5 = Math.abs(n2);
        if (n5 < n3) {
            return 0;
        }
        if (n5 <= n4) return n2;
        n3 = n4;
        if (n2 > 0) return n3;
        return - n4;
    }

    private void clearMotionHistory() {
        if (this.mInitialMotionX == null) {
            return;
        }
        Arrays.fill(this.mInitialMotionX, 0.0f);
        Arrays.fill(this.mInitialMotionY, 0.0f);
        Arrays.fill(this.mLastMotionX, 0.0f);
        Arrays.fill(this.mLastMotionY, 0.0f);
        Arrays.fill(this.mInitialEdgesTouched, 0);
        Arrays.fill(this.mEdgeDragsInProgress, 0);
        Arrays.fill(this.mEdgeDragsLocked, 0);
        this.mPointersDown = 0;
    }

    private void clearMotionHistory(int n2) {
        if (this.mInitialMotionX == null || !this.isPointerDown(n2)) {
            return;
        }
        this.mInitialMotionX[n2] = 0.0f;
        this.mInitialMotionY[n2] = 0.0f;
        this.mLastMotionX[n2] = 0.0f;
        this.mLastMotionY[n2] = 0.0f;
        this.mInitialEdgesTouched[n2] = 0;
        this.mEdgeDragsInProgress[n2] = 0;
        this.mEdgeDragsLocked[n2] = 0;
        this.mPointersDown &= ~ (1 << n2);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int computeAxisDuration(int n2, int n3, int n4) {
        if (n2 == 0) {
            return 0;
        }
        int n5 = this.mParentView.getWidth();
        int n6 = n5 / 2;
        float f2 = Math.min(1.0f, (float)Math.abs(n2) / (float)n5);
        float f3 = n6;
        float f4 = n6;
        f2 = this.distanceInfluenceForSnapDuration(f2);
        if ((n3 = Math.abs(n3)) > 0) {
            n2 = Math.round(1000.0f * Math.abs((f3 + f4 * f2) / (float)n3)) * 4;
            do {
                return Math.min(n2, 600);
                break;
            } while (true);
        }
        n2 = (int)(((float)Math.abs(n2) / (float)n4 + 1.0f) * 256.0f);
        return Math.min(n2, 600);
    }

    /*
     * Enabled aggressive block sorting
     */
    private int computeSettleDuration(View view, int n2, int n3, int n4, int n5) {
        n4 = this.clampMag(n4, (int)this.mMinVelocity, (int)this.mMaxVelocity);
        n5 = this.clampMag(n5, (int)this.mMinVelocity, (int)this.mMaxVelocity);
        int n6 = Math.abs(n2);
        int n7 = Math.abs(n3);
        int n8 = Math.abs(n4);
        int n9 = Math.abs(n5);
        int n10 = n8 + n9;
        int n11 = n6 + n7;
        float f2 = n4 != 0 ? (float)n8 / (float)n10 : (float)n6 / (float)n11;
        float f3 = n5 != 0 ? (float)n9 / (float)n10 : (float)n7 / (float)n11;
        n2 = this.computeAxisDuration(n2, n4, this.mCallback.getViewHorizontalDragRange(view));
        n3 = this.computeAxisDuration(n3, n5, this.mCallback.getViewVerticalDragRange(view));
        return (int)((float)n2 * f2 + (float)n3 * f3);
    }

    public static ViewDragHelper create(ViewGroup object, float f2, Callback callback) {
        object = ViewDragHelper.create((ViewGroup)object, callback);
        object.mTouchSlop = (int)((float)object.mTouchSlop * (1.0f / f2));
        return object;
    }

    public static ViewDragHelper create(ViewGroup viewGroup, Callback callback) {
        return new ViewDragHelper(viewGroup.getContext(), viewGroup, callback);
    }

    private void dispatchViewReleased(float f2, float f3) {
        this.mReleaseInProgress = true;
        this.mCallback.onViewReleased(this.mCapturedView, f2, f3);
        this.mReleaseInProgress = false;
        if (this.mDragState == 1) {
            this.setDragState(0);
        }
    }

    private float distanceInfluenceForSnapDuration(float f2) {
        return (float)Math.sin((float)((double)(f2 - 0.5f) * 0.4712389167638204));
    }

    private void dragTo(int n2, int n3, int n4, int n5) {
        int n6 = n2;
        int n7 = n3;
        int n8 = this.mCapturedView.getLeft();
        int n9 = this.mCapturedView.getTop();
        if (n4 != 0) {
            n6 = this.mCallback.clampViewPositionHorizontal(this.mCapturedView, n2, n4);
            ViewCompat.offsetLeftAndRight(this.mCapturedView, n6 - n8);
        }
        if (n5 != 0) {
            n7 = this.mCallback.clampViewPositionVertical(this.mCapturedView, n3, n5);
            ViewCompat.offsetTopAndBottom(this.mCapturedView, n7 - n9);
        }
        if (n4 != 0 || n5 != 0) {
            this.mCallback.onViewPositionChanged(this.mCapturedView, n6, n7, n6 - n8, n7 - n9);
        }
    }

    private void ensureMotionHistorySizeForId(int n2) {
        if (this.mInitialMotionX == null || this.mInitialMotionX.length <= n2) {
            float[] arrf = new float[n2 + 1];
            float[] arrf2 = new float[n2 + 1];
            float[] arrf3 = new float[n2 + 1];
            float[] arrf4 = new float[n2 + 1];
            int[] arrn = new int[n2 + 1];
            int[] arrn2 = new int[n2 + 1];
            int[] arrn3 = new int[n2 + 1];
            if (this.mInitialMotionX != null) {
                System.arraycopy(this.mInitialMotionX, 0, arrf, 0, this.mInitialMotionX.length);
                System.arraycopy(this.mInitialMotionY, 0, arrf2, 0, this.mInitialMotionY.length);
                System.arraycopy(this.mLastMotionX, 0, arrf3, 0, this.mLastMotionX.length);
                System.arraycopy(this.mLastMotionY, 0, arrf4, 0, this.mLastMotionY.length);
                System.arraycopy(this.mInitialEdgesTouched, 0, arrn, 0, this.mInitialEdgesTouched.length);
                System.arraycopy(this.mEdgeDragsInProgress, 0, arrn2, 0, this.mEdgeDragsInProgress.length);
                System.arraycopy(this.mEdgeDragsLocked, 0, arrn3, 0, this.mEdgeDragsLocked.length);
            }
            this.mInitialMotionX = arrf;
            this.mInitialMotionY = arrf2;
            this.mLastMotionX = arrf3;
            this.mLastMotionY = arrf4;
            this.mInitialEdgesTouched = arrn;
            this.mEdgeDragsInProgress = arrn2;
            this.mEdgeDragsLocked = arrn3;
        }
    }

    private boolean forceSettleCapturedViewAt(int n2, int n3, int n4, int n5) {
        int n6 = this.mCapturedView.getLeft();
        int n7 = this.mCapturedView.getTop();
        if ((n2 -= n6) == 0 && (n3 -= n7) == 0) {
            this.mScroller.abortAnimation();
            this.setDragState(0);
            return false;
        }
        n4 = this.computeSettleDuration(this.mCapturedView, n2, n3, n4, n5);
        this.mScroller.startScroll(n6, n7, n2, n3, n4);
        this.setDragState(2);
        return true;
    }

    private int getEdgesTouched(int n2, int n3) {
        int n4 = 0;
        if (n2 < this.mParentView.getLeft() + this.mEdgeSize) {
            n4 = false | true;
        }
        int n5 = n4;
        if (n3 < this.mParentView.getTop() + this.mEdgeSize) {
            n5 = n4 | 4;
        }
        n4 = n5;
        if (n2 > this.mParentView.getRight() - this.mEdgeSize) {
            n4 = n5 | 2;
        }
        n2 = n4;
        if (n3 > this.mParentView.getBottom() - this.mEdgeSize) {
            n2 = n4 | 8;
        }
        return n2;
    }

    private boolean isValidPointerForActionMove(int n2) {
        if (!this.isPointerDown(n2)) {
            Log.e((String)"ViewDragHelper", (String)("Ignoring pointerId=" + n2 + " because ACTION_DOWN was not received " + "for this pointer before ACTION_MOVE. It likely happened because " + " ViewDragHelper did not receive all the events in the event stream."));
            return false;
        }
        return true;
    }

    private void releaseViewForPointerUp() {
        this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxVelocity);
        this.dispatchViewReleased(this.clampMag(VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity), this.clampMag(VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity));
    }

    private void reportNewEdgeDrags(float f2, float f3, int n2) {
        int n3 = 0;
        if (this.checkNewEdgeDrag(f2, f3, n2, 1)) {
            n3 = false | true;
        }
        int n4 = n3;
        if (this.checkNewEdgeDrag(f3, f2, n2, 4)) {
            n4 = n3 | 4;
        }
        n3 = n4;
        if (this.checkNewEdgeDrag(f2, f3, n2, 2)) {
            n3 = n4 | 2;
        }
        n4 = n3;
        if (this.checkNewEdgeDrag(f3, f2, n2, 8)) {
            n4 = n3 | 8;
        }
        if (n4 != 0) {
            int[] arrn = this.mEdgeDragsInProgress;
            arrn[n2] = arrn[n2] | n4;
            this.mCallback.onEdgeDragStarted(n4, n2);
        }
    }

    private void saveInitialMotion(float f2, float f3, int n2) {
        this.ensureMotionHistorySizeForId(n2);
        float[] arrf = this.mInitialMotionX;
        this.mLastMotionX[n2] = f2;
        arrf[n2] = f2;
        arrf = this.mInitialMotionY;
        this.mLastMotionY[n2] = f3;
        arrf[n2] = f3;
        this.mInitialEdgesTouched[n2] = this.getEdgesTouched((int)f2, (int)f3);
        this.mPointersDown |= 1 << n2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void saveLastMotion(MotionEvent motionEvent) {
        int n2 = motionEvent.getPointerCount();
        int n3 = 0;
        while (n3 < n2) {
            int n4 = motionEvent.getPointerId(n3);
            if (this.isValidPointerForActionMove(n4)) {
                float f2 = motionEvent.getX(n3);
                float f3 = motionEvent.getY(n3);
                this.mLastMotionX[n4] = f2;
                this.mLastMotionY[n4] = f3;
            }
            ++n3;
        }
    }

    public void abort() {
        this.cancel();
        if (this.mDragState == 2) {
            int n2 = this.mScroller.getCurrX();
            int n3 = this.mScroller.getCurrY();
            this.mScroller.abortAnimation();
            int n4 = this.mScroller.getCurrX();
            int n5 = this.mScroller.getCurrY();
            this.mCallback.onViewPositionChanged(this.mCapturedView, n4, n5, n4 - n2, n5 - n3);
        }
        this.setDragState(0);
    }

    protected boolean canScroll(View view, boolean bl, int n2, int n3, int n4, int n5) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup)view;
            int n6 = view.getScrollX();
            int n7 = view.getScrollY();
            for (int i2 = viewGroup.getChildCount() - 1; i2 >= 0; --i2) {
                View view2 = viewGroup.getChildAt(i2);
                if (n4 + n6 < view2.getLeft() || n4 + n6 >= view2.getRight() || n5 + n7 < view2.getTop() || n5 + n7 >= view2.getBottom() || !this.canScroll(view2, true, n2, n3, n4 + n6 - view2.getLeft(), n5 + n7 - view2.getTop())) continue;
                return true;
            }
        }
        if (bl && (ViewCompat.canScrollHorizontally(view, - n2) || ViewCompat.canScrollVertically(view, - n3))) {
            return true;
        }
        return false;
    }

    public void cancel() {
        this.mActivePointerId = -1;
        this.clearMotionHistory();
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    public void captureChildView(View view, int n2) {
        if (view.getParent() != this.mParentView) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + (Object)this.mParentView + ")");
        }
        this.mCapturedView = view;
        this.mActivePointerId = n2;
        this.mCallback.onViewCaptured(view, n2);
        this.setDragState(1);
    }

    public boolean checkTouchSlop(int n2) {
        int n3 = this.mInitialMotionX.length;
        for (int i2 = 0; i2 < n3; ++i2) {
            if (!this.checkTouchSlop(n2, i2)) continue;
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean checkTouchSlop(int n2, int n3) {
        boolean bl = true;
        if (!this.isPointerDown(n3)) {
            return false;
        }
        boolean bl2 = (n2 & 1) == 1;
        n2 = (n2 & 2) == 2 ? 1 : 0;
        float f2 = this.mLastMotionX[n3] - this.mInitialMotionX[n3];
        float f3 = this.mLastMotionY[n3] - this.mInitialMotionY[n3];
        if (bl2 && n2 != 0) {
            if (f2 * f2 + f3 * f3 > (float)(this.mTouchSlop * this.mTouchSlop)) return bl;
            return false;
        }
        if (bl2) {
            if (Math.abs(f2) > (float)this.mTouchSlop) return bl;
            return false;
        }
        if (n2 == 0) {
            return false;
        }
        if (Math.abs(f3) > (float)this.mTouchSlop) return bl;
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean continueSettling(boolean bl) {
        if (this.mDragState == 2) {
            boolean bl2 = this.mScroller.computeScrollOffset();
            int n2 = this.mScroller.getCurrX();
            int n3 = this.mScroller.getCurrY();
            int n4 = n2 - this.mCapturedView.getLeft();
            int n5 = n3 - this.mCapturedView.getTop();
            if (n4 != 0) {
                ViewCompat.offsetLeftAndRight(this.mCapturedView, n4);
            }
            if (n5 != 0) {
                ViewCompat.offsetTopAndBottom(this.mCapturedView, n5);
            }
            if (n4 != 0 || n5 != 0) {
                this.mCallback.onViewPositionChanged(this.mCapturedView, n2, n3, n4, n5);
            }
            boolean bl3 = bl2;
            if (bl2) {
                bl3 = bl2;
                if (n2 == this.mScroller.getFinalX()) {
                    bl3 = bl2;
                    if (n3 == this.mScroller.getFinalY()) {
                        this.mScroller.abortAnimation();
                        bl3 = false;
                    }
                }
            }
            if (!bl3) {
                if (bl) {
                    this.mParentView.post(this.mSetIdleRunnable);
                } else {
                    this.setDragState(0);
                }
            }
        }
        if (this.mDragState == 2) {
            return true;
        }
        return false;
    }

    public View findTopChildUnder(int n2, int n3) {
        for (int i2 = this.mParentView.getChildCount() - 1; i2 >= 0; --i2) {
            View view = this.mParentView.getChildAt(this.mCallback.getOrderedChildIndex(i2));
            if (n2 < view.getLeft() || n2 >= view.getRight() || n3 < view.getTop() || n3 >= view.getBottom()) continue;
            return view;
        }
        return null;
    }

    public void flingCapturedView(int n2, int n3, int n4, int n5) {
        if (!this.mReleaseInProgress) {
            throw new IllegalStateException("Cannot flingCapturedView outside of a call to Callback#onViewReleased");
        }
        this.mScroller.fling(this.mCapturedView.getLeft(), this.mCapturedView.getTop(), (int)VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), (int)VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId), n2, n4, n3, n5);
        this.setDragState(2);
    }

    public int getActivePointerId() {
        return this.mActivePointerId;
    }

    public View getCapturedView() {
        return this.mCapturedView;
    }

    public int getEdgeSize() {
        return this.mEdgeSize;
    }

    public float getMinVelocity() {
        return this.mMinVelocity;
    }

    public int getTouchSlop() {
        return this.mTouchSlop;
    }

    public int getViewDragState() {
        return this.mDragState;
    }

    public boolean isCapturedViewUnder(int n2, int n3) {
        return this.isViewUnder(this.mCapturedView, n2, n3);
    }

    public boolean isEdgeTouched(int n2) {
        int n3 = this.mInitialEdgesTouched.length;
        for (int i2 = 0; i2 < n3; ++i2) {
            if (!this.isEdgeTouched(n2, i2)) continue;
            return true;
        }
        return false;
    }

    public boolean isEdgeTouched(int n2, int n3) {
        if (this.isPointerDown(n3) && (this.mInitialEdgesTouched[n3] & n2) != 0) {
            return true;
        }
        return false;
    }

    public boolean isPointerDown(int n2) {
        if ((this.mPointersDown & 1 << n2) != 0) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean isViewUnder(View view, int n2, int n3) {
        if (view == null || n2 < view.getLeft() || n2 >= view.getRight() || n3 < view.getTop() || n3 >= view.getBottom()) {
            return false;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void processTouchEvent(MotionEvent motionEvent) {
        int n2 = MotionEventCompat.getActionMasked(motionEvent);
        int n3 = MotionEventCompat.getActionIndex(motionEvent);
        if (n2 == 0) {
            this.cancel();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        switch (n2) {
            default: {
                return;
            }
            case 0: {
                float f2 = motionEvent.getX();
                float f3 = motionEvent.getY();
                n3 = motionEvent.getPointerId(0);
                motionEvent = this.findTopChildUnder((int)f2, (int)f3);
                this.saveInitialMotion(f2, f3, n3);
                this.tryCaptureViewForDrag((View)motionEvent, n3);
                n2 = this.mInitialEdgesTouched[n3];
                if ((this.mTrackingEdges & n2) == 0) return;
                this.mCallback.onEdgeTouched(this.mTrackingEdges & n2, n3);
                return;
            }
            case 5: {
                n2 = motionEvent.getPointerId(n3);
                float f4 = motionEvent.getX(n3);
                float f5 = motionEvent.getY(n3);
                this.saveInitialMotion(f4, f5, n2);
                if (this.mDragState == 0) {
                    this.tryCaptureViewForDrag(this.findTopChildUnder((int)f4, (int)f5), n2);
                    n3 = this.mInitialEdgesTouched[n2];
                    if ((this.mTrackingEdges & n3) == 0) return;
                    this.mCallback.onEdgeTouched(this.mTrackingEdges & n3, n2);
                    return;
                }
                if (!this.isCapturedViewUnder((int)f4, (int)f5)) return;
                this.tryCaptureViewForDrag(this.mCapturedView, n2);
                return;
            }
            case 2: {
                if (this.mDragState == 1) {
                    if (!this.isValidPointerForActionMove(this.mActivePointerId)) return;
                    n3 = motionEvent.findPointerIndex(this.mActivePointerId);
                    float f6 = motionEvent.getX(n3);
                    float f7 = motionEvent.getY(n3);
                    n3 = (int)(f6 - this.mLastMotionX[this.mActivePointerId]);
                    n2 = (int)(f7 - this.mLastMotionY[this.mActivePointerId]);
                    this.dragTo(this.mCapturedView.getLeft() + n3, this.mCapturedView.getTop() + n2, n3, n2);
                    this.saveLastMotion(motionEvent);
                    return;
                }
                n2 = motionEvent.getPointerCount();
                for (n3 = 0; n3 < n2; ++n3) {
                    View view;
                    int n4 = motionEvent.getPointerId(n3);
                    if (!this.isValidPointerForActionMove(n4)) continue;
                    float f8 = motionEvent.getX(n3);
                    float f9 = motionEvent.getY(n3);
                    float f10 = f8 - this.mInitialMotionX[n4];
                    float f11 = f9 - this.mInitialMotionY[n4];
                    this.reportNewEdgeDrags(f10, f11, n4);
                    if (this.mDragState == 1 || this.checkTouchSlop(view = this.findTopChildUnder((int)f8, (int)f9), f10, f11) && this.tryCaptureViewForDrag(view, n4)) break;
                }
                this.saveLastMotion(motionEvent);
                return;
            }
            case 6: {
                int n5 = motionEvent.getPointerId(n3);
                if (this.mDragState == 1 && n5 == this.mActivePointerId) {
                    int n6 = -1;
                    int n7 = motionEvent.getPointerCount();
                    n3 = 0;
                    do {
                        float f12;
                        float f13;
                        n2 = n6;
                        if (n3 >= n7) break;
                        n2 = motionEvent.getPointerId(n3);
                        if (n2 != this.mActivePointerId && this.findTopChildUnder((int)(f13 = motionEvent.getX(n3)), (int)(f12 = motionEvent.getY(n3))) == this.mCapturedView && this.tryCaptureViewForDrag(this.mCapturedView, n2)) {
                            n2 = this.mActivePointerId;
                            break;
                        }
                        ++n3;
                    } while (true);
                    if (n2 == -1) {
                        this.releaseViewForPointerUp();
                    }
                }
                this.clearMotionHistory(n5);
                return;
            }
            case 1: {
                if (this.mDragState == 1) {
                    this.releaseViewForPointerUp();
                }
                this.cancel();
                return;
            }
            case 3: 
        }
        if (this.mDragState == 1) {
            this.dispatchViewReleased(0.0f, 0.0f);
        }
        this.cancel();
    }

    void setDragState(int n2) {
        this.mParentView.removeCallbacks(this.mSetIdleRunnable);
        if (this.mDragState != n2) {
            this.mDragState = n2;
            this.mCallback.onViewDragStateChanged(n2);
            if (this.mDragState == 0) {
                this.mCapturedView = null;
            }
        }
    }

    public void setEdgeTrackingEnabled(int n2) {
        this.mTrackingEdges = n2;
    }

    public void setMinVelocity(float f2) {
        this.mMinVelocity = f2;
    }

    public boolean settleCapturedViewAt(int n2, int n3) {
        if (!this.mReleaseInProgress) {
            throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
        }
        return this.forceSettleCapturedViewAt(n2, n3, (int)VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), (int)VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId));
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean shouldInterceptTouchEvent(MotionEvent motionEvent) {
        int n2 = MotionEventCompat.getActionMasked(motionEvent);
        int n3 = MotionEventCompat.getActionIndex(motionEvent);
        if (n2 == 0) {
            this.cancel();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        switch (n2) {
            case 0: {
                float f2 = motionEvent.getX();
                float f3 = motionEvent.getY();
                n3 = motionEvent.getPointerId(0);
                this.saveInitialMotion(f2, f3, n3);
                motionEvent = this.findTopChildUnder((int)f2, (int)f3);
                if (motionEvent == this.mCapturedView && this.mDragState == 2) {
                    this.tryCaptureViewForDrag((View)motionEvent, n3);
                }
                if ((this.mTrackingEdges & (n2 = this.mInitialEdgesTouched[n3])) == 0) break;
                this.mCallback.onEdgeTouched(this.mTrackingEdges & n2, n3);
                break;
            }
            case 5: {
                n2 = motionEvent.getPointerId(n3);
                float f4 = motionEvent.getX(n3);
                float f5 = motionEvent.getY(n3);
                this.saveInitialMotion(f4, f5, n2);
                if (this.mDragState == 0) {
                    n3 = this.mInitialEdgesTouched[n2];
                    if ((this.mTrackingEdges & n3) == 0) break;
                    this.mCallback.onEdgeTouched(this.mTrackingEdges & n3, n2);
                    break;
                }
                if (this.mDragState != 2 || (motionEvent = this.findTopChildUnder((int)f4, (int)f5)) != this.mCapturedView) break;
                this.tryCaptureViewForDrag((View)motionEvent, n2);
                break;
            }
            case 2: {
                if (this.mInitialMotionX == null || this.mInitialMotionY == null) break;
                int n4 = motionEvent.getPointerCount();
                for (n3 = 0; n3 < n4; ++n3) {
                    int n5 = motionEvent.getPointerId(n3);
                    if (!this.isValidPointerForActionMove(n5)) continue;
                    float f6 = motionEvent.getX(n3);
                    float f7 = motionEvent.getY(n3);
                    float f8 = f6 - this.mInitialMotionX[n5];
                    float f9 = f7 - this.mInitialMotionY[n5];
                    View view = this.findTopChildUnder((int)f6, (int)f7);
                    n2 = view != null && this.checkTouchSlop(view, f8, f9) ? 1 : 0;
                    if (n2 != 0) {
                        int n6 = view.getLeft();
                        int n7 = (int)f8;
                        n7 = this.mCallback.clampViewPositionHorizontal(view, n6 + n7, (int)f8);
                        int n8 = view.getTop();
                        int n9 = (int)f9;
                        n9 = this.mCallback.clampViewPositionVertical(view, n8 + n9, (int)f9);
                        int n10 = this.mCallback.getViewHorizontalDragRange(view);
                        int n11 = this.mCallback.getViewVerticalDragRange(view);
                        if ((n10 == 0 || n10 > 0 && n7 == n6) && (n11 == 0 || n11 > 0 && n9 == n8)) break;
                    }
                    this.reportNewEdgeDrags(f8, f9, n5);
                    if (this.mDragState == 1 || n2 != 0 && this.tryCaptureViewForDrag(view, n5)) break;
                }
                this.saveLastMotion(motionEvent);
                break;
            }
            case 6: {
                this.clearMotionHistory(motionEvent.getPointerId(n3));
                break;
            }
            case 1: 
            case 3: {
                this.cancel();
            }
        }
        if (this.mDragState == 1) {
            return true;
        }
        return false;
    }

    public boolean smoothSlideViewTo(View view, int n2, int n3) {
        this.mCapturedView = view;
        this.mActivePointerId = -1;
        boolean bl = this.forceSettleCapturedViewAt(n2, n3, 0, 0);
        if (!bl && this.mDragState == 0 && this.mCapturedView != null) {
            this.mCapturedView = null;
        }
        return bl;
    }

    boolean tryCaptureViewForDrag(View view, int n2) {
        if (view == this.mCapturedView && this.mActivePointerId == n2) {
            return true;
        }
        if (view != null && this.mCallback.tryCaptureView(view, n2)) {
            this.mActivePointerId = n2;
            this.captureChildView(view, n2);
            return true;
        }
        return false;
    }

    public static abstract class Callback {
        public int clampViewPositionHorizontal(View view, int n2, int n3) {
            return 0;
        }

        public int clampViewPositionVertical(View view, int n2, int n3) {
            return 0;
        }

        public int getOrderedChildIndex(int n2) {
            return n2;
        }

        public int getViewHorizontalDragRange(View view) {
            return 0;
        }

        public int getViewVerticalDragRange(View view) {
            return 0;
        }

        public void onEdgeDragStarted(int n2, int n3) {
        }

        public boolean onEdgeLock(int n2) {
            return false;
        }

        public void onEdgeTouched(int n2, int n3) {
        }

        public void onViewCaptured(View view, int n2) {
        }

        public void onViewDragStateChanged(int n2) {
        }

        public void onViewPositionChanged(View view, int n2, int n3, int n4, int n5) {
        }

        public void onViewReleased(View view, float f2, float f3) {
        }

        public abstract boolean tryCaptureView(View var1, int var2);
    }

}

