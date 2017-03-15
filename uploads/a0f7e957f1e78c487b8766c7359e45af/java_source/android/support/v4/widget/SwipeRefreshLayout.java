/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.content.res.TypedArray
 *  android.graphics.Canvas
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.util.Log
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.view.ViewConfiguration
 *  android.view.ViewGroup
 *  android.view.ViewParent
 *  android.view.animation.AccelerateInterpolator
 *  android.view.animation.Animation
 *  android.view.animation.Animation$AnimationListener
 *  android.view.animation.DecelerateInterpolator
 *  android.view.animation.Interpolator
 *  android.view.animation.Transformation
 *  android.widget.AbsListView
 */
package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.SwipeProgressBar;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;
import android.widget.AbsListView;

public class SwipeRefreshLayout
extends ViewGroup {
    private static final float ACCELERATE_INTERPOLATION_FACTOR = 1.5f;
    private static final float DECELERATE_INTERPOLATION_FACTOR = 2.0f;
    private static final int INVALID_POINTER = -1;
    private static final int[] LAYOUT_ATTRS;
    private static final String LOG_TAG;
    private static final float MAX_SWIPE_DISTANCE_FACTOR = 0.6f;
    private static final float PROGRESS_BAR_HEIGHT = 4.0f;
    private static final int REFRESH_TRIGGER_DISTANCE = 120;
    private static final long RETURN_TO_ORIGINAL_POSITION_TIMEOUT = 300;
    private final AccelerateInterpolator mAccelerateInterpolator;
    private int mActivePointerId = -1;
    private final Animation mAnimateToStartPosition;
    private final Runnable mCancel;
    private float mCurrPercentage = 0.0f;
    private int mCurrentTargetOffsetTop;
    private final DecelerateInterpolator mDecelerateInterpolator;
    private float mDistanceToTriggerSync = -1.0f;
    private int mFrom;
    private float mFromPercentage = 0.0f;
    private float mInitialMotionY;
    private boolean mIsBeingDragged;
    private float mLastMotionY;
    private OnRefreshListener mListener;
    private int mMediumAnimationDuration;
    private int mOriginalOffsetTop;
    private SwipeProgressBar mProgressBar;
    private int mProgressBarHeight;
    private boolean mRefreshing = false;
    private final Runnable mReturnToStartPosition;
    private final Animation.AnimationListener mReturnToStartPositionListener;
    private boolean mReturningToStart;
    private final Animation.AnimationListener mShrinkAnimationListener;
    private Animation mShrinkTrigger;
    private View mTarget;
    private int mTouchSlop;

    static {
        LOG_TAG = SwipeRefreshLayout.class.getSimpleName();
        LAYOUT_ATTRS = new int[]{16842766};
    }

    public SwipeRefreshLayout(Context context) {
        this(context, null);
    }

    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAnimateToStartPosition = new Animation(){

            public void applyTransformation(float f2, Transformation transformation) {
                int n2 = 0;
                if (SwipeRefreshLayout.this.mFrom != SwipeRefreshLayout.this.mOriginalOffsetTop) {
                    n2 = SwipeRefreshLayout.this.mFrom + (int)((float)(SwipeRefreshLayout.this.mOriginalOffsetTop - SwipeRefreshLayout.this.mFrom) * f2);
                }
                int n3 = n2 - SwipeRefreshLayout.this.mTarget.getTop();
                int n4 = SwipeRefreshLayout.this.mTarget.getTop();
                n2 = n3;
                if (n3 + n4 < 0) {
                    n2 = 0 - n4;
                }
                SwipeRefreshLayout.this.setTargetOffsetTopAndBottom(n2);
            }
        };
        this.mShrinkTrigger = new Animation(){

            public void applyTransformation(float f2, Transformation transformation) {
                float f3 = SwipeRefreshLayout.this.mFromPercentage;
                float f4 = SwipeRefreshLayout.this.mFromPercentage;
                SwipeRefreshLayout.this.mProgressBar.setTriggerPercentage(f3 + (0.0f - f4) * f2);
            }
        };
        this.mReturnToStartPositionListener = new BaseAnimationListener(){

            @Override
            public void onAnimationEnd(Animation animation) {
                SwipeRefreshLayout.this.mCurrentTargetOffsetTop = 0;
            }
        };
        this.mShrinkAnimationListener = new BaseAnimationListener(){

            @Override
            public void onAnimationEnd(Animation animation) {
                SwipeRefreshLayout.this.mCurrPercentage = 0.0f;
            }
        };
        this.mReturnToStartPosition = new Runnable(){

            @Override
            public void run() {
                SwipeRefreshLayout.this.mReturningToStart = true;
                SwipeRefreshLayout.this.animateOffsetToStartPosition(SwipeRefreshLayout.this.mCurrentTargetOffsetTop + SwipeRefreshLayout.this.getPaddingTop(), SwipeRefreshLayout.this.mReturnToStartPositionListener);
            }
        };
        this.mCancel = new Runnable(){

            @Override
            public void run() {
                SwipeRefreshLayout.this.mReturningToStart = true;
                if (SwipeRefreshLayout.this.mProgressBar != null) {
                    SwipeRefreshLayout.this.mFromPercentage = SwipeRefreshLayout.this.mCurrPercentage;
                    SwipeRefreshLayout.this.mShrinkTrigger.setDuration((long)SwipeRefreshLayout.this.mMediumAnimationDuration);
                    SwipeRefreshLayout.this.mShrinkTrigger.setAnimationListener(SwipeRefreshLayout.this.mShrinkAnimationListener);
                    SwipeRefreshLayout.this.mShrinkTrigger.reset();
                    SwipeRefreshLayout.this.mShrinkTrigger.setInterpolator((Interpolator)SwipeRefreshLayout.this.mDecelerateInterpolator);
                    SwipeRefreshLayout.this.startAnimation(SwipeRefreshLayout.this.mShrinkTrigger);
                }
                SwipeRefreshLayout.this.animateOffsetToStartPosition(SwipeRefreshLayout.this.mCurrentTargetOffsetTop + SwipeRefreshLayout.this.getPaddingTop(), SwipeRefreshLayout.this.mReturnToStartPositionListener);
            }
        };
        this.mTouchSlop = ViewConfiguration.get((Context)context).getScaledTouchSlop();
        this.mMediumAnimationDuration = this.getResources().getInteger(17694721);
        this.setWillNotDraw(false);
        this.mProgressBar = new SwipeProgressBar((View)this);
        this.mProgressBarHeight = (int)(this.getResources().getDisplayMetrics().density * 4.0f);
        this.mDecelerateInterpolator = new DecelerateInterpolator(2.0f);
        this.mAccelerateInterpolator = new AccelerateInterpolator(1.5f);
        context = context.obtainStyledAttributes(attributeSet, LAYOUT_ATTRS);
        this.setEnabled(context.getBoolean(0, true));
        context.recycle();
    }

    private void animateOffsetToStartPosition(int n2, Animation.AnimationListener animationListener) {
        this.mFrom = n2;
        this.mAnimateToStartPosition.reset();
        this.mAnimateToStartPosition.setDuration((long)this.mMediumAnimationDuration);
        this.mAnimateToStartPosition.setAnimationListener(animationListener);
        this.mAnimateToStartPosition.setInterpolator((Interpolator)this.mDecelerateInterpolator);
        this.mTarget.startAnimation(this.mAnimateToStartPosition);
    }

    private void ensureTarget() {
        if (this.mTarget == null) {
            if (this.getChildCount() > 1 && !this.isInEditMode()) {
                throw new IllegalStateException("SwipeRefreshLayout can host only one direct child");
            }
            this.mTarget = this.getChildAt(0);
            this.mOriginalOffsetTop = this.mTarget.getTop() + this.getPaddingTop();
        }
        if (this.mDistanceToTriggerSync == -1.0f && this.getParent() != null && ((View)this.getParent()).getHeight() > 0) {
            DisplayMetrics displayMetrics = this.getResources().getDisplayMetrics();
            this.mDistanceToTriggerSync = (int)Math.min((float)((View)this.getParent()).getHeight() * 0.6f, 120.0f * displayMetrics.density);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int n2 = MotionEventCompat.getActionIndex(motionEvent);
        if (MotionEventCompat.getPointerId(motionEvent, n2) == this.mActivePointerId) {
            n2 = n2 == 0 ? 1 : 0;
            this.mLastMotionY = MotionEventCompat.getY(motionEvent, n2);
            this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, n2);
        }
    }

    private void setTargetOffsetTopAndBottom(int n2) {
        this.mTarget.offsetTopAndBottom(n2);
        this.mCurrentTargetOffsetTop = this.mTarget.getTop();
    }

    private void setTriggerPercentage(float f2) {
        if (f2 == 0.0f) {
            this.mCurrPercentage = 0.0f;
            return;
        }
        this.mCurrPercentage = f2;
        this.mProgressBar.setTriggerPercentage(f2);
    }

    private void startRefresh() {
        this.removeCallbacks(this.mCancel);
        this.mReturnToStartPosition.run();
        this.setRefreshing(true);
        this.mListener.onRefresh();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateContentOffsetTop(int n2) {
        int n3;
        int n4 = this.mTarget.getTop();
        if ((float)n2 > this.mDistanceToTriggerSync) {
            n3 = (int)this.mDistanceToTriggerSync;
        } else {
            n3 = n2;
            if (n2 < 0) {
                n3 = 0;
            }
        }
        this.setTargetOffsetTopAndBottom(n3 - n4);
    }

    private void updatePositionTimeout() {
        this.removeCallbacks(this.mCancel);
        this.postDelayed(this.mCancel, 300);
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean canChildScrollUp() {
        if (Build.VERSION.SDK_INT >= 14) {
            return ViewCompat.canScrollVertically(this.mTarget, -1);
        }
        if (this.mTarget instanceof AbsListView) {
            AbsListView absListView = (AbsListView)this.mTarget;
            if (absListView.getChildCount() > 0 && (absListView.getFirstVisiblePosition() > 0 || absListView.getChildAt(0).getTop() < absListView.getPaddingTop())) return true;
            return false;
        }
        if (this.mTarget.getScrollY() <= 0) return false;
        return true;
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        this.mProgressBar.draw(canvas);
    }

    public boolean isRefreshing() {
        return this.mRefreshing;
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.removeCallbacks(this.mCancel);
        this.removeCallbacks(this.mReturnToStartPosition);
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.removeCallbacks(this.mReturnToStartPosition);
        this.removeCallbacks(this.mCancel);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean onInterceptTouchEvent(MotionEvent var1_1) {
        this.ensureTarget();
        var3_2 = MotionEventCompat.getActionMasked(var1_1);
        if (this.mReturningToStart && var3_2 == 0) {
            this.mReturningToStart = false;
        }
        if (this.isEnabled() == false) return false;
        if (this.mReturningToStart != false) return false;
        if (this.canChildScrollUp()) {
            return false;
        }
        switch (var3_2) {
            case 0: {
                this.mInitialMotionY = var2_3 = var1_1.getY();
                this.mLastMotionY = var2_3;
                this.mActivePointerId = MotionEventCompat.getPointerId(var1_1, 0);
                this.mIsBeingDragged = false;
                this.mCurrPercentage = 0.0f;
                ** break;
            }
            case 2: {
                if (this.mActivePointerId == -1) {
                    Log.e((String)SwipeRefreshLayout.LOG_TAG, (String)"Got ACTION_MOVE event but don't have an active pointer id.");
                    return false;
                }
                var3_2 = MotionEventCompat.findPointerIndex(var1_1, this.mActivePointerId);
                if (var3_2 < 0) {
                    Log.e((String)SwipeRefreshLayout.LOG_TAG, (String)"Got ACTION_MOVE event but have an invalid active pointer id.");
                    return false;
                }
                var2_4 = MotionEventCompat.getY(var1_1, var3_2);
                if (var2_4 - this.mInitialMotionY <= (float)this.mTouchSlop) return this.mIsBeingDragged;
                this.mLastMotionY = var2_4;
                this.mIsBeingDragged = true;
                ** break;
            }
            case 6: {
                this.onSecondaryPointerUp(var1_1);
            }
lbl32: // 4 sources:
            default: {
                return this.mIsBeingDragged;
            }
            case 1: 
            case 3: 
        }
        this.mIsBeingDragged = false;
        this.mCurrPercentage = 0.0f;
        this.mActivePointerId = -1;
        return this.mIsBeingDragged;
    }

    protected void onLayout(boolean bl, int n2, int n3, int n4, int n5) {
        n2 = this.getMeasuredWidth();
        n3 = this.getMeasuredHeight();
        this.mProgressBar.setBounds(0, 0, n2, this.mProgressBarHeight);
        if (this.getChildCount() == 0) {
            return;
        }
        View view = this.getChildAt(0);
        n4 = this.getPaddingLeft();
        n5 = this.mCurrentTargetOffsetTop + this.getPaddingTop();
        view.layout(n4, n5, n4 + (n2 - this.getPaddingLeft() - this.getPaddingRight()), n5 + (n3 - this.getPaddingTop() - this.getPaddingBottom()));
    }

    public void onMeasure(int n2, int n3) {
        super.onMeasure(n2, n3);
        if (this.getChildCount() > 1 && !this.isInEditMode()) {
            throw new IllegalStateException("SwipeRefreshLayout can host only one direct child");
        }
        if (this.getChildCount() > 0) {
            this.getChildAt(0).measure(View.MeasureSpec.makeMeasureSpec((int)(this.getMeasuredWidth() - this.getPaddingLeft() - this.getPaddingRight()), (int)1073741824), View.MeasureSpec.makeMeasureSpec((int)(this.getMeasuredHeight() - this.getPaddingTop() - this.getPaddingBottom()), (int)1073741824));
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean onTouchEvent(MotionEvent var1_1) {
        var4_2 = MotionEventCompat.getActionMasked(var1_1);
        if (this.mReturningToStart && var4_2 == 0) {
            this.mReturningToStart = false;
        }
        if (this.isEnabled() == false) return false;
        if (this.mReturningToStart != false) return false;
        if (this.canChildScrollUp()) {
            return false;
        }
        switch (var4_2) {
            case 0: {
                this.mInitialMotionY = var2_3 = var1_1.getY();
                this.mLastMotionY = var2_3;
                this.mActivePointerId = MotionEventCompat.getPointerId(var1_1, 0);
                this.mIsBeingDragged = false;
                this.mCurrPercentage = 0.0f;
                ** break;
            }
            case 2: {
                var4_2 = MotionEventCompat.findPointerIndex(var1_1, this.mActivePointerId);
                if (var4_2 < 0) {
                    Log.e((String)SwipeRefreshLayout.LOG_TAG, (String)"Got ACTION_MOVE event but have an invalid active pointer id.");
                    return false;
                }
                var2_4 = MotionEventCompat.getY(var1_1, var4_2);
                var3_5 = var2_4 - this.mInitialMotionY;
                if (!this.mIsBeingDragged && var3_5 > (float)this.mTouchSlop) {
                    this.mIsBeingDragged = true;
                }
                if (this.mIsBeingDragged == false) return true;
                if (var3_5 > this.mDistanceToTriggerSync) {
                    this.startRefresh();
                } else {
                    this.setTriggerPercentage(this.mAccelerateInterpolator.getInterpolation(var3_5 / this.mDistanceToTriggerSync));
                    this.updateContentOffsetTop((int)var3_5);
                    if (this.mLastMotionY > var2_4 && this.mTarget.getTop() == this.getPaddingTop()) {
                        this.removeCallbacks(this.mCancel);
                    } else {
                        this.updatePositionTimeout();
                    }
                }
                this.mLastMotionY = var2_4;
                ** break;
            }
            case 5: {
                var4_2 = MotionEventCompat.getActionIndex(var1_1);
                this.mLastMotionY = MotionEventCompat.getY(var1_1, var4_2);
                this.mActivePointerId = MotionEventCompat.getPointerId(var1_1, var4_2);
                ** break;
            }
            case 6: {
                this.onSecondaryPointerUp(var1_1);
            }
lbl44: // 5 sources:
            default: {
                return true;
            }
            case 1: 
            case 3: 
        }
        this.mIsBeingDragged = false;
        this.mCurrPercentage = 0.0f;
        this.mActivePointerId = -1;
        return false;
    }

    public void requestDisallowInterceptTouchEvent(boolean bl) {
    }

    @Deprecated
    public void setColorScheme(int n2, int n3, int n4, int n5) {
        this.setColorSchemeResources(n2, n3, n4, n5);
    }

    public void setColorSchemeColors(int n2, int n3, int n4, int n5) {
        this.ensureTarget();
        this.mProgressBar.setColorScheme(n2, n3, n4, n5);
    }

    public void setColorSchemeResources(int n2, int n3, int n4, int n5) {
        Resources resources = this.getResources();
        this.setColorSchemeColors(resources.getColor(n2), resources.getColor(n3), resources.getColor(n4), resources.getColor(n5));
    }

    public void setOnRefreshListener(OnRefreshListener onRefreshListener) {
        this.mListener = onRefreshListener;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void setRefreshing(boolean bl) {
        if (this.mRefreshing == bl) return;
        this.ensureTarget();
        this.mCurrPercentage = 0.0f;
        this.mRefreshing = bl;
        if (this.mRefreshing) {
            this.mProgressBar.start();
            return;
        }
        this.mProgressBar.stop();
    }

    private class BaseAnimationListener
    implements Animation.AnimationListener {
        private BaseAnimationListener() {
        }

        public void onAnimationEnd(Animation animation) {
        }

        public void onAnimationRepeat(Animation animation) {
        }

        public void onAnimationStart(Animation animation) {
        }
    }

    public static interface OnRefreshListener {
        public void onRefresh();
    }

}

