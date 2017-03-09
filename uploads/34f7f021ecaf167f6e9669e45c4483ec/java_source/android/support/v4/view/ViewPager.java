/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.content.res.Resources$NotFoundException
 *  android.content.res.TypedArray
 *  android.database.DataSetObserver
 *  android.graphics.Canvas
 *  android.graphics.Rect
 *  android.graphics.drawable.Drawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.os.IBinder
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.os.SystemClock
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.util.Log
 *  android.view.FocusFinder
 *  android.view.KeyEvent
 *  android.view.MotionEvent
 *  android.view.SoundEffectConstants
 *  android.view.VelocityTracker
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.view.ViewConfiguration
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewParent
 *  android.view.accessibility.AccessibilityEvent
 *  android.view.animation.Interpolator
 *  android.widget.Scroller
 */
package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.CallSuper;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.lang.annotation.Annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class ViewPager
extends ViewGroup {
    private static final int CLOSE_ENOUGH = 2;
    private static final Comparator<ItemInfo> COMPARATOR;
    private static final boolean DEBUG = false;
    private static final int DEFAULT_GUTTER_SIZE = 16;
    private static final int DEFAULT_OFFSCREEN_PAGES = 1;
    private static final int DRAW_ORDER_DEFAULT = 0;
    private static final int DRAW_ORDER_FORWARD = 1;
    private static final int DRAW_ORDER_REVERSE = 2;
    private static final int INVALID_POINTER = -1;
    static final int[] LAYOUT_ATTRS;
    private static final int MAX_SETTLE_DURATION = 600;
    private static final int MIN_DISTANCE_FOR_FLING = 25;
    private static final int MIN_FLING_VELOCITY = 400;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    private static final String TAG = "ViewPager";
    private static final boolean USE_CACHE = false;
    private static final Interpolator sInterpolator;
    private static final ViewPositionComparator sPositionComparator;
    private int mActivePointerId = -1;
    PagerAdapter mAdapter;
    private List<OnAdapterChangeListener> mAdapterChangeListeners;
    private int mBottomPageBounds;
    private boolean mCalledSuper;
    private int mChildHeightMeasureSpec;
    private int mChildWidthMeasureSpec;
    private int mCloseEnough;
    int mCurItem;
    private int mDecorChildCount;
    private int mDefaultGutterSize;
    private int mDrawingOrder;
    private ArrayList<View> mDrawingOrderedChildren;
    private final Runnable mEndScrollRunnable;
    private int mExpectedAdapterCount;
    private long mFakeDragBeginTime;
    private boolean mFakeDragging;
    private boolean mFirstLayout = true;
    private float mFirstOffset = -3.4028235E38f;
    private int mFlingDistance;
    private int mGutterSize;
    private boolean mInLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private OnPageChangeListener mInternalPageChangeListener;
    private boolean mIsBeingDragged;
    private boolean mIsScrollStarted;
    private boolean mIsUnableToDrag;
    private final ArrayList<ItemInfo> mItems = new ArrayList();
    private float mLastMotionX;
    private float mLastMotionY;
    private float mLastOffset = Float.MAX_VALUE;
    private EdgeEffectCompat mLeftEdge;
    private Drawable mMarginDrawable;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private boolean mNeedCalculatePageOffsets = false;
    private PagerObserver mObserver;
    private int mOffscreenPageLimit = 1;
    private OnPageChangeListener mOnPageChangeListener;
    private List<OnPageChangeListener> mOnPageChangeListeners;
    private int mPageMargin;
    private PageTransformer mPageTransformer;
    private int mPageTransformerLayerType;
    private boolean mPopulatePending;
    private Parcelable mRestoredAdapterState = null;
    private ClassLoader mRestoredClassLoader = null;
    private int mRestoredCurItem = -1;
    private EdgeEffectCompat mRightEdge;
    private int mScrollState;
    private Scroller mScroller;
    private boolean mScrollingCacheEnabled;
    private Method mSetChildrenDrawingOrderEnabled;
    private final ItemInfo mTempItem = new ItemInfo();
    private final Rect mTempRect = new Rect();
    private int mTopPageBounds;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;

    static {
        LAYOUT_ATTRS = new int[]{16842931};
        COMPARATOR = new Comparator<ItemInfo>(){

            @Override
            public int compare(ItemInfo itemInfo, ItemInfo itemInfo2) {
                return itemInfo.position - itemInfo2.position;
            }
        };
        sInterpolator = new Interpolator(){

            public float getInterpolation(float f2) {
                return f2 * f2 * f2 * f2 * (f2 -= 1.0f) + 1.0f;
            }
        };
        sPositionComparator = new ViewPositionComparator();
    }

    public ViewPager(Context context) {
        super(context);
        this.mEndScrollRunnable = new Runnable(){

            @Override
            public void run() {
                ViewPager.this.setScrollState(0);
                ViewPager.this.populate();
            }
        };
        this.mScrollState = 0;
        this.initViewPager();
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mEndScrollRunnable = new ;
        this.mScrollState = 0;
        this.initViewPager();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void calculatePageOffsets(ItemInfo var1_1, int var2_2, ItemInfo var3_3) {
        var10_4 = this.mAdapter.getCount();
        var7_5 = this.getClientWidth();
        var5_6 = var7_5 > 0 ? (float)this.mPageMargin / (float)var7_5 : 0.0f;
        if (var3_3 == null) ** GOTO lbl54
        var7_5 = var3_3.position;
        if (var7_5 >= var1_1.position) ** GOTO lbl11
        var8_7 = 0;
        var4_8 = var3_3.offset + var3_3.widthFactor + var5_6;
        ++var7_5;
        ** GOTO lbl16
lbl11: // 1 sources:
        if (var7_5 <= var1_1.position) ** GOTO lbl54
        var8_7 = this.mItems.size() - 1;
        var4_8 = var3_3.offset;
        --var7_5;
        ** GOTO lbl36
lbl16: // 2 sources:
        while (var7_5 <= var1_1.position && var8_7 < this.mItems.size()) {
            var3_3 = this.mItems.get(var8_7);
            do {
                var6_9 = var4_8;
                var9_10 = var7_5;
                if (var7_5 <= var3_3.position) break;
                var6_9 = var4_8;
                var9_10 = var7_5;
                if (var8_7 >= this.mItems.size() - 1) break;
                var3_3 = this.mItems.get(++var8_7);
            } while (true);
            while (var9_10 < var3_3.position) {
                var6_9 += this.mAdapter.getPageWidth(var9_10) + var5_6;
                ++var9_10;
            }
            var3_3.offset = var6_9;
            var4_8 = var6_9 + (var3_3.widthFactor + var5_6);
            var7_5 = var9_10 + 1;
        }
        ** GOTO lbl54
lbl36: // 2 sources:
        while (var7_5 >= var1_1.position && var8_7 >= 0) {
            var3_3 = this.mItems.get(var8_7);
            do {
                var6_9 = var4_8;
                var9_10 = var7_5;
                if (var7_5 >= var3_3.position) break;
                var6_9 = var4_8;
                var9_10 = var7_5;
                if (var8_7 <= 0) break;
                var3_3 = this.mItems.get(--var8_7);
            } while (true);
            while (var9_10 > var3_3.position) {
                var6_9 -= this.mAdapter.getPageWidth(var9_10) + var5_6;
                --var9_10;
            }
            var3_3.offset = var4_8 = var6_9 - (var3_3.widthFactor + var5_6);
            var7_5 = var9_10 - 1;
        }
lbl54: // 4 sources:
        var9_10 = this.mItems.size();
        var6_9 = var1_1.offset;
        var7_5 = var1_1.position - 1;
        var4_8 = var1_1.position == 0 ? var1_1.offset : -3.4028235E38f;
        this.mFirstOffset = var4_8;
        var4_8 = var1_1.position == var10_4 - 1 ? var1_1.offset + var1_1.widthFactor - 1.0f : Float.MAX_VALUE;
        this.mLastOffset = var4_8;
        var4_8 = var6_9;
        for (var8_7 = var2_2 - 1; var8_7 >= 0; --var8_7, --var7_5) {
            var3_3 = this.mItems.get(var8_7);
            while (var7_5 > var3_3.position) {
                var4_8 -= this.mAdapter.getPageWidth(var7_5) + var5_6;
                --var7_5;
            }
            var3_3.offset = var4_8 -= var3_3.widthFactor + var5_6;
            if (var3_3.position != 0) continue;
            this.mFirstOffset = var4_8;
        }
        var4_8 = var1_1.offset + var1_1.widthFactor + var5_6;
        var7_5 = var1_1.position + 1;
        var8_7 = var2_2 + 1;
        var2_2 = var7_5;
        var7_5 = var8_7;
        do {
            if (var7_5 >= var9_10) {
                this.mNeedCalculatePageOffsets = false;
                return;
            }
            var1_1 = this.mItems.get(var7_5);
            while (var2_2 < var1_1.position) {
                var4_8 += this.mAdapter.getPageWidth(var2_2) + var5_6;
                ++var2_2;
            }
            if (var1_1.position == var10_4 - 1) {
                this.mLastOffset = var1_1.widthFactor + var4_8 - 1.0f;
            }
            var1_1.offset = var4_8;
            var4_8 += var1_1.widthFactor + var5_6;
            ++var7_5;
            ++var2_2;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void completeScroll(boolean bl) {
        int n2;
        int n3 = 1;
        int n4 = this.mScrollState == 2 ? 1 : 0;
        if (n4 != 0) {
            this.setScrollingCacheEnabled(false);
            if (this.mScroller.isFinished()) {
                n3 = 0;
            }
            if (n3 != 0) {
                this.mScroller.abortAnimation();
                n3 = this.getScrollX();
                n2 = this.getScrollY();
                int n5 = this.mScroller.getCurrX();
                int n6 = this.mScroller.getCurrY();
                if (n3 != n5 || n2 != n6) {
                    this.scrollTo(n5, n6);
                    if (n5 != n3) {
                        this.pageScrolled(n5);
                    }
                }
            }
        }
        this.mPopulatePending = false;
        n2 = 0;
        n3 = n4;
        for (n4 = n2; n4 < this.mItems.size(); ++n4) {
            ItemInfo itemInfo = this.mItems.get(n4);
            if (!itemInfo.scrolling) continue;
            n3 = 1;
            itemInfo.scrolling = false;
        }
        if (n3 != 0) {
            if (!bl) {
                this.mEndScrollRunnable.run();
                return;
            }
            ViewCompat.postOnAnimation((View)this, this.mEndScrollRunnable);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private int determineTargetPage(int n2, float f2, int n3, int n4) {
        if (Math.abs(n4) > this.mFlingDistance && Math.abs(n3) > this.mMinimumVelocity) {
            if (n3 <= 0) {
                ++n2;
            }
        } else {
            float f3 = n2 >= this.mCurItem ? 0.4f : 0.6f;
            n2 += (int)(f2 + f3);
        }
        n3 = n2;
        if (this.mItems.size() <= 0) return n3;
        ItemInfo itemInfo = this.mItems.get(0);
        ItemInfo itemInfo2 = this.mItems.get(this.mItems.size() - 1);
        return Math.max(itemInfo.position, Math.min(n2, itemInfo2.position));
    }

    private void dispatchOnPageScrolled(int n2, float f2, int n3) {
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.onPageScrolled(n2, f2, n3);
        }
        if (this.mOnPageChangeListeners != null) {
            int n4 = this.mOnPageChangeListeners.size();
            for (int i2 = 0; i2 < n4; ++i2) {
                OnPageChangeListener onPageChangeListener = this.mOnPageChangeListeners.get(i2);
                if (onPageChangeListener == null) continue;
                onPageChangeListener.onPageScrolled(n2, f2, n3);
            }
        }
        if (this.mInternalPageChangeListener != null) {
            this.mInternalPageChangeListener.onPageScrolled(n2, f2, n3);
        }
    }

    private void dispatchOnPageSelected(int n2) {
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.onPageSelected(n2);
        }
        if (this.mOnPageChangeListeners != null) {
            int n3 = this.mOnPageChangeListeners.size();
            for (int i2 = 0; i2 < n3; ++i2) {
                OnPageChangeListener onPageChangeListener = this.mOnPageChangeListeners.get(i2);
                if (onPageChangeListener == null) continue;
                onPageChangeListener.onPageSelected(n2);
            }
        }
        if (this.mInternalPageChangeListener != null) {
            this.mInternalPageChangeListener.onPageSelected(n2);
        }
    }

    private void dispatchOnScrollStateChanged(int n2) {
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.onPageScrollStateChanged(n2);
        }
        if (this.mOnPageChangeListeners != null) {
            int n3 = this.mOnPageChangeListeners.size();
            for (int i2 = 0; i2 < n3; ++i2) {
                OnPageChangeListener onPageChangeListener = this.mOnPageChangeListeners.get(i2);
                if (onPageChangeListener == null) continue;
                onPageChangeListener.onPageScrollStateChanged(n2);
            }
        }
        if (this.mInternalPageChangeListener != null) {
            this.mInternalPageChangeListener.onPageScrollStateChanged(n2);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void enableLayers(boolean bl) {
        int n2 = this.getChildCount();
        int n3 = 0;
        while (n3 < n2) {
            int n4 = bl ? this.mPageTransformerLayerType : 0;
            ViewCompat.setLayerType(this.getChildAt(n3), n4, null);
            ++n3;
        }
    }

    private void endDrag() {
        this.mIsBeingDragged = false;
        this.mIsUnableToDrag = false;
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private Rect getChildRectInPagerCoordinates(Rect rect, View view) {
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = new Rect();
        }
        if (view == null) {
            rect2.set(0, 0, 0, 0);
            return rect2;
        } else {
            rect2.left = view.getLeft();
            rect2.right = view.getRight();
            rect2.top = view.getTop();
            rect2.bottom = view.getBottom();
            for (rect = view.getParent(); rect instanceof ViewGroup && rect != this; rect2.left += rect.getLeft(), rect2.right += rect.getRight(), rect2.top += rect.getTop(), rect2.bottom += rect.getBottom(), rect = rect.getParent()) {
                rect = (ViewGroup)rect;
            }
        }
        return rect2;
    }

    private int getClientWidth() {
        return this.getMeasuredWidth() - this.getPaddingLeft() - this.getPaddingRight();
    }

    /*
     * Enabled aggressive block sorting
     */
    private ItemInfo infoForCurrentScrollPosition() {
        float f2 = 0.0f;
        int n2 = this.getClientWidth();
        float f3 = n2 > 0 ? (float)this.getScrollX() / (float)n2 : 0.0f;
        if (n2 > 0) {
            f2 = (float)this.mPageMargin / (float)n2;
        }
        int n3 = -1;
        float f4 = 0.0f;
        float f5 = 0.0f;
        boolean bl = true;
        ItemInfo itemInfo = null;
        n2 = 0;
        do {
            ItemInfo itemInfo2 = itemInfo;
            if (n2 >= this.mItems.size()) return itemInfo2;
            itemInfo2 = this.mItems.get(n2);
            int n4 = n2;
            ItemInfo itemInfo3 = itemInfo2;
            if (!bl) {
                n4 = n2;
                itemInfo3 = itemInfo2;
                if (itemInfo2.position != n3 + 1) {
                    itemInfo3 = this.mTempItem;
                    itemInfo3.offset = f4 + f5 + f2;
                    itemInfo3.position = n3 + 1;
                    itemInfo3.widthFactor = this.mAdapter.getPageWidth(itemInfo3.position);
                    n4 = n2 - 1;
                }
            }
            f4 = itemInfo3.offset;
            f5 = itemInfo3.widthFactor;
            if (!bl) {
                itemInfo2 = itemInfo;
                if (f3 < f4) return itemInfo2;
            }
            if (f3 < f5 + f4 + f2) return itemInfo3;
            if (n4 == this.mItems.size() - 1) {
                return itemInfo3;
            }
            bl = false;
            n3 = itemInfo3.position;
            f5 = itemInfo3.widthFactor;
            n2 = n4 + 1;
            itemInfo = itemInfo3;
        } while (true);
    }

    private static boolean isDecorView(@NonNull View view) {
        if (view.getClass().getAnnotation(DecorView.class) != null) {
            return true;
        }
        return false;
    }

    private boolean isGutterDrag(float f2, float f3) {
        if (f2 < (float)this.mGutterSize && f3 > 0.0f || f2 > (float)(this.getWidth() - this.mGutterSize) && f3 < 0.0f) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int n2 = MotionEventCompat.getActionIndex(motionEvent);
        if (motionEvent.getPointerId(n2) == this.mActivePointerId) {
            n2 = n2 == 0 ? 1 : 0;
            this.mLastMotionX = motionEvent.getX(n2);
            this.mActivePointerId = motionEvent.getPointerId(n2);
            if (this.mVelocityTracker != null) {
                this.mVelocityTracker.clear();
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private boolean pageScrolled(int n2) {
        if (this.mItems.size() != 0) {
            ItemInfo itemInfo = this.infoForCurrentScrollPosition();
            int n3 = this.getClientWidth();
            int n4 = this.mPageMargin;
            float f2 = (float)this.mPageMargin / (float)n3;
            int n5 = itemInfo.position;
            f2 = ((float)n2 / (float)n3 - itemInfo.offset) / (itemInfo.widthFactor + f2);
            n2 = (int)((float)(n3 + n4) * f2);
            this.mCalledSuper = false;
            this.onPageScrolled(n5, f2, n2);
            if (this.mCalledSuper) return true;
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        if (this.mFirstLayout) {
            return false;
        }
        this.mCalledSuper = false;
        this.onPageScrolled(0, 0.0f, 0);
        if (this.mCalledSuper) return false;
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean performDrag(float f2) {
        boolean bl = false;
        boolean bl2 = false;
        boolean bl3 = false;
        float f3 = this.mLastMotionX;
        this.mLastMotionX = f2;
        float f4 = (float)this.getScrollX() + (f3 - f2);
        int n2 = this.getClientWidth();
        f2 = (float)n2 * this.mFirstOffset;
        f3 = (float)n2 * this.mLastOffset;
        boolean bl4 = true;
        boolean bl5 = true;
        ItemInfo itemInfo = this.mItems.get(0);
        ItemInfo itemInfo2 = this.mItems.get(this.mItems.size() - 1);
        if (itemInfo.position != 0) {
            bl4 = false;
            f2 = itemInfo.offset * (float)n2;
        }
        if (itemInfo2.position != this.mAdapter.getCount() - 1) {
            bl5 = false;
            f3 = itemInfo2.offset * (float)n2;
        }
        if (f4 < f2) {
            if (bl4) {
                bl3 = this.mLeftEdge.onPull(Math.abs(f2 - f4) / (float)n2);
            }
        } else {
            bl3 = bl;
            f2 = f4;
            if (f4 > f3) {
                bl3 = bl2;
                if (bl5) {
                    bl3 = this.mRightEdge.onPull(Math.abs(f4 - f3) / (float)n2);
                }
                f2 = f3;
            }
        }
        this.mLastMotionX += f2 - (float)((int)f2);
        this.scrollTo((int)f2, this.getScrollY());
        this.pageScrolled((int)f2);
        return bl3;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void recomputeScrollPosition(int n2, int n3, int n4, int n5) {
        if (n3 > 0 && !this.mItems.isEmpty()) {
            if (!this.mScroller.isFinished()) {
                this.mScroller.setFinalX(this.getCurrentItem() * this.getClientWidth());
                return;
            }
            int n6 = this.getPaddingLeft();
            int n7 = this.getPaddingRight();
            int n8 = this.getPaddingLeft();
            int n9 = this.getPaddingRight();
            float f2 = (float)this.getScrollX() / (float)(n3 - n8 - n9 + n5);
            this.scrollTo((int)((float)(n2 - n6 - n7 + n4) * f2), this.getScrollY());
            return;
        }
        ItemInfo itemInfo = this.infoForPosition(this.mCurItem);
        float f3 = itemInfo != null ? Math.min(itemInfo.offset, this.mLastOffset) : 0.0f;
        if ((n2 = (int)((float)(n2 - this.getPaddingLeft() - this.getPaddingRight()) * f3)) == this.getScrollX()) return;
        this.completeScroll(false);
        this.scrollTo(n2, this.getScrollY());
    }

    private void removeNonDecorViews() {
        int n2 = 0;
        while (n2 < this.getChildCount()) {
            int n3 = n2;
            if (!((LayoutParams)this.getChildAt((int)n2).getLayoutParams()).isDecor) {
                this.removeViewAt(n2);
                n3 = n2 - 1;
            }
            n2 = n3 + 1;
        }
    }

    private void requestParentDisallowInterceptTouchEvent(boolean bl) {
        ViewParent viewParent = this.getParent();
        if (viewParent != null) {
            viewParent.requestDisallowInterceptTouchEvent(bl);
        }
    }

    private boolean resetTouch() {
        this.mActivePointerId = -1;
        this.endDrag();
        return this.mLeftEdge.onRelease() | this.mRightEdge.onRelease();
    }

    private void scrollToItem(int n2, boolean bl, int n3, boolean bl2) {
        ItemInfo itemInfo = this.infoForPosition(n2);
        int n4 = 0;
        if (itemInfo != null) {
            n4 = (int)((float)this.getClientWidth() * Math.max(this.mFirstOffset, Math.min(itemInfo.offset, this.mLastOffset)));
        }
        if (bl) {
            this.smoothScrollTo(n4, 0, n3);
            if (bl2) {
                this.dispatchOnPageSelected(n2);
            }
            return;
        }
        if (bl2) {
            this.dispatchOnPageSelected(n2);
        }
        this.completeScroll(false);
        this.scrollTo(n4, 0);
        this.pageScrolled(n4);
    }

    private void setScrollingCacheEnabled(boolean bl) {
        if (this.mScrollingCacheEnabled != bl) {
            this.mScrollingCacheEnabled = bl;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void sortChildDrawingOrder() {
        if (this.mDrawingOrder != 0) {
            if (this.mDrawingOrderedChildren == null) {
                this.mDrawingOrderedChildren = new ArrayList();
            } else {
                this.mDrawingOrderedChildren.clear();
            }
            int n2 = this.getChildCount();
            for (int i2 = 0; i2 < n2; ++i2) {
                View view = this.getChildAt(i2);
                this.mDrawingOrderedChildren.add(view);
            }
            Collections.sort(this.mDrawingOrderedChildren, sPositionComparator);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void addFocusables(ArrayList<View> arrayList, int n2, int n3) {
        int n4 = arrayList.size();
        int n5 = this.getDescendantFocusability();
        if (n5 != 393216) {
            for (int i2 = 0; i2 < this.getChildCount(); ++i2) {
                ItemInfo itemInfo;
                View view = this.getChildAt(i2);
                if (view.getVisibility() != 0 || (itemInfo = this.infoForChild(view)) == null || itemInfo.position != this.mCurItem) continue;
                view.addFocusables(arrayList, n2, n3);
            }
        }
        if (n5 == 262144 && n4 != arrayList.size() || !this.isFocusable() || (n3 & 1) == 1 && this.isInTouchMode() && !this.isFocusableInTouchMode() || arrayList == null) {
            return;
        }
        arrayList.add((View)this);
    }

    ItemInfo addNewItem(int n2, int n3) {
        ItemInfo itemInfo = new ItemInfo();
        itemInfo.position = n2;
        itemInfo.object = this.mAdapter.instantiateItem(this, n2);
        itemInfo.widthFactor = this.mAdapter.getPageWidth(n2);
        if (n3 < 0 || n3 >= this.mItems.size()) {
            this.mItems.add(itemInfo);
            return itemInfo;
        }
        this.mItems.add(n3, itemInfo);
        return itemInfo;
    }

    public void addOnAdapterChangeListener(@NonNull OnAdapterChangeListener onAdapterChangeListener) {
        if (this.mAdapterChangeListeners == null) {
            this.mAdapterChangeListeners = new ArrayList<OnAdapterChangeListener>();
        }
        this.mAdapterChangeListeners.add(onAdapterChangeListener);
    }

    public void addOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        if (this.mOnPageChangeListeners == null) {
            this.mOnPageChangeListeners = new ArrayList<OnPageChangeListener>();
        }
        this.mOnPageChangeListeners.add(onPageChangeListener);
    }

    public void addTouchables(ArrayList<View> arrayList) {
        for (int i2 = 0; i2 < this.getChildCount(); ++i2) {
            ItemInfo itemInfo;
            View view = this.getChildAt(i2);
            if (view.getVisibility() != 0 || (itemInfo = this.infoForChild(view)) == null || itemInfo.position != this.mCurItem) continue;
            view.addTouchables(arrayList);
        }
    }

    public void addView(View view, int n2, ViewGroup.LayoutParams layoutParams) {
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (!this.checkLayoutParams(layoutParams)) {
            layoutParams2 = this.generateLayoutParams(layoutParams);
        }
        layoutParams = (LayoutParams)layoutParams2;
        layoutParams.isDecor |= ViewPager.isDecorView(view);
        if (this.mInLayout) {
            if (layoutParams != null && layoutParams.isDecor) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            layoutParams.needsMeasure = true;
            this.addViewInLayout(view, n2, layoutParams2);
            return;
        }
        super.addView(view, n2, layoutParams2);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean arrowScroll(int var1_1) {
        var6_2 = this.findFocus();
        if (var6_2 != this) ** GOTO lbl5
        var5_3 = null;
        ** GOTO lbl-1000
lbl5: // 1 sources:
        var5_3 = var6_2;
        if (var6_2 == null) lbl-1000: // 4 sources:
        {
            do {
                var4_6 = false;
                var6_2 = FocusFinder.getInstance().findNextFocus((ViewGroup)this, var5_3, var1_1);
                if (var6_2 != null && var6_2 != var5_3) {
                    if (var1_1 == 17) {
                        var2_4 = this.getChildRectInPagerCoordinates((Rect)this.mTempRect, (View)var6_2).left;
                        var3_5 = this.getChildRectInPagerCoordinates((Rect)this.mTempRect, (View)var5_3).left;
                        var4_6 = var5_3 != null && var2_4 >= var3_5 ? this.pageLeft() : var6_2.requestFocus();
                    } else if (var1_1 == 66) {
                        var2_4 = this.getChildRectInPagerCoordinates((Rect)this.mTempRect, (View)var6_2).left;
                        var3_5 = this.getChildRectInPagerCoordinates((Rect)this.mTempRect, (View)var5_3).left;
                        var4_6 = var5_3 != null && var2_4 <= var3_5 ? this.pageRight() : var6_2.requestFocus();
                    }
                } else if (var1_1 == 17 || var1_1 == 1) {
                    var4_6 = this.pageLeft();
                } else if (var1_1 == 66 || var1_1 == 2) {
                    var4_6 = this.pageRight();
                }
                if (var4_6 == false) return var4_6;
                this.playSoundEffect(SoundEffectConstants.getContantForFocusDirection((int)var1_1));
                return var4_6;
                break;
            } while (true);
        }
        var3_5 = 0;
        var5_3 = var6_2.getParent();
        do {
            var2_4 = var3_5;
            if (!(var5_3 instanceof ViewGroup)) ** GOTO lbl36
            if (var5_3 != this) ** GOTO lbl46
            var2_4 = 1;
lbl36: // 2 sources:
            var5_3 = var6_2;
            if (var2_4 != 0) ** GOTO lbl-1000
            var7_7 = new StringBuilder();
            var7_7.append(var6_2.getClass().getSimpleName());
            var5_3 = var6_2.getParent();
            while (var5_3 instanceof ViewGroup) {
                var7_7.append(" => ").append(var5_3.getClass().getSimpleName());
                var5_3 = var5_3.getParent();
            }
            break;
lbl46: // 1 sources:
            var5_3 = var5_3.getParent();
        } while (true);
        Log.e((String)"ViewPager", (String)("arrowScroll tried to find focus based on non-child current focused view " + var7_7.toString()));
        var5_3 = null;
        ** while (true)
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean beginFakeDrag() {
        if (this.mIsBeingDragged) {
            return false;
        }
        this.mFakeDragging = true;
        this.setScrollState(1);
        this.mLastMotionX = 0.0f;
        this.mInitialMotionX = 0.0f;
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        } else {
            this.mVelocityTracker.clear();
        }
        long l2 = SystemClock.uptimeMillis();
        MotionEvent motionEvent = MotionEvent.obtain((long)l2, (long)l2, (int)0, (float)0.0f, (float)0.0f, (int)0);
        this.mVelocityTracker.addMovement(motionEvent);
        motionEvent.recycle();
        this.mFakeDragBeginTime = l2;
        return true;
    }

    protected boolean canScroll(View view, boolean bl, int n2, int n3, int n4) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup)view;
            int n5 = view.getScrollX();
            int n6 = view.getScrollY();
            for (int i2 = viewGroup.getChildCount() - 1; i2 >= 0; --i2) {
                View view2 = viewGroup.getChildAt(i2);
                if (n3 + n5 < view2.getLeft() || n3 + n5 >= view2.getRight() || n4 + n6 < view2.getTop() || n4 + n6 >= view2.getBottom() || !this.canScroll(view2, true, n2, n3 + n5 - view2.getLeft(), n4 + n6 - view2.getTop())) continue;
                return true;
            }
        }
        if (bl && ViewCompat.canScrollHorizontally(view, - n2)) {
            return true;
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean canScrollHorizontally(int n2) {
        boolean bl = true;
        boolean bl2 = true;
        if (this.mAdapter == null) {
            return false;
        }
        int n3 = this.getClientWidth();
        int n4 = this.getScrollX();
        if (n2 < 0) {
            if (n4 <= (int)((float)n3 * this.mFirstOffset)) return false;
            return bl2;
        }
        if (n2 <= 0) return false;
        if (n4 >= (int)((float)n3 * this.mLastOffset)) return false;
        return bl;
    }

    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams && super.checkLayoutParams(layoutParams)) {
            return true;
        }
        return false;
    }

    public void clearOnPageChangeListeners() {
        if (this.mOnPageChangeListeners != null) {
            this.mOnPageChangeListeners.clear();
        }
    }

    public void computeScroll() {
        this.mIsScrollStarted = true;
        if (!this.mScroller.isFinished() && this.mScroller.computeScrollOffset()) {
            int n2 = this.getScrollX();
            int n3 = this.getScrollY();
            int n4 = this.mScroller.getCurrX();
            int n5 = this.mScroller.getCurrY();
            if (n2 != n4 || n3 != n5) {
                this.scrollTo(n4, n5);
                if (!this.pageScrolled(n4)) {
                    this.mScroller.abortAnimation();
                    this.scrollTo(0, n5);
                }
            }
            ViewCompat.postInvalidateOnAnimation((View)this);
            return;
        }
        this.completeScroll(true);
    }

    /*
     * Enabled aggressive block sorting
     */
    void dataSetChanged() {
        Object object;
        int n2;
        this.mExpectedAdapterCount = n2 = this.mAdapter.getCount();
        int n3 = this.mItems.size() < this.mOffscreenPageLimit * 2 + 1 && this.mItems.size() < n2 ? 1 : 0;
        int n4 = this.mCurItem;
        int n5 = 0;
        int n6 = 0;
        while (n6 < this.mItems.size()) {
            int n7;
            int n8;
            int n9;
            object = this.mItems.get(n6);
            int n10 = this.mAdapter.getItemPosition(object.object);
            if (n10 == -1) {
                n9 = n4;
                n7 = n5;
                n8 = n6;
            } else if (n10 == -2) {
                this.mItems.remove(n6);
                n10 = n6 - 1;
                n6 = n5;
                if (n5 == 0) {
                    this.mAdapter.startUpdate(this);
                    n6 = 1;
                }
                this.mAdapter.destroyItem(this, object.position, object.object);
                n3 = 1;
                n8 = n10;
                n7 = n6;
                n9 = n4;
                if (this.mCurItem == object.position) {
                    n9 = Math.max(0, Math.min(this.mCurItem, n2 - 1));
                    n3 = 1;
                    n8 = n10;
                    n7 = n6;
                }
            } else {
                n8 = n6;
                n7 = n5;
                n9 = n4;
                if (object.position != n10) {
                    if (object.position == this.mCurItem) {
                        n4 = n10;
                    }
                    object.position = n10;
                    n3 = 1;
                    n8 = n6;
                    n7 = n5;
                    n9 = n4;
                }
            }
            n6 = n8 + 1;
            n5 = n7;
            n4 = n9;
        }
        Collections.sort(this.mItems, COMPARATOR);
        if (n3 != 0) {
            n5 = this.getChildCount();
            for (n3 = 0; n3 < n5; ++n3) {
                object = (LayoutParams)this.getChildAt(n3).getLayoutParams();
                if (object.isDecor) continue;
                object.widthFactor = 0.0f;
            }
            this.setCurrentItemInternal(n4, false, true);
            this.requestLayout();
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (super.dispatchKeyEvent(keyEvent) || this.executeKeyEvent(keyEvent)) {
            return true;
        }
        return false;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int n2 = this.getChildCount();
        for (int i2 = 0; i2 < n2; ++i2) {
            ItemInfo itemInfo;
            View view = this.getChildAt(i2);
            if (view.getVisibility() != 0 || (itemInfo = this.infoForChild(view)) == null || itemInfo.position != this.mCurItem || !view.dispatchPopulateAccessibilityEvent(accessibilityEvent)) continue;
            return true;
        }
        return false;
    }

    float distanceInfluenceForSnapDuration(float f2) {
        return (float)Math.sin((float)((double)(f2 - 0.5f) * 0.4712389167638204));
    }

    /*
     * Enabled aggressive block sorting
     */
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int n2 = 0;
        int n3 = 0;
        int n4 = this.getOverScrollMode();
        if (n4 == 0 || n4 == 1 && this.mAdapter != null && this.mAdapter.getCount() > 1) {
            if (!this.mLeftEdge.isFinished()) {
                n2 = canvas.save();
                n3 = this.getHeight() - this.getPaddingTop() - this.getPaddingBottom();
                n4 = this.getWidth();
                canvas.rotate(270.0f);
                canvas.translate((float)(- n3 + this.getPaddingTop()), this.mFirstOffset * (float)n4);
                this.mLeftEdge.setSize(n3, n4);
                n3 = false | this.mLeftEdge.draw(canvas);
                canvas.restoreToCount(n2);
            }
            n2 = n3;
            if (!this.mRightEdge.isFinished()) {
                n4 = canvas.save();
                n2 = this.getWidth();
                int n5 = this.getHeight();
                int n6 = this.getPaddingTop();
                int n7 = this.getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate((float)(- this.getPaddingTop()), (- this.mLastOffset + 1.0f) * (float)n2);
                this.mRightEdge.setSize(n5 - n6 - n7, n2);
                n2 = n3 | this.mRightEdge.draw(canvas);
                canvas.restoreToCount(n4);
            }
        } else {
            this.mLeftEdge.finish();
            this.mRightEdge.finish();
        }
        if (n2 != 0) {
            ViewCompat.postInvalidateOnAnimation((View)this);
        }
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable2 = this.mMarginDrawable;
        if (drawable2 != null && drawable2.isStateful()) {
            drawable2.setState(this.getDrawableState());
        }
    }

    public void endFakeDrag() {
        if (!this.mFakeDragging) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        if (this.mAdapter != null) {
            Object object = this.mVelocityTracker;
            object.computeCurrentVelocity(1000, (float)this.mMaximumVelocity);
            int n2 = (int)VelocityTrackerCompat.getXVelocity((VelocityTracker)object, this.mActivePointerId);
            this.mPopulatePending = true;
            int n3 = this.getClientWidth();
            int n4 = this.getScrollX();
            object = this.infoForCurrentScrollPosition();
            this.setCurrentItemInternal(this.determineTargetPage(object.position, ((float)n4 / (float)n3 - object.offset) / object.widthFactor, n2, (int)(this.mLastMotionX - this.mInitialMotionX)), true, true, n2);
        }
        this.endDrag();
        this.mFakeDragging = false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean executeKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) return false;
        {
            switch (keyEvent.getKeyCode()) {
                default: {
                    return false;
                }
                case 21: {
                    return this.arrowScroll(17);
                }
                case 22: {
                    return this.arrowScroll(66);
                }
                case 61: {
                    if (Build.VERSION.SDK_INT < 11) return false;
                    if (KeyEventCompat.hasNoModifiers(keyEvent)) {
                        return this.arrowScroll(2);
                    }
                    if (!KeyEventCompat.hasModifiers(keyEvent, 1)) return false;
                    return this.arrowScroll(1);
                }
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void fakeDragBy(float f2) {
        if (!this.mFakeDragging) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        if (this.mAdapter == null) {
            return;
        }
        this.mLastMotionX += f2;
        float f3 = (float)this.getScrollX() - f2;
        int n2 = this.getClientWidth();
        f2 = (float)n2 * this.mFirstOffset;
        float f4 = (float)n2 * this.mLastOffset;
        ItemInfo itemInfo = this.mItems.get(0);
        ItemInfo itemInfo2 = this.mItems.get(this.mItems.size() - 1);
        if (itemInfo.position != 0) {
            f2 = itemInfo.offset * (float)n2;
        }
        if (itemInfo2.position != this.mAdapter.getCount() - 1) {
            f4 = itemInfo2.offset * (float)n2;
        }
        if (f3 >= f2) {
            f2 = f3;
            if (f3 > f4) {
                f2 = f4;
            }
        }
        this.mLastMotionX += f2 - (float)((int)f2);
        this.scrollTo((int)f2, this.getScrollY());
        this.pageScrolled((int)f2);
        long l2 = SystemClock.uptimeMillis();
        itemInfo = MotionEvent.obtain((long)this.mFakeDragBeginTime, (long)l2, (int)2, (float)this.mLastMotionX, (float)0.0f, (int)0);
        this.mVelocityTracker.addMovement((MotionEvent)itemInfo);
        itemInfo.recycle();
    }

    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(this.getContext(), attributeSet);
    }

    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return this.generateDefaultLayoutParams();
    }

    public PagerAdapter getAdapter() {
        return this.mAdapter;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected int getChildDrawingOrder(int n2, int n3) {
        if (this.mDrawingOrder == 2) {
            n2 = n2 - 1 - n3;
            do {
                return ((LayoutParams)this.mDrawingOrderedChildren.get((int)n2).getLayoutParams()).childIndex;
                break;
            } while (true);
        }
        n2 = n3;
        return ((LayoutParams)this.mDrawingOrderedChildren.get((int)n2).getLayoutParams()).childIndex;
    }

    public int getCurrentItem() {
        return this.mCurItem;
    }

    public int getOffscreenPageLimit() {
        return this.mOffscreenPageLimit;
    }

    public int getPageMargin() {
        return this.mPageMargin;
    }

    ItemInfo infoForAnyChild(View view) {
        ViewParent viewParent;
        while ((viewParent = view.getParent()) != this) {
            if (viewParent == null || !(viewParent instanceof View)) {
                return null;
            }
            view = (View)viewParent;
        }
        return this.infoForChild(view);
    }

    ItemInfo infoForChild(View view) {
        for (int i2 = 0; i2 < this.mItems.size(); ++i2) {
            ItemInfo itemInfo = this.mItems.get(i2);
            if (!this.mAdapter.isViewFromObject(view, itemInfo.object)) continue;
            return itemInfo;
        }
        return null;
    }

    ItemInfo infoForPosition(int n2) {
        for (int i2 = 0; i2 < this.mItems.size(); ++i2) {
            ItemInfo itemInfo = this.mItems.get(i2);
            if (itemInfo.position != n2) continue;
            return itemInfo;
        }
        return null;
    }

    void initViewPager() {
        this.setWillNotDraw(false);
        this.setDescendantFocusability(262144);
        this.setFocusable(true);
        Context context = this.getContext();
        this.mScroller = new Scroller(context, sInterpolator);
        ViewConfiguration viewConfiguration = ViewConfiguration.get((Context)context);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
        this.mMinimumVelocity = (int)(400.0f * f2);
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mLeftEdge = new EdgeEffectCompat(context);
        this.mRightEdge = new EdgeEffectCompat(context);
        this.mFlingDistance = (int)(25.0f * f2);
        this.mCloseEnough = (int)(2.0f * f2);
        this.mDefaultGutterSize = (int)(16.0f * f2);
        ViewCompat.setAccessibilityDelegate((View)this, new MyAccessibilityDelegate());
        if (ViewCompat.getImportantForAccessibility((View)this) == 0) {
            ViewCompat.setImportantForAccessibility((View)this, 1);
        }
        ViewCompat.setOnApplyWindowInsetsListener((View)this, new OnApplyWindowInsetsListener(){
            private final Rect mTempRect;

            @Override
            public WindowInsetsCompat onApplyWindowInsets(View object, WindowInsetsCompat windowInsetsCompat) {
                if ((object = ViewCompat.onApplyWindowInsets((View)object, windowInsetsCompat)).isConsumed()) {
                    return object;
                }
                windowInsetsCompat = this.mTempRect;
                windowInsetsCompat.left = object.getSystemWindowInsetLeft();
                windowInsetsCompat.top = object.getSystemWindowInsetTop();
                windowInsetsCompat.right = object.getSystemWindowInsetRight();
                windowInsetsCompat.bottom = object.getSystemWindowInsetBottom();
                int n2 = ViewPager.this.getChildCount();
                for (int i2 = 0; i2 < n2; ++i2) {
                    WindowInsetsCompat windowInsetsCompat2 = ViewCompat.dispatchApplyWindowInsets(ViewPager.this.getChildAt(i2), (WindowInsetsCompat)object);
                    windowInsetsCompat.left = Math.min(windowInsetsCompat2.getSystemWindowInsetLeft(), windowInsetsCompat.left);
                    windowInsetsCompat.top = Math.min(windowInsetsCompat2.getSystemWindowInsetTop(), windowInsetsCompat.top);
                    windowInsetsCompat.right = Math.min(windowInsetsCompat2.getSystemWindowInsetRight(), windowInsetsCompat.right);
                    windowInsetsCompat.bottom = Math.min(windowInsetsCompat2.getSystemWindowInsetBottom(), windowInsetsCompat.bottom);
                }
                return object.replaceSystemWindowInsets(windowInsetsCompat.left, windowInsetsCompat.top, windowInsetsCompat.right, windowInsetsCompat.bottom);
            }
        });
    }

    public boolean isFakeDragging() {
        return this.mFakeDragging;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    protected void onDetachedFromWindow() {
        this.removeCallbacks(this.mEndScrollRunnable);
        if (this.mScroller != null && !this.mScroller.isFinished()) {
            this.mScroller.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mPageMargin > 0 && this.mMarginDrawable != null && this.mItems.size() > 0 && this.mAdapter != null) {
            int n2 = this.getScrollX();
            int n3 = this.getWidth();
            float f2 = (float)this.mPageMargin / (float)n3;
            int n4 = 0;
            Object object = this.mItems.get(0);
            float f3 = object.offset;
            int n5 = this.mItems.size();
            int n6 = this.mItems.get((int)(n5 - 1)).position;
            for (int i2 = object.position; i2 < n6; ++i2) {
                float f4;
                while (i2 > object.position && n4 < n5) {
                    object = this.mItems;
                    object = (ItemInfo)object.get(++n4);
                }
                if (i2 == object.position) {
                    f4 = (object.offset + object.widthFactor) * (float)n3;
                    f3 = object.offset + object.widthFactor + f2;
                } else {
                    float f5 = this.mAdapter.getPageWidth(i2);
                    f4 = (f3 + f5) * (float)n3;
                    f3 += f5 + f2;
                }
                if ((float)this.mPageMargin + f4 > (float)n2) {
                    this.mMarginDrawable.setBounds(Math.round(f4), this.mTopPageBounds, Math.round((float)this.mPageMargin + f4), this.mBottomPageBounds);
                    this.mMarginDrawable.draw(canvas);
                }
                if (f4 > (float)(n2 + n3)) break;
            }
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean onInterceptTouchEvent(MotionEvent var1_1) {
        var7_2 = var1_1.getAction() & 255;
        if (var7_2 == 3 || var7_2 == 1) {
            this.resetTouch();
            return false;
        }
        if (var7_2 != 0) {
            if (this.mIsBeingDragged) {
                return true;
            }
            if (this.mIsUnableToDrag) {
                return false;
            }
        }
        switch (var7_2) {
            case 2: {
                var7_2 = this.mActivePointerId;
                if (var7_2 != -1) {
                    var7_2 = var1_1.findPointerIndex(var7_2);
                    var3_3 = var1_1.getX(var7_2);
                    var2_4 = var3_3 - this.mLastMotionX;
                    var5_6 = Math.abs(var2_4);
                    var4_7 = var1_1.getY(var7_2);
                    var6_8 = Math.abs(var4_7 - this.mInitialMotionY);
                    if (var2_4 != 0.0f && !this.isGutterDrag(this.mLastMotionX, var2_4) && this.canScroll((View)this, false, (int)var2_4, (int)var3_3, (int)var4_7)) {
                        this.mLastMotionX = var3_3;
                        this.mLastMotionY = var4_7;
                        this.mIsUnableToDrag = true;
                        return false;
                    }
                    if (var5_6 > (float)this.mTouchSlop && 0.5f * var5_6 > var6_8) {
                        this.mIsBeingDragged = true;
                        this.requestParentDisallowInterceptTouchEvent(true);
                        this.setScrollState(1);
                        var2_4 = var2_4 > 0.0f ? this.mInitialMotionX + (float)this.mTouchSlop : this.mInitialMotionX - (float)this.mTouchSlop;
                        this.mLastMotionX = var2_4;
                        this.mLastMotionY = var4_7;
                        this.setScrollingCacheEnabled(true);
                    } else if (var6_8 > (float)this.mTouchSlop) {
                        this.mIsUnableToDrag = true;
                    }
                    if (this.mIsBeingDragged && this.performDrag(var3_3)) {
                        ViewCompat.postInvalidateOnAnimation((View)this);
                        ** break;
                    }
                }
                ** GOTO lbl59
            }
            case 0: {
                this.mInitialMotionX = var2_5 = var1_1.getX();
                this.mLastMotionX = var2_5;
                this.mInitialMotionY = var2_5 = var1_1.getY();
                this.mLastMotionY = var2_5;
                this.mActivePointerId = var1_1.getPointerId(0);
                this.mIsUnableToDrag = false;
                this.mIsScrollStarted = true;
                this.mScroller.computeScrollOffset();
                if (this.mScrollState == 2 && Math.abs(this.mScroller.getFinalX() - this.mScroller.getCurrX()) > this.mCloseEnough) {
                    this.mScroller.abortAnimation();
                    this.mPopulatePending = false;
                    this.populate();
                    this.mIsBeingDragged = true;
                    this.requestParentDisallowInterceptTouchEvent(true);
                    this.setScrollState(1);
                    ** break;
                }
                this.completeScroll(false);
                this.mIsBeingDragged = false;
            }
lbl59: // 5 sources:
            default: {
                ** GOTO lbl63
            }
            case 6: 
        }
        this.onSecondaryPointerUp(var1_1);
lbl63: // 2 sources:
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(var1_1);
        return this.mIsBeingDragged;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onLayout(boolean bl, int n2, int n3, int n4, int n5) {
        LayoutParams layoutParams;
        int n6;
        View view;
        int n7 = this.getChildCount();
        int n8 = n4 - n2;
        int n9 = n5 - n3;
        n3 = this.getPaddingLeft();
        n2 = this.getPaddingTop();
        int n10 = this.getPaddingRight();
        n5 = this.getPaddingBottom();
        int n11 = this.getScrollX();
        int n12 = 0;
        for (int i2 = 0; i2 < n7; ++i2) {
            view = this.getChildAt(i2);
            int n13 = n12;
            int n14 = n5;
            n6 = n3;
            int n15 = n10;
            n4 = n2;
            if (view.getVisibility() != 8) {
                layoutParams = (LayoutParams)view.getLayoutParams();
                n13 = n12;
                n14 = n5;
                n6 = n3;
                n15 = n10;
                n4 = n2;
                if (layoutParams.isDecor) {
                    n4 = layoutParams.gravity;
                    n15 = layoutParams.gravity;
                    switch (n4 & 7) {
                        default: {
                            n4 = n3;
                            n6 = n3;
                            break;
                        }
                        case 3: {
                            n4 = n3;
                            n6 = n3 + view.getMeasuredWidth();
                            break;
                        }
                        case 1: {
                            n4 = Math.max((n8 - view.getMeasuredWidth()) / 2, n3);
                            n6 = n3;
                            break;
                        }
                        case 5: {
                            n4 = n8 - n10 - view.getMeasuredWidth();
                            n10 += view.getMeasuredWidth();
                            n6 = n3;
                        }
                    }
                    switch (n15 & 112) {
                        default: {
                            n3 = n2;
                            break;
                        }
                        case 48: {
                            n3 = n2;
                            n2 += view.getMeasuredHeight();
                            break;
                        }
                        case 16: {
                            n3 = Math.max((n9 - view.getMeasuredHeight()) / 2, n2);
                            break;
                        }
                        case 80: {
                            n3 = n9 - n5 - view.getMeasuredHeight();
                            n5 += view.getMeasuredHeight();
                        }
                    }
                    view.layout(n4, n3, view.getMeasuredWidth() + (n4 += n11), view.getMeasuredHeight() + n3);
                    n13 = n12 + 1;
                    n4 = n2;
                    n15 = n10;
                    n14 = n5;
                }
            }
            n12 = n13;
            n5 = n14;
            n3 = n6;
            n10 = n15;
            n2 = n4;
        }
        n10 = n8 - n3 - n10;
        for (n4 = 0; n4 < n7; ++n4) {
            ItemInfo itemInfo;
            view = this.getChildAt(n4);
            if (view.getVisibility() == 8) continue;
            layoutParams = (LayoutParams)view.getLayoutParams();
            if (layoutParams.isDecor || (itemInfo = this.infoForChild(view)) == null) continue;
            n6 = n3 + (int)((float)n10 * itemInfo.offset);
            if (layoutParams.needsMeasure) {
                layoutParams.needsMeasure = false;
                view.measure(View.MeasureSpec.makeMeasureSpec((int)((int)((float)n10 * layoutParams.widthFactor)), (int)1073741824), View.MeasureSpec.makeMeasureSpec((int)(n9 - n2 - n5), (int)1073741824));
            }
            view.layout(n6, n2, view.getMeasuredWidth() + n6, view.getMeasuredHeight() + n2);
        }
        this.mTopPageBounds = n2;
        this.mBottomPageBounds = n9 - n5;
        this.mDecorChildCount = n12;
        if (this.mFirstLayout) {
            this.scrollToItem(this.mCurItem, false, 0, false);
        }
        this.mFirstLayout = false;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onMeasure(int n2, int n3) {
        int n4;
        View view;
        LayoutParams layoutParams;
        this.setMeasuredDimension(ViewPager.getDefaultSize((int)0, (int)n2), ViewPager.getDefaultSize((int)0, (int)n3));
        n2 = this.getMeasuredWidth();
        this.mGutterSize = Math.min(n2 / 10, this.mDefaultGutterSize);
        n2 = n2 - this.getPaddingLeft() - this.getPaddingRight();
        n3 = this.getMeasuredHeight() - this.getPaddingTop() - this.getPaddingBottom();
        int n5 = this.getChildCount();
        for (int i2 = 0; i2 < n5; ++i2) {
            view = this.getChildAt(i2);
            n4 = n3;
            int n6 = n2;
            if (view.getVisibility() != 8) {
                layoutParams = (LayoutParams)view.getLayoutParams();
                n4 = n3;
                n6 = n2;
                if (layoutParams != null) {
                    n4 = n3;
                    n6 = n2;
                    if (layoutParams.isDecor) {
                        int n7;
                        n6 = layoutParams.gravity & 7;
                        int n8 = layoutParams.gravity & 112;
                        int n9 = Integer.MIN_VALUE;
                        n4 = Integer.MIN_VALUE;
                        n8 = n8 == 48 || n8 == 80 ? 1 : 0;
                        boolean bl = n6 == 3 || n6 == 5;
                        if (n8 != 0) {
                            n6 = 1073741824;
                        } else {
                            n6 = n9;
                            if (bl) {
                                n4 = 1073741824;
                                n6 = n9;
                            }
                        }
                        int n10 = n2;
                        n9 = n3;
                        int n11 = n10;
                        if (layoutParams.width != -2) {
                            n6 = n7 = 1073741824;
                            n11 = n10;
                            if (layoutParams.width != -1) {
                                n11 = layoutParams.width;
                                n6 = n7;
                            }
                        }
                        n10 = n9;
                        if (layoutParams.height != -2) {
                            n4 = n7 = 1073741824;
                            n10 = n9;
                            if (layoutParams.height != -1) {
                                n10 = layoutParams.height;
                                n4 = n7;
                            }
                        }
                        view.measure(View.MeasureSpec.makeMeasureSpec((int)n11, (int)n6), View.MeasureSpec.makeMeasureSpec((int)n10, (int)n4));
                        if (n8 != 0) {
                            n4 = n3 - view.getMeasuredHeight();
                            n6 = n2;
                        } else {
                            n4 = n3;
                            n6 = n2;
                            if (bl) {
                                n6 = n2 - view.getMeasuredWidth();
                                n4 = n3;
                            }
                        }
                    }
                }
            }
            n3 = n4;
            n2 = n6;
        }
        this.mChildWidthMeasureSpec = View.MeasureSpec.makeMeasureSpec((int)n2, (int)1073741824);
        this.mChildHeightMeasureSpec = View.MeasureSpec.makeMeasureSpec((int)n3, (int)1073741824);
        this.mInLayout = true;
        this.populate();
        this.mInLayout = false;
        n4 = this.getChildCount();
        n3 = 0;
        while (n3 < n4) {
            view = this.getChildAt(n3);
            if (!(view.getVisibility() == 8 || (layoutParams = (LayoutParams)view.getLayoutParams()) != null && layoutParams.isDecor)) {
                view.measure(View.MeasureSpec.makeMeasureSpec((int)((int)((float)n2 * layoutParams.widthFactor)), (int)1073741824), this.mChildHeightMeasureSpec);
            }
            ++n3;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @CallSuper
    protected void onPageScrolled(int n2, float f2, int n3) {
        View view;
        int n4;
        if (this.mDecorChildCount > 0) {
            int n5 = this.getScrollX();
            n4 = this.getPaddingLeft();
            int n6 = this.getPaddingRight();
            int n7 = this.getWidth();
            int n8 = this.getChildCount();
            for (int i2 = 0; i2 < n8; ++i2) {
                int n9;
                int n10;
                view = this.getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
                if (!layoutParams.isDecor) {
                    n9 = n6;
                    n10 = n4;
                } else {
                    switch (layoutParams.gravity & 7) {
                        default: {
                            n9 = n4;
                            break;
                        }
                        case 3: {
                            n9 = n4;
                            n4 += view.getWidth();
                            break;
                        }
                        case 1: {
                            n9 = Math.max((n7 - view.getMeasuredWidth()) / 2, n4);
                            break;
                        }
                        case 5: {
                            n9 = n7 - n6 - view.getMeasuredWidth();
                            n6 += view.getMeasuredWidth();
                        }
                    }
                    int n11 = n9 + n5 - view.getLeft();
                    n10 = n4;
                    n9 = n6;
                    if (n11 != 0) {
                        view.offsetLeftAndRight(n11);
                        n10 = n4;
                        n9 = n6;
                    }
                }
                n4 = n10;
                n6 = n9;
            }
        }
        this.dispatchOnPageScrolled(n2, f2, n3);
        if (this.mPageTransformer != null) {
            n3 = this.getScrollX();
            n4 = this.getChildCount();
            for (n2 = 0; n2 < n4; ++n2) {
                view = this.getChildAt(n2);
                if (((LayoutParams)view.getLayoutParams()).isDecor) continue;
                f2 = (float)(view.getLeft() - n3) / (float)this.getClientWidth();
                this.mPageTransformer.transformPage(view, f2);
            }
        }
        this.mCalledSuper = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected boolean onRequestFocusInDescendants(int n2, Rect rect) {
        int n3;
        int n4;
        int n5 = this.getChildCount();
        if ((n2 & 2) != 0) {
            n4 = 0;
            n3 = 1;
        } else {
            n4 = n5 - 1;
            n3 = -1;
            n5 = -1;
        }
        while (n4 != n5) {
            ItemInfo itemInfo;
            View view = this.getChildAt(n4);
            if (view.getVisibility() == 0 && (itemInfo = this.infoForChild(view)) != null && itemInfo.position == this.mCurItem && view.requestFocus(n2, rect)) {
                return true;
            }
            n4 += n3;
        }
        return false;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        parcelable = (SavedState)parcelable;
        super.onRestoreInstanceState(parcelable.getSuperState());
        if (this.mAdapter != null) {
            this.mAdapter.restoreState(parcelable.adapterState, parcelable.loader);
            this.setCurrentItemInternal(parcelable.position, false, true);
            return;
        }
        this.mRestoredCurItem = parcelable.position;
        this.mRestoredAdapterState = parcelable.adapterState;
        this.mRestoredClassLoader = parcelable.loader;
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.position = this.mCurItem;
        if (this.mAdapter != null) {
            savedState.adapterState = this.mAdapter.saveState();
        }
        return savedState;
    }

    protected void onSizeChanged(int n2, int n3, int n4, int n5) {
        super.onSizeChanged(n2, n3, n4, n5);
        if (n2 != n4) {
            this.recomputeScrollPosition(n2, n4, this.mPageMargin, this.mPageMargin);
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean onTouchEvent(MotionEvent var1_1) {
        if (this.mFakeDragging) {
            return true;
        }
        if (var1_1.getAction() == 0 && var1_1.getEdgeFlags() != 0) {
            return false;
        }
        if (this.mAdapter == null) return false;
        if (this.mAdapter.getCount() == 0) {
            return false;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(var1_1);
        var6_2 = var1_1.getAction();
        var9_4 = var10_3 = false;
        switch (var6_2 & 255) {
            default: {
                var9_4 = var10_3;
                break;
            }
            case 0: {
                this.mScroller.abortAnimation();
                this.mPopulatePending = false;
                this.populate();
                this.mInitialMotionX = var2_5 = var1_1.getX();
                this.mLastMotionX = var2_5;
                this.mInitialMotionY = var2_5 = var1_1.getY();
                this.mLastMotionY = var2_5;
                this.mActivePointerId = var1_1.getPointerId(0);
                var9_4 = var10_3;
                break;
            }
            case 2: {
                if (!this.mIsBeingDragged) {
                    var6_2 = var1_1.findPointerIndex(this.mActivePointerId);
                    if (var6_2 == -1) {
                        var9_4 = this.resetTouch();
                        break;
                    }
                    var2_6 = var1_1.getX(var6_2);
                    var4_8 = Math.abs(var2_6 - this.mLastMotionX);
                    var3_9 = var1_1.getY(var6_2);
                    var5_10 = Math.abs(var3_9 - this.mLastMotionY);
                    if (var4_8 > (float)this.mTouchSlop && var4_8 > var5_10) {
                        this.mIsBeingDragged = true;
                        this.requestParentDisallowInterceptTouchEvent(true);
                        var2_6 = var2_6 - this.mInitialMotionX > 0.0f ? this.mInitialMotionX + (float)this.mTouchSlop : this.mInitialMotionX - (float)this.mTouchSlop;
                        this.mLastMotionX = var2_6;
                        this.mLastMotionY = var3_9;
                        this.setScrollState(1);
                        this.setScrollingCacheEnabled(true);
                        var11_11 = this.getParent();
                        if (var11_11 != null) {
                            var11_11.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
                var9_4 = var10_3;
                if (this.mIsBeingDragged) {
                    var9_4 = false | this.performDrag(var1_1.getX(var1_1.findPointerIndex(this.mActivePointerId)));
                    break;
                }
                ** GOTO lbl81
            }
            case 1: {
                var9_4 = var10_3;
                if (this.mIsBeingDragged) {
                    var11_12 = this.mVelocityTracker;
                    var11_12.computeCurrentVelocity(1000, (float)this.mMaximumVelocity);
                    var6_2 = (int)VelocityTrackerCompat.getXVelocity((VelocityTracker)var11_12, this.mActivePointerId);
                    this.mPopulatePending = true;
                    var7_13 = this.getClientWidth();
                    var8_14 = this.getScrollX();
                    var11_12 = this.infoForCurrentScrollPosition();
                    var2_7 = (float)this.mPageMargin / (float)var7_13;
                    this.setCurrentItemInternal(this.determineTargetPage(var11_12.position, ((float)var8_14 / (float)var7_13 - var11_12.offset) / (var11_12.widthFactor + var2_7), var6_2, (int)(var1_1.getX(var1_1.findPointerIndex(this.mActivePointerId)) - this.mInitialMotionX)), true, true, var6_2);
                    var9_4 = this.resetTouch();
                    break;
                }
                ** GOTO lbl81
            }
            case 3: {
                var9_4 = var10_3;
                if (this.mIsBeingDragged) {
                    this.scrollToItem(this.mCurItem, true, 0, false);
                    var9_4 = this.resetTouch();
                    break;
                }
                ** GOTO lbl81
            }
            case 5: {
                var6_2 = MotionEventCompat.getActionIndex(var1_1);
                this.mLastMotionX = var1_1.getX(var6_2);
                this.mActivePointerId = var1_1.getPointerId(var6_2);
                var9_4 = var10_3;
            }
lbl81: // 5 sources:
            case 4: {
                break;
            }
            case 6: {
                this.onSecondaryPointerUp(var1_1);
                this.mLastMotionX = var1_1.getX(var1_1.findPointerIndex(this.mActivePointerId));
                var9_4 = var10_3;
            }
        }
        if (var9_4 == false) return true;
        ViewCompat.postInvalidateOnAnimation((View)this);
        return true;
    }

    boolean pageLeft() {
        if (this.mCurItem > 0) {
            this.setCurrentItem(this.mCurItem - 1, true);
            return true;
        }
        return false;
    }

    boolean pageRight() {
        if (this.mAdapter != null && this.mCurItem < this.mAdapter.getCount() - 1) {
            this.setCurrentItem(this.mCurItem + 1, true);
            return true;
        }
        return false;
    }

    void populate() {
        this.populate(this.mCurItem);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    void populate(int var1_1) {
        block35 : {
            block36 : {
                var14_2 = null;
                if (this.mCurItem != var1_1) {
                    var14_2 = this.infoForPosition(this.mCurItem);
                    this.mCurItem = var1_1;
                }
                if (this.mAdapter == null) {
                    this.sortChildDrawingOrder();
                    return;
                }
                if (this.mPopulatePending) {
                    this.sortChildDrawingOrder();
                    return;
                }
                if (this.getWindowToken() == null) return;
                this.mAdapter.startUpdate(this);
                var1_1 = this.mOffscreenPageLimit;
                var11_3 = Math.max(0, this.mCurItem - var1_1);
                var9_4 = this.mAdapter.getCount();
                var10_5 = Math.min(var9_4 - 1, this.mCurItem + var1_1);
                if (var9_4 != this.mExpectedAdapterCount) {
                    try {
                        var13_6 = this.getResources().getResourceName(this.getId());
                    }
                    catch (Resources.NotFoundException var13_7) {
                        var13_6 = Integer.toHexString(this.getId());
                        throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.mExpectedAdapterCount + ", found: " + var9_4 + " Pager id: " + var13_6 + " Pager class: " + this.getClass() + " Problematic adapter: " + this.mAdapter.getClass());
                    }
                    throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.mExpectedAdapterCount + ", found: " + var9_4 + " Pager id: " + var13_6 + " Pager class: " + this.getClass() + " Problematic adapter: " + this.mAdapter.getClass());
                }
                var15_9 = null;
                var1_1 = 0;
                do {
                    var13_8 = var15_9;
                    if (var1_1 >= this.mItems.size()) ** GOTO lbl34
                    var16_10 = this.mItems.get(var1_1);
                    if (var16_10.position >= this.mCurItem) {
                        var13_8 = var15_9;
                        if (var16_10.position == this.mCurItem) {
                            var13_8 = var16_10;
                        }
lbl34: // 4 sources:
                        var15_9 = var13_8;
                        if (var13_8 == null) {
                            var15_9 = var13_8;
                            if (var9_4 > 0) {
                                var15_9 = this.addNewItem(this.mCurItem, var1_1);
                            }
                        }
                        if (var15_9 != null) {
                            break;
                        }
                        break block35;
                    }
                    ++var1_1;
                } while (true);
                var4_11 = 0.0f;
                var8_12 = var1_1 - 1;
                var13_8 = var8_12 >= 0 ? this.mItems.get(var8_12) : null;
                var12_13 = this.getClientWidth();
                var3_14 = var12_13 <= 0 ? 0.0f : 2.0f - var15_9.widthFactor + (float)this.getPaddingLeft() / (float)var12_13;
                var7_15 = this.mCurItem - 1;
                var16_10 = var13_8;
                var6_16 = var1_1;
                do {
                    if (var7_15 < 0) ** GOTO lbl-1000
                    if (var4_11 >= var3_14 && var7_15 < var11_3) {
                        ** if (var16_10 != null) goto lbl65
                    }
                    ** GOTO lbl86
lbl-1000: // 2 sources:
                    {
                        var4_11 = var15_9.widthFactor;
                        var7_15 = var6_16 + 1;
                        if (var4_11 < 2.0f) {
                            var13_8 = var7_15 < this.mItems.size() ? this.mItems.get(var7_15) : null;
                            var3_14 = var12_13 <= 0 ? 0.0f : (float)this.getPaddingRight() / (float)var12_13 + 2.0f;
                            var16_10 = var13_8;
                            break;
                        }
                        break block36;
                    }
lbl65: // 1 sources:
                    var1_1 = var6_16;
                    var2_17 = var4_11;
                    var13_8 = var16_10;
                    var5_18 = var8_12;
                    if (var7_15 == var16_10.position) {
                        var1_1 = var6_16;
                        var2_17 = var4_11;
                        var13_8 = var16_10;
                        var5_18 = var8_12;
                        if (!var16_10.scrolling) {
                            this.mItems.remove(var8_12);
                            this.mAdapter.destroyItem(this, var7_15, var16_10.object);
                            var5_18 = var8_12 - 1;
                            var1_1 = var6_16 - 1;
                            if (var5_18 >= 0) {
                                var13_8 = this.mItems.get(var5_18);
                                var2_17 = var4_11;
                            } else {
                                var13_8 = null;
                                var2_17 = var4_11;
                            }
                        }
                    }
                    ** GOTO lbl96
lbl86: // 1 sources:
                    if (var16_10 != null && var7_15 == var16_10.position) {
                        var2_17 = var4_11 + var16_10.widthFactor;
                        var5_18 = var8_12 - 1;
                        var13_8 = var5_18 >= 0 ? this.mItems.get(var5_18) : null;
                        var1_1 = var6_16;
                    } else {
                        var2_17 = var4_11 + this.addNewItem((int)var7_15, (int)(var8_12 + 1)).widthFactor;
                        var1_1 = var6_16 + 1;
                        var13_8 = var8_12 >= 0 ? this.mItems.get(var8_12) : null;
                        var5_18 = var8_12;
                    }
lbl96: // 4 sources:
                    --var7_15;
                    var6_16 = var1_1;
                    var4_11 = var2_17;
                    var16_10 = var13_8;
                    var8_12 = var5_18;
                } while (true);
                for (var5_18 = this.mCurItem + 1; var5_18 < var9_4; ++var5_18) {
                    if (var4_11 >= var3_14 && var5_18 > var10_5) {
                        if (var16_10 == null) break;
                        var2_17 = var4_11;
                        var13_8 = var16_10;
                        var1_1 = var7_15;
                        if (var5_18 == var16_10.position) {
                            var2_17 = var4_11;
                            var13_8 = var16_10;
                            var1_1 = var7_15;
                            if (!var16_10.scrolling) {
                                this.mItems.remove(var7_15);
                                this.mAdapter.destroyItem(this, var5_18, var16_10.object);
                                if (var7_15 < this.mItems.size()) {
                                    var13_8 = this.mItems.get(var7_15);
                                    var1_1 = var7_15;
                                    var2_17 = var4_11;
                                } else {
                                    var13_8 = null;
                                    var2_17 = var4_11;
                                    var1_1 = var7_15;
                                }
                            }
                        }
                    } else if (var16_10 != null && var5_18 == var16_10.position) {
                        var2_17 = var4_11 + var16_10.widthFactor;
                        var1_1 = var7_15 + 1;
                        var13_8 = var1_1 < this.mItems.size() ? this.mItems.get(var1_1) : null;
                    } else {
                        var13_8 = this.addNewItem(var5_18, var7_15);
                        var1_1 = var7_15 + 1;
                        var2_17 = var4_11 + var13_8.widthFactor;
                        var13_8 = var1_1 < this.mItems.size() ? this.mItems.get(var1_1) : null;
                    }
                    var4_11 = var2_17;
                    var16_10 = var13_8;
                    var7_15 = var1_1;
                }
            }
            this.calculatePageOffsets(var15_9, var6_16, (ItemInfo)var14_2);
        }
        var14_2 = this.mAdapter;
        var1_1 = this.mCurItem;
        var13_8 = var15_9 != null ? var15_9.object : null;
        var14_2.setPrimaryItem(this, var1_1, var13_8);
        this.mAdapter.finishUpdate(this);
        var5_18 = this.getChildCount();
        for (var1_1 = 0; var1_1 < var5_18; ++var1_1) {
            var14_2 = this.getChildAt(var1_1);
            var13_8 = (LayoutParams)var14_2.getLayoutParams();
            var13_8.childIndex = var1_1;
            if (var13_8.isDecor || var13_8.widthFactor != 0.0f || (var14_2 = this.infoForChild((View)var14_2)) == null) continue;
            var13_8.widthFactor = var14_2.widthFactor;
            var13_8.position = var14_2.position;
        }
        this.sortChildDrawingOrder();
        if (this.hasFocus() == false) return;
        var13_8 = this.findFocus();
        var13_8 = var13_8 != null ? this.infoForAnyChild((View)var13_8) : null;
        if (var13_8 != null) {
            if (var13_8.position == this.mCurItem) return;
        }
        var1_1 = 0;
        while (var1_1 < this.getChildCount()) {
            var13_8 = this.getChildAt(var1_1);
            var14_2 = this.infoForChild((View)var13_8);
            if (var14_2 != null && var14_2.position == this.mCurItem) {
                if (var13_8.requestFocus(2) != false) return;
            }
            ++var1_1;
        }
    }

    public void removeOnAdapterChangeListener(@NonNull OnAdapterChangeListener onAdapterChangeListener) {
        if (this.mAdapterChangeListeners != null) {
            this.mAdapterChangeListeners.remove(onAdapterChangeListener);
        }
    }

    public void removeOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        if (this.mOnPageChangeListeners != null) {
            this.mOnPageChangeListeners.remove(onPageChangeListener);
        }
    }

    public void removeView(View view) {
        if (this.mInLayout) {
            this.removeViewInLayout(view);
            return;
        }
        super.removeView(view);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setAdapter(PagerAdapter pagerAdapter) {
        int n2;
        Object object;
        if (this.mAdapter != null) {
            this.mAdapter.setViewPagerObserver(null);
            this.mAdapter.startUpdate(this);
            for (n2 = 0; n2 < this.mItems.size(); ++n2) {
                object = this.mItems.get(n2);
                this.mAdapter.destroyItem(this, object.position, object.object);
            }
            this.mAdapter.finishUpdate(this);
            this.mItems.clear();
            this.removeNonDecorViews();
            this.mCurItem = 0;
            this.scrollTo(0, 0);
        }
        object = this.mAdapter;
        this.mAdapter = pagerAdapter;
        this.mExpectedAdapterCount = 0;
        if (this.mAdapter != null) {
            if (this.mObserver == null) {
                this.mObserver = new PagerObserver();
            }
            this.mAdapter.setViewPagerObserver(this.mObserver);
            this.mPopulatePending = false;
            boolean bl = this.mFirstLayout;
            this.mFirstLayout = true;
            this.mExpectedAdapterCount = this.mAdapter.getCount();
            if (this.mRestoredCurItem >= 0) {
                this.mAdapter.restoreState(this.mRestoredAdapterState, this.mRestoredClassLoader);
                this.setCurrentItemInternal(this.mRestoredCurItem, false, true);
                this.mRestoredCurItem = -1;
                this.mRestoredAdapterState = null;
                this.mRestoredClassLoader = null;
            } else if (!bl) {
                this.populate();
            } else {
                this.requestLayout();
            }
        }
        if (this.mAdapterChangeListeners != null && !this.mAdapterChangeListeners.isEmpty()) {
            int n3 = this.mAdapterChangeListeners.size();
            for (n2 = 0; n2 < n3; ++n2) {
                this.mAdapterChangeListeners.get(n2).onAdapterChanged(this, (PagerAdapter)object, pagerAdapter);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    void setChildrenDrawingOrderEnabledCompat(boolean bl) {
        if (Build.VERSION.SDK_INT < 7) return;
        if (this.mSetChildrenDrawingOrderEnabled == null) {
            try {
                this.mSetChildrenDrawingOrderEnabled = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", Boolean.TYPE);
            }
            catch (NoSuchMethodException var2_2) {
                Log.e((String)"ViewPager", (String)"Can't find setChildrenDrawingOrderEnabled", (Throwable)var2_2);
            }
        }
        try {
            this.mSetChildrenDrawingOrderEnabled.invoke((Object)this, bl);
            return;
        }
        catch (Exception var2_3) {
            Log.e((String)"ViewPager", (String)"Error changing children drawing order", (Throwable)var2_3);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setCurrentItem(int n2) {
        this.mPopulatePending = false;
        boolean bl = !this.mFirstLayout;
        this.setCurrentItemInternal(n2, bl, false);
    }

    public void setCurrentItem(int n2, boolean bl) {
        this.mPopulatePending = false;
        this.setCurrentItemInternal(n2, bl, false);
    }

    void setCurrentItemInternal(int n2, boolean bl, boolean bl2) {
        this.setCurrentItemInternal(n2, bl, bl2, 0);
    }

    /*
     * Enabled aggressive block sorting
     */
    void setCurrentItemInternal(int n2, boolean bl, boolean bl2, int n3) {
        int n4;
        boolean bl3 = true;
        if (this.mAdapter == null || this.mAdapter.getCount() <= 0) {
            this.setScrollingCacheEnabled(false);
            return;
        }
        if (!bl2 && this.mCurItem == n2 && this.mItems.size() != 0) {
            this.setScrollingCacheEnabled(false);
            return;
        }
        if (n2 < 0) {
            n4 = 0;
        } else {
            n4 = n2;
            if (n2 >= this.mAdapter.getCount()) {
                n4 = this.mAdapter.getCount() - 1;
            }
        }
        if (n4 > this.mCurItem + (n2 = this.mOffscreenPageLimit) || n4 < this.mCurItem - n2) {
            for (n2 = 0; n2 < this.mItems.size(); ++n2) {
                this.mItems.get((int)n2).scrolling = true;
            }
        }
        bl2 = this.mCurItem != n4 ? bl3 : false;
        if (!this.mFirstLayout) {
            this.populate(n4);
            this.scrollToItem(n4, bl, n3, bl2);
            return;
        }
        this.mCurItem = n4;
        if (bl2) {
            this.dispatchOnPageSelected(n4);
        }
        this.requestLayout();
    }

    OnPageChangeListener setInternalPageChangeListener(OnPageChangeListener onPageChangeListener) {
        OnPageChangeListener onPageChangeListener2 = this.mInternalPageChangeListener;
        this.mInternalPageChangeListener = onPageChangeListener;
        return onPageChangeListener2;
    }

    public void setOffscreenPageLimit(int n2) {
        int n3 = n2;
        if (n2 < 1) {
            Log.w((String)"ViewPager", (String)("Requested offscreen page limit " + n2 + " too small; defaulting to " + 1));
            n3 = 1;
        }
        if (n3 != this.mOffscreenPageLimit) {
            this.mOffscreenPageLimit = n3;
            this.populate();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        this.mOnPageChangeListener = onPageChangeListener;
    }

    public void setPageMargin(int n2) {
        int n3 = this.mPageMargin;
        this.mPageMargin = n2;
        int n4 = this.getWidth();
        this.recomputeScrollPosition(n4, n4, n2, n3);
        this.requestLayout();
    }

    public void setPageMarginDrawable(@DrawableRes int n2) {
        this.setPageMarginDrawable(ContextCompat.getDrawable(this.getContext(), n2));
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setPageMarginDrawable(Drawable drawable2) {
        this.mMarginDrawable = drawable2;
        if (drawable2 != null) {
            this.refreshDrawableState();
        }
        boolean bl = drawable2 == null;
        this.setWillNotDraw(bl);
        this.invalidate();
    }

    public void setPageTransformer(boolean bl, PageTransformer pageTransformer) {
        this.setPageTransformer(bl, pageTransformer, 2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setPageTransformer(boolean bl, PageTransformer pageTransformer, int n2) {
        int n3 = 1;
        if (Build.VERSION.SDK_INT < 11) return;
        boolean bl2 = pageTransformer != null;
        boolean bl3 = this.mPageTransformer != null;
        boolean bl4 = bl2 != bl3;
        this.mPageTransformer = pageTransformer;
        this.setChildrenDrawingOrderEnabledCompat(bl2);
        if (bl2) {
            if (bl) {
                n3 = 2;
            }
            this.mDrawingOrder = n3;
            this.mPageTransformerLayerType = n2;
        } else {
            this.mDrawingOrder = 0;
        }
        if (bl4) {
            this.populate();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    void setScrollState(int n2) {
        if (this.mScrollState == n2) {
            return;
        }
        this.mScrollState = n2;
        if (this.mPageTransformer != null) {
            boolean bl = n2 != 0;
            this.enableLayers(bl);
        }
        this.dispatchOnScrollStateChanged(n2);
    }

    void smoothScrollTo(int n2, int n3) {
        this.smoothScrollTo(n2, n3, 0);
    }

    /*
     * Enabled aggressive block sorting
     */
    void smoothScrollTo(int n2, int n3, int n4) {
        if (this.getChildCount() == 0) {
            this.setScrollingCacheEnabled(false);
            return;
        }
        int n5 = this.mScroller != null && !this.mScroller.isFinished() ? 1 : 0;
        if (n5 != 0) {
            n5 = this.mIsScrollStarted ? this.mScroller.getCurrX() : this.mScroller.getStartX();
            this.mScroller.abortAnimation();
            this.setScrollingCacheEnabled(false);
        } else {
            n5 = this.getScrollX();
        }
        int n6 = this.getScrollY();
        int n7 = n2 - n5;
        if (n7 == 0 && (n3 -= n6) == 0) {
            this.completeScroll(false);
            this.populate();
            this.setScrollState(0);
            return;
        }
        this.setScrollingCacheEnabled(true);
        this.setScrollState(2);
        n2 = this.getClientWidth();
        int n8 = n2 / 2;
        float f2 = Math.min(1.0f, 1.0f * (float)Math.abs(n7) / (float)n2);
        float f3 = n8;
        float f4 = n8;
        f2 = this.distanceInfluenceForSnapDuration(f2);
        n4 = Math.abs(n4);
        if (n4 > 0) {
            n2 = Math.round(1000.0f * Math.abs((f3 + f4 * f2) / (float)n4)) * 4;
        } else {
            f3 = n2;
            f4 = this.mAdapter.getPageWidth(this.mCurItem);
            n2 = (int)((1.0f + (float)Math.abs(n7) / ((float)this.mPageMargin + f3 * f4)) * 100.0f);
        }
        n2 = Math.min(n2, 600);
        this.mIsScrollStarted = false;
        this.mScroller.startScroll(n5, n6, n7, n3, n2);
        ViewCompat.postInvalidateOnAnimation((View)this);
    }

    protected boolean verifyDrawable(Drawable drawable2) {
        if (super.verifyDrawable(drawable2) || drawable2 == this.mMarginDrawable) {
            return true;
        }
        return false;
    }

    @Inherited
    @Retention(value=RetentionPolicy.RUNTIME)
    @Target(value={ElementType.TYPE})
    public static @interface DecorView {
    }

    static class ItemInfo {
        Object object;
        float offset;
        int position;
        boolean scrolling;
        float widthFactor;

        ItemInfo() {
        }
    }

    public static class LayoutParams
    extends ViewGroup.LayoutParams {
        int childIndex;
        public int gravity;
        public boolean isDecor;
        boolean needsMeasure;
        int position;
        float widthFactor = 0.0f;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            context = context.obtainStyledAttributes(attributeSet, ViewPager.LAYOUT_ATTRS);
            this.gravity = context.getInteger(0, 48);
            context.recycle();
        }
    }

    class MyAccessibilityDelegate
    extends AccessibilityDelegateCompat {
        MyAccessibilityDelegate() {
        }

        private boolean canScroll() {
            if (ViewPager.this.mAdapter != null && ViewPager.this.mAdapter.getCount() > 1) {
                return true;
            }
            return false;
        }

        @Override
        public void onInitializeAccessibilityEvent(View object, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent((View)object, accessibilityEvent);
            accessibilityEvent.setClassName((CharSequence)ViewPager.class.getName());
            object = AccessibilityEventCompat.asRecord(accessibilityEvent);
            object.setScrollable(this.canScroll());
            if (accessibilityEvent.getEventType() == 4096 && ViewPager.this.mAdapter != null) {
                object.setItemCount(ViewPager.this.mAdapter.getCount());
                object.setFromIndex(ViewPager.this.mCurItem);
                object.setToIndex(ViewPager.this.mCurItem);
            }
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setClassName(ViewPager.class.getName());
            accessibilityNodeInfoCompat.setScrollable(this.canScroll());
            if (ViewPager.this.canScrollHorizontally(1)) {
                accessibilityNodeInfoCompat.addAction(4096);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                accessibilityNodeInfoCompat.addAction(8192);
            }
        }

        @Override
        public boolean performAccessibilityAction(View view, int n2, Bundle bundle) {
            if (super.performAccessibilityAction(view, n2, bundle)) {
                return true;
            }
            switch (n2) {
                default: {
                    return false;
                }
                case 4096: {
                    if (ViewPager.this.canScrollHorizontally(1)) {
                        ViewPager.this.setCurrentItem(ViewPager.this.mCurItem + 1);
                        return true;
                    }
                    return false;
                }
                case 8192: 
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                ViewPager.this.setCurrentItem(ViewPager.this.mCurItem - 1);
                return true;
            }
            return false;
        }
    }

    public static interface OnAdapterChangeListener {
        public void onAdapterChanged(@NonNull ViewPager var1, @Nullable PagerAdapter var2, @Nullable PagerAdapter var3);
    }

    public static interface OnPageChangeListener {
        public void onPageScrollStateChanged(int var1);

        public void onPageScrolled(int var1, float var2, int var3);

        public void onPageSelected(int var1);
    }

    public static interface PageTransformer {
        public void transformPage(View var1, float var2);
    }

    private class PagerObserver
    extends DataSetObserver {
        PagerObserver() {
        }

        public void onChanged() {
            ViewPager.this.dataSetChanged();
        }

        public void onInvalidated() {
            ViewPager.this.dataSetChanged();
        }
    }

    public static class SavedState
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
        Parcelable adapterState;
        ClassLoader loader;
        int position;

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            ClassLoader classLoader2 = classLoader;
            if (classLoader == null) {
                classLoader2 = this.getClass().getClassLoader();
            }
            this.position = parcel.readInt();
            this.adapterState = parcel.readParcelable(classLoader2);
            this.loader = classLoader2;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.position + "}";
        }

        @Override
        public void writeToParcel(Parcel parcel, int n2) {
            super.writeToParcel(parcel, n2);
            parcel.writeInt(this.position);
            parcel.writeParcelable(this.adapterState, n2);
        }

    }

    public static class SimpleOnPageChangeListener
    implements OnPageChangeListener {
        @Override
        public void onPageScrollStateChanged(int n2) {
        }

        @Override
        public void onPageScrolled(int n2, float f2, int n3) {
        }

        @Override
        public void onPageSelected(int n2) {
        }
    }

    static class ViewPositionComparator
    implements Comparator<View> {
        ViewPositionComparator() {
        }

        @Override
        public int compare(View object, View object2) {
            object = (LayoutParams)object.getLayoutParams();
            object2 = (LayoutParams)object2.getLayoutParams();
            if (object.isDecor != object2.isDecor) {
                if (object.isDecor) {
                    return 1;
                }
                return -1;
            }
            return object.position - object2.position;
        }
    }

}

