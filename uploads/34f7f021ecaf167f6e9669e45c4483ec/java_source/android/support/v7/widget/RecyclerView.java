/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.content.res.Resources$Theme
 *  android.content.res.TypedArray
 *  android.database.Observable
 *  android.graphics.Canvas
 *  android.graphics.PointF
 *  android.graphics.Rect
 *  android.graphics.RectF
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.os.SystemClock
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.util.Log
 *  android.util.SparseArray
 *  android.util.SparseIntArray
 *  android.util.TypedValue
 *  android.view.Display
 *  android.view.FocusFinder
 *  android.view.MotionEvent
 *  android.view.VelocityTracker
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.view.ViewConfiguration
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewGroup$MarginLayoutParams
 *  android.view.ViewParent
 *  android.view.accessibility.AccessibilityEvent
 *  android.view.accessibility.AccessibilityManager
 *  android.view.animation.Interpolator
 */
package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.os.TraceCompat;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.NestedScrollingChild;
import android.support.v4.view.NestedScrollingChildHelper;
import android.support.v4.view.ScrollingView;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.support.v4.widget.ScrollerCompat;
import android.support.v7.recyclerview.R;
import android.support.v7.widget.AdapterHelper;
import android.support.v7.widget.ChildHelper;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.RecyclerViewAccessibilityDelegate;
import android.support.v7.widget.ViewInfoStore;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class RecyclerView
extends ViewGroup
implements ScrollingView,
NestedScrollingChild {
    private static final boolean ALLOW_PREFETCHING;
    static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC;
    private static final int[] CLIP_TO_PADDING_ATTR;
    static final boolean DEBUG = false;
    static final boolean DISPATCH_TEMP_DETACH = false;
    static final boolean FORCE_INVALIDATE_DISPLAY_LIST;
    public static final int HORIZONTAL = 0;
    private static final int INVALID_POINTER = -1;
    public static final int INVALID_TYPE = -1;
    private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
    static final int MAX_SCROLL_DURATION = 2000;
    private static final long MIN_PREFETCH_TIME_NANOS;
    private static final int[] NESTED_SCROLLING_ATTRS;
    public static final long NO_ID = -1;
    public static final int NO_POSITION = -1;
    static final boolean POST_UPDATES_ON_ANIMATION;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    static final String TAG = "RecyclerView";
    public static final int TOUCH_SLOP_DEFAULT = 0;
    public static final int TOUCH_SLOP_PAGING = 1;
    static final String TRACE_BIND_VIEW_TAG = "RV OnBindView";
    static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
    private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
    private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
    private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
    private static final String TRACE_PREFETCH_TAG = "RV Prefetch";
    static final String TRACE_SCROLL_TAG = "RV Scroll";
    public static final int VERTICAL = 1;
    static long sFrameIntervalNanos;
    static final Interpolator sQuinticInterpolator;
    RecyclerViewAccessibilityDelegate mAccessibilityDelegate;
    private final AccessibilityManager mAccessibilityManager;
    private OnItemTouchListener mActiveOnItemTouchListener;
    Adapter mAdapter;
    AdapterHelper mAdapterHelper;
    boolean mAdapterUpdateDuringMeasure;
    private EdgeEffectCompat mBottomGlow;
    private ChildDrawingOrderCallback mChildDrawingOrderCallback;
    ChildHelper mChildHelper;
    boolean mClipToPadding;
    boolean mDataSetHasChangedAfterLayout;
    private int mDispatchScrollCounter;
    private int mEatRequestLayout;
    private int mEatenAccessibilityChangeFlags;
    @VisibleForTesting
    boolean mFirstLayoutComplete;
    boolean mHasFixedSize;
    private boolean mIgnoreMotionEventTillDown;
    private int mInitialTouchX;
    private int mInitialTouchY;
    boolean mIsAttached;
    ItemAnimator mItemAnimator;
    private ItemAnimator.ItemAnimatorListener mItemAnimatorListener;
    private Runnable mItemAnimatorRunner;
    final ArrayList<ItemDecoration> mItemDecorations;
    boolean mItemsAddedOrRemoved;
    boolean mItemsChanged;
    private int mLastTouchX;
    private int mLastTouchY;
    @VisibleForTesting
    LayoutManager mLayout;
    boolean mLayoutFrozen;
    private int mLayoutOrScrollCounter;
    boolean mLayoutRequestEaten;
    private EdgeEffectCompat mLeftGlow;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private final int[] mMinMaxLayoutPositions;
    private final int[] mNestedOffsets;
    private final RecyclerViewDataObserver mObserver;
    private List<OnChildAttachStateChangeListener> mOnChildAttachStateListeners;
    private OnFlingListener mOnFlingListener;
    private final ArrayList<OnItemTouchListener> mOnItemTouchListeners;
    private final List<ViewHolder> mPendingAccessibilityImportanceChange;
    private SavedState mPendingSavedState;
    boolean mPostedAnimatorRunner;
    private boolean mPreserveFocusAfterLayout;
    final Recycler mRecycler;
    RecyclerListener mRecyclerListener;
    private EdgeEffectCompat mRightGlow;
    private final int[] mScrollConsumed;
    private float mScrollFactor;
    private OnScrollListener mScrollListener;
    private List<OnScrollListener> mScrollListeners;
    private final int[] mScrollOffset;
    private int mScrollPointerId;
    private int mScrollState;
    private NestedScrollingChildHelper mScrollingChildHelper;
    final State mState;
    final Rect mTempRect;
    private final Rect mTempRect2;
    final RectF mTempRectF;
    private EdgeEffectCompat mTopGlow;
    private int mTouchSlop;
    final Runnable mUpdateChildViewsRunnable;
    private VelocityTracker mVelocityTracker;
    final ViewFlinger mViewFlinger;
    private final ViewInfoStore.ProcessCallback mViewInfoProcessCallback;
    final ViewInfoStore mViewInfoStore;
    ViewPrefetcher mViewPrefetcher;

    /*
     * Enabled aggressive block sorting
     */
    static {
        NESTED_SCROLLING_ATTRS = new int[]{16843830};
        CLIP_TO_PADDING_ATTR = new int[]{16842987};
        boolean bl = Build.VERSION.SDK_INT == 18 || Build.VERSION.SDK_INT == 19 || Build.VERSION.SDK_INT == 20;
        FORCE_INVALIDATE_DISPLAY_LIST = bl;
        bl = Build.VERSION.SDK_INT >= 23;
        ALLOW_SIZE_IN_UNSPECIFIED_SPEC = bl;
        bl = Build.VERSION.SDK_INT >= 16;
        POST_UPDATES_ON_ANIMATION = bl;
        bl = Build.VERSION.SDK_INT >= 21;
        ALLOW_PREFETCHING = bl;
        LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[]{Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE};
        MIN_PREFETCH_TIME_NANOS = TimeUnit.MILLISECONDS.toNanos(4);
        sFrameIntervalNanos = 0;
        sQuinticInterpolator = new Interpolator(){

            public float getInterpolation(float f2) {
                return f2 * f2 * f2 * f2 * (f2 -= 1.0f) + 1.0f;
            }
        };
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    public RecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /*
     * Enabled aggressive block sorting
     */
    public RecyclerView(Context context, @Nullable AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.mObserver = new RecyclerViewDataObserver();
        this.mRecycler = new Recycler();
        this.mViewInfoStore = new ViewInfoStore();
        this.mUpdateChildViewsRunnable = new Runnable(){

            @Override
            public void run() {
                if (!RecyclerView.this.mFirstLayoutComplete || RecyclerView.this.isLayoutRequested()) {
                    return;
                }
                if (!RecyclerView.this.mIsAttached) {
                    RecyclerView.this.requestLayout();
                    return;
                }
                if (RecyclerView.this.mLayoutFrozen) {
                    RecyclerView.this.mLayoutRequestEaten = true;
                    return;
                }
                RecyclerView.this.consumePendingUpdateOperations();
            }
        };
        this.mTempRect = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRectF = new RectF();
        this.mItemDecorations = new ArrayList();
        this.mOnItemTouchListeners = new ArrayList();
        this.mEatRequestLayout = 0;
        this.mDataSetHasChangedAfterLayout = false;
        this.mLayoutOrScrollCounter = 0;
        this.mDispatchScrollCounter = 0;
        this.mItemAnimator = new DefaultItemAnimator();
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScrollFactor = Float.MIN_VALUE;
        this.mPreserveFocusAfterLayout = true;
        this.mViewFlinger = new ViewFlinger();
        ViewPrefetcher viewPrefetcher = ALLOW_PREFETCHING ? new ViewPrefetcher() : null;
        this.mViewPrefetcher = viewPrefetcher;
        this.mState = new State();
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        this.mItemAnimatorListener = new ItemAnimatorRestoreListener();
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[2];
        this.mScrollOffset = new int[2];
        this.mScrollConsumed = new int[2];
        this.mNestedOffsets = new int[2];
        this.mPendingAccessibilityImportanceChange = new ArrayList<ViewHolder>();
        this.mItemAnimatorRunner = new Runnable(){

            @Override
            public void run() {
                if (RecyclerView.this.mItemAnimator != null) {
                    RecyclerView.this.mItemAnimator.runPendingAnimations();
                }
                RecyclerView.this.mPostedAnimatorRunner = false;
            }
        };
        this.mViewInfoProcessCallback = new ViewInfoStore.ProcessCallback(){

            @Override
            public void processAppeared(ViewHolder viewHolder, ItemAnimator.ItemHolderInfo itemHolderInfo, ItemAnimator.ItemHolderInfo itemHolderInfo2) {
                RecyclerView.this.animateAppearance(viewHolder, itemHolderInfo, itemHolderInfo2);
            }

            @Override
            public void processDisappeared(ViewHolder viewHolder, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo, @Nullable ItemAnimator.ItemHolderInfo itemHolderInfo2) {
                RecyclerView.this.mRecycler.unscrapView(viewHolder);
                RecyclerView.this.animateDisappearance(viewHolder, itemHolderInfo, itemHolderInfo2);
            }

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void processPersistent(ViewHolder viewHolder, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo2) {
                viewHolder.setIsRecyclable(false);
                if (RecyclerView.this.mDataSetHasChangedAfterLayout) {
                    if (!RecyclerView.this.mItemAnimator.animateChange(viewHolder, viewHolder, itemHolderInfo, itemHolderInfo2)) return;
                    {
                        RecyclerView.this.postAnimationRunner();
                        return;
                    }
                } else {
                    if (!RecyclerView.this.mItemAnimator.animatePersistence(viewHolder, itemHolderInfo, itemHolderInfo2)) return;
                    {
                        RecyclerView.this.postAnimationRunner();
                        return;
                    }
                }
            }

            @Override
            public void unused(ViewHolder viewHolder) {
                RecyclerView.this.mLayout.removeAndRecycleView(viewHolder.itemView, RecyclerView.this.mRecycler);
            }
        };
        if (attributeSet != null) {
            viewPrefetcher = context.obtainStyledAttributes(attributeSet, CLIP_TO_PADDING_ATTR, n2, 0);
            this.mClipToPadding = viewPrefetcher.getBoolean(0, true);
            viewPrefetcher.recycle();
        } else {
            this.mClipToPadding = true;
        }
        this.setScrollContainer(true);
        this.setFocusableInTouchMode(true);
        viewPrefetcher = ViewConfiguration.get((Context)context);
        this.mTouchSlop = viewPrefetcher.getScaledTouchSlop();
        this.mMinFlingVelocity = viewPrefetcher.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewPrefetcher.getScaledMaximumFlingVelocity();
        boolean bl = this.getOverScrollMode() == 2;
        this.setWillNotDraw(bl);
        this.mItemAnimator.setListener(this.mItemAnimatorListener);
        this.initAdapterManager();
        this.initChildrenHelper();
        if (ViewCompat.getImportantForAccessibility((View)this) == 0) {
            ViewCompat.setImportantForAccessibility((View)this, 1);
        }
        this.mAccessibilityManager = (AccessibilityManager)this.getContext().getSystemService("accessibility");
        this.setAccessibilityDelegateCompat(new RecyclerViewAccessibilityDelegate(this));
        bl = true;
        if (attributeSet != null) {
            viewPrefetcher = context.obtainStyledAttributes(attributeSet, R.styleable.RecyclerView, n2, 0);
            String string2 = viewPrefetcher.getString(R.styleable.RecyclerView_layoutManager);
            if (viewPrefetcher.getInt(R.styleable.RecyclerView_android_descendantFocusability, -1) == -1) {
                this.setDescendantFocusability(262144);
            }
            viewPrefetcher.recycle();
            this.createLayoutManager(context, string2, attributeSet, n2, 0);
            if (Build.VERSION.SDK_INT >= 21) {
                context = context.obtainStyledAttributes(attributeSet, NESTED_SCROLLING_ATTRS, n2, 0);
                bl = context.getBoolean(0, true);
                context.recycle();
            }
        } else {
            this.setDescendantFocusability(262144);
        }
        this.setNestedScrollingEnabled(bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void addAnimatingView(ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        boolean bl = view.getParent() == this;
        this.mRecycler.unscrapView(this.getChildViewHolder(view));
        if (viewHolder.isTmpDetached()) {
            this.mChildHelper.attachViewToParent(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!bl) {
            this.mChildHelper.addView(view, true);
            return;
        }
        this.mChildHelper.hide(view);
    }

    private void animateChange(@NonNull ViewHolder viewHolder, @NonNull ViewHolder viewHolder2, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo2, boolean bl, boolean bl2) {
        viewHolder.setIsRecyclable(false);
        if (bl) {
            this.addAnimatingView(viewHolder);
        }
        if (viewHolder != viewHolder2) {
            if (bl2) {
                this.addAnimatingView(viewHolder2);
            }
            viewHolder.mShadowedHolder = viewHolder2;
            this.addAnimatingView(viewHolder);
            this.mRecycler.unscrapView(viewHolder);
            viewHolder2.setIsRecyclable(false);
            viewHolder2.mShadowingHolder = viewHolder;
        }
        if (this.mItemAnimator.animateChange(viewHolder, viewHolder2, itemHolderInfo, itemHolderInfo2)) {
            this.postAnimationRunner();
        }
    }

    private void cancelTouch() {
        this.resetTouch();
        this.setScrollState(0);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private void createLayoutManager(Context var1_1, String var2_8, AttributeSet var3_9, int var4_10, int var5_11) {
        if (var2_8 == null) return;
        if ((var2_8 = var2_8.trim()).length() == 0) return;
        var7_12 = this.getFullClassName((Context)var1_1, (String)var2_8);
        try {
            var2_8 = this.isInEditMode() != false ? this.getClass().getClassLoader() : var1_1.getClassLoader();
            {
                var8_13 = var2_8.loadClass(var7_12).asSubclass(LayoutManager.class);
                var2_8 = null;
                try {
                    var6_14 = var8_13.getConstructor(RecyclerView.LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
                }
                catch (NoSuchMethodException var6_15) {
                    try {
                        var1_1 = var8_13.getConstructor(new Class[0]);
                    }
                    catch (NoSuchMethodException var1_2) {
                        var1_2.initCause(var6_15);
                        throw new IllegalStateException(var3_9.getPositionDescription() + ": Error creating LayoutManager " + var7_12, var1_2);
                    }
lbl16: // 2 sources:
                    var1_1.setAccessible(true);
                    this.setLayoutManager((LayoutManager)var1_1.newInstance((Object[])var2_8));
                    return;
                }
                var2_8 = new Object[]{var1_1, var3_9, var4_10, var5_11};
                var1_1 = var6_14;
                ** try [egrp 2[TRYBLOCK] [16, 17, 18, 19, 20 : 96->184)] { 
lbl22: // 1 sources:
                ** GOTO lbl16
            }
        }
lbl23: // 2 sources:
        catch (ClassNotFoundException var1_3) {
            throw new IllegalStateException(var3_9.getPositionDescription() + ": Unable to find LayoutManager " + var7_12, var1_3);
        }
lbl25: // 2 sources:
        catch (InvocationTargetException var1_4) {
            throw new IllegalStateException(var3_9.getPositionDescription() + ": Could not instantiate the LayoutManager: " + var7_12, var1_4);
        }
lbl27: // 2 sources:
        catch (InstantiationException var1_5) {
            throw new IllegalStateException(var3_9.getPositionDescription() + ": Could not instantiate the LayoutManager: " + var7_12, var1_5);
        }
lbl29: // 2 sources:
        catch (IllegalAccessException var1_6) {
            throw new IllegalStateException(var3_9.getPositionDescription() + ": Cannot access non-public constructor " + var7_12, var1_6);
        }
lbl31: // 2 sources:
        catch (ClassCastException var1_7) {
            throw new IllegalStateException(var3_9.getPositionDescription() + ": Class is not a LayoutManager " + var7_12, var1_7);
        }
    }

    private boolean didChildRangeChange(int n2, int n3) {
        boolean bl = false;
        this.findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        if (this.mMinMaxLayoutPositions[0] != n2 || this.mMinMaxLayoutPositions[1] != n3) {
            bl = true;
        }
        return bl;
    }

    private void dispatchContentChangedIfNecessary() {
        int n2 = this.mEatenAccessibilityChangeFlags;
        this.mEatenAccessibilityChangeFlags = 0;
        if (n2 != 0 && this.isAccessibilityEnabled()) {
            AccessibilityEvent accessibilityEvent = AccessibilityEvent.obtain();
            accessibilityEvent.setEventType(2048);
            AccessibilityEventCompat.setContentChangeTypes(accessibilityEvent, n2);
            this.sendAccessibilityEventUnchecked(accessibilityEvent);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void dispatchLayoutStep1() {
        ItemAnimator.ItemHolderInfo itemHolderInfo;
        int n2;
        int n3;
        this.mState.assertLayoutStep(1);
        this.mState.mIsMeasuring = false;
        this.eatRequestLayout();
        this.mViewInfoStore.clear();
        this.onEnterLayoutOrScroll();
        this.saveFocusInfo();
        this.processAdapterUpdatesAndSetAnimationFlags();
        Object object = this.mState;
        boolean bl = this.mState.mRunSimpleAnimations && this.mItemsChanged;
        object.mTrackOldChangeHolders = bl;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        this.mState.mInPreLayout = this.mState.mRunPredictiveAnimations;
        this.mState.mItemCount = this.mAdapter.getItemCount();
        this.findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        if (this.mState.mRunSimpleAnimations) {
            n2 = this.mChildHelper.getChildCount();
            for (n3 = 0; n3 < n2; ++n3) {
                object = RecyclerView.getChildViewHolderInt(this.mChildHelper.getChildAt(n3));
                if (object.shouldIgnore() || object.isInvalid() && !this.mAdapter.hasStableIds()) continue;
                itemHolderInfo = this.mItemAnimator.recordPreLayoutInformation(this.mState, (ViewHolder)object, ItemAnimator.buildAdapterChangeFlagsForAnimations((ViewHolder)object), object.getUnmodifiedPayloads());
                this.mViewInfoStore.addToPreLayout((ViewHolder)object, itemHolderInfo);
                if (!this.mState.mTrackOldChangeHolders || !object.isUpdated() || object.isRemoved() || object.shouldIgnore() || object.isInvalid()) continue;
                long l2 = this.getChangedHolderKey((ViewHolder)object);
                this.mViewInfoStore.addToOldChangeHolders(l2, (ViewHolder)object);
            }
        }
        if (!this.mState.mRunPredictiveAnimations) {
            this.clearOldPositions();
        } else {
            this.saveOldPositions();
            bl = this.mState.mStructureChanged;
            this.mState.mStructureChanged = false;
            this.mLayout.onLayoutChildren(this.mRecycler, this.mState);
            this.mState.mStructureChanged = bl;
            for (n3 = 0; n3 < this.mChildHelper.getChildCount(); ++n3) {
                object = RecyclerView.getChildViewHolderInt(this.mChildHelper.getChildAt(n3));
                if (object.shouldIgnore() || this.mViewInfoStore.isInPreLayout((ViewHolder)object)) continue;
                int n4 = ItemAnimator.buildAdapterChangeFlagsForAnimations((ViewHolder)object);
                bl = object.hasAnyOfTheFlags(8192);
                n2 = n4;
                if (!bl) {
                    n2 = n4 | 4096;
                }
                itemHolderInfo = this.mItemAnimator.recordPreLayoutInformation(this.mState, (ViewHolder)object, n2, object.getUnmodifiedPayloads());
                if (bl) {
                    this.recordAnimationInfoIfBouncedHiddenView((ViewHolder)object, itemHolderInfo);
                    continue;
                }
                this.mViewInfoStore.addToAppearedInPreLayoutHolders((ViewHolder)object, itemHolderInfo);
            }
            this.clearOldPositions();
        }
        this.onExitLayoutOrScroll();
        this.resumeRequestLayout(false);
        this.mState.mLayoutStep = 2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void dispatchLayoutStep2() {
        this.eatRequestLayout();
        this.onEnterLayoutOrScroll();
        this.mState.assertLayoutStep(6);
        this.mAdapterHelper.consumeUpdatesInOnePass();
        this.mState.mItemCount = this.mAdapter.getItemCount();
        this.mState.mDeletedInvisibleItemCountSincePreviousLayout = 0;
        this.mState.mInPreLayout = false;
        this.mLayout.onLayoutChildren(this.mRecycler, this.mState);
        this.mState.mStructureChanged = false;
        this.mPendingSavedState = null;
        State state = this.mState;
        boolean bl = this.mState.mRunSimpleAnimations && this.mItemAnimator != null;
        state.mRunSimpleAnimations = bl;
        this.mState.mLayoutStep = 4;
        this.onExitLayoutOrScroll();
        this.resumeRequestLayout(false);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void dispatchLayoutStep3() {
        this.mState.assertLayoutStep(4);
        this.eatRequestLayout();
        this.onEnterLayoutOrScroll();
        this.mState.mLayoutStep = 1;
        if (this.mState.mRunSimpleAnimations) {
            for (int i2 = this.mChildHelper.getChildCount() - 1; i2 >= 0; --i2) {
                ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(this.mChildHelper.getChildAt(i2));
                if (viewHolder.shouldIgnore()) continue;
                long l2 = this.getChangedHolderKey(viewHolder);
                ItemAnimator.ItemHolderInfo itemHolderInfo = this.mItemAnimator.recordPostLayoutInformation(this.mState, viewHolder);
                ViewHolder viewHolder2 = this.mViewInfoStore.getFromOldChangeHolders(l2);
                if (viewHolder2 != null && !viewHolder2.shouldIgnore()) {
                    boolean bl = this.mViewInfoStore.isDisappearing(viewHolder2);
                    boolean bl2 = this.mViewInfoStore.isDisappearing(viewHolder);
                    if (bl && viewHolder2 == viewHolder) {
                        this.mViewInfoStore.addToPostLayout(viewHolder, itemHolderInfo);
                        continue;
                    }
                    ItemAnimator.ItemHolderInfo itemHolderInfo2 = this.mViewInfoStore.popFromPreLayout(viewHolder2);
                    this.mViewInfoStore.addToPostLayout(viewHolder, itemHolderInfo);
                    itemHolderInfo = this.mViewInfoStore.popFromPostLayout(viewHolder);
                    if (itemHolderInfo2 == null) {
                        this.handleMissingPreInfoForChangeError(l2, viewHolder, viewHolder2);
                        continue;
                    }
                    this.animateChange(viewHolder2, viewHolder, itemHolderInfo2, itemHolderInfo, bl, bl2);
                    continue;
                }
                this.mViewInfoStore.addToPostLayout(viewHolder, itemHolderInfo);
            }
            this.mViewInfoStore.process(this.mViewInfoProcessCallback);
        }
        this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        this.mState.mPreviousLayoutItemCount = this.mState.mItemCount;
        this.mDataSetHasChangedAfterLayout = false;
        this.mState.mRunSimpleAnimations = false;
        this.mState.mRunPredictiveAnimations = false;
        this.mLayout.mRequestedSimpleAnimations = false;
        if (this.mRecycler.mChangedScrap != null) {
            this.mRecycler.mChangedScrap.clear();
        }
        this.mLayout.onLayoutCompleted(this.mState);
        this.onExitLayoutOrScroll();
        this.resumeRequestLayout(false);
        this.mViewInfoStore.clear();
        if (this.didChildRangeChange(this.mMinMaxLayoutPositions[0], this.mMinMaxLayoutPositions[1])) {
            this.dispatchOnScrolled(0, 0);
        }
        this.recoverFocusFromState();
        this.resetFocusInfo();
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean dispatchOnItemTouch(MotionEvent motionEvent) {
        int n2 = motionEvent.getAction();
        if (this.mActiveOnItemTouchListener != null) {
            if (n2 != 0) {
                this.mActiveOnItemTouchListener.onTouchEvent(this, motionEvent);
                if (n2 != 3 && n2 != 1) return true;
                {
                    this.mActiveOnItemTouchListener = null;
                    return true;
                }
            }
            this.mActiveOnItemTouchListener = null;
        }
        if (n2 == 0) {
            return false;
        }
        int n3 = this.mOnItemTouchListeners.size();
        n2 = 0;
        while (n2 < n3) {
            OnItemTouchListener onItemTouchListener = this.mOnItemTouchListeners.get(n2);
            if (onItemTouchListener.onInterceptTouchEvent(this, motionEvent)) {
                this.mActiveOnItemTouchListener = onItemTouchListener;
                return true;
            }
            ++n2;
        }
        return false;
    }

    private boolean dispatchOnItemTouchIntercept(MotionEvent motionEvent) {
        int n2 = motionEvent.getAction();
        if (n2 == 3 || n2 == 0) {
            this.mActiveOnItemTouchListener = null;
        }
        int n3 = this.mOnItemTouchListeners.size();
        for (int i2 = 0; i2 < n3; ++i2) {
            OnItemTouchListener onItemTouchListener = this.mOnItemTouchListeners.get(i2);
            if (!onItemTouchListener.onInterceptTouchEvent(this, motionEvent) || n2 == 3) continue;
            this.mActiveOnItemTouchListener = onItemTouchListener;
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void findMinMaxChildLayoutPositions(int[] arrn) {
        int n2 = this.mChildHelper.getChildCount();
        if (n2 == 0) {
            arrn[0] = -1;
            arrn[1] = -1;
            return;
        }
        int n3 = Integer.MAX_VALUE;
        int n4 = Integer.MIN_VALUE;
        int n5 = 0;
        do {
            int n6;
            if (n5 >= n2) {
                arrn[0] = n3;
                arrn[1] = n4;
                return;
            }
            ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(this.mChildHelper.getChildAt(n5));
            if (viewHolder.shouldIgnore()) {
                n6 = n3;
                n3 = n4;
            } else {
                int n7 = viewHolder.getLayoutPosition();
                int n8 = n3;
                if (n7 < n3) {
                    n8 = n7;
                }
                n3 = n4;
                n6 = n8;
                if (n7 > n4) {
                    n3 = n7;
                    n6 = n8;
                }
            }
            ++n5;
            n4 = n3;
            n3 = n6;
        } while (true);
    }

    static ViewHolder getChildViewHolderInt(View view) {
        if (view == null) {
            return null;
        }
        return ((LayoutParams)view.getLayoutParams()).mViewHolder;
    }

    static void getDecoratedBoundsWithMarginsInt(View view, Rect rect) {
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        Rect rect2 = layoutParams.mDecorInsets;
        rect.set(view.getLeft() - rect2.left - layoutParams.leftMargin, view.getTop() - rect2.top - layoutParams.topMargin, view.getRight() + rect2.right + layoutParams.rightMargin, view.getBottom() + rect2.bottom + layoutParams.bottomMargin);
    }

    private int getDeepestFocusedViewWithId(View view) {
        int n2 = view.getId();
        while (!view.isFocused() && view instanceof ViewGroup && view.hasFocus()) {
            View view2;
            view = view2 = ((ViewGroup)view).getFocusedChild();
            if (view2.getId() == -1) continue;
            n2 = view2.getId();
            view = view2;
        }
        return n2;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private String getFullClassName(Context object, String string2) {
        if (string2.charAt(0) == '.') {
            return object.getPackageName() + string2;
        }
        object = string2;
        if (string2.contains(".")) return object;
        return RecyclerView.class.getPackage().getName() + '.' + string2;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private float getScrollFactor() {
        if (this.mScrollFactor != Float.MIN_VALUE) return this.mScrollFactor;
        TypedValue typedValue = new TypedValue();
        if (!this.getContext().getTheme().resolveAttribute(16842829, typedValue, true)) return 0.0f;
        this.mScrollFactor = typedValue.getDimension(this.getContext().getResources().getDisplayMetrics());
        return this.mScrollFactor;
    }

    private NestedScrollingChildHelper getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new NestedScrollingChildHelper((View)this);
        }
        return this.mScrollingChildHelper;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void handleMissingPreInfoForChangeError(long l2, ViewHolder viewHolder, ViewHolder viewHolder2) {
        ViewHolder viewHolder3;
        int n2 = this.mChildHelper.getChildCount();
        int n3 = 0;
        do {
            if (n3 >= n2) {
                Log.e((String)"RecyclerView", (String)("Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + viewHolder2 + " cannot be found but it is necessary for " + viewHolder));
                return;
            }
            viewHolder3 = RecyclerView.getChildViewHolderInt(this.mChildHelper.getChildAt(n3));
            if (viewHolder3 != viewHolder && this.getChangedHolderKey(viewHolder3) == l2) {
                if (this.mAdapter == null || !this.mAdapter.hasStableIds()) break;
                throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + viewHolder3 + " \n View Holder 2:" + viewHolder);
            }
            ++n3;
        } while (true);
        throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + viewHolder3 + " \n View Holder 2:" + viewHolder);
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean hasUpdatedView() {
        int n2 = this.mChildHelper.getChildCount();
        int n3 = 0;
        while (n3 < n2) {
            ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(this.mChildHelper.getChildAt(n3));
            if (viewHolder != null && !viewHolder.shouldIgnore() && viewHolder.isUpdated()) {
                return true;
            }
            ++n3;
        }
        return false;
    }

    private void initChildrenHelper() {
        this.mChildHelper = new ChildHelper(new ChildHelper.Callback(){

            @Override
            public void addView(View view, int n2) {
                RecyclerView.this.addView(view, n2);
                RecyclerView.this.dispatchChildAttached(view);
            }

            @Override
            public void attachViewToParent(View view, int n2, ViewGroup.LayoutParams layoutParams) {
                ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(view);
                if (viewHolder != null) {
                    if (!viewHolder.isTmpDetached() && !viewHolder.shouldIgnore()) {
                        throw new IllegalArgumentException("Called attach on a child which is not detached: " + viewHolder);
                    }
                    viewHolder.clearTmpDetachFlag();
                }
                RecyclerView.this.attachViewToParent(view, n2, layoutParams);
            }

            @Override
            public void detachViewFromParent(int n2) {
                Object object = this.getChildAt(n2);
                if (object != null && (object = RecyclerView.getChildViewHolderInt((View)object)) != null) {
                    if (object.isTmpDetached() && !object.shouldIgnore()) {
                        throw new IllegalArgumentException("called detach on an already detached child " + object);
                    }
                    object.addFlags(256);
                }
                RecyclerView.this.detachViewFromParent(n2);
            }

            @Override
            public View getChildAt(int n2) {
                return RecyclerView.this.getChildAt(n2);
            }

            @Override
            public int getChildCount() {
                return RecyclerView.this.getChildCount();
            }

            @Override
            public ViewHolder getChildViewHolder(View view) {
                return RecyclerView.getChildViewHolderInt(view);
            }

            @Override
            public int indexOfChild(View view) {
                return RecyclerView.this.indexOfChild(view);
            }

            @Override
            public void onEnteredHiddenState(View object) {
                if ((object = RecyclerView.getChildViewHolderInt((View)object)) != null) {
                    ((ViewHolder)object).onEnteredHiddenState(RecyclerView.this);
                }
            }

            @Override
            public void onLeftHiddenState(View object) {
                if ((object = RecyclerView.getChildViewHolderInt((View)object)) != null) {
                    ((ViewHolder)object).onLeftHiddenState(RecyclerView.this);
                }
            }

            @Override
            public void removeAllViews() {
                int n2 = this.getChildCount();
                for (int i2 = 0; i2 < n2; ++i2) {
                    RecyclerView.this.dispatchChildDetached(this.getChildAt(i2));
                }
                RecyclerView.this.removeAllViews();
            }

            @Override
            public void removeViewAt(int n2) {
                View view = RecyclerView.this.getChildAt(n2);
                if (view != null) {
                    RecyclerView.this.dispatchChildDetached(view);
                }
                RecyclerView.this.removeViewAt(n2);
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean isPreferredNextFocus(View view, View view2, int n2) {
        boolean bl = false;
        boolean bl2 = true;
        if (view2 == null) return false;
        if (view2 == this) {
            return false;
        }
        boolean bl3 = bl2;
        if (view == null) return bl3;
        if (n2 != 2 && n2 != 1) {
            return this.isPreferredNextFocusAbsolute(view, view2, n2);
        }
        int n3 = this.mLayout.getLayoutDirection() == 1 ? 1 : 0;
        if (n2 == 2) {
            bl = true;
        }
        n3 = bl ^ n3 ? 66 : 17;
        bl3 = bl2;
        if (this.isPreferredNextFocusAbsolute(view, view2, n3)) return bl3;
        if (n2 != 2) return this.isPreferredNextFocusAbsolute(view, view2, 33);
        return this.isPreferredNextFocusAbsolute(view, view2, 130);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private boolean isPreferredNextFocusAbsolute(View view, View view2, int n2) {
        this.mTempRect.set(0, 0, view.getWidth(), view.getHeight());
        this.mTempRect2.set(0, 0, view2.getWidth(), view2.getHeight());
        this.offsetDescendantRectToMyCoords(view, this.mTempRect);
        this.offsetDescendantRectToMyCoords(view2, this.mTempRect2);
        switch (n2) {
            default: {
                throw new IllegalArgumentException("direction must be absolute. received:" + n2);
            }
            case 17: {
                if (this.mTempRect.right <= this.mTempRect2.right) {
                    if (this.mTempRect.left < this.mTempRect2.right) return false;
                }
                if (this.mTempRect.left <= this.mTempRect2.left) return false;
                return true;
            }
            case 66: {
                if (this.mTempRect.left >= this.mTempRect2.left) {
                    if (this.mTempRect.right > this.mTempRect2.left) return false;
                }
                if (this.mTempRect.right < this.mTempRect2.right) return true;
                return false;
            }
            case 33: {
                if (this.mTempRect.bottom <= this.mTempRect2.bottom) {
                    if (this.mTempRect.top < this.mTempRect2.bottom) return false;
                }
                if (this.mTempRect.top > this.mTempRect2.top) return true;
                return false;
            }
            case 130: 
        }
        if (this.mTempRect.top >= this.mTempRect2.top) {
            if (this.mTempRect.bottom > this.mTempRect2.top) return false;
        }
        if (this.mTempRect.bottom < this.mTempRect2.bottom) return true;
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void onPointerUp(MotionEvent motionEvent) {
        int n2 = MotionEventCompat.getActionIndex(motionEvent);
        if (motionEvent.getPointerId(n2) == this.mScrollPointerId) {
            int n3;
            n2 = n2 == 0 ? 1 : 0;
            this.mScrollPointerId = motionEvent.getPointerId(n2);
            this.mLastTouchX = n3 = (int)(motionEvent.getX(n2) + 0.5f);
            this.mInitialTouchX = n3;
            this.mLastTouchY = n2 = (int)(motionEvent.getY(n2) + 0.5f);
            this.mInitialTouchY = n2;
        }
    }

    private boolean predictiveItemAnimationsEnabled() {
        if (this.mItemAnimator != null && this.mLayout.supportsPredictiveItemAnimations()) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void processAdapterUpdatesAndSetAnimationFlags() {
        boolean bl = true;
        if (this.mDataSetHasChangedAfterLayout) {
            this.mAdapterHelper.reset();
            this.markKnownViewsInvalid();
            this.mLayout.onItemsChanged(this);
        }
        if (this.predictiveItemAnimationsEnabled()) {
            this.mAdapterHelper.preProcess();
        } else {
            this.mAdapterHelper.consumeUpdatesInOnePass();
        }
        boolean bl2 = this.mItemsAddedOrRemoved || this.mItemsChanged;
        State state = this.mState;
        boolean bl3 = !(!this.mFirstLayoutComplete || this.mItemAnimator == null || !this.mDataSetHasChangedAfterLayout && !bl2 && !this.mLayout.mRequestedSimpleAnimations || this.mDataSetHasChangedAfterLayout && !this.mAdapter.hasStableIds());
        state.mRunSimpleAnimations = bl3;
        state = this.mState;
        bl3 = this.mState.mRunSimpleAnimations && bl2 && !this.mDataSetHasChangedAfterLayout && this.predictiveItemAnimationsEnabled() ? bl : false;
        state.mRunPredictiveAnimations = bl3;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void pullGlows(float f2, float f3, float f4, float f5) {
        boolean bl;
        boolean bl2 = false;
        if (f3 < 0.0f) {
            this.ensureLeftGlow();
            bl = bl2;
            if (this.mLeftGlow.onPull((- f3) / (float)this.getWidth(), 1.0f - f4 / (float)this.getHeight())) {
                bl = true;
            }
        } else {
            bl = bl2;
            if (f3 > 0.0f) {
                this.ensureRightGlow();
                bl = bl2;
                if (this.mRightGlow.onPull(f3 / (float)this.getWidth(), f4 / (float)this.getHeight())) {
                    bl = true;
                }
            }
        }
        if (f5 < 0.0f) {
            this.ensureTopGlow();
            bl2 = bl;
            if (this.mTopGlow.onPull((- f5) / (float)this.getHeight(), f2 / (float)this.getWidth())) {
                bl2 = true;
            }
        } else {
            bl2 = bl;
            if (f5 > 0.0f) {
                this.ensureBottomGlow();
                bl2 = bl;
                if (this.mBottomGlow.onPull(f5 / (float)this.getHeight(), 1.0f - f2 / (float)this.getWidth())) {
                    bl2 = true;
                }
            }
        }
        if (bl2 || f3 != 0.0f || f5 != 0.0f) {
            ViewCompat.postInvalidateOnAnimation((View)this);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void recoverFocusFromState() {
        View view;
        Object object;
        if (!this.mPreserveFocusAfterLayout) return;
        if (this.mAdapter == null) return;
        if (!this.hasFocus()) {
            return;
        }
        if (!this.isFocused()) {
            object = this.getFocusedChild();
            if (object == null) return;
            if (!this.mChildHelper.isHidden((View)object)) return;
        }
        object = null;
        if (this.mState.mFocusedItemPosition != -1) {
            object = this.findViewHolderForAdapterPosition(this.mState.mFocusedItemPosition);
        }
        Object object2 = object;
        if (object == null) {
            object2 = object;
            if (this.mState.mFocusedItemId != -1) {
                object2 = object;
                if (this.mAdapter.hasStableIds()) {
                    object2 = this.findViewHolderForItemId(this.mState.mFocusedItemId);
                }
            }
        }
        if (object2 == null) return;
        if (object2.itemView.hasFocus()) return;
        if (!object2.itemView.hasFocusable()) return;
        object = view = object2.itemView;
        if ((long)this.mState.mFocusedSubChildId != -1) {
            object2 = object2.itemView.findViewById(this.mState.mFocusedSubChildId);
            object = view;
            if (object2 != null) {
                object = view;
                if (object2.isFocusable()) {
                    object = object2;
                }
            }
        }
        object.requestFocus();
    }

    private void releaseGlows() {
        boolean bl = false;
        if (this.mLeftGlow != null) {
            bl = this.mLeftGlow.onRelease();
        }
        boolean bl2 = bl;
        if (this.mTopGlow != null) {
            bl2 = bl | this.mTopGlow.onRelease();
        }
        bl = bl2;
        if (this.mRightGlow != null) {
            bl = bl2 | this.mRightGlow.onRelease();
        }
        bl2 = bl;
        if (this.mBottomGlow != null) {
            bl2 = bl | this.mBottomGlow.onRelease();
        }
        if (bl2) {
            ViewCompat.postInvalidateOnAnimation((View)this);
        }
    }

    private void resetFocusInfo() {
        this.mState.mFocusedItemId = -1;
        this.mState.mFocusedItemPosition = -1;
        this.mState.mFocusedSubChildId = -1;
    }

    private void resetTouch() {
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.clear();
        }
        this.stopNestedScroll();
        this.releaseGlows();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void saveFocusInfo() {
        Object object;
        Object object2 = object = null;
        if (this.mPreserveFocusAfterLayout) {
            object2 = object;
            if (this.hasFocus()) {
                object2 = object;
                if (this.mAdapter != null) {
                    object2 = this.getFocusedChild();
                }
            }
        }
        object2 = object2 == null ? null : this.findContainingViewHolder((View)object2);
        if (object2 == null) {
            this.resetFocusInfo();
            return;
        }
        object = this.mState;
        long l2 = this.mAdapter.hasStableIds() ? object2.getItemId() : -1;
        object.mFocusedItemId = l2;
        object = this.mState;
        int n2 = this.mDataSetHasChangedAfterLayout ? -1 : object2.getAdapterPosition();
        object.mFocusedItemPosition = n2;
        this.mState.mFocusedSubChildId = this.getDeepestFocusedViewWithId(object2.itemView);
    }

    private void setAdapterInternal(Adapter adapter, boolean bl, boolean bl2) {
        if (this.mAdapter != null) {
            this.mAdapter.unregisterAdapterDataObserver(this.mObserver);
            this.mAdapter.onDetachedFromRecyclerView(this);
        }
        if (!bl || bl2) {
            if (this.mItemAnimator != null) {
                this.mItemAnimator.endAnimations();
            }
            if (this.mLayout != null) {
                this.mLayout.removeAndRecycleAllViews(this.mRecycler);
                this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
            }
            this.mRecycler.clear();
        }
        this.mAdapterHelper.reset();
        Adapter adapter2 = this.mAdapter;
        this.mAdapter = adapter;
        if (adapter != null) {
            adapter.registerAdapterDataObserver(this.mObserver);
            adapter.onAttachedToRecyclerView(this);
        }
        if (this.mLayout != null) {
            this.mLayout.onAdapterChanged(adapter2, this.mAdapter);
        }
        this.mRecycler.onAdapterChanged(adapter2, this.mAdapter, bl);
        this.mState.mStructureChanged = true;
        this.markKnownViewsInvalid();
    }

    private void stopScrollersInternal() {
        this.mViewFlinger.stop();
        if (this.mLayout != null) {
            this.mLayout.stopSmoothScroller();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    void absorbGlows(int n2, int n3) {
        if (n2 < 0) {
            this.ensureLeftGlow();
            this.mLeftGlow.onAbsorb(- n2);
        } else if (n2 > 0) {
            this.ensureRightGlow();
            this.mRightGlow.onAbsorb(n2);
        }
        if (n3 < 0) {
            this.ensureTopGlow();
            this.mTopGlow.onAbsorb(- n3);
        } else if (n3 > 0) {
            this.ensureBottomGlow();
            this.mBottomGlow.onAbsorb(n3);
        }
        if (n2 != 0 || n3 != 0) {
            ViewCompat.postInvalidateOnAnimation((View)this);
        }
    }

    public void addFocusables(ArrayList<View> arrayList, int n2, int n3) {
        if (this.mLayout == null || !this.mLayout.onAddFocusables(this, arrayList, n2, n3)) {
            super.addFocusables(arrayList, n2, n3);
        }
    }

    public void addItemDecoration(ItemDecoration itemDecoration) {
        this.addItemDecoration(itemDecoration, -1);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void addItemDecoration(ItemDecoration itemDecoration, int n2) {
        if (this.mLayout != null) {
            this.mLayout.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            this.setWillNotDraw(false);
        }
        if (n2 < 0) {
            this.mItemDecorations.add(itemDecoration);
        } else {
            this.mItemDecorations.add(n2, itemDecoration);
        }
        this.markItemDecorInsetsDirty();
        this.requestLayout();
    }

    public void addOnChildAttachStateChangeListener(OnChildAttachStateChangeListener onChildAttachStateChangeListener) {
        if (this.mOnChildAttachStateListeners == null) {
            this.mOnChildAttachStateListeners = new ArrayList<OnChildAttachStateChangeListener>();
        }
        this.mOnChildAttachStateListeners.add(onChildAttachStateChangeListener);
    }

    public void addOnItemTouchListener(OnItemTouchListener onItemTouchListener) {
        this.mOnItemTouchListeners.add(onItemTouchListener);
    }

    public void addOnScrollListener(OnScrollListener onScrollListener) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList<OnScrollListener>();
        }
        this.mScrollListeners.add(onScrollListener);
    }

    void animateAppearance(@NonNull ViewHolder viewHolder, @Nullable ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        viewHolder.setIsRecyclable(false);
        if (this.mItemAnimator.animateAppearance(viewHolder, itemHolderInfo, itemHolderInfo2)) {
            this.postAnimationRunner();
        }
    }

    void animateDisappearance(@NonNull ViewHolder viewHolder, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo, @Nullable ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        this.addAnimatingView(viewHolder);
        viewHolder.setIsRecyclable(false);
        if (this.mItemAnimator.animateDisappearance(viewHolder, itemHolderInfo, itemHolderInfo2)) {
            this.postAnimationRunner();
        }
    }

    void assertInLayoutOrScroll(String string2) {
        if (!this.isComputingLayout()) {
            if (string2 == null) {
                throw new IllegalStateException("Cannot call this method unless RecyclerView is computing a layout or scrolling");
            }
            throw new IllegalStateException(string2);
        }
    }

    void assertNotInLayoutOrScroll(String string2) {
        if (this.isComputingLayout()) {
            if (string2 == null) {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling");
            }
            throw new IllegalStateException(string2);
        }
        if (this.mDispatchScrollCounter > 0) {
            Log.w((String)"RecyclerView", (String)"Cannot call this method in a scroll callback. Scroll callbacks might be run during a measure & layout pass where you cannot change the RecyclerView data. Any method call that might change the structure of the RecyclerView or the adapter contents should be postponed to the next frame.", (Throwable)new IllegalStateException(""));
        }
    }

    boolean canReuseUpdatedViewHolder(ViewHolder viewHolder) {
        if (this.mItemAnimator == null || this.mItemAnimator.canReuseUpdatedViewHolder(viewHolder, viewHolder.getUnmodifiedPayloads())) {
            return true;
        }
        return false;
    }

    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams && this.mLayout.checkLayoutParams((LayoutParams)layoutParams)) {
            return true;
        }
        return false;
    }

    void clearOldPositions() {
        int n2 = this.mChildHelper.getUnfilteredChildCount();
        for (int i2 = 0; i2 < n2; ++i2) {
            ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i2));
            if (viewHolder.shouldIgnore()) continue;
            viewHolder.clearOldPosition();
        }
        this.mRecycler.clearOldPositions();
    }

    public void clearOnChildAttachStateChangeListeners() {
        if (this.mOnChildAttachStateListeners != null) {
            this.mOnChildAttachStateListeners.clear();
        }
    }

    public void clearOnScrollListeners() {
        if (this.mScrollListeners != null) {
            this.mScrollListeners.clear();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int computeHorizontalScrollExtent() {
        if (this.mLayout == null || !this.mLayout.canScrollHorizontally()) {
            return 0;
        }
        return this.mLayout.computeHorizontalScrollExtent(this.mState);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int computeHorizontalScrollOffset() {
        if (this.mLayout == null || !this.mLayout.canScrollHorizontally()) {
            return 0;
        }
        return this.mLayout.computeHorizontalScrollOffset(this.mState);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int computeHorizontalScrollRange() {
        if (this.mLayout == null || !this.mLayout.canScrollHorizontally()) {
            return 0;
        }
        return this.mLayout.computeHorizontalScrollRange(this.mState);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int computeVerticalScrollExtent() {
        if (this.mLayout == null || !this.mLayout.canScrollVertically()) {
            return 0;
        }
        return this.mLayout.computeVerticalScrollExtent(this.mState);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int computeVerticalScrollOffset() {
        if (this.mLayout == null || !this.mLayout.canScrollVertically()) {
            return 0;
        }
        return this.mLayout.computeVerticalScrollOffset(this.mState);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public int computeVerticalScrollRange() {
        if (this.mLayout == null || !this.mLayout.canScrollVertically()) {
            return 0;
        }
        return this.mLayout.computeVerticalScrollRange(this.mState);
    }

    void considerReleasingGlowsOnScroll(int n2, int n3) {
        boolean bl;
        boolean bl2 = bl = false;
        if (this.mLeftGlow != null) {
            bl2 = bl;
            if (!this.mLeftGlow.isFinished()) {
                bl2 = bl;
                if (n2 > 0) {
                    bl2 = this.mLeftGlow.onRelease();
                }
            }
        }
        bl = bl2;
        if (this.mRightGlow != null) {
            bl = bl2;
            if (!this.mRightGlow.isFinished()) {
                bl = bl2;
                if (n2 < 0) {
                    bl = bl2 | this.mRightGlow.onRelease();
                }
            }
        }
        bl2 = bl;
        if (this.mTopGlow != null) {
            bl2 = bl;
            if (!this.mTopGlow.isFinished()) {
                bl2 = bl;
                if (n3 > 0) {
                    bl2 = bl | this.mTopGlow.onRelease();
                }
            }
        }
        bl = bl2;
        if (this.mBottomGlow != null) {
            bl = bl2;
            if (!this.mBottomGlow.isFinished()) {
                bl = bl2;
                if (n3 < 0) {
                    bl = bl2 | this.mBottomGlow.onRelease();
                }
            }
        }
        if (bl) {
            ViewCompat.postInvalidateOnAnimation((View)this);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    void consumePendingUpdateOperations() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            TraceCompat.beginSection("RV FullInvalidate");
            this.dispatchLayout();
            TraceCompat.endSection();
            return;
        } else {
            if (!this.mAdapterHelper.hasPendingUpdates()) return;
            {
                if (this.mAdapterHelper.hasAnyUpdateTypes(4) && !this.mAdapterHelper.hasAnyUpdateTypes(11)) {
                    TraceCompat.beginSection("RV PartialInvalidate");
                    this.eatRequestLayout();
                    this.onEnterLayoutOrScroll();
                    this.mAdapterHelper.preProcess();
                    if (!this.mLayoutRequestEaten) {
                        if (this.hasUpdatedView()) {
                            this.dispatchLayout();
                        } else {
                            this.mAdapterHelper.consumePostponedUpdates();
                        }
                    }
                    this.resumeRequestLayout(true);
                    this.onExitLayoutOrScroll();
                    TraceCompat.endSection();
                    return;
                }
                if (!this.mAdapterHelper.hasPendingUpdates()) return;
                {
                    TraceCompat.beginSection("RV FullInvalidate");
                    this.dispatchLayout();
                    TraceCompat.endSection();
                    return;
                }
            }
        }
    }

    void defaultOnMeasure(int n2, int n3) {
        this.setMeasuredDimension(LayoutManager.chooseSize(n2, this.getPaddingLeft() + this.getPaddingRight(), ViewCompat.getMinimumWidth((View)this)), LayoutManager.chooseSize(n3, this.getPaddingTop() + this.getPaddingBottom(), ViewCompat.getMinimumHeight((View)this)));
    }

    void dispatchChildAttached(View view) {
        ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(view);
        this.onChildAttachedToWindow(view);
        if (this.mAdapter != null && viewHolder != null) {
            this.mAdapter.onViewAttachedToWindow(viewHolder);
        }
        if (this.mOnChildAttachStateListeners != null) {
            for (int i2 = this.mOnChildAttachStateListeners.size() - 1; i2 >= 0; --i2) {
                this.mOnChildAttachStateListeners.get(i2).onChildViewAttachedToWindow(view);
            }
        }
    }

    void dispatchChildDetached(View view) {
        ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(view);
        this.onChildDetachedFromWindow(view);
        if (this.mAdapter != null && viewHolder != null) {
            this.mAdapter.onViewDetachedFromWindow(viewHolder);
        }
        if (this.mOnChildAttachStateListeners != null) {
            for (int i2 = this.mOnChildAttachStateListeners.size() - 1; i2 >= 0; --i2) {
                this.mOnChildAttachStateListeners.get(i2).onChildViewDetachedFromWindow(view);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    void dispatchLayout() {
        if (this.mAdapter == null) {
            Log.e((String)"RecyclerView", (String)"No adapter attached; skipping layout");
            return;
        }
        if (this.mLayout == null) {
            Log.e((String)"RecyclerView", (String)"No layout manager attached; skipping layout");
            return;
        }
        this.mState.mIsMeasuring = false;
        if (this.mState.mLayoutStep == 1) {
            this.dispatchLayoutStep1();
            this.mLayout.setExactMeasureSpecsFrom(this);
            this.dispatchLayoutStep2();
        } else if (this.mAdapterHelper.hasUpdates() || this.mLayout.getWidth() != this.getWidth() || this.mLayout.getHeight() != this.getHeight()) {
            this.mLayout.setExactMeasureSpecsFrom(this);
            this.dispatchLayoutStep2();
        } else {
            this.mLayout.setExactMeasureSpecsFrom(this);
        }
        this.dispatchLayoutStep3();
    }

    @Override
    public boolean dispatchNestedFling(float f2, float f3, boolean bl) {
        return this.getScrollingChildHelper().dispatchNestedFling(f2, f3, bl);
    }

    @Override
    public boolean dispatchNestedPreFling(float f2, float f3) {
        return this.getScrollingChildHelper().dispatchNestedPreFling(f2, f3);
    }

    @Override
    public boolean dispatchNestedPreScroll(int n2, int n3, int[] arrn, int[] arrn2) {
        return this.getScrollingChildHelper().dispatchNestedPreScroll(n2, n3, arrn, arrn2);
    }

    @Override
    public boolean dispatchNestedScroll(int n2, int n3, int n4, int n5, int[] arrn) {
        return this.getScrollingChildHelper().dispatchNestedScroll(n2, n3, n4, n5, arrn);
    }

    void dispatchOnScrollStateChanged(int n2) {
        if (this.mLayout != null) {
            this.mLayout.onScrollStateChanged(n2);
        }
        this.onScrollStateChanged(n2);
        if (this.mScrollListener != null) {
            this.mScrollListener.onScrollStateChanged(this, n2);
        }
        if (this.mScrollListeners != null) {
            for (int i2 = this.mScrollListeners.size() - 1; i2 >= 0; --i2) {
                this.mScrollListeners.get(i2).onScrollStateChanged(this, n2);
            }
        }
    }

    void dispatchOnScrolled(int n2, int n3) {
        ++this.mDispatchScrollCounter;
        int n4 = this.getScrollX();
        int n5 = this.getScrollY();
        this.onScrollChanged(n4, n5, n4, n5);
        this.onScrolled(n2, n3);
        if (this.mScrollListener != null) {
            this.mScrollListener.onScrolled(this, n2, n3);
        }
        if (this.mScrollListeners != null) {
            for (n4 = this.mScrollListeners.size() - 1; n4 >= 0; --n4) {
                this.mScrollListeners.get(n4).onScrolled(this, n2, n3);
            }
        }
        --this.mDispatchScrollCounter;
    }

    void dispatchPendingImportantForAccessibilityChanges() {
        for (int i2 = this.mPendingAccessibilityImportanceChange.size() - 1; i2 >= 0; --i2) {
            ViewHolder viewHolder = this.mPendingAccessibilityImportanceChange.get(i2);
            if (viewHolder.itemView.getParent() != this || viewHolder.shouldIgnore()) {
                return;
            }
            int n2 = viewHolder.mPendingAccessibilityState;
            if (n2 == -1) continue;
            ViewCompat.setImportantForAccessibility(viewHolder.itemView, n2);
            viewHolder.mPendingAccessibilityState = -1;
        }
        this.mPendingAccessibilityImportanceChange.clear();
    }

    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.dispatchThawSelfOnly(sparseArray);
    }

    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        this.dispatchFreezeSelfOnly(sparseArray);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void draw(Canvas canvas) {
        int n2;
        int n3;
        int n4 = 1;
        super.draw(canvas);
        int n5 = this.mItemDecorations.size();
        for (n2 = 0; n2 < n5; ++n2) {
            this.mItemDecorations.get(n2).onDrawOver(canvas, this, this.mState);
        }
        n5 = n2 = 0;
        if (this.mLeftGlow != null) {
            n5 = n2;
            if (!this.mLeftGlow.isFinished()) {
                n3 = canvas.save();
                n2 = this.mClipToPadding ? this.getPaddingBottom() : 0;
                canvas.rotate(270.0f);
                canvas.translate((float)(- this.getHeight() + n2), 0.0f);
                n5 = this.mLeftGlow != null && this.mLeftGlow.draw(canvas) ? 1 : 0;
                canvas.restoreToCount(n3);
            }
        }
        n2 = n5;
        if (this.mTopGlow != null) {
            n2 = n5;
            if (!this.mTopGlow.isFinished()) {
                n3 = canvas.save();
                if (this.mClipToPadding) {
                    canvas.translate((float)this.getPaddingLeft(), (float)this.getPaddingTop());
                }
                n2 = this.mTopGlow != null && this.mTopGlow.draw(canvas) ? 1 : 0;
                n2 = n5 | n2;
                canvas.restoreToCount(n3);
            }
        }
        n5 = n2;
        if (this.mRightGlow != null) {
            n5 = n2;
            if (!this.mRightGlow.isFinished()) {
                n3 = canvas.save();
                int n6 = this.getWidth();
                n5 = this.mClipToPadding ? this.getPaddingTop() : 0;
                canvas.rotate(90.0f);
                canvas.translate((float)(- n5), (float)(- n6));
                n5 = this.mRightGlow != null && this.mRightGlow.draw(canvas) ? 1 : 0;
                n5 = n2 | n5;
                canvas.restoreToCount(n3);
            }
        }
        n2 = n5;
        if (this.mBottomGlow != null) {
            n2 = n5;
            if (!this.mBottomGlow.isFinished()) {
                n3 = canvas.save();
                canvas.rotate(180.0f);
                if (this.mClipToPadding) {
                    canvas.translate((float)(- this.getWidth() + this.getPaddingRight()), (float)(- this.getHeight() + this.getPaddingBottom()));
                } else {
                    canvas.translate((float)(- this.getWidth()), (float)(- this.getHeight()));
                }
                n2 = this.mBottomGlow != null && this.mBottomGlow.draw(canvas) ? n4 : 0;
                n2 = n5 | n2;
                canvas.restoreToCount(n3);
            }
        }
        n5 = n2;
        if (n2 == 0) {
            n5 = n2;
            if (this.mItemAnimator != null) {
                n5 = n2;
                if (this.mItemDecorations.size() > 0) {
                    n5 = n2;
                    if (this.mItemAnimator.isRunning()) {
                        n5 = 1;
                    }
                }
            }
        }
        if (n5 != 0) {
            ViewCompat.postInvalidateOnAnimation((View)this);
        }
    }

    public boolean drawChild(Canvas canvas, View view, long l2) {
        return super.drawChild(canvas, view, l2);
    }

    void eatRequestLayout() {
        ++this.mEatRequestLayout;
        if (this.mEatRequestLayout == 1 && !this.mLayoutFrozen) {
            this.mLayoutRequestEaten = false;
        }
    }

    void ensureBottomGlow() {
        if (this.mBottomGlow != null) {
            return;
        }
        this.mBottomGlow = new EdgeEffectCompat(this.getContext());
        if (this.mClipToPadding) {
            this.mBottomGlow.setSize(this.getMeasuredWidth() - this.getPaddingLeft() - this.getPaddingRight(), this.getMeasuredHeight() - this.getPaddingTop() - this.getPaddingBottom());
            return;
        }
        this.mBottomGlow.setSize(this.getMeasuredWidth(), this.getMeasuredHeight());
    }

    void ensureLeftGlow() {
        if (this.mLeftGlow != null) {
            return;
        }
        this.mLeftGlow = new EdgeEffectCompat(this.getContext());
        if (this.mClipToPadding) {
            this.mLeftGlow.setSize(this.getMeasuredHeight() - this.getPaddingTop() - this.getPaddingBottom(), this.getMeasuredWidth() - this.getPaddingLeft() - this.getPaddingRight());
            return;
        }
        this.mLeftGlow.setSize(this.getMeasuredHeight(), this.getMeasuredWidth());
    }

    void ensureRightGlow() {
        if (this.mRightGlow != null) {
            return;
        }
        this.mRightGlow = new EdgeEffectCompat(this.getContext());
        if (this.mClipToPadding) {
            this.mRightGlow.setSize(this.getMeasuredHeight() - this.getPaddingTop() - this.getPaddingBottom(), this.getMeasuredWidth() - this.getPaddingLeft() - this.getPaddingRight());
            return;
        }
        this.mRightGlow.setSize(this.getMeasuredHeight(), this.getMeasuredWidth());
    }

    void ensureTopGlow() {
        if (this.mTopGlow != null) {
            return;
        }
        this.mTopGlow = new EdgeEffectCompat(this.getContext());
        if (this.mClipToPadding) {
            this.mTopGlow.setSize(this.getMeasuredWidth() - this.getPaddingLeft() - this.getPaddingRight(), this.getMeasuredHeight() - this.getPaddingTop() - this.getPaddingBottom());
            return;
        }
        this.mTopGlow.setSize(this.getMeasuredWidth(), this.getMeasuredHeight());
    }

    public View findChildViewUnder(float f2, float f3) {
        for (int i2 = this.mChildHelper.getChildCount() - 1; i2 >= 0; --i2) {
            View view = this.mChildHelper.getChildAt(i2);
            float f4 = ViewCompat.getTranslationX(view);
            float f5 = ViewCompat.getTranslationY(view);
            if (f2 < (float)view.getLeft() + f4 || f2 > (float)view.getRight() + f4 || f3 < (float)view.getTop() + f5 || f3 > (float)view.getBottom() + f5) continue;
            return view;
        }
        return null;
    }

    @Nullable
    public View findContainingItemView(View view) {
        ViewParent viewParent = view.getParent();
        View view2 = view;
        view = viewParent;
        while (view != null && view != this && view instanceof View) {
            view2 = view;
            view = view2.getParent();
        }
        if (view == this) {
            return view2;
        }
        return null;
    }

    @Nullable
    public ViewHolder findContainingViewHolder(View view) {
        if ((view = this.findContainingItemView(view)) == null) {
            return null;
        }
        return this.getChildViewHolder(view);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public ViewHolder findViewHolderForAdapterPosition(int n2) {
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        int n3 = this.mChildHelper.getUnfilteredChildCount();
        ViewHolder viewHolder = null;
        int n4 = 0;
        while (n4 < n3) {
            ViewHolder viewHolder2 = RecyclerView.getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(n4));
            ViewHolder viewHolder3 = viewHolder;
            if (viewHolder2 != null) {
                viewHolder3 = viewHolder;
                if (!viewHolder2.isRemoved()) {
                    viewHolder3 = viewHolder;
                    if (this.getAdapterPositionFor(viewHolder2) == n2) {
                        viewHolder = viewHolder2;
                        if (!this.mChildHelper.isHidden(viewHolder2.itemView)) return viewHolder;
                        viewHolder3 = viewHolder2;
                    }
                }
            }
            ++n4;
            viewHolder = viewHolder3;
        }
        return viewHolder;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public ViewHolder findViewHolderForItemId(long l2) {
        if (this.mAdapter == null) return null;
        if (!this.mAdapter.hasStableIds()) {
            return null;
        }
        int n2 = this.mChildHelper.getUnfilteredChildCount();
        ViewHolder viewHolder = null;
        int n3 = 0;
        while (n3 < n2) {
            ViewHolder viewHolder2 = RecyclerView.getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(n3));
            ViewHolder viewHolder3 = viewHolder;
            if (viewHolder2 != null) {
                viewHolder3 = viewHolder;
                if (!viewHolder2.isRemoved()) {
                    viewHolder3 = viewHolder;
                    if (viewHolder2.getItemId() == l2) {
                        viewHolder = viewHolder2;
                        if (!this.mChildHelper.isHidden(viewHolder2.itemView)) return viewHolder;
                        viewHolder3 = viewHolder2;
                    }
                }
            }
            ++n3;
            viewHolder = viewHolder3;
        }
        return viewHolder;
    }

    public ViewHolder findViewHolderForLayoutPosition(int n2) {
        return this.findViewHolderForPosition(n2, false);
    }

    @Deprecated
    public ViewHolder findViewHolderForPosition(int n2) {
        return this.findViewHolderForPosition(n2, false);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    ViewHolder findViewHolderForPosition(int var1_1, boolean var2_2) {
        var7_3 = this.mChildHelper.getUnfilteredChildCount();
        var3_4 = null;
        var6_5 = 0;
        while (var6_5 < var7_3) {
            var4_6 = RecyclerView.getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(var6_5));
            var5_7 = var3_4;
            if (var4_6 == null) ** GOTO lbl19
            var5_7 = var3_4;
            if (var4_6.isRemoved()) ** GOTO lbl19
            if (!var2_2) ** GOTO lbl14
            if (var4_6.mPosition == var1_1) ** GOTO lbl-1000
            var5_7 = var3_4;
            ** GOTO lbl19
lbl14: // 1 sources:
            var5_7 = var3_4;
            if (var4_6.getLayoutPosition() == var1_1) lbl-1000: // 2 sources:
            {
                var3_4 = var4_6;
                if (this.mChildHelper.isHidden(var4_6.itemView) == false) return var3_4;
                var5_7 = var4_6;
            }
lbl19: // 6 sources:
            ++var6_5;
            var3_4 = var5_7;
        }
        return var3_4;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean fling(int n2, int n3) {
        if (this.mLayout == null) {
            Log.e((String)"RecyclerView", (String)"Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        } else {
            if (this.mLayoutFrozen) return false;
            {
                boolean bl;
                int n4;
                boolean bl2;
                block9 : {
                    bl2 = this.mLayout.canScrollHorizontally();
                    bl = this.mLayout.canScrollVertically();
                    if (bl2) {
                        n4 = n2;
                        if (Math.abs(n2) >= this.mMinFlingVelocity) break block9;
                    }
                    n4 = 0;
                }
                if (!bl) return false;
                n2 = n3;
                if (Math.abs(n3) < this.mMinFlingVelocity) {
                    n2 = 0;
                }
                if (n4 == 0 && n2 == 0 || this.dispatchNestedPreFling(n4, n2)) return false;
                {
                    bl2 = bl2 || bl;
                    this.dispatchNestedFling(n4, n2, bl2);
                    if (this.mOnFlingListener != null && this.mOnFlingListener.onFling(n4, n2)) {
                        return true;
                    }
                    if (!bl2) return false;
                    {
                        n3 = Math.max(- this.mMaxFlingVelocity, Math.min(n4, this.mMaxFlingVelocity));
                        n2 = Math.max(- this.mMaxFlingVelocity, Math.min(n2, this.mMaxFlingVelocity));
                        this.mViewFlinger.fling(n3, n2);
                        return true;
                    }
                }
            }
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public View focusSearch(View var1_1, int var2_2) {
        var3_3 = this.mLayout.onInterceptFocusSearch(var1_1, var2_2);
        if (var3_3 != null) {
            return var3_3;
        }
        var5_4 = this.mAdapter != null && this.mLayout != null && this.isComputingLayout() == false && this.mLayoutFrozen == false ? 1 : 0;
        var3_3 = FocusFinder.getInstance();
        if (var5_4 == 0 || var2_2 != 2 && var2_2 != 1) ** GOTO lbl28
        var5_4 = 0;
        if (this.mLayout.canScrollVertically()) {
            var5_4 = var2_2 == 2 ? 130 : 33;
            var5_4 = var3_3.findNextFocus((ViewGroup)this, var1_1, var5_4) == null ? 1 : 0;
        }
        var6_5 = var5_4;
        if (var5_4 != 0) ** GOTO lbl19
        var6_5 = var5_4;
        if (this.mLayout.canScrollHorizontally()) {
            var5_4 = this.mLayout.getLayoutDirection() == 1 ? 1 : 0;
            var6_5 = var2_2 == 2 ? 1 : 0;
            var5_4 = (var6_5 ^ var5_4) != 0 ? 66 : 17;
            var6_5 = var3_3.findNextFocus((ViewGroup)this, var1_1, var5_4) == null ? 1 : 0;
lbl19: // 2 sources:
            if (var6_5 != 0) {
                this.consumePendingUpdateOperations();
                if (this.findContainingItemView(var1_1) == null) {
                    return null;
                }
                this.eatRequestLayout();
                this.mLayout.onFocusSearchFailed(var1_1, var2_2, this.mRecycler, this.mState);
                this.resumeRequestLayout(false);
            }
        }
        var3_3 = var3_3.findNextFocus((ViewGroup)this, var1_1, var2_2);
        ** GOTO lbl38
lbl28: // 1 sources:
        var3_3 = var4_6 = var3_3.findNextFocus((ViewGroup)this, var1_1, var2_2);
        if (var4_6 == null) {
            var3_3 = var4_6;
            if (var5_4 != 0) {
                this.consumePendingUpdateOperations();
                if (this.findContainingItemView(var1_1) == null) {
                    return null;
                }
                this.eatRequestLayout();
                var3_3 = this.mLayout.onFocusSearchFailed(var1_1, var2_2, this.mRecycler, this.mState);
                this.resumeRequestLayout(false);
            }
        }
lbl38: // 6 sources:
        if (this.isPreferredNextFocus(var1_1, var3_3, var2_2) == false) return super.focusSearch(var1_1, var2_2);
        return var3_3;
    }

    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        if (this.mLayout == null) {
            throw new IllegalStateException("RecyclerView has no LayoutManager");
        }
        return this.mLayout.generateDefaultLayoutParams();
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        if (this.mLayout == null) {
            throw new IllegalStateException("RecyclerView has no LayoutManager");
        }
        return this.mLayout.generateLayoutParams(this.getContext(), attributeSet);
    }

    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (this.mLayout == null) {
            throw new IllegalStateException("RecyclerView has no LayoutManager");
        }
        return this.mLayout.generateLayoutParams(layoutParams);
    }

    public Adapter getAdapter() {
        return this.mAdapter;
    }

    int getAdapterPositionFor(ViewHolder viewHolder) {
        if (viewHolder.hasAnyOfTheFlags(524) || !viewHolder.isBound()) {
            return -1;
        }
        return this.mAdapterHelper.applyPendingUpdatesToPosition(viewHolder.mPosition);
    }

    public int getBaseline() {
        if (this.mLayout != null) {
            return this.mLayout.getBaseline();
        }
        return super.getBaseline();
    }

    long getChangedHolderKey(ViewHolder viewHolder) {
        if (this.mAdapter.hasStableIds()) {
            return viewHolder.getItemId();
        }
        return viewHolder.mPosition;
    }

    public int getChildAdapterPosition(View object) {
        if ((object = RecyclerView.getChildViewHolderInt((View)object)) != null) {
            return object.getAdapterPosition();
        }
        return -1;
    }

    protected int getChildDrawingOrder(int n2, int n3) {
        if (this.mChildDrawingOrderCallback == null) {
            return super.getChildDrawingOrder(n2, n3);
        }
        return this.mChildDrawingOrderCallback.onGetChildDrawingOrder(n2, n3);
    }

    /*
     * Enabled aggressive block sorting
     */
    public long getChildItemId(View object) {
        if (this.mAdapter == null || !this.mAdapter.hasStableIds() || (object = RecyclerView.getChildViewHolderInt((View)object)) == null) {
            return -1;
        }
        return object.getItemId();
    }

    public int getChildLayoutPosition(View object) {
        if ((object = RecyclerView.getChildViewHolderInt((View)object)) != null) {
            return object.getLayoutPosition();
        }
        return -1;
    }

    @Deprecated
    public int getChildPosition(View view) {
        return this.getChildAdapterPosition(view);
    }

    public ViewHolder getChildViewHolder(View view) {
        ViewParent viewParent = view.getParent();
        if (viewParent != null && viewParent != this) {
            throw new IllegalArgumentException("View " + (Object)view + " is not a direct child of " + this);
        }
        return RecyclerView.getChildViewHolderInt(view);
    }

    public boolean getClipToPadding() {
        return this.mClipToPadding;
    }

    public RecyclerViewAccessibilityDelegate getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
    }

    public ItemAnimator getItemAnimator() {
        return this.mItemAnimator;
    }

    Rect getItemDecorInsetsForChild(View view) {
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        if (!layoutParams.mInsetsDirty) {
            return layoutParams.mDecorInsets;
        }
        if (this.mState.isPreLayout() && (layoutParams.isItemChanged() || layoutParams.isViewInvalid())) {
            return layoutParams.mDecorInsets;
        }
        Rect rect = layoutParams.mDecorInsets;
        rect.set(0, 0, 0, 0);
        int n2 = this.mItemDecorations.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            this.mTempRect.set(0, 0, 0, 0);
            this.mItemDecorations.get(i2).getItemOffsets(this.mTempRect, view, this, this.mState);
            rect.left += this.mTempRect.left;
            rect.top += this.mTempRect.top;
            rect.right += this.mTempRect.right;
            rect.bottom += this.mTempRect.bottom;
        }
        layoutParams.mInsetsDirty = false;
        return rect;
    }

    public LayoutManager getLayoutManager() {
        return this.mLayout;
    }

    public int getMaxFlingVelocity() {
        return this.mMaxFlingVelocity;
    }

    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }

    @Nullable
    public OnFlingListener getOnFlingListener() {
        return this.mOnFlingListener;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }

    public RecycledViewPool getRecycledViewPool() {
        return this.mRecycler.getRecycledViewPool();
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    public boolean hasFixedSize() {
        return this.mHasFixedSize;
    }

    @Override
    public boolean hasNestedScrollingParent() {
        return this.getScrollingChildHelper().hasNestedScrollingParent();
    }

    public boolean hasPendingAdapterUpdates() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.hasPendingUpdates()) {
            return true;
        }
        return false;
    }

    void initAdapterManager() {
        this.mAdapterHelper = new AdapterHelper(new AdapterHelper.Callback(){

            void dispatchUpdate(AdapterHelper.UpdateOp updateOp) {
                switch (updateOp.cmd) {
                    default: {
                        return;
                    }
                    case 1: {
                        RecyclerView.this.mLayout.onItemsAdded(RecyclerView.this, updateOp.positionStart, updateOp.itemCount);
                        return;
                    }
                    case 2: {
                        RecyclerView.this.mLayout.onItemsRemoved(RecyclerView.this, updateOp.positionStart, updateOp.itemCount);
                        return;
                    }
                    case 4: {
                        RecyclerView.this.mLayout.onItemsUpdated(RecyclerView.this, updateOp.positionStart, updateOp.itemCount, updateOp.payload);
                        return;
                    }
                    case 8: 
                }
                RecyclerView.this.mLayout.onItemsMoved(RecyclerView.this, updateOp.positionStart, updateOp.itemCount, 1);
            }

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            @Override
            public ViewHolder findViewHolder(int n2) {
                ViewHolder viewHolder = RecyclerView.this.findViewHolderForPosition(n2, true);
                if (viewHolder == null) {
                    return null;
                }
                ViewHolder viewHolder2 = viewHolder;
                if (!RecyclerView.this.mChildHelper.isHidden(viewHolder.itemView)) return viewHolder2;
                return null;
            }

            @Override
            public void markViewHoldersUpdated(int n2, int n3, Object object) {
                RecyclerView.this.viewRangeUpdate(n2, n3, object);
                RecyclerView.this.mItemsChanged = true;
            }

            @Override
            public void offsetPositionsForAdd(int n2, int n3) {
                RecyclerView.this.offsetPositionRecordsForInsert(n2, n3);
                RecyclerView.this.mItemsAddedOrRemoved = true;
            }

            @Override
            public void offsetPositionsForMove(int n2, int n3) {
                RecyclerView.this.offsetPositionRecordsForMove(n2, n3);
                RecyclerView.this.mItemsAddedOrRemoved = true;
            }

            @Override
            public void offsetPositionsForRemovingInvisible(int n2, int n3) {
                RecyclerView.this.offsetPositionRecordsForRemove(n2, n3, true);
                RecyclerView.this.mItemsAddedOrRemoved = true;
                State state = RecyclerView.this.mState;
                state.mDeletedInvisibleItemCountSincePreviousLayout += n3;
            }

            @Override
            public void offsetPositionsForRemovingLaidOutOrNewView(int n2, int n3) {
                RecyclerView.this.offsetPositionRecordsForRemove(n2, n3, false);
                RecyclerView.this.mItemsAddedOrRemoved = true;
            }

            @Override
            public void onDispatchFirstPass(AdapterHelper.UpdateOp updateOp) {
                this.dispatchUpdate(updateOp);
            }

            @Override
            public void onDispatchSecondPass(AdapterHelper.UpdateOp updateOp) {
                this.dispatchUpdate(updateOp);
            }
        });
    }

    void invalidateGlows() {
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    public void invalidateItemDecorations() {
        if (this.mItemDecorations.size() == 0) {
            return;
        }
        if (this.mLayout != null) {
            this.mLayout.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
        }
        this.markItemDecorInsetsDirty();
        this.requestLayout();
    }

    boolean isAccessibilityEnabled() {
        if (this.mAccessibilityManager != null && this.mAccessibilityManager.isEnabled()) {
            return true;
        }
        return false;
    }

    public boolean isAnimating() {
        if (this.mItemAnimator != null && this.mItemAnimator.isRunning()) {
            return true;
        }
        return false;
    }

    public boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    public boolean isComputingLayout() {
        if (this.mLayoutOrScrollCounter > 0) {
            return true;
        }
        return false;
    }

    public boolean isLayoutFrozen() {
        return this.mLayoutFrozen;
    }

    @Override
    public boolean isNestedScrollingEnabled() {
        return this.getScrollingChildHelper().isNestedScrollingEnabled();
    }

    void jumpToPositionForSmoothScroller(int n2) {
        if (this.mLayout == null) {
            return;
        }
        this.mLayout.scrollToPosition(n2);
        this.awakenScrollBars();
    }

    void markItemDecorInsetsDirty() {
        int n2 = this.mChildHelper.getUnfilteredChildCount();
        for (int i2 = 0; i2 < n2; ++i2) {
            ((LayoutParams)this.mChildHelper.getUnfilteredChildAt((int)i2).getLayoutParams()).mInsetsDirty = true;
        }
        this.mRecycler.markItemDecorInsetsDirty();
    }

    void markKnownViewsInvalid() {
        int n2 = this.mChildHelper.getUnfilteredChildCount();
        for (int i2 = 0; i2 < n2; ++i2) {
            ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i2));
            if (viewHolder == null || viewHolder.shouldIgnore()) continue;
            viewHolder.addFlags(6);
        }
        this.markItemDecorInsetsDirty();
        this.mRecycler.markKnownViewsInvalid();
    }

    public void offsetChildrenHorizontal(int n2) {
        int n3 = this.mChildHelper.getChildCount();
        for (int i2 = 0; i2 < n3; ++i2) {
            this.mChildHelper.getChildAt(i2).offsetLeftAndRight(n2);
        }
    }

    public void offsetChildrenVertical(int n2) {
        int n3 = this.mChildHelper.getChildCount();
        for (int i2 = 0; i2 < n3; ++i2) {
            this.mChildHelper.getChildAt(i2).offsetTopAndBottom(n2);
        }
    }

    void offsetPositionRecordsForInsert(int n2, int n3) {
        int n4 = this.mChildHelper.getUnfilteredChildCount();
        for (int i2 = 0; i2 < n4; ++i2) {
            ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i2));
            if (viewHolder == null || viewHolder.shouldIgnore() || viewHolder.mPosition < n2) continue;
            viewHolder.offsetPosition(n3, false);
            this.mState.mStructureChanged = true;
        }
        this.mRecycler.offsetPositionRecordsForInsert(n2, n3);
        this.requestLayout();
    }

    /*
     * Enabled aggressive block sorting
     */
    void offsetPositionRecordsForMove(int n2, int n3) {
        int n4;
        int n5;
        int n6;
        int n7 = this.mChildHelper.getUnfilteredChildCount();
        if (n2 < n3) {
            n5 = n2;
            n6 = n3;
            n4 = -1;
        } else {
            n5 = n3;
            n6 = n2;
            n4 = 1;
        }
        int n8 = 0;
        do {
            if (n8 >= n7) {
                this.mRecycler.offsetPositionRecordsForMove(n2, n3);
                this.requestLayout();
                return;
            }
            ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(n8));
            if (viewHolder != null && viewHolder.mPosition >= n5 && viewHolder.mPosition <= n6) {
                if (viewHolder.mPosition == n2) {
                    viewHolder.offsetPosition(n3 - n2, false);
                } else {
                    viewHolder.offsetPosition(n4, false);
                }
                this.mState.mStructureChanged = true;
            }
            ++n8;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    void offsetPositionRecordsForRemove(int n2, int n3, boolean bl) {
        int n4 = this.mChildHelper.getUnfilteredChildCount();
        int n5 = 0;
        do {
            if (n5 >= n4) {
                this.mRecycler.offsetPositionRecordsForRemove(n2, n3, bl);
                this.requestLayout();
                return;
            }
            ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(n5));
            if (viewHolder != null && !viewHolder.shouldIgnore()) {
                if (viewHolder.mPosition >= n2 + n3) {
                    viewHolder.offsetPosition(- n3, bl);
                    this.mState.mStructureChanged = true;
                } else if (viewHolder.mPosition >= n2) {
                    viewHolder.flagRemovedAndOffsetPosition(n2 - 1, - n3, bl);
                    this.mState.mStructureChanged = true;
                }
            }
            ++n5;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onAttachedToWindow() {
        boolean bl = true;
        super.onAttachedToWindow();
        this.mLayoutOrScrollCounter = 0;
        this.mIsAttached = true;
        if (!this.mFirstLayoutComplete || this.isLayoutRequested()) {
            bl = false;
        }
        this.mFirstLayoutComplete = bl;
        if (this.mLayout != null) {
            this.mLayout.dispatchAttachedToWindow(this);
        }
        this.mPostedAnimatorRunner = false;
        if (ALLOW_PREFETCHING && sFrameIntervalNanos == 0) {
            float f2 = 60.0f;
            Display display = ViewCompat.getDisplay((View)this);
            float f3 = f2;
            if (!this.isInEditMode()) {
                f3 = f2;
                if (display != null) {
                    float f4 = display.getRefreshRate();
                    f3 = f2;
                    if (f4 >= 30.0f) {
                        f3 = f4;
                    }
                }
            }
            sFrameIntervalNanos = (long)(1.0E9f / f3);
        }
    }

    public void onChildAttachedToWindow(View view) {
    }

    public void onChildDetachedFromWindow(View view) {
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mItemAnimator != null) {
            this.mItemAnimator.endAnimations();
        }
        this.stopScroll();
        this.mIsAttached = false;
        if (this.mLayout != null) {
            this.mLayout.dispatchDetachedFromWindow(this, this.mRecycler);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        this.removeCallbacks(this.mItemAnimatorRunner);
        this.mViewInfoStore.onDetach();
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int n2 = this.mItemDecorations.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            this.mItemDecorations.get(i2).onDraw(canvas, this, this.mState);
        }
    }

    void onEnterLayoutOrScroll() {
        ++this.mLayoutOrScrollCounter;
    }

    void onExitLayoutOrScroll() {
        --this.mLayoutOrScrollCounter;
        if (this.mLayoutOrScrollCounter < 1) {
            this.mLayoutOrScrollCounter = 0;
            this.dispatchContentChangedIfNecessary();
            this.dispatchPendingImportantForAccessibilityChanges();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (this.mLayout == null) {
            return false;
        }
        if (this.mLayoutFrozen) return false;
        if ((motionEvent.getSource() & 2) == 0) return false;
        if (motionEvent.getAction() != 8) return false;
        float f2 = this.mLayout.canScrollVertically() ? - MotionEventCompat.getAxisValue(motionEvent, 9) : 0.0f;
        if (!this.mLayout.canScrollHorizontally()) return false;
        float f3 = MotionEventCompat.getAxisValue(motionEvent, 10);
        if (f2 == 0.0f) {
            if (f3 == 0.0f) return false;
        }
        float f4 = this.getScrollFactor();
        this.scrollByInternal((int)(f3 * f4), (int)(f2 * f4), motionEvent);
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean onInterceptTouchEvent(MotionEvent arrn) {
        if (this.mLayoutFrozen) {
            return false;
        }
        if (this.dispatchOnItemTouchIntercept((MotionEvent)arrn)) {
            this.cancelTouch();
            return true;
        }
        if (this.mLayout == null) {
            return false;
        }
        boolean bl = this.mLayout.canScrollHorizontally();
        boolean bl2 = this.mLayout.canScrollVertically();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement((MotionEvent)arrn);
        int n2 = MotionEventCompat.getActionMasked((MotionEvent)arrn);
        int n3 = MotionEventCompat.getActionIndex((MotionEvent)arrn);
        switch (n2) {
            case 0: {
                if (this.mIgnoreMotionEventTillDown) {
                    this.mIgnoreMotionEventTillDown = false;
                }
                this.mScrollPointerId = arrn.getPointerId(0);
                this.mLastTouchX = n3 = (int)(arrn.getX() + 0.5f);
                this.mInitialTouchX = n3;
                this.mLastTouchY = n3 = (int)(arrn.getY() + 0.5f);
                this.mInitialTouchY = n3;
                if (this.mScrollState == 2) {
                    this.getParent().requestDisallowInterceptTouchEvent(true);
                    this.setScrollState(1);
                }
                arrn = this.mNestedOffsets;
                this.mNestedOffsets[1] = 0;
                arrn[0] = 0;
                n3 = 0;
                if (bl) {
                    n3 = false | true;
                }
                n2 = n3;
                if (bl2) {
                    n2 = n3 | 2;
                }
                this.startNestedScroll(n2);
                break;
            }
            case 5: {
                this.mScrollPointerId = arrn.getPointerId(n3);
                this.mLastTouchX = n2 = (int)(arrn.getX(n3) + 0.5f);
                this.mInitialTouchX = n2;
                this.mLastTouchY = n3 = (int)(arrn.getY(n3) + 0.5f);
                this.mInitialTouchY = n3;
                break;
            }
            case 2: {
                n2 = arrn.findPointerIndex(this.mScrollPointerId);
                if (n2 < 0) {
                    Log.e((String)"RecyclerView", (String)("Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?"));
                    return false;
                }
                n3 = (int)(arrn.getX(n2) + 0.5f);
                n2 = (int)(arrn.getY(n2) + 0.5f);
                if (this.mScrollState == 1) break;
                int n4 = n3 - this.mInitialTouchX;
                int n5 = n2 - this.mInitialTouchY;
                n3 = n2 = 0;
                if (bl) {
                    n3 = n2;
                    if (Math.abs(n4) > this.mTouchSlop) {
                        n2 = this.mInitialTouchX;
                        int n6 = this.mTouchSlop;
                        n3 = n4 < 0 ? -1 : 1;
                        this.mLastTouchX = n3 * n6 + n2;
                        n3 = 1;
                    }
                }
                n2 = n3;
                if (bl2) {
                    n2 = n3;
                    if (Math.abs(n5) > this.mTouchSlop) {
                        n2 = this.mInitialTouchY;
                        n4 = this.mTouchSlop;
                        n3 = n5 < 0 ? -1 : 1;
                        this.mLastTouchY = n3 * n4 + n2;
                        n2 = 1;
                    }
                    if (n2 == 0) break;
                }
                this.setScrollState(1);
                break;
            }
            case 6: {
                this.onPointerUp((MotionEvent)arrn);
                break;
            }
            case 1: {
                this.mVelocityTracker.clear();
                this.stopNestedScroll();
                break;
            }
            case 3: {
                this.cancelTouch();
            }
        }
        if (this.mScrollState == 1) {
            return true;
        }
        return false;
    }

    protected void onLayout(boolean bl, int n2, int n3, int n4, int n5) {
        TraceCompat.beginSection("RV OnLayout");
        this.dispatchLayout();
        TraceCompat.endSection();
        this.mFirstLayoutComplete = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onMeasure(int n2, int n3) {
        boolean bl = false;
        if (this.mLayout == null) {
            this.defaultOnMeasure(n2, n3);
            return;
        }
        if (this.mLayout.mAutoMeasure) {
            int n4 = View.MeasureSpec.getMode((int)n2);
            int n5 = View.MeasureSpec.getMode((int)n3);
            boolean bl2 = bl;
            if (n4 == 1073741824) {
                bl2 = bl;
                if (n5 == 1073741824) {
                    bl2 = true;
                }
            }
            this.mLayout.onMeasure(this.mRecycler, this.mState, n2, n3);
            if (bl2 || this.mAdapter == null) return;
            {
                if (this.mState.mLayoutStep == 1) {
                    this.dispatchLayoutStep1();
                }
                this.mLayout.setMeasureSpecs(n2, n3);
                this.mState.mIsMeasuring = true;
                this.dispatchLayoutStep2();
                this.mLayout.setMeasuredDimensionFromChildren(n2, n3);
                if (!this.mLayout.shouldMeasureTwice()) return;
                {
                    this.mLayout.setMeasureSpecs(View.MeasureSpec.makeMeasureSpec((int)this.getMeasuredWidth(), (int)1073741824), View.MeasureSpec.makeMeasureSpec((int)this.getMeasuredHeight(), (int)1073741824));
                    this.mState.mIsMeasuring = true;
                    this.dispatchLayoutStep2();
                    this.mLayout.setMeasuredDimensionFromChildren(n2, n3);
                    return;
                }
            }
        }
        if (this.mHasFixedSize) {
            this.mLayout.onMeasure(this.mRecycler, this.mState, n2, n3);
            return;
        }
        if (this.mAdapterUpdateDuringMeasure) {
            this.eatRequestLayout();
            this.processAdapterUpdatesAndSetAnimationFlags();
            if (this.mState.mRunPredictiveAnimations) {
                this.mState.mInPreLayout = true;
            } else {
                this.mAdapterHelper.consumeUpdatesInOnePass();
                this.mState.mInPreLayout = false;
            }
            this.mAdapterUpdateDuringMeasure = false;
            this.resumeRequestLayout(false);
        }
        this.mState.mItemCount = this.mAdapter != null ? this.mAdapter.getItemCount() : 0;
        this.eatRequestLayout();
        this.mLayout.onMeasure(this.mRecycler, this.mState, n2, n3);
        this.resumeRequestLayout(false);
        this.mState.mInPreLayout = false;
    }

    protected boolean onRequestFocusInDescendants(int n2, Rect rect) {
        if (this.isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(n2, rect);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        } else {
            this.mPendingSavedState = (SavedState)parcelable;
            super.onRestoreInstanceState(this.mPendingSavedState.getSuperState());
            if (this.mLayout == null || this.mPendingSavedState.mLayoutState == null) return;
            {
                this.mLayout.onRestoreInstanceState(this.mPendingSavedState.mLayoutState);
                return;
            }
        }
    }

    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.mPendingSavedState != null) {
            savedState.copyFrom(this.mPendingSavedState);
            return savedState;
        }
        if (this.mLayout != null) {
            savedState.mLayoutState = this.mLayout.onSaveInstanceState();
            return savedState;
        }
        savedState.mLayoutState = null;
        return savedState;
    }

    public void onScrollStateChanged(int n2) {
    }

    public void onScrolled(int n2, int n3) {
    }

    protected void onSizeChanged(int n2, int n3, int n4, int n5) {
        super.onSizeChanged(n2, n3, n4, n5);
        if (n2 != n4 || n3 != n5) {
            this.invalidateGlows();
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean onTouchEvent(MotionEvent var1_1) {
        if (this.mLayoutFrozen != false) return false;
        if (this.mIgnoreMotionEventTillDown) {
            return false;
        }
        if (this.dispatchOnItemTouch((MotionEvent)var1_1)) {
            this.cancelTouch();
            return true;
        }
        if (this.mLayout == null) {
            return false;
        }
        var15_2 = this.mLayout.canScrollHorizontally();
        var16_3 = this.mLayout.canScrollVertically();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        var12_4 = 0;
        var4_5 = MotionEvent.obtain((MotionEvent)var1_1);
        var8_6 = MotionEventCompat.getActionMasked((MotionEvent)var1_1);
        var7_7 = MotionEventCompat.getActionIndex((MotionEvent)var1_1);
        if (var8_6 == 0) {
            var5_8 = this.mNestedOffsets;
            this.mNestedOffsets[1] = 0;
            var5_8[0] = 0;
        }
        var4_5.offsetLocation((float)this.mNestedOffsets[0], (float)this.mNestedOffsets[1]);
        var6_9 = var12_4;
        switch (var8_6) {
            default: {
                var6_9 = var12_4;
                break;
            }
            case 0: {
                this.mScrollPointerId = var1_1.getPointerId(0);
                this.mLastTouchX = var6_9 = (int)(var1_1.getX() + 0.5f);
                this.mInitialTouchX = var6_9;
                this.mLastTouchY = var6_9 = (int)(var1_1.getY() + 0.5f);
                this.mInitialTouchY = var6_9;
                var6_9 = 0;
                if (var15_2) {
                    var6_9 = false | true;
                }
                var7_7 = var6_9;
                if (var16_3) {
                    var7_7 = var6_9 | 2;
                }
                this.startNestedScroll(var7_7);
                var6_9 = var12_4;
                break;
            }
            case 5: {
                this.mScrollPointerId = var1_1.getPointerId(var7_7);
                this.mLastTouchX = var6_9 = (int)(var1_1.getX(var7_7) + 0.5f);
                this.mInitialTouchX = var6_9;
                this.mLastTouchY = var6_9 = (int)(var1_1.getY(var7_7) + 0.5f);
                this.mInitialTouchY = var6_9;
                var6_9 = var12_4;
                break;
            }
            case 2: {
                var6_9 = var1_1.findPointerIndex(this.mScrollPointerId);
                if (var6_9 < 0) {
                    Log.e((String)"RecyclerView", (String)("Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?"));
                    return false;
                }
                var13_10 = (int)(var1_1.getX(var6_9) + 0.5f);
                var14_11 = (int)(var1_1.getY(var6_9) + 0.5f);
                var9_12 = this.mLastTouchX - var13_10;
                var8_6 = this.mLastTouchY - var14_11;
                var7_7 = var9_12;
                var6_9 = var8_6;
                if (this.dispatchNestedPreScroll(var9_12, var8_6, this.mScrollConsumed, this.mScrollOffset)) {
                    var7_7 = var9_12 - this.mScrollConsumed[0];
                    var6_9 = var8_6 - this.mScrollConsumed[1];
                    var4_5.offsetLocation((float)this.mScrollOffset[0], (float)this.mScrollOffset[1]);
                    var1_1 = this.mNestedOffsets;
                    var1_1[0] = var1_1[0] + this.mScrollOffset[0];
                    var1_1 = this.mNestedOffsets;
                    var1_1[1] = var1_1[1] + this.mScrollOffset[1];
                }
                var8_6 = var7_7;
                var9_12 = var6_9;
                if (this.mScrollState != 1) {
                    var9_12 = 0;
                    var10_13 = var7_7;
                    var8_6 = var9_12;
                    if (var15_2) {
                        var10_13 = var7_7;
                        var8_6 = var9_12;
                        if (Math.abs(var7_7) > this.mTouchSlop) {
                            var10_13 = var7_7 > 0 ? var7_7 - this.mTouchSlop : var7_7 + this.mTouchSlop;
                            var8_6 = 1;
                        }
                    }
                    var7_7 = var6_9;
                    var11_14 = var8_6;
                    if (var16_3) {
                        var7_7 = var6_9;
                        var11_14 = var8_6;
                        if (Math.abs(var6_9) > this.mTouchSlop) {
                            var7_7 = var6_9 > 0 ? var6_9 - this.mTouchSlop : var6_9 + this.mTouchSlop;
                            var11_14 = 1;
                        }
                    }
                    var8_6 = var10_13;
                    var9_12 = var7_7;
                    if (var11_14 != 0) {
                        this.setScrollState(1);
                        var9_12 = var7_7;
                        var8_6 = var10_13;
                    }
                }
                var6_9 = var12_4;
                if (this.mScrollState == 1) {
                    this.mLastTouchX = var13_10 - this.mScrollOffset[0];
                    this.mLastTouchY = var14_11 - this.mScrollOffset[1];
                    var6_9 = var15_2 != false ? var8_6 : 0;
                    var7_7 = var16_3 != false ? var9_12 : 0;
                    if (this.scrollByInternal(var6_9, var7_7, var4_5)) {
                        this.getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    var6_9 = var12_4;
                    if (RecyclerView.ALLOW_PREFETCHING) {
                        this.mViewPrefetcher.postFromTraversal(var8_6, var9_12);
                        var6_9 = var12_4;
                        break;
                    }
                }
                ** GOTO lbl122
            }
            case 6: {
                this.onPointerUp((MotionEvent)var1_1);
                var6_9 = var12_4;
                break;
            }
            case 1: {
                this.mVelocityTracker.addMovement(var4_5);
                var6_9 = 1;
                this.mVelocityTracker.computeCurrentVelocity(1000, (float)this.mMaxFlingVelocity);
                var2_15 = var15_2 != false ? - VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mScrollPointerId) : 0.0f;
                var3_16 = var16_3 != false ? - VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mScrollPointerId) : 0.0f;
                if (var2_15 == 0.0f && var3_16 == 0.0f || !this.fling((int)var2_15, (int)var3_16)) {
                    this.setScrollState(0);
                }
                this.resetTouch();
            }
lbl122: // 3 sources:
            case 4: {
                break;
            }
            case 3: {
                this.cancelTouch();
                var6_9 = var12_4;
            }
        }
        if (var6_9 == 0) {
            this.mVelocityTracker.addMovement(var4_5);
        }
        var4_5.recycle();
        return true;
    }

    void postAnimationRunner() {
        if (!this.mPostedAnimatorRunner && this.mIsAttached) {
            ViewCompat.postOnAnimation((View)this, this.mItemAnimatorRunner);
            this.mPostedAnimatorRunner = true;
        }
    }

    void recordAnimationInfoIfBouncedHiddenView(ViewHolder viewHolder, ItemAnimator.ItemHolderInfo itemHolderInfo) {
        viewHolder.setFlags(0, 8192);
        if (this.mState.mTrackOldChangeHolders && viewHolder.isUpdated() && !viewHolder.isRemoved() && !viewHolder.shouldIgnore()) {
            long l2 = this.getChangedHolderKey(viewHolder);
            this.mViewInfoStore.addToOldChangeHolders(l2, viewHolder);
        }
        this.mViewInfoStore.addToPreLayout(viewHolder, itemHolderInfo);
    }

    /*
     * Enabled aggressive block sorting
     */
    boolean removeAnimatingView(View object) {
        this.eatRequestLayout();
        boolean bl = this.mChildHelper.removeViewIfHidden((View)object);
        if (bl) {
            object = RecyclerView.getChildViewHolderInt((View)object);
            this.mRecycler.unscrapView((ViewHolder)object);
            this.mRecycler.recycleViewHolderInternal((ViewHolder)object);
        }
        boolean bl2 = !bl;
        this.resumeRequestLayout(bl2);
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void removeDetachedView(View view, boolean bl) {
        ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(view);
        if (viewHolder != null) {
            if (viewHolder.isTmpDetached()) {
                viewHolder.clearTmpDetachFlag();
            } else if (!viewHolder.shouldIgnore()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + viewHolder);
            }
        }
        this.dispatchChildDetached(view);
        super.removeDetachedView(view, bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void removeItemDecoration(ItemDecoration itemDecoration) {
        if (this.mLayout != null) {
            this.mLayout.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(itemDecoration);
        if (this.mItemDecorations.isEmpty()) {
            boolean bl = this.getOverScrollMode() == 2;
            this.setWillNotDraw(bl);
        }
        this.markItemDecorInsetsDirty();
        this.requestLayout();
    }

    public void removeOnChildAttachStateChangeListener(OnChildAttachStateChangeListener onChildAttachStateChangeListener) {
        if (this.mOnChildAttachStateListeners == null) {
            return;
        }
        this.mOnChildAttachStateListeners.remove(onChildAttachStateChangeListener);
    }

    public void removeOnItemTouchListener(OnItemTouchListener onItemTouchListener) {
        this.mOnItemTouchListeners.remove(onItemTouchListener);
        if (this.mActiveOnItemTouchListener == onItemTouchListener) {
            this.mActiveOnItemTouchListener = null;
        }
    }

    public void removeOnScrollListener(OnScrollListener onScrollListener) {
        if (this.mScrollListeners != null) {
            this.mScrollListeners.remove(onScrollListener);
        }
    }

    void repositionShadowingViews() {
        int n2 = this.mChildHelper.getChildCount();
        for (int i2 = 0; i2 < n2; ++i2) {
            View view = this.mChildHelper.getChildAt(i2);
            ViewHolder viewHolder = this.getChildViewHolder(view);
            if (viewHolder == null || viewHolder.mShadowingHolder == null) continue;
            viewHolder = viewHolder.mShadowingHolder.itemView;
            int n3 = view.getLeft();
            int n4 = view.getTop();
            if (n3 == viewHolder.getLeft() && n4 == viewHolder.getTop()) continue;
            viewHolder.layout(n3, n4, viewHolder.getWidth() + n3, viewHolder.getHeight() + n4);
        }
    }

    public void requestChildFocus(View view, View view2) {
        boolean bl = false;
        if (!this.mLayout.onRequestChildFocus(this, this.mState, view, view2) && view2 != null) {
            this.mTempRect.set(0, 0, view2.getWidth(), view2.getHeight());
            Object object = view2.getLayoutParams();
            if (object instanceof LayoutParams) {
                object = (LayoutParams)((Object)object);
                if (!object.mInsetsDirty) {
                    object = object.mDecorInsets;
                    Rect rect = this.mTempRect;
                    rect.left -= object.left;
                    rect = this.mTempRect;
                    rect.right += object.right;
                    rect = this.mTempRect;
                    rect.top -= object.top;
                    rect = this.mTempRect;
                    rect.bottom += object.bottom;
                }
            }
            this.offsetDescendantRectToMyCoords(view2, this.mTempRect);
            this.offsetRectIntoDescendantCoords(view, this.mTempRect);
            object = this.mTempRect;
            if (!this.mFirstLayoutComplete) {
                bl = true;
            }
            this.requestChildRectangleOnScreen(view, (Rect)object, bl);
        }
        super.requestChildFocus(view, view2);
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean bl) {
        return this.mLayout.requestChildRectangleOnScreen(this, view, rect, bl);
    }

    public void requestDisallowInterceptTouchEvent(boolean bl) {
        int n2 = this.mOnItemTouchListeners.size();
        for (int i2 = 0; i2 < n2; ++i2) {
            this.mOnItemTouchListeners.get(i2).onRequestDisallowInterceptTouchEvent(bl);
        }
        super.requestDisallowInterceptTouchEvent(bl);
    }

    public void requestLayout() {
        if (this.mEatRequestLayout == 0 && !this.mLayoutFrozen) {
            super.requestLayout();
            return;
        }
        this.mLayoutRequestEaten = true;
    }

    void resumeRequestLayout(boolean bl) {
        if (this.mEatRequestLayout < 1) {
            this.mEatRequestLayout = 1;
        }
        if (!bl) {
            this.mLayoutRequestEaten = false;
        }
        if (this.mEatRequestLayout == 1) {
            if (bl && this.mLayoutRequestEaten && !this.mLayoutFrozen && this.mLayout != null && this.mAdapter != null) {
                this.dispatchLayout();
            }
            if (!this.mLayoutFrozen) {
                this.mLayoutRequestEaten = false;
            }
        }
        --this.mEatRequestLayout;
    }

    void saveOldPositions() {
        int n2 = this.mChildHelper.getUnfilteredChildCount();
        for (int i2 = 0; i2 < n2; ++i2) {
            ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i2));
            if (viewHolder.shouldIgnore()) continue;
            viewHolder.saveOldPosition();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void scrollBy(int n2, int n3) {
        if (this.mLayout == null) {
            Log.e((String)"RecyclerView", (String)"Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutFrozen) return;
        boolean bl = this.mLayout.canScrollHorizontally();
        boolean bl2 = this.mLayout.canScrollVertically();
        if (!bl && !bl2) return;
        if (bl) {
        } else {
            n2 = 0;
        }
        if (!bl2) {
            n3 = 0;
        }
        this.scrollByInternal(n2, n3, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    boolean scrollByInternal(int n2, int n3, MotionEvent arrn) {
        int n4 = 0;
        int n5 = 0;
        int n6 = 0;
        int n7 = 0;
        int n8 = 0;
        int n9 = 0;
        int n10 = 0;
        int n11 = 0;
        this.consumePendingUpdateOperations();
        if (this.mAdapter != null) {
            this.eatRequestLayout();
            this.onEnterLayoutOrScroll();
            TraceCompat.beginSection("RV Scroll");
            n8 = n9;
            n4 = n5;
            if (n2 != 0) {
                n8 = this.mLayout.scrollHorizontallyBy(n2, this.mRecycler, this.mState);
                n4 = n2 - n8;
            }
            n10 = n11;
            n6 = n7;
            if (n3 != 0) {
                n10 = this.mLayout.scrollVerticallyBy(n3, this.mRecycler, this.mState);
                n6 = n3 - n10;
            }
            TraceCompat.endSection();
            this.repositionShadowingViews();
            this.onExitLayoutOrScroll();
            this.resumeRequestLayout(false);
        }
        if (!this.mItemDecorations.isEmpty()) {
            this.invalidate();
        }
        if (this.dispatchNestedScroll(n8, n10, n4, n6, this.mScrollOffset)) {
            this.mLastTouchX -= this.mScrollOffset[0];
            this.mLastTouchY -= this.mScrollOffset[1];
            if (arrn != null) {
                arrn.offsetLocation((float)this.mScrollOffset[0], (float)this.mScrollOffset[1]);
            }
            arrn = this.mNestedOffsets;
            arrn[0] = arrn[0] + this.mScrollOffset[0];
            arrn = this.mNestedOffsets;
            arrn[1] = arrn[1] + this.mScrollOffset[1];
        } else if (this.getOverScrollMode() != 2) {
            if (arrn != null) {
                this.pullGlows(arrn.getX(), n4, arrn.getY(), n6);
            }
            this.considerReleasingGlowsOnScroll(n2, n3);
        }
        if (n8 != 0 || n10 != 0) {
            this.dispatchOnScrolled(n8, n10);
        }
        if (!this.awakenScrollBars()) {
            this.invalidate();
        }
        if (n8 == 0 && n10 == 0) {
            return false;
        }
        return true;
    }

    public void scrollTo(int n2, int n3) {
        Log.w((String)"RecyclerView", (String)"RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    public void scrollToPosition(int n2) {
        if (this.mLayoutFrozen) {
            return;
        }
        this.stopScroll();
        if (this.mLayout == null) {
            Log.e((String)"RecyclerView", (String)"Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        this.mLayout.scrollToPosition(n2);
        this.awakenScrollBars();
    }

    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (this.shouldDeferAccessibilityEvent(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate) {
        this.mAccessibilityDelegate = recyclerViewAccessibilityDelegate;
        ViewCompat.setAccessibilityDelegate((View)this, this.mAccessibilityDelegate);
    }

    public void setAdapter(Adapter adapter) {
        this.setLayoutFrozen(false);
        this.setAdapterInternal(adapter, false, true);
        this.requestLayout();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setChildDrawingOrderCallback(ChildDrawingOrderCallback childDrawingOrderCallback) {
        if (childDrawingOrderCallback == this.mChildDrawingOrderCallback) {
            return;
        }
        this.mChildDrawingOrderCallback = childDrawingOrderCallback;
        boolean bl = this.mChildDrawingOrderCallback != null;
        this.setChildrenDrawingOrderEnabled(bl);
    }

    @VisibleForTesting
    boolean setChildImportantForAccessibilityInternal(ViewHolder viewHolder, int n2) {
        if (this.isComputingLayout()) {
            viewHolder.mPendingAccessibilityState = n2;
            this.mPendingAccessibilityImportanceChange.add(viewHolder);
            return false;
        }
        ViewCompat.setImportantForAccessibility(viewHolder.itemView, n2);
        return true;
    }

    public void setClipToPadding(boolean bl) {
        if (bl != this.mClipToPadding) {
            this.invalidateGlows();
        }
        this.mClipToPadding = bl;
        super.setClipToPadding(bl);
        if (this.mFirstLayoutComplete) {
            this.requestLayout();
        }
    }

    void setDataSetChangedAfterLayout() {
        if (this.mDataSetHasChangedAfterLayout) {
            return;
        }
        this.mDataSetHasChangedAfterLayout = true;
        int n2 = this.mChildHelper.getUnfilteredChildCount();
        for (int i2 = 0; i2 < n2; ++i2) {
            ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i2));
            if (viewHolder == null || viewHolder.shouldIgnore()) continue;
            viewHolder.addFlags(512);
        }
        this.mRecycler.setAdapterPositionsAsUnknown();
    }

    public void setHasFixedSize(boolean bl) {
        this.mHasFixedSize = bl;
    }

    public void setItemAnimator(ItemAnimator itemAnimator) {
        if (this.mItemAnimator != null) {
            this.mItemAnimator.endAnimations();
            this.mItemAnimator.setListener(null);
        }
        this.mItemAnimator = itemAnimator;
        if (this.mItemAnimator != null) {
            this.mItemAnimator.setListener(this.mItemAnimatorListener);
        }
    }

    public void setItemViewCacheSize(int n2) {
        this.mRecycler.setViewCacheSize(n2);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void setLayoutFrozen(boolean bl) {
        if (bl == this.mLayoutFrozen) return;
        this.assertNotInLayoutOrScroll("Do not setLayoutFrozen in layout or scroll");
        if (!bl) {
            this.mLayoutFrozen = false;
            if (this.mLayoutRequestEaten && this.mLayout != null && this.mAdapter != null) {
                this.requestLayout();
            }
            this.mLayoutRequestEaten = false;
            return;
        }
        long l2 = SystemClock.uptimeMillis();
        this.onTouchEvent(MotionEvent.obtain((long)l2, (long)l2, (int)3, (float)0.0f, (float)0.0f, (int)0));
        this.mLayoutFrozen = true;
        this.mIgnoreMotionEventTillDown = true;
        this.stopScroll();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setLayoutManager(LayoutManager layoutManager) {
        if (layoutManager == this.mLayout) {
            return;
        }
        this.stopScroll();
        if (this.mLayout != null) {
            if (this.mItemAnimator != null) {
                this.mItemAnimator.endAnimations();
            }
            this.mLayout.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
            this.mRecycler.clear();
            if (this.mIsAttached) {
                this.mLayout.dispatchDetachedFromWindow(this, this.mRecycler);
            }
            this.mLayout.setRecyclerView(null);
            this.mLayout = null;
        } else {
            this.mRecycler.clear();
        }
        this.mChildHelper.removeAllViewsUnfiltered();
        this.mLayout = layoutManager;
        if (layoutManager != null) {
            if (layoutManager.mRecyclerView != null) {
                throw new IllegalArgumentException("LayoutManager " + layoutManager + " is already attached to a RecyclerView: " + layoutManager.mRecyclerView);
            }
            this.mLayout.setRecyclerView(this);
            if (this.mIsAttached) {
                this.mLayout.dispatchAttachedToWindow(this);
            }
        }
        this.mRecycler.updateViewCacheSize();
        this.requestLayout();
    }

    @Override
    public void setNestedScrollingEnabled(boolean bl) {
        this.getScrollingChildHelper().setNestedScrollingEnabled(bl);
    }

    public void setOnFlingListener(@Nullable OnFlingListener onFlingListener) {
        this.mOnFlingListener = onFlingListener;
    }

    @Deprecated
    public void setOnScrollListener(OnScrollListener onScrollListener) {
        this.mScrollListener = onScrollListener;
    }

    public void setPreserveFocusAfterLayout(boolean bl) {
        this.mPreserveFocusAfterLayout = bl;
    }

    public void setRecycledViewPool(RecycledViewPool recycledViewPool) {
        this.mRecycler.setRecycledViewPool(recycledViewPool);
    }

    public void setRecyclerListener(RecyclerListener recyclerListener) {
        this.mRecyclerListener = recyclerListener;
    }

    void setScrollState(int n2) {
        if (n2 == this.mScrollState) {
            return;
        }
        this.mScrollState = n2;
        if (n2 != 2) {
            this.stopScrollersInternal();
        }
        this.dispatchOnScrollStateChanged(n2);
    }

    public void setScrollingTouchSlop(int n2) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get((Context)this.getContext());
        switch (n2) {
            default: {
                Log.w((String)"RecyclerView", (String)("setScrollingTouchSlop(): bad argument constant " + n2 + "; using default value"));
            }
            case 0: {
                this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
                return;
            }
            case 1: 
        }
        this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
    }

    public void setViewCacheExtension(ViewCacheExtension viewCacheExtension) {
        this.mRecycler.setViewCacheExtension(viewCacheExtension);
    }

    boolean shouldDeferAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (this.isComputingLayout()) {
            int n2 = 0;
            if (accessibilityEvent != null) {
                n2 = AccessibilityEventCompat.getContentChangeTypes(accessibilityEvent);
            }
            int n3 = n2;
            if (n2 == 0) {
                n3 = 0;
            }
            this.mEatenAccessibilityChangeFlags |= n3;
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void smoothScrollBy(int n2, int n3) {
        block4 : {
            if (this.mLayout == null) {
                Log.e((String)"RecyclerView", (String)"Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
                return;
            }
            if (this.mLayoutFrozen) return;
            if (!this.mLayout.canScrollHorizontally()) {
                n2 = 0;
            }
            if (!this.mLayout.canScrollVertically()) {
                n3 = 0;
                if (n2 != 0) break block4;
            }
            if (n3 == 0) return;
        }
        this.mViewFlinger.smoothScrollBy(n2, n3);
    }

    public void smoothScrollToPosition(int n2) {
        if (this.mLayoutFrozen) {
            return;
        }
        if (this.mLayout == null) {
            Log.e((String)"RecyclerView", (String)"Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        this.mLayout.smoothScrollToPosition(this, this.mState, n2);
    }

    @Override
    public boolean startNestedScroll(int n2) {
        return this.getScrollingChildHelper().startNestedScroll(n2);
    }

    @Override
    public void stopNestedScroll() {
        this.getScrollingChildHelper().stopNestedScroll();
    }

    public void stopScroll() {
        this.setScrollState(0);
        this.stopScrollersInternal();
    }

    public void swapAdapter(Adapter adapter, boolean bl) {
        this.setLayoutFrozen(false);
        this.setAdapterInternal(adapter, true, bl);
        this.setDataSetChangedAfterLayout();
        this.requestLayout();
    }

    /*
     * Enabled aggressive block sorting
     */
    void viewRangeUpdate(int n2, int n3, Object object) {
        int n4 = this.mChildHelper.getUnfilteredChildCount();
        int n5 = 0;
        do {
            if (n5 >= n4) {
                this.mRecycler.viewRangeUpdate(n2, n3);
                return;
            }
            View view = this.mChildHelper.getUnfilteredChildAt(n5);
            ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(view);
            if (viewHolder != null && !viewHolder.shouldIgnore() && viewHolder.mPosition >= n2 && viewHolder.mPosition < n2 + n3) {
                viewHolder.addFlags(2);
                viewHolder.addChangePayload(object);
                ((LayoutParams)view.getLayoutParams()).mInsetsDirty = true;
            }
            ++n5;
        } while (true);
    }

    public static abstract class Adapter<VH extends ViewHolder> {
        private boolean mHasStableIds = false;
        private final AdapterDataObservable mObservable = new AdapterDataObservable();

        public final void bindViewHolder(VH object, int n2) {
            object.mPosition = n2;
            if (this.hasStableIds()) {
                object.mItemId = this.getItemId(n2);
            }
            object.setFlags(1, 519);
            TraceCompat.beginSection("RV OnBindView");
            this.onBindViewHolder(object, n2, object.getUnmodifiedPayloads());
            object.clearPayload();
            object = object.itemView.getLayoutParams();
            if (object instanceof LayoutParams) {
                ((LayoutParams)object).mInsetsDirty = true;
            }
            TraceCompat.endSection();
        }

        public final VH createViewHolder(ViewGroup object, int n2) {
            TraceCompat.beginSection("RV CreateView");
            object = this.onCreateViewHolder((ViewGroup)object, n2);
            object.mItemViewType = n2;
            TraceCompat.endSection();
            return (VH)object;
        }

        public abstract int getItemCount();

        public long getItemId(int n2) {
            return -1;
        }

        public int getItemViewType(int n2) {
            return 0;
        }

        public final boolean hasObservers() {
            return this.mObservable.hasObservers();
        }

        public final boolean hasStableIds() {
            return this.mHasStableIds;
        }

        public final void notifyDataSetChanged() {
            this.mObservable.notifyChanged();
        }

        public final void notifyItemChanged(int n2) {
            this.mObservable.notifyItemRangeChanged(n2, 1);
        }

        public final void notifyItemChanged(int n2, Object object) {
            this.mObservable.notifyItemRangeChanged(n2, 1, object);
        }

        public final void notifyItemInserted(int n2) {
            this.mObservable.notifyItemRangeInserted(n2, 1);
        }

        public final void notifyItemMoved(int n2, int n3) {
            this.mObservable.notifyItemMoved(n2, n3);
        }

        public final void notifyItemRangeChanged(int n2, int n3) {
            this.mObservable.notifyItemRangeChanged(n2, n3);
        }

        public final void notifyItemRangeChanged(int n2, int n3, Object object) {
            this.mObservable.notifyItemRangeChanged(n2, n3, object);
        }

        public final void notifyItemRangeInserted(int n2, int n3) {
            this.mObservable.notifyItemRangeInserted(n2, n3);
        }

        public final void notifyItemRangeRemoved(int n2, int n3) {
            this.mObservable.notifyItemRangeRemoved(n2, n3);
        }

        public final void notifyItemRemoved(int n2) {
            this.mObservable.notifyItemRangeRemoved(n2, 1);
        }

        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        }

        public abstract void onBindViewHolder(VH var1, int var2);

        public void onBindViewHolder(VH VH, int n2, List<Object> list) {
            this.onBindViewHolder(VH, n2);
        }

        public abstract VH onCreateViewHolder(ViewGroup var1, int var2);

        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        }

        public boolean onFailedToRecycleView(VH VH) {
            return false;
        }

        public void onViewAttachedToWindow(VH VH) {
        }

        public void onViewDetachedFromWindow(VH VH) {
        }

        public void onViewRecycled(VH VH) {
        }

        public void registerAdapterDataObserver(AdapterDataObserver adapterDataObserver) {
            this.mObservable.registerObserver((Object)adapterDataObserver);
        }

        public void setHasStableIds(boolean bl) {
            if (this.hasObservers()) {
                throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            }
            this.mHasStableIds = bl;
        }

        public void unregisterAdapterDataObserver(AdapterDataObserver adapterDataObserver) {
            this.mObservable.unregisterObserver((Object)adapterDataObserver);
        }
    }

    static class AdapterDataObservable
    extends Observable<AdapterDataObserver> {
        AdapterDataObservable() {
        }

        public boolean hasObservers() {
            if (!this.mObservers.isEmpty()) {
                return true;
            }
            return false;
        }

        public void notifyChanged() {
            for (int i2 = this.mObservers.size() - 1; i2 >= 0; --i2) {
                ((AdapterDataObserver)this.mObservers.get(i2)).onChanged();
            }
        }

        public void notifyItemMoved(int n2, int n3) {
            for (int i2 = this.mObservers.size() - 1; i2 >= 0; --i2) {
                ((AdapterDataObserver)this.mObservers.get(i2)).onItemRangeMoved(n2, n3, 1);
            }
        }

        public void notifyItemRangeChanged(int n2, int n3) {
            this.notifyItemRangeChanged(n2, n3, null);
        }

        public void notifyItemRangeChanged(int n2, int n3, Object object) {
            for (int i2 = this.mObservers.size() - 1; i2 >= 0; --i2) {
                ((AdapterDataObserver)this.mObservers.get(i2)).onItemRangeChanged(n2, n3, object);
            }
        }

        public void notifyItemRangeInserted(int n2, int n3) {
            for (int i2 = this.mObservers.size() - 1; i2 >= 0; --i2) {
                ((AdapterDataObserver)this.mObservers.get(i2)).onItemRangeInserted(n2, n3);
            }
        }

        public void notifyItemRangeRemoved(int n2, int n3) {
            for (int i2 = this.mObservers.size() - 1; i2 >= 0; --i2) {
                ((AdapterDataObserver)this.mObservers.get(i2)).onItemRangeRemoved(n2, n3);
            }
        }
    }

    public static abstract class AdapterDataObserver {
        public void onChanged() {
        }

        public void onItemRangeChanged(int n2, int n3) {
        }

        public void onItemRangeChanged(int n2, int n3, Object object) {
            this.onItemRangeChanged(n2, n3);
        }

        public void onItemRangeInserted(int n2, int n3) {
        }

        public void onItemRangeMoved(int n2, int n3, int n4) {
        }

        public void onItemRangeRemoved(int n2, int n3) {
        }
    }

    public static interface ChildDrawingOrderCallback {
        public int onGetChildDrawingOrder(int var1, int var2);
    }

    public static abstract class ItemAnimator {
        public static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        public static final int FLAG_CHANGED = 2;
        public static final int FLAG_INVALIDATED = 4;
        public static final int FLAG_MOVED = 2048;
        public static final int FLAG_REMOVED = 8;
        private long mAddDuration = 120;
        private long mChangeDuration = 250;
        private ArrayList<ItemAnimatorFinishedListener> mFinishedListeners = new ArrayList();
        private ItemAnimatorListener mListener = null;
        private long mMoveDuration = 250;
        private long mRemoveDuration = 120;

        static int buildAdapterChangeFlagsForAnimations(ViewHolder viewHolder) {
            int n2 = viewHolder.mFlags & 14;
            if (viewHolder.isInvalid()) {
                return 4;
            }
            int n3 = n2;
            if ((n2 & 4) == 0) {
                int n4 = viewHolder.getOldPosition();
                int n5 = viewHolder.getAdapterPosition();
                n3 = n2;
                if (n4 != -1) {
                    n3 = n2;
                    if (n5 != -1) {
                        n3 = n2;
                        if (n4 != n5) {
                            n3 = n2 | 2048;
                        }
                    }
                }
            }
            return n3;
        }

        public abstract boolean animateAppearance(@NonNull ViewHolder var1, @Nullable ItemHolderInfo var2, @NonNull ItemHolderInfo var3);

        public abstract boolean animateChange(@NonNull ViewHolder var1, @NonNull ViewHolder var2, @NonNull ItemHolderInfo var3, @NonNull ItemHolderInfo var4);

        public abstract boolean animateDisappearance(@NonNull ViewHolder var1, @NonNull ItemHolderInfo var2, @Nullable ItemHolderInfo var3);

        public abstract boolean animatePersistence(@NonNull ViewHolder var1, @NonNull ItemHolderInfo var2, @NonNull ItemHolderInfo var3);

        public boolean canReuseUpdatedViewHolder(@NonNull ViewHolder viewHolder) {
            return true;
        }

        public boolean canReuseUpdatedViewHolder(@NonNull ViewHolder viewHolder, @NonNull List<Object> list) {
            return this.canReuseUpdatedViewHolder(viewHolder);
        }

        public final void dispatchAnimationFinished(ViewHolder viewHolder) {
            this.onAnimationFinished(viewHolder);
            if (this.mListener != null) {
                this.mListener.onAnimationFinished(viewHolder);
            }
        }

        public final void dispatchAnimationStarted(ViewHolder viewHolder) {
            this.onAnimationStarted(viewHolder);
        }

        public final void dispatchAnimationsFinished() {
            int n2 = this.mFinishedListeners.size();
            for (int i2 = 0; i2 < n2; ++i2) {
                this.mFinishedListeners.get(i2).onAnimationsFinished();
            }
            this.mFinishedListeners.clear();
        }

        public abstract void endAnimation(ViewHolder var1);

        public abstract void endAnimations();

        public long getAddDuration() {
            return this.mAddDuration;
        }

        public long getChangeDuration() {
            return this.mChangeDuration;
        }

        public long getMoveDuration() {
            return this.mMoveDuration;
        }

        public long getRemoveDuration() {
            return this.mRemoveDuration;
        }

        public abstract boolean isRunning();

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public final boolean isRunning(ItemAnimatorFinishedListener itemAnimatorFinishedListener) {
            boolean bl = this.isRunning();
            if (itemAnimatorFinishedListener == null) return bl;
            if (!bl) {
                itemAnimatorFinishedListener.onAnimationsFinished();
                return bl;
            }
            this.mFinishedListeners.add(itemAnimatorFinishedListener);
            return bl;
        }

        public ItemHolderInfo obtainHolderInfo() {
            return new ItemHolderInfo();
        }

        public void onAnimationFinished(ViewHolder viewHolder) {
        }

        public void onAnimationStarted(ViewHolder viewHolder) {
        }

        @NonNull
        public ItemHolderInfo recordPostLayoutInformation(@NonNull State state, @NonNull ViewHolder viewHolder) {
            return this.obtainHolderInfo().setFrom(viewHolder);
        }

        @NonNull
        public ItemHolderInfo recordPreLayoutInformation(@NonNull State state, @NonNull ViewHolder viewHolder, int n2, @NonNull List<Object> list) {
            return this.obtainHolderInfo().setFrom(viewHolder);
        }

        public abstract void runPendingAnimations();

        public void setAddDuration(long l2) {
            this.mAddDuration = l2;
        }

        public void setChangeDuration(long l2) {
            this.mChangeDuration = l2;
        }

        void setListener(ItemAnimatorListener itemAnimatorListener) {
            this.mListener = itemAnimatorListener;
        }

        public void setMoveDuration(long l2) {
            this.mMoveDuration = l2;
        }

        public void setRemoveDuration(long l2) {
            this.mRemoveDuration = l2;
        }

        @Retention(value=RetentionPolicy.SOURCE)
        public static @interface AdapterChanges {
        }

        public static interface ItemAnimatorFinishedListener {
            public void onAnimationsFinished();
        }

        static interface ItemAnimatorListener {
            public void onAnimationFinished(ViewHolder var1);
        }

        public static class ItemHolderInfo {
            public int bottom;
            public int changeFlags;
            public int left;
            public int right;
            public int top;

            public ItemHolderInfo setFrom(ViewHolder viewHolder) {
                return this.setFrom(viewHolder, 0);
            }

            public ItemHolderInfo setFrom(ViewHolder viewHolder, int n2) {
                viewHolder = viewHolder.itemView;
                this.left = viewHolder.getLeft();
                this.top = viewHolder.getTop();
                this.right = viewHolder.getRight();
                this.bottom = viewHolder.getBottom();
                return this;
            }
        }

    }

    private class ItemAnimatorRestoreListener
    implements ItemAnimator.ItemAnimatorListener {
        ItemAnimatorRestoreListener() {
        }

        @Override
        public void onAnimationFinished(ViewHolder viewHolder) {
            viewHolder.setIsRecyclable(true);
            if (viewHolder.mShadowedHolder != null && viewHolder.mShadowingHolder == null) {
                viewHolder.mShadowedHolder = null;
            }
            viewHolder.mShadowingHolder = null;
            if (!viewHolder.shouldBeKeptAsChild() && !RecyclerView.this.removeAnimatingView(viewHolder.itemView) && viewHolder.isTmpDetached()) {
                RecyclerView.this.removeDetachedView(viewHolder.itemView, false);
            }
        }
    }

    public static abstract class ItemDecoration {
        @Deprecated
        public void getItemOffsets(Rect rect, int n2, RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, State state) {
            this.getItemOffsets(rect, ((LayoutParams)view.getLayoutParams()).getViewLayoutPosition(), recyclerView);
        }

        @Deprecated
        public void onDraw(Canvas canvas, RecyclerView recyclerView) {
        }

        public void onDraw(Canvas canvas, RecyclerView recyclerView, State state) {
            this.onDraw(canvas, recyclerView);
        }

        @Deprecated
        public void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
        }

        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, State state) {
            this.onDrawOver(canvas, recyclerView);
        }
    }

    public static abstract class LayoutManager {
        boolean mAutoMeasure = false;
        ChildHelper mChildHelper;
        private int mHeight;
        private int mHeightMode;
        boolean mIsAttachedToWindow = false;
        private boolean mItemPrefetchEnabled = true;
        private boolean mMeasurementCacheEnabled = true;
        RecyclerView mRecyclerView;
        boolean mRequestedSimpleAnimations = false;
        @Nullable
        SmoothScroller mSmoothScroller;
        private int mWidth;
        private int mWidthMode;

        /*
         * Enabled aggressive block sorting
         */
        private void addViewInt(View view, int n2, boolean bl) {
            ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(view);
            if (bl || viewHolder.isRemoved()) {
                this.mRecyclerView.mViewInfoStore.addToDisappearedInLayout(viewHolder);
            } else {
                this.mRecyclerView.mViewInfoStore.removeFromDisappearedInLayout(viewHolder);
            }
            LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
            if (viewHolder.wasReturnedFromScrap() || viewHolder.isScrap()) {
                if (viewHolder.isScrap()) {
                    viewHolder.unScrap();
                } else {
                    viewHolder.clearReturnedFromScrapFlag();
                }
                this.mChildHelper.attachViewToParent(view, n2, view.getLayoutParams(), false);
            } else if (view.getParent() == this.mRecyclerView) {
                int n3 = this.mChildHelper.indexOfChild(view);
                int n4 = n2;
                if (n2 == -1) {
                    n4 = this.mChildHelper.getChildCount();
                }
                if (n3 == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.mRecyclerView.indexOfChild(view));
                }
                if (n3 != n4) {
                    this.mRecyclerView.mLayout.moveView(n3, n4);
                }
            } else {
                this.mChildHelper.addView(view, n2, false);
                layoutParams.mInsetsDirty = true;
                if (this.mSmoothScroller != null && this.mSmoothScroller.isRunning()) {
                    this.mSmoothScroller.onChildAttachedToWindow(view);
                }
            }
            if (layoutParams.mPendingInvalidate) {
                viewHolder.itemView.invalidate();
                layoutParams.mPendingInvalidate = false;
            }
        }

        public static int chooseSize(int n2, int n3, int n4) {
            int n5;
            int n6 = View.MeasureSpec.getMode((int)n2);
            n2 = n5 = View.MeasureSpec.getSize((int)n2);
            switch (n6) {
                default: {
                    n2 = Math.max(n3, n4);
                }
                case 1073741824: {
                    return n2;
                }
                case Integer.MIN_VALUE: 
            }
            return Math.min(n5, Math.max(n3, n4));
        }

        private void detachViewInternal(int n2, View view) {
            this.mChildHelper.detachViewFromParent(n2);
        }

        /*
         * Enabled aggressive block sorting
         */
        public static int getChildMeasureSpec(int n2, int n3, int n4, int n5, boolean bl) {
            int n6 = Math.max(0, n2 - n4);
            n4 = 0;
            n2 = 0;
            if (n5 >= 0) {
                n4 = n5;
                n2 = 1073741824;
                return View.MeasureSpec.makeMeasureSpec((int)n4, (int)n2);
            }
            if (bl) {
                if (n5 != -1) {
                    if (n5 != -2) return View.MeasureSpec.makeMeasureSpec((int)n4, (int)n2);
                    n4 = 0;
                    n2 = 0;
                    return View.MeasureSpec.makeMeasureSpec((int)n4, (int)n2);
                }
                switch (n3) {
                    default: {
                        return View.MeasureSpec.makeMeasureSpec((int)n4, (int)n2);
                    }
                    case Integer.MIN_VALUE: 
                    case 1073741824: {
                        n4 = n6;
                        n2 = n3;
                        return View.MeasureSpec.makeMeasureSpec((int)n4, (int)n2);
                    }
                    case 0: 
                }
                n4 = 0;
                n2 = 0;
                return View.MeasureSpec.makeMeasureSpec((int)n4, (int)n2);
            }
            if (n5 == -1) {
                n4 = n6;
                n2 = n3;
                return View.MeasureSpec.makeMeasureSpec((int)n4, (int)n2);
            }
            if (n5 != -2) return View.MeasureSpec.makeMeasureSpec((int)n4, (int)n2);
            n4 = n6;
            if (n3 != Integer.MIN_VALUE && n3 != 1073741824) {
                n2 = 0;
                return View.MeasureSpec.makeMeasureSpec((int)n4, (int)n2);
            }
            n2 = Integer.MIN_VALUE;
            return View.MeasureSpec.makeMeasureSpec((int)n4, (int)n2);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Deprecated
        public static int getChildMeasureSpec(int n2, int n3, int n4, boolean bl) {
            int n5 = Math.max(0, n2 - n3);
            n3 = 0;
            n2 = 0;
            if (bl) {
                if (n4 >= 0) {
                    n3 = n4;
                    n2 = 1073741824;
                    return View.MeasureSpec.makeMeasureSpec((int)n3, (int)n2);
                }
                n3 = 0;
                n2 = 0;
                return View.MeasureSpec.makeMeasureSpec((int)n3, (int)n2);
            }
            if (n4 >= 0) {
                n3 = n4;
                n2 = 1073741824;
                return View.MeasureSpec.makeMeasureSpec((int)n3, (int)n2);
            }
            if (n4 == -1) {
                n3 = n5;
                n2 = 1073741824;
                return View.MeasureSpec.makeMeasureSpec((int)n3, (int)n2);
            }
            if (n4 != -2) return View.MeasureSpec.makeMeasureSpec((int)n3, (int)n2);
            n3 = n5;
            n2 = Integer.MIN_VALUE;
            return View.MeasureSpec.makeMeasureSpec((int)n3, (int)n2);
        }

        public static Properties getProperties(Context context, AttributeSet attributeSet, int n2, int n3) {
            Properties properties = new Properties();
            context = context.obtainStyledAttributes(attributeSet, R.styleable.RecyclerView, n2, n3);
            properties.orientation = context.getInt(R.styleable.RecyclerView_android_orientation, 1);
            properties.spanCount = context.getInt(R.styleable.RecyclerView_spanCount, 1);
            properties.reverseLayout = context.getBoolean(R.styleable.RecyclerView_reverseLayout, false);
            properties.stackFromEnd = context.getBoolean(R.styleable.RecyclerView_stackFromEnd, false);
            context.recycle();
            return properties;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        private static boolean isMeasurementUpToDate(int n2, int n3, int n4) {
            boolean bl = true;
            int n5 = View.MeasureSpec.getMode((int)n3);
            n3 = View.MeasureSpec.getSize((int)n3);
            if (n4 > 0 && n2 != n4) {
                return false;
            }
            boolean bl2 = bl;
            switch (n5) {
                case 0: {
                    return bl2;
                }
                default: {
                    return false;
                }
                case Integer.MIN_VALUE: {
                    bl2 = bl;
                    if (n3 >= n2) return bl2;
                    return false;
                }
                case 1073741824: 
            }
            bl2 = bl;
            if (n3 == n2) return bl2;
            return false;
        }

        private void onSmoothScrollerStopped(SmoothScroller smoothScroller) {
            if (this.mSmoothScroller == smoothScroller) {
                this.mSmoothScroller = null;
            }
        }

        private void scrapOrRecycleView(Recycler recycler, int n2, View view) {
            ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(view);
            if (viewHolder.shouldIgnore()) {
                return;
            }
            if (viewHolder.isInvalid() && !viewHolder.isRemoved() && !this.mRecyclerView.mAdapter.hasStableIds()) {
                this.removeViewAt(n2);
                recycler.recycleViewHolderInternal(viewHolder);
                return;
            }
            this.detachViewAt(n2);
            recycler.scrapView(view);
            this.mRecyclerView.mViewInfoStore.onViewDetached(viewHolder);
        }

        public void addDisappearingView(View view) {
            this.addDisappearingView(view, -1);
        }

        public void addDisappearingView(View view, int n2) {
            this.addViewInt(view, n2, true);
        }

        public void addView(View view) {
            this.addView(view, -1);
        }

        public void addView(View view, int n2) {
            this.addViewInt(view, n2, false);
        }

        public void assertInLayoutOrScroll(String string2) {
            if (this.mRecyclerView != null) {
                this.mRecyclerView.assertInLayoutOrScroll(string2);
            }
        }

        public void assertNotInLayoutOrScroll(String string2) {
            if (this.mRecyclerView != null) {
                this.mRecyclerView.assertNotInLayoutOrScroll(string2);
            }
        }

        public void attachView(View view) {
            this.attachView(view, -1);
        }

        public void attachView(View view, int n2) {
            this.attachView(view, n2, (LayoutParams)view.getLayoutParams());
        }

        /*
         * Enabled aggressive block sorting
         */
        public void attachView(View view, int n2, LayoutParams layoutParams) {
            ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(view);
            if (viewHolder.isRemoved()) {
                this.mRecyclerView.mViewInfoStore.addToDisappearedInLayout(viewHolder);
            } else {
                this.mRecyclerView.mViewInfoStore.removeFromDisappearedInLayout(viewHolder);
            }
            this.mChildHelper.attachViewToParent(view, n2, (ViewGroup.LayoutParams)layoutParams, viewHolder.isRemoved());
        }

        public void calculateItemDecorationsForChild(View view, Rect rect) {
            if (this.mRecyclerView == null) {
                rect.set(0, 0, 0, 0);
                return;
            }
            rect.set(this.mRecyclerView.getItemDecorInsetsForChild(view));
        }

        public boolean canScrollHorizontally() {
            return false;
        }

        public boolean canScrollVertically() {
            return false;
        }

        public boolean checkLayoutParams(LayoutParams layoutParams) {
            if (layoutParams != null) {
                return true;
            }
            return false;
        }

        public int computeHorizontalScrollExtent(State state) {
            return 0;
        }

        public int computeHorizontalScrollOffset(State state) {
            return 0;
        }

        public int computeHorizontalScrollRange(State state) {
            return 0;
        }

        public int computeVerticalScrollExtent(State state) {
            return 0;
        }

        public int computeVerticalScrollOffset(State state) {
            return 0;
        }

        public int computeVerticalScrollRange(State state) {
            return 0;
        }

        public void detachAndScrapAttachedViews(Recycler recycler) {
            for (int i2 = this.getChildCount() - 1; i2 >= 0; --i2) {
                this.scrapOrRecycleView(recycler, i2, this.getChildAt(i2));
            }
        }

        public void detachAndScrapView(View view, Recycler recycler) {
            this.scrapOrRecycleView(recycler, this.mChildHelper.indexOfChild(view), view);
        }

        public void detachAndScrapViewAt(int n2, Recycler recycler) {
            this.scrapOrRecycleView(recycler, n2, this.getChildAt(n2));
        }

        public void detachView(View view) {
            int n2 = this.mChildHelper.indexOfChild(view);
            if (n2 >= 0) {
                this.detachViewInternal(n2, view);
            }
        }

        public void detachViewAt(int n2) {
            this.detachViewInternal(n2, this.getChildAt(n2));
        }

        void dispatchAttachedToWindow(RecyclerView recyclerView) {
            this.mIsAttachedToWindow = true;
            this.onAttachedToWindow(recyclerView);
        }

        void dispatchDetachedFromWindow(RecyclerView recyclerView, Recycler recycler) {
            this.mIsAttachedToWindow = false;
            this.onDetachedFromWindow(recyclerView, recycler);
        }

        public void endAnimation(View view) {
            if (this.mRecyclerView.mItemAnimator != null) {
                this.mRecyclerView.mItemAnimator.endAnimation(RecyclerView.getChildViewHolderInt(view));
            }
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Nullable
        public View findContainingItemView(View view) {
            if (this.mRecyclerView == null) {
                return null;
            }
            View view2 = this.mRecyclerView.findContainingItemView(view);
            if (view2 == null) {
                return null;
            }
            view = view2;
            if (!this.mChildHelper.isHidden(view2)) return view;
            return null;
        }

        /*
         * Enabled aggressive block sorting
         */
        public View findViewByPosition(int n2) {
            int n3 = this.getChildCount();
            int n4 = 0;
            while (n4 < n3) {
                View view = this.getChildAt(n4);
                ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(view);
                if (!(viewHolder == null || viewHolder.getLayoutPosition() != n2 || viewHolder.shouldIgnore() || !this.mRecyclerView.mState.isPreLayout() && viewHolder.isRemoved())) {
                    return view;
                }
                ++n4;
            }
            return null;
        }

        int gatherPrefetchIndices(int n2, int n3, State state, int[] arrn) {
            return 0;
        }

        public abstract LayoutParams generateDefaultLayoutParams();

        public LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
            return new LayoutParams(context, attributeSet);
        }

        public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof LayoutParams) {
                return new LayoutParams((LayoutParams)layoutParams);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                return new LayoutParams((ViewGroup.MarginLayoutParams)layoutParams);
            }
            return new LayoutParams(layoutParams);
        }

        public int getBaseline() {
            return -1;
        }

        public int getBottomDecorationHeight(View view) {
            return ((LayoutParams)view.getLayoutParams()).mDecorInsets.bottom;
        }

        public View getChildAt(int n2) {
            if (this.mChildHelper != null) {
                return this.mChildHelper.getChildAt(n2);
            }
            return null;
        }

        public int getChildCount() {
            if (this.mChildHelper != null) {
                return this.mChildHelper.getChildCount();
            }
            return 0;
        }

        public boolean getClipToPadding() {
            if (this.mRecyclerView != null && this.mRecyclerView.mClipToPadding) {
                return true;
            }
            return false;
        }

        /*
         * Enabled aggressive block sorting
         */
        public int getColumnCountForAccessibility(Recycler recycler, State state) {
            if (this.mRecyclerView == null || this.mRecyclerView.mAdapter == null || !this.canScrollHorizontally()) {
                return 1;
            }
            return this.mRecyclerView.mAdapter.getItemCount();
        }

        public int getDecoratedBottom(View view) {
            return view.getBottom() + this.getBottomDecorationHeight(view);
        }

        public void getDecoratedBoundsWithMargins(View view, Rect rect) {
            RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
        }

        public int getDecoratedLeft(View view) {
            return view.getLeft() - this.getLeftDecorationWidth(view);
        }

        public int getDecoratedMeasuredHeight(View view) {
            Rect rect = ((LayoutParams)view.getLayoutParams()).mDecorInsets;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public int getDecoratedMeasuredWidth(View view) {
            Rect rect = ((LayoutParams)view.getLayoutParams()).mDecorInsets;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public int getDecoratedRight(View view) {
            return view.getRight() + this.getRightDecorationWidth(view);
        }

        public int getDecoratedTop(View view) {
            return view.getTop() - this.getTopDecorationHeight(view);
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public View getFocusedChild() {
            if (this.mRecyclerView == null) {
                return null;
            }
            View view = this.mRecyclerView.getFocusedChild();
            if (view == null) return null;
            View view2 = view;
            if (!this.mChildHelper.isHidden(view)) return view2;
            return null;
        }

        public int getHeight() {
            return this.mHeight;
        }

        public int getHeightMode() {
            return this.mHeightMode;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public int getItemCount() {
            if (this.mRecyclerView == null) return 0;
            Adapter adapter = this.mRecyclerView.getAdapter();
            if (adapter == null) return 0;
            return adapter.getItemCount();
        }

        int getItemPrefetchCount() {
            return 0;
        }

        public int getItemViewType(View view) {
            return RecyclerView.getChildViewHolderInt(view).getItemViewType();
        }

        public int getLayoutDirection() {
            return ViewCompat.getLayoutDirection((View)this.mRecyclerView);
        }

        public int getLeftDecorationWidth(View view) {
            return ((LayoutParams)view.getLayoutParams()).mDecorInsets.left;
        }

        public int getMinimumHeight() {
            return ViewCompat.getMinimumHeight((View)this.mRecyclerView);
        }

        public int getMinimumWidth() {
            return ViewCompat.getMinimumWidth((View)this.mRecyclerView);
        }

        public int getPaddingBottom() {
            if (this.mRecyclerView != null) {
                return this.mRecyclerView.getPaddingBottom();
            }
            return 0;
        }

        public int getPaddingEnd() {
            if (this.mRecyclerView != null) {
                return ViewCompat.getPaddingEnd((View)this.mRecyclerView);
            }
            return 0;
        }

        public int getPaddingLeft() {
            if (this.mRecyclerView != null) {
                return this.mRecyclerView.getPaddingLeft();
            }
            return 0;
        }

        public int getPaddingRight() {
            if (this.mRecyclerView != null) {
                return this.mRecyclerView.getPaddingRight();
            }
            return 0;
        }

        public int getPaddingStart() {
            if (this.mRecyclerView != null) {
                return ViewCompat.getPaddingStart((View)this.mRecyclerView);
            }
            return 0;
        }

        public int getPaddingTop() {
            if (this.mRecyclerView != null) {
                return this.mRecyclerView.getPaddingTop();
            }
            return 0;
        }

        public int getPosition(View view) {
            return ((LayoutParams)view.getLayoutParams()).getViewLayoutPosition();
        }

        public int getRightDecorationWidth(View view) {
            return ((LayoutParams)view.getLayoutParams()).mDecorInsets.right;
        }

        /*
         * Enabled aggressive block sorting
         */
        public int getRowCountForAccessibility(Recycler recycler, State state) {
            if (this.mRecyclerView == null || this.mRecyclerView.mAdapter == null || !this.canScrollVertically()) {
                return 1;
            }
            return this.mRecyclerView.mAdapter.getItemCount();
        }

        public int getSelectionModeForAccessibility(Recycler recycler, State state) {
            return 0;
        }

        public int getTopDecorationHeight(View view) {
            return ((LayoutParams)view.getLayoutParams()).mDecorInsets.top;
        }

        /*
         * Enabled aggressive block sorting
         */
        public void getTransformedBoundingBox(View view, boolean bl, Rect rect) {
            Rect rect2;
            if (bl) {
                rect2 = ((LayoutParams)view.getLayoutParams()).mDecorInsets;
                rect.set(- rect2.left, - rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.mRecyclerView != null && (rect2 = ViewCompat.getMatrix(view)) != null && !rect2.isIdentity()) {
                RectF rectF = this.mRecyclerView.mTempRectF;
                rectF.set(rect);
                rect2.mapRect(rectF);
                rect.set((int)Math.floor(rectF.left), (int)Math.floor(rectF.top), (int)Math.ceil(rectF.right), (int)Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public int getWidth() {
            return this.mWidth;
        }

        public int getWidthMode() {
            return this.mWidthMode;
        }

        boolean hasFlexibleChildInBothOrientations() {
            int n2 = this.getChildCount();
            for (int i2 = 0; i2 < n2; ++i2) {
                ViewGroup.LayoutParams layoutParams = this.getChildAt(i2).getLayoutParams();
                if (layoutParams.width >= 0 || layoutParams.height >= 0) continue;
                return true;
            }
            return false;
        }

        public boolean hasFocus() {
            if (this.mRecyclerView != null && this.mRecyclerView.hasFocus()) {
                return true;
            }
            return false;
        }

        public void ignoreView(View object) {
            if (object.getParent() != this.mRecyclerView || this.mRecyclerView.indexOfChild((View)object) == -1) {
                throw new IllegalArgumentException("View should be fully attached to be ignored");
            }
            object = RecyclerView.getChildViewHolderInt((View)object);
            object.addFlags(128);
            this.mRecyclerView.mViewInfoStore.removeViewHolder((ViewHolder)object);
        }

        public boolean isAttachedToWindow() {
            return this.mIsAttachedToWindow;
        }

        public boolean isAutoMeasureEnabled() {
            return this.mAutoMeasure;
        }

        public boolean isFocused() {
            if (this.mRecyclerView != null && this.mRecyclerView.isFocused()) {
                return true;
            }
            return false;
        }

        public final boolean isItemPrefetchEnabled() {
            return this.mItemPrefetchEnabled;
        }

        public boolean isLayoutHierarchical(Recycler recycler, State state) {
            return false;
        }

        public boolean isMeasurementCacheEnabled() {
            return this.mMeasurementCacheEnabled;
        }

        public boolean isSmoothScrolling() {
            if (this.mSmoothScroller != null && this.mSmoothScroller.isRunning()) {
                return true;
            }
            return false;
        }

        public void layoutDecorated(View view, int n2, int n3, int n4, int n5) {
            Rect rect = ((LayoutParams)view.getLayoutParams()).mDecorInsets;
            view.layout(rect.left + n2, rect.top + n3, n4 - rect.right, n5 - rect.bottom);
        }

        public void layoutDecoratedWithMargins(View view, int n2, int n3, int n4, int n5) {
            LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
            Rect rect = layoutParams.mDecorInsets;
            view.layout(rect.left + n2 + layoutParams.leftMargin, rect.top + n3 + layoutParams.topMargin, n4 - rect.right - layoutParams.rightMargin, n5 - rect.bottom - layoutParams.bottomMargin);
        }

        public void measureChild(View view, int n2, int n3) {
            LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
            Rect rect = this.mRecyclerView.getItemDecorInsetsForChild(view);
            int n4 = rect.left;
            int n5 = rect.right;
            int n6 = rect.top;
            int n7 = rect.bottom;
            n2 = LayoutManager.getChildMeasureSpec(this.getWidth(), this.getWidthMode(), this.getPaddingLeft() + this.getPaddingRight() + (n2 + (n4 + n5)), layoutParams.width, this.canScrollHorizontally());
            if (this.shouldMeasureChild(view, n2, n3 = LayoutManager.getChildMeasureSpec(this.getHeight(), this.getHeightMode(), this.getPaddingTop() + this.getPaddingBottom() + (n3 + (n6 + n7)), layoutParams.height, this.canScrollVertically()), layoutParams)) {
                view.measure(n2, n3);
            }
        }

        public void measureChildWithMargins(View view, int n2, int n3) {
            LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
            Rect rect = this.mRecyclerView.getItemDecorInsetsForChild(view);
            int n4 = rect.left;
            int n5 = rect.right;
            int n6 = rect.top;
            int n7 = rect.bottom;
            n2 = LayoutManager.getChildMeasureSpec(this.getWidth(), this.getWidthMode(), this.getPaddingLeft() + this.getPaddingRight() + layoutParams.leftMargin + layoutParams.rightMargin + (n2 + (n4 + n5)), layoutParams.width, this.canScrollHorizontally());
            if (this.shouldMeasureChild(view, n2, n3 = LayoutManager.getChildMeasureSpec(this.getHeight(), this.getHeightMode(), this.getPaddingTop() + this.getPaddingBottom() + layoutParams.topMargin + layoutParams.bottomMargin + (n3 + (n6 + n7)), layoutParams.height, this.canScrollVertically()), layoutParams)) {
                view.measure(n2, n3);
            }
        }

        public void moveView(int n2, int n3) {
            View view = this.getChildAt(n2);
            if (view == null) {
                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + n2);
            }
            this.detachViewAt(n2);
            this.attachView(view, n3);
        }

        public void offsetChildrenHorizontal(int n2) {
            if (this.mRecyclerView != null) {
                this.mRecyclerView.offsetChildrenHorizontal(n2);
            }
        }

        public void offsetChildrenVertical(int n2) {
            if (this.mRecyclerView != null) {
                this.mRecyclerView.offsetChildrenVertical(n2);
            }
        }

        public void onAdapterChanged(Adapter adapter, Adapter adapter2) {
        }

        public boolean onAddFocusables(RecyclerView recyclerView, ArrayList<View> arrayList, int n2, int n3) {
            return false;
        }

        @CallSuper
        public void onAttachedToWindow(RecyclerView recyclerView) {
        }

        @Deprecated
        public void onDetachedFromWindow(RecyclerView recyclerView) {
        }

        @CallSuper
        public void onDetachedFromWindow(RecyclerView recyclerView, Recycler recycler) {
            this.onDetachedFromWindow(recyclerView);
        }

        @Nullable
        public View onFocusSearchFailed(View view, int n2, Recycler recycler, State state) {
            return null;
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        public void onInitializeAccessibilityEvent(Recycler object, State state, AccessibilityEvent accessibilityEvent) {
            boolean bl = true;
            object = AccessibilityEventCompat.asRecord(accessibilityEvent);
            if (this.mRecyclerView == null) return;
            if (object == null) {
                return;
            }
            boolean bl2 = bl;
            if (!ViewCompat.canScrollVertically((View)this.mRecyclerView, 1)) {
                bl2 = bl;
                if (!ViewCompat.canScrollVertically((View)this.mRecyclerView, -1)) {
                    bl2 = bl;
                    if (!ViewCompat.canScrollHorizontally((View)this.mRecyclerView, -1)) {
                        bl2 = ViewCompat.canScrollHorizontally((View)this.mRecyclerView, 1) ? bl : false;
                    }
                }
            }
            object.setScrollable(bl2);
            if (this.mRecyclerView.mAdapter == null) return;
            object.setItemCount(this.mRecyclerView.mAdapter.getItemCount());
        }

        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            this.onInitializeAccessibilityEvent(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, accessibilityEvent);
        }

        void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            this.onInitializeAccessibilityNodeInfo(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, accessibilityNodeInfoCompat);
        }

        public void onInitializeAccessibilityNodeInfo(Recycler recycler, State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (ViewCompat.canScrollVertically((View)this.mRecyclerView, -1) || ViewCompat.canScrollHorizontally((View)this.mRecyclerView, -1)) {
                accessibilityNodeInfoCompat.addAction(8192);
                accessibilityNodeInfoCompat.setScrollable(true);
            }
            if (ViewCompat.canScrollVertically((View)this.mRecyclerView, 1) || ViewCompat.canScrollHorizontally((View)this.mRecyclerView, 1)) {
                accessibilityNodeInfoCompat.addAction(4096);
                accessibilityNodeInfoCompat.setScrollable(true);
            }
            accessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(this.getRowCountForAccessibility(recycler, state), this.getColumnCountForAccessibility(recycler, state), this.isLayoutHierarchical(recycler, state), this.getSelectionModeForAccessibility(recycler, state)));
        }

        /*
         * Enabled aggressive block sorting
         */
        public void onInitializeAccessibilityNodeInfoForItem(Recycler recycler, State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            int n2 = this.canScrollVertically() ? this.getPosition(view) : 0;
            int n3 = this.canScrollHorizontally() ? this.getPosition(view) : 0;
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(n2, 1, n3, 1, false, false));
        }

        void onInitializeAccessibilityNodeInfoForItem(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(view);
            if (viewHolder != null && !viewHolder.isRemoved() && !this.mChildHelper.isHidden(viewHolder.itemView)) {
                this.onInitializeAccessibilityNodeInfoForItem(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, view, accessibilityNodeInfoCompat);
            }
        }

        public View onInterceptFocusSearch(View view, int n2) {
            return null;
        }

        public void onItemsAdded(RecyclerView recyclerView, int n2, int n3) {
        }

        public void onItemsChanged(RecyclerView recyclerView) {
        }

        public void onItemsMoved(RecyclerView recyclerView, int n2, int n3, int n4) {
        }

        public void onItemsRemoved(RecyclerView recyclerView, int n2, int n3) {
        }

        public void onItemsUpdated(RecyclerView recyclerView, int n2, int n3) {
        }

        public void onItemsUpdated(RecyclerView recyclerView, int n2, int n3, Object object) {
            this.onItemsUpdated(recyclerView, n2, n3);
        }

        public void onLayoutChildren(Recycler recycler, State state) {
            Log.e((String)"RecyclerView", (String)"You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        public void onLayoutCompleted(State state) {
        }

        public void onMeasure(Recycler recycler, State state, int n2, int n3) {
            this.mRecyclerView.defaultOnMeasure(n2, n3);
        }

        public boolean onRequestChildFocus(RecyclerView recyclerView, State state, View view, View view2) {
            return this.onRequestChildFocus(recyclerView, view, view2);
        }

        @Deprecated
        public boolean onRequestChildFocus(RecyclerView recyclerView, View view, View view2) {
            if (this.isSmoothScrolling() || recyclerView.isComputingLayout()) {
                return true;
            }
            return false;
        }

        public void onRestoreInstanceState(Parcelable parcelable) {
        }

        public Parcelable onSaveInstanceState() {
            return null;
        }

        public void onScrollStateChanged(int n2) {
        }

        boolean performAccessibilityAction(int n2, Bundle bundle) {
            return this.performAccessibilityAction(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, n2, bundle);
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        public boolean performAccessibilityAction(Recycler recycler, State state, int n2, Bundle bundle) {
            if (this.mRecyclerView == null) {
                return false;
            }
            int n3 = 0;
            int n4 = 0;
            int n5 = 0;
            int n6 = 0;
            switch (n2) {
                default: {
                    n2 = n5;
                    break;
                }
                case 8192: {
                    n5 = n3;
                    if (ViewCompat.canScrollVertically((View)this.mRecyclerView, -1)) {
                        n5 = - this.getHeight() - this.getPaddingTop() - this.getPaddingBottom();
                    }
                    n2 = n5;
                    if (!ViewCompat.canScrollHorizontally((View)this.mRecyclerView, -1)) break;
                    n6 = - this.getWidth() - this.getPaddingLeft() - this.getPaddingRight();
                    n2 = n5;
                    break;
                }
                case 4096: {
                    n5 = n4;
                    if (ViewCompat.canScrollVertically((View)this.mRecyclerView, 1)) {
                        n5 = this.getHeight() - this.getPaddingTop() - this.getPaddingBottom();
                    }
                    n2 = n5;
                    if (!ViewCompat.canScrollHorizontally((View)this.mRecyclerView, 1)) break;
                    n6 = this.getWidth() - this.getPaddingLeft() - this.getPaddingRight();
                    n2 = n5;
                }
            }
            if (n2 == 0) {
                if (n6 == 0) return false;
            }
            this.mRecyclerView.scrollBy(n6, n2);
            return true;
        }

        public boolean performAccessibilityActionForItem(Recycler recycler, State state, View view, int n2, Bundle bundle) {
            return false;
        }

        boolean performAccessibilityActionForItem(View view, int n2, Bundle bundle) {
            return this.performAccessibilityActionForItem(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, view, n2, bundle);
        }

        public void postOnAnimation(Runnable runnable) {
            if (this.mRecyclerView != null) {
                ViewCompat.postOnAnimation((View)this.mRecyclerView, runnable);
            }
        }

        public void removeAllViews() {
            for (int i2 = this.getChildCount() - 1; i2 >= 0; --i2) {
                this.mChildHelper.removeViewAt(i2);
            }
        }

        public void removeAndRecycleAllViews(Recycler recycler) {
            for (int i2 = this.getChildCount() - 1; i2 >= 0; --i2) {
                if (RecyclerView.getChildViewHolderInt(this.getChildAt(i2)).shouldIgnore()) continue;
                this.removeAndRecycleViewAt(i2, recycler);
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        void removeAndRecycleScrapInt(Recycler recycler) {
            int n2 = recycler.getScrapCount();
            for (int i2 = n2 - 1; i2 >= 0; --i2) {
                View view = recycler.getScrapViewAt(i2);
                ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(view);
                if (viewHolder.shouldIgnore()) continue;
                viewHolder.setIsRecyclable(false);
                if (viewHolder.isTmpDetached()) {
                    this.mRecyclerView.removeDetachedView(view, false);
                }
                if (this.mRecyclerView.mItemAnimator != null) {
                    this.mRecyclerView.mItemAnimator.endAnimation(viewHolder);
                }
                viewHolder.setIsRecyclable(true);
                recycler.quickRecycleScrapView(view);
            }
            recycler.clearScrap();
            if (n2 > 0) {
                this.mRecyclerView.invalidate();
            }
        }

        public void removeAndRecycleView(View view, Recycler recycler) {
            this.removeView(view);
            recycler.recycleView(view);
        }

        public void removeAndRecycleViewAt(int n2, Recycler recycler) {
            View view = this.getChildAt(n2);
            this.removeViewAt(n2);
            recycler.recycleView(view);
        }

        public boolean removeCallbacks(Runnable runnable) {
            if (this.mRecyclerView != null) {
                return this.mRecyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        public void removeDetachedView(View view) {
            this.mRecyclerView.removeDetachedView(view, false);
        }

        public void removeView(View view) {
            this.mChildHelper.removeView(view);
        }

        public void removeViewAt(int n2) {
            if (this.getChildAt(n2) != null) {
                this.mChildHelper.removeViewAt(n2);
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean bl) {
            int n2 = this.getPaddingLeft();
            int n3 = this.getPaddingTop();
            int n4 = this.getWidth() - this.getPaddingRight();
            int n5 = this.getHeight();
            int n6 = this.getPaddingBottom();
            int n7 = view.getLeft() + rect.left - view.getScrollX();
            int n8 = view.getTop() + rect.top - view.getScrollY();
            int n9 = n7 + rect.width();
            int n10 = rect.height();
            int n11 = Math.min(0, n7 - n2);
            int n12 = Math.min(0, n8 - n3);
            int n13 = Math.max(0, n9 - n4);
            n5 = Math.max(0, n8 + n10 - (n5 - n6));
            if (this.getLayoutDirection() == 1) {
                n11 = n13 != 0 ? n13 : Math.max(n11, n9 - n4);
            } else if (n11 == 0) {
                n11 = Math.min(n7 - n2, n13);
            }
            if (n12 == 0) {
                n12 = Math.min(n8 - n3, n5);
            }
            if (n11 == 0) {
                if (n12 == 0) return false;
            }
            if (bl) {
                recyclerView.scrollBy(n11, n12);
                return true;
            }
            recyclerView.smoothScrollBy(n11, n12);
            return true;
        }

        public void requestLayout() {
            if (this.mRecyclerView != null) {
                this.mRecyclerView.requestLayout();
            }
        }

        public void requestSimpleAnimationsInNextLayout() {
            this.mRequestedSimpleAnimations = true;
        }

        public int scrollHorizontallyBy(int n2, Recycler recycler, State state) {
            return 0;
        }

        public void scrollToPosition(int n2) {
        }

        public int scrollVerticallyBy(int n2, Recycler recycler, State state) {
            return 0;
        }

        public void setAutoMeasureEnabled(boolean bl) {
            this.mAutoMeasure = bl;
        }

        void setExactMeasureSpecsFrom(RecyclerView recyclerView) {
            this.setMeasureSpecs(View.MeasureSpec.makeMeasureSpec((int)recyclerView.getWidth(), (int)1073741824), View.MeasureSpec.makeMeasureSpec((int)recyclerView.getHeight(), (int)1073741824));
        }

        public final void setItemPrefetchEnabled(boolean bl) {
            if (bl != this.mItemPrefetchEnabled) {
                this.mItemPrefetchEnabled = bl;
                if (this.mRecyclerView != null) {
                    this.mRecyclerView.mRecycler.updateViewCacheSize();
                }
            }
        }

        void setMeasureSpecs(int n2, int n3) {
            this.mWidth = View.MeasureSpec.getSize((int)n2);
            this.mWidthMode = View.MeasureSpec.getMode((int)n2);
            if (this.mWidthMode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.mWidth = 0;
            }
            this.mHeight = View.MeasureSpec.getSize((int)n3);
            this.mHeightMode = View.MeasureSpec.getMode((int)n3);
            if (this.mHeightMode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.mHeight = 0;
            }
        }

        public void setMeasuredDimension(int n2, int n3) {
            this.mRecyclerView.setMeasuredDimension(n2, n3);
        }

        public void setMeasuredDimension(Rect rect, int n2, int n3) {
            int n4 = rect.width();
            int n5 = this.getPaddingLeft();
            int n6 = this.getPaddingRight();
            int n7 = rect.height();
            int n8 = this.getPaddingTop();
            int n9 = this.getPaddingBottom();
            this.setMeasuredDimension(LayoutManager.chooseSize(n2, n4 + n5 + n6, this.getMinimumWidth()), LayoutManager.chooseSize(n3, n7 + n8 + n9, this.getMinimumHeight()));
        }

        void setMeasuredDimensionFromChildren(int n2, int n3) {
            int n4 = this.getChildCount();
            if (n4 == 0) {
                this.mRecyclerView.defaultOnMeasure(n2, n3);
                return;
            }
            int n5 = Integer.MAX_VALUE;
            int n6 = Integer.MAX_VALUE;
            int n7 = Integer.MIN_VALUE;
            int n8 = Integer.MIN_VALUE;
            for (int i2 = 0; i2 < n4; ++i2) {
                View view = this.getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
                layoutParams = this.mRecyclerView.mTempRect;
                this.getDecoratedBoundsWithMargins(view, (Rect)layoutParams);
                int n9 = n5;
                if (layoutParams.left < n5) {
                    n9 = layoutParams.left;
                }
                n5 = n7;
                if (layoutParams.right > n7) {
                    n5 = layoutParams.right;
                }
                int n10 = n6;
                if (layoutParams.top < n6) {
                    n10 = layoutParams.top;
                }
                n6 = n8;
                if (layoutParams.bottom > n8) {
                    n6 = layoutParams.bottom;
                }
                n7 = n5;
                n8 = n6;
                n5 = n9;
                n6 = n10;
            }
            this.mRecyclerView.mTempRect.set(n5, n6, n7, n8);
            this.setMeasuredDimension(this.mRecyclerView.mTempRect, n2, n3);
        }

        public void setMeasurementCacheEnabled(boolean bl) {
            this.mMeasurementCacheEnabled = bl;
        }

        /*
         * Enabled aggressive block sorting
         */
        void setRecyclerView(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.mRecyclerView = null;
                this.mChildHelper = null;
                this.mWidth = 0;
                this.mHeight = 0;
            } else {
                this.mRecyclerView = recyclerView;
                this.mChildHelper = recyclerView.mChildHelper;
                this.mWidth = recyclerView.getWidth();
                this.mHeight = recyclerView.getHeight();
            }
            this.mWidthMode = 1073741824;
            this.mHeightMode = 1073741824;
        }

        boolean shouldMeasureChild(View view, int n2, int n3, LayoutParams layoutParams) {
            if (view.isLayoutRequested() || !this.mMeasurementCacheEnabled || !LayoutManager.isMeasurementUpToDate(view.getWidth(), n2, layoutParams.width) || !LayoutManager.isMeasurementUpToDate(view.getHeight(), n3, layoutParams.height)) {
                return true;
            }
            return false;
        }

        boolean shouldMeasureTwice() {
            return false;
        }

        boolean shouldReMeasureChild(View view, int n2, int n3, LayoutParams layoutParams) {
            if (!(this.mMeasurementCacheEnabled && LayoutManager.isMeasurementUpToDate(view.getMeasuredWidth(), n2, layoutParams.width) && LayoutManager.isMeasurementUpToDate(view.getMeasuredHeight(), n3, layoutParams.height))) {
                return true;
            }
            return false;
        }

        public void smoothScrollToPosition(RecyclerView recyclerView, State state, int n2) {
            Log.e((String)"RecyclerView", (String)"You must override smoothScrollToPosition to support smooth scrolling");
        }

        public void startSmoothScroll(SmoothScroller smoothScroller) {
            if (this.mSmoothScroller != null && smoothScroller != this.mSmoothScroller && this.mSmoothScroller.isRunning()) {
                this.mSmoothScroller.stop();
            }
            this.mSmoothScroller = smoothScroller;
            this.mSmoothScroller.start(this.mRecyclerView, this);
        }

        public void stopIgnoringView(View object) {
            object = RecyclerView.getChildViewHolderInt((View)object);
            object.stopIgnoring();
            object.resetInternal();
            object.addFlags(4);
        }

        void stopSmoothScroller() {
            if (this.mSmoothScroller != null) {
                this.mSmoothScroller.stop();
            }
        }

        public boolean supportsPredictiveItemAnimations() {
            return false;
        }

        public static class Properties {
            public int orientation;
            public boolean reverseLayout;
            public int spanCount;
            public boolean stackFromEnd;
        }

    }

    public static class LayoutParams
    extends ViewGroup.MarginLayoutParams {
        final Rect mDecorInsets = new Rect();
        boolean mInsetsDirty = true;
        boolean mPendingInvalidate = false;
        ViewHolder mViewHolder;

        public LayoutParams(int n2, int n3) {
            super(n2, n3);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams)layoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public int getViewAdapterPosition() {
            return this.mViewHolder.getAdapterPosition();
        }

        public int getViewLayoutPosition() {
            return this.mViewHolder.getLayoutPosition();
        }

        @Deprecated
        public int getViewPosition() {
            return this.mViewHolder.getPosition();
        }

        public boolean isItemChanged() {
            return this.mViewHolder.isUpdated();
        }

        public boolean isItemRemoved() {
            return this.mViewHolder.isRemoved();
        }

        public boolean isViewInvalid() {
            return this.mViewHolder.isInvalid();
        }

        public boolean viewNeedsUpdate() {
            return this.mViewHolder.needsUpdate();
        }
    }

    public static interface OnChildAttachStateChangeListener {
        public void onChildViewAttachedToWindow(View var1);

        public void onChildViewDetachedFromWindow(View var1);
    }

    public static abstract class OnFlingListener {
        public abstract boolean onFling(int var1, int var2);
    }

    public static interface OnItemTouchListener {
        public boolean onInterceptTouchEvent(RecyclerView var1, MotionEvent var2);

        public void onRequestDisallowInterceptTouchEvent(boolean var1);

        public void onTouchEvent(RecyclerView var1, MotionEvent var2);
    }

    public static abstract class OnScrollListener {
        public void onScrollStateChanged(RecyclerView recyclerView, int n2) {
        }

        public void onScrolled(RecyclerView recyclerView, int n2, int n3) {
        }
    }

    public static class RecycledViewPool {
        private static final int DEFAULT_MAX_SCRAP = 5;
        private int mAttachCount = 0;
        private SparseIntArray mMaxScrap = new SparseIntArray();
        private SparseArray<ArrayList<ViewHolder>> mScrap = new SparseArray();

        private ArrayList<ViewHolder> getScrapHeapForType(int n2) {
            ArrayList arrayList;
            ArrayList arrayList2 = arrayList = (ArrayList)this.mScrap.get(n2);
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.mScrap.put(n2, arrayList);
                arrayList2 = arrayList;
                if (this.mMaxScrap.indexOfKey(n2) < 0) {
                    this.mMaxScrap.put(n2, 5);
                    arrayList2 = arrayList;
                }
            }
            return arrayList2;
        }

        void attach(Adapter adapter) {
            ++this.mAttachCount;
        }

        public void clear() {
            this.mScrap.clear();
        }

        void detach() {
            --this.mAttachCount;
        }

        public ViewHolder getRecycledView(int n2) {
            ArrayList arrayList = (ArrayList)this.mScrap.get(n2);
            if (arrayList != null && !arrayList.isEmpty()) {
                n2 = arrayList.size() - 1;
                ViewHolder viewHolder = (ViewHolder)arrayList.get(n2);
                arrayList.remove(n2);
                return viewHolder;
            }
            return null;
        }

        void onAdapterChanged(Adapter adapter, Adapter adapter2, boolean bl) {
            if (adapter != null) {
                this.detach();
            }
            if (!bl && this.mAttachCount == 0) {
                this.clear();
            }
            if (adapter2 != null) {
                this.attach(adapter2);
            }
        }

        public void putRecycledView(ViewHolder viewHolder) {
            int n2 = viewHolder.getItemViewType();
            ArrayList<ViewHolder> arrayList = this.getScrapHeapForType(n2);
            if (this.mMaxScrap.get(n2) <= arrayList.size()) {
                return;
            }
            viewHolder.resetInternal();
            arrayList.add(viewHolder);
        }

        public void setMaxRecycledViews(int n2, int n3) {
            this.mMaxScrap.put(n2, n3);
            ArrayList arrayList = (ArrayList)this.mScrap.get(n2);
            if (arrayList != null) {
                while (arrayList.size() > n3) {
                    arrayList.remove(arrayList.size() - 1);
                }
            }
        }

        int size() {
            int n2 = 0;
            for (int i2 = 0; i2 < this.mScrap.size(); ++i2) {
                ArrayList arrayList = (ArrayList)this.mScrap.valueAt(i2);
                int n3 = n2;
                if (arrayList != null) {
                    n3 = n2 + arrayList.size();
                }
                n2 = n3;
            }
            return n2;
        }
    }

    public final class Recycler {
        static final int DEFAULT_CACHE_SIZE = 2;
        final ArrayList<ViewHolder> mAttachedScrap;
        final ArrayList<ViewHolder> mCachedViews;
        ArrayList<ViewHolder> mChangedScrap;
        private RecycledViewPool mRecyclerPool;
        private int mRequestedCacheMax;
        private final List<ViewHolder> mUnmodifiableAttachedScrap;
        private ViewCacheExtension mViewCacheExtension;
        int mViewCacheMax;

        public Recycler() {
            this.mAttachedScrap = new ArrayList();
            this.mChangedScrap = null;
            this.mCachedViews = new ArrayList();
            this.mUnmodifiableAttachedScrap = Collections.unmodifiableList(this.mAttachedScrap);
            this.mRequestedCacheMax = 2;
            this.mViewCacheMax = 2;
        }

        private void attachAccessibilityDelegate(View view) {
            if (RecyclerView.this.isAccessibilityEnabled()) {
                if (ViewCompat.getImportantForAccessibility(view) == 0) {
                    ViewCompat.setImportantForAccessibility(view, 1);
                }
                if (!ViewCompat.hasAccessibilityDelegate(view)) {
                    ViewCompat.setAccessibilityDelegate(view, RecyclerView.this.mAccessibilityDelegate.getItemDelegate());
                }
            }
        }

        private void invalidateDisplayListInt(ViewHolder viewHolder) {
            if (viewHolder.itemView instanceof ViewGroup) {
                this.invalidateDisplayListInt((ViewGroup)viewHolder.itemView, false);
            }
        }

        private void invalidateDisplayListInt(ViewGroup viewGroup, boolean bl) {
            int n2;
            for (n2 = viewGroup.getChildCount() - 1; n2 >= 0; --n2) {
                View view = viewGroup.getChildAt(n2);
                if (!(view instanceof ViewGroup)) continue;
                this.invalidateDisplayListInt((ViewGroup)view, true);
            }
            if (!bl) {
                return;
            }
            if (viewGroup.getVisibility() == 4) {
                viewGroup.setVisibility(0);
                viewGroup.setVisibility(4);
                return;
            }
            n2 = viewGroup.getVisibility();
            viewGroup.setVisibility(4);
            viewGroup.setVisibility(n2);
        }

        void addViewHolderToRecycledViewPool(ViewHolder viewHolder) {
            ViewCompat.setAccessibilityDelegate(viewHolder.itemView, null);
            this.dispatchViewRecycled(viewHolder);
            viewHolder.mOwnerRecyclerView = null;
            this.getRecycledViewPool().putRecycledView(viewHolder);
        }

        /*
         * Enabled aggressive block sorting
         */
        public void bindViewToPosition(View object, int n2) {
            boolean bl = true;
            ViewHolder viewHolder = RecyclerView.getChildViewHolderInt((View)object);
            if (viewHolder == null) {
                throw new IllegalArgumentException("The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter");
            }
            int n3 = RecyclerView.this.mAdapterHelper.findPositionOffset(n2);
            if (n3 < 0 || n3 >= RecyclerView.this.mAdapter.getItemCount()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + n2 + "(offset:" + n3 + ")." + "state:" + RecyclerView.this.mState.getItemCount());
            }
            viewHolder.mOwnerRecyclerView = RecyclerView.this;
            RecyclerView.this.mAdapter.bindViewHolder(viewHolder, n3);
            this.attachAccessibilityDelegate((View)object);
            if (RecyclerView.this.mState.isPreLayout()) {
                viewHolder.mPreLayoutPosition = n2;
            }
            if ((object = viewHolder.itemView.getLayoutParams()) == null) {
                object = (LayoutParams)RecyclerView.this.generateDefaultLayoutParams();
                viewHolder.itemView.setLayoutParams((ViewGroup.LayoutParams)object);
            } else if (!RecyclerView.this.checkLayoutParams((ViewGroup.LayoutParams)object)) {
                object = (LayoutParams)RecyclerView.this.generateLayoutParams((ViewGroup.LayoutParams)object);
                viewHolder.itemView.setLayoutParams((ViewGroup.LayoutParams)object);
            } else {
                object = (LayoutParams)((Object)object);
            }
            object.mInsetsDirty = true;
            object.mViewHolder = viewHolder;
            if (viewHolder.itemView.getParent() != null) {
                bl = false;
            }
            object.mPendingInvalidate = bl;
        }

        public void clear() {
            this.mAttachedScrap.clear();
            this.recycleAndClearCachedViews();
        }

        void clearOldPositions() {
            int n2;
            int n3 = this.mCachedViews.size();
            for (n2 = 0; n2 < n3; ++n2) {
                this.mCachedViews.get(n2).clearOldPosition();
            }
            n3 = this.mAttachedScrap.size();
            for (n2 = 0; n2 < n3; ++n2) {
                this.mAttachedScrap.get(n2).clearOldPosition();
            }
            if (this.mChangedScrap != null) {
                n3 = this.mChangedScrap.size();
                for (n2 = 0; n2 < n3; ++n2) {
                    this.mChangedScrap.get(n2).clearOldPosition();
                }
            }
        }

        void clearScrap() {
            this.mAttachedScrap.clear();
            if (this.mChangedScrap != null) {
                this.mChangedScrap.clear();
            }
        }

        public int convertPreLayoutPositionToPostLayout(int n2) {
            if (n2 < 0 || n2 >= RecyclerView.this.mState.getItemCount()) {
                throw new IndexOutOfBoundsException("invalid position " + n2 + ". State " + "item count is " + RecyclerView.this.mState.getItemCount());
            }
            if (!RecyclerView.this.mState.isPreLayout()) {
                return n2;
            }
            return RecyclerView.this.mAdapterHelper.findPositionOffset(n2);
        }

        void dispatchViewRecycled(ViewHolder viewHolder) {
            if (RecyclerView.this.mRecyclerListener != null) {
                RecyclerView.this.mRecyclerListener.onViewRecycled(viewHolder);
            }
            if (RecyclerView.this.mAdapter != null) {
                RecyclerView.this.mAdapter.onViewRecycled(viewHolder);
            }
            if (RecyclerView.this.mState != null) {
                RecyclerView.this.mViewInfoStore.removeViewHolder(viewHolder);
            }
        }

        ViewHolder getChangedScrapViewForPosition(int n2) {
            int n3;
            ViewHolder viewHolder;
            if (this.mChangedScrap == null || (n3 = this.mChangedScrap.size()) == 0) {
                return null;
            }
            for (int i2 = 0; i2 < n3; ++i2) {
                viewHolder = this.mChangedScrap.get(i2);
                if (viewHolder.wasReturnedFromScrap() || viewHolder.getLayoutPosition() != n2) continue;
                viewHolder.addFlags(32);
                return viewHolder;
            }
            if (RecyclerView.this.mAdapter.hasStableIds() && (n2 = RecyclerView.this.mAdapterHelper.findPositionOffset(n2)) > 0 && n2 < RecyclerView.this.mAdapter.getItemCount()) {
                long l2 = RecyclerView.this.mAdapter.getItemId(n2);
                for (n2 = 0; n2 < n3; ++n2) {
                    viewHolder = this.mChangedScrap.get(n2);
                    if (viewHolder.wasReturnedFromScrap() || viewHolder.getItemId() != l2) continue;
                    viewHolder.addFlags(32);
                    return viewHolder;
                }
            }
            return null;
        }

        RecycledViewPool getRecycledViewPool() {
            if (this.mRecyclerPool == null) {
                this.mRecyclerPool = new RecycledViewPool();
            }
            return this.mRecyclerPool;
        }

        int getScrapCount() {
            return this.mAttachedScrap.size();
        }

        public List<ViewHolder> getScrapList() {
            return this.mUnmodifiableAttachedScrap;
        }

        View getScrapViewAt(int n2) {
            return this.mAttachedScrap.get((int)n2).itemView;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        ViewHolder getScrapViewForId(long l2, int n2, boolean bl) {
            int n3;
            ViewHolder viewHolder;
            ViewHolder viewHolder2;
            for (n3 = this.mAttachedScrap.size() - 1; n3 >= 0; --n3) {
                viewHolder = this.mAttachedScrap.get(n3);
                if (viewHolder.getItemId() != l2 || viewHolder.wasReturnedFromScrap()) continue;
                if (n2 == viewHolder.getItemViewType()) {
                    viewHolder.addFlags(32);
                    viewHolder2 = viewHolder;
                    if (!viewHolder.isRemoved()) return viewHolder2;
                    viewHolder2 = viewHolder;
                    if (RecyclerView.this.mState.isPreLayout()) return viewHolder2;
                    viewHolder.setFlags(2, 14);
                    return viewHolder;
                }
                if (bl) continue;
                this.mAttachedScrap.remove(n3);
                RecyclerView.this.removeDetachedView(viewHolder.itemView, false);
                this.quickRecycleScrapView(viewHolder.itemView);
            }
            n3 = this.mCachedViews.size() - 1;
            while (n3 >= 0) {
                viewHolder = this.mCachedViews.get(n3);
                if (viewHolder.getItemId() == l2) {
                    if (n2 == viewHolder.getItemViewType()) {
                        viewHolder2 = viewHolder;
                        if (bl) return viewHolder2;
                        this.mCachedViews.remove(n3);
                        return viewHolder;
                    }
                    if (!bl) {
                        this.recycleCachedViewAt(n3);
                    }
                }
                --n3;
            }
            return null;
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        ViewHolder getScrapViewForPosition(int var1_1, int var2_2, boolean var3_3) {
            block6 : {
                var7_4 = this.mAttachedScrap.size();
                var6_5 = 0;
                do {
                    if (var6_5 >= var7_4) ** GOTO lbl9
                    var4_6 = this.mAttachedScrap.get(var6_5);
                    if (!(var4_6.wasReturnedFromScrap() || var4_6.getLayoutPosition() != var1_1 || var4_6.isInvalid() || !RecyclerView.this.mState.mInPreLayout && var4_6.isRemoved())) {
                        if (var2_2 != -1 && var4_6.getItemViewType() != var2_2) {
                            Log.e((String)"RecyclerView", (String)("Scrap view for position " + var1_1 + " isn't dirty but has" + " wrong view type! (found " + var4_6.getItemViewType() + " but expected " + var2_2 + ")"));
lbl9: // 2 sources:
                            if (!var3_3 && (var4_6 = RecyclerView.this.mChildHelper.findHiddenNonRemovedView(var1_1, var2_2)) != null) {
                                var5_7 = RecyclerView.getChildViewHolderInt((View)var4_6);
                                RecyclerView.this.mChildHelper.unhide((View)var4_6);
                                var1_1 = RecyclerView.this.mChildHelper.indexOfChild((View)var4_6);
                                if (var1_1 != -1) break;
                                throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + var5_7);
                            }
                            break block6;
                        }
                        var4_6.addFlags(32);
                        return var4_6;
                    }
                    ++var6_5;
                } while (true);
                RecyclerView.this.mChildHelper.detachViewFromParent(var1_1);
                this.scrapView((View)var4_6);
                var5_7.addFlags(8224);
                return var5_7;
            }
            var6_5 = this.mCachedViews.size();
            var2_2 = 0;
            while (var2_2 < var6_5) {
                var5_8 = this.mCachedViews.get(var2_2);
                if (!var5_8.isInvalid() && var5_8.getLayoutPosition() == var1_1) {
                    var4_6 = var5_8;
                    if (var3_3 != false) return var4_6;
                    this.mCachedViews.remove(var2_2);
                    return var5_8;
                }
                ++var2_2;
            }
            return null;
        }

        public View getViewForPosition(int n2) {
            return this.getViewForPosition(n2, false);
        }

        /*
         * Enabled aggressive block sorting
         */
        View getViewForPosition(int n2, boolean bl) {
            if (n2 < 0 || n2 >= RecyclerView.this.mState.getItemCount()) {
                throw new IndexOutOfBoundsException("Invalid item position " + n2 + "(" + n2 + "). Item count:" + RecyclerView.this.mState.getItemCount());
            }
            int n3 = 0;
            Object object = null;
            if (RecyclerView.this.mState.isPreLayout()) {
                object = this.getChangedScrapViewForPosition(n2);
                n3 = object != null ? 1 : 0;
            }
            int n4 = n3;
            Object object2 = object;
            if (object == null) {
                object = this.getScrapViewForPosition(n2, -1, bl);
                n4 = n3;
                object2 = object;
                if (object != null) {
                    if (!this.validateViewHolderForOffsetPosition((ViewHolder)object)) {
                        if (!bl) {
                            object.addFlags(4);
                            if (object.isScrap()) {
                                RecyclerView.this.removeDetachedView(object.itemView, false);
                                object.unScrap();
                            } else if (object.wasReturnedFromScrap()) {
                                object.clearReturnedFromScrapFlag();
                            }
                            this.recycleViewHolderInternal((ViewHolder)object);
                        }
                        object2 = null;
                        n4 = n3;
                    } else {
                        n4 = 1;
                        object2 = object;
                    }
                }
            }
            int n5 = n4;
            object = object2;
            if (object2 == null) {
                Object object3;
                n5 = RecyclerView.this.mAdapterHelper.findPositionOffset(n2);
                if (n5 < 0 || n5 >= RecyclerView.this.mAdapter.getItemCount()) {
                    throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + n2 + "(offset:" + n5 + ")." + "state:" + RecyclerView.this.mState.getItemCount());
                }
                int n6 = RecyclerView.this.mAdapter.getItemViewType(n5);
                n3 = n4;
                object = object2;
                if (RecyclerView.this.mAdapter.hasStableIds()) {
                    object2 = this.getScrapViewForId(RecyclerView.this.mAdapter.getItemId(n5), n6, bl);
                    n3 = n4;
                    object = object2;
                    if (object2 != null) {
                        object2.mPosition = n5;
                        n3 = 1;
                        object = object2;
                    }
                }
                object2 = object;
                if (object == null) {
                    object2 = object;
                    if (this.mViewCacheExtension != null) {
                        object3 = this.mViewCacheExtension.getViewForPositionAndType(this, n2, n6);
                        object2 = object;
                        if (object3 != null) {
                            object = RecyclerView.this.getChildViewHolder((View)object3);
                            if (object == null) {
                                throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder");
                            }
                            object2 = object;
                            if (object.shouldIgnore()) {
                                throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.");
                            }
                        }
                    }
                }
                object3 = object2;
                if (object2 == null) {
                    object3 = object2 = this.getRecycledViewPool().getRecycledView(n6);
                    if (object2 != null) {
                        object2.resetInternal();
                        object3 = object2;
                        if (RecyclerView.FORCE_INVALIDATE_DISPLAY_LIST) {
                            this.invalidateDisplayListInt((ViewHolder)object2);
                            object3 = object2;
                        }
                    }
                }
                n5 = n3;
                object = object3;
                if (object3 == null) {
                    object = RecyclerView.this.mAdapter.createViewHolder(RecyclerView.this, n6);
                    n5 = n3;
                }
            }
            if (n5 != 0 && !RecyclerView.this.mState.isPreLayout() && object.hasAnyOfTheFlags(8192)) {
                object.setFlags(0, 8192);
                if (RecyclerView.this.mState.mRunSimpleAnimations) {
                    n4 = ItemAnimator.buildAdapterChangeFlagsForAnimations((ViewHolder)object);
                    object2 = RecyclerView.this.mItemAnimator.recordPreLayoutInformation(RecyclerView.this.mState, (ViewHolder)object, n4 | 4096, object.getUnmodifiedPayloads());
                    RecyclerView.this.recordAnimationInfoIfBouncedHiddenView((ViewHolder)object, (ItemAnimator.ItemHolderInfo)object2);
                }
            }
            n4 = 0;
            if (RecyclerView.this.mState.isPreLayout() && object.isBound()) {
                object.mPreLayoutPosition = n2;
            } else if (!object.isBound() || object.needsUpdate() || object.isInvalid()) {
                n4 = RecyclerView.this.mAdapterHelper.findPositionOffset(n2);
                object.mOwnerRecyclerView = RecyclerView.this;
                RecyclerView.this.mAdapter.bindViewHolder(object, n4);
                this.attachAccessibilityDelegate(object.itemView);
                n4 = n3 = 1;
                if (RecyclerView.this.mState.isPreLayout()) {
                    object.mPreLayoutPosition = n2;
                    n4 = n3;
                }
            }
            if ((object2 = object.itemView.getLayoutParams()) == null) {
                object2 = (LayoutParams)RecyclerView.this.generateDefaultLayoutParams();
                object.itemView.setLayoutParams((ViewGroup.LayoutParams)object2);
            } else if (!RecyclerView.this.checkLayoutParams((ViewGroup.LayoutParams)object2)) {
                object2 = (LayoutParams)RecyclerView.this.generateLayoutParams((ViewGroup.LayoutParams)object2);
                object.itemView.setLayoutParams((ViewGroup.LayoutParams)object2);
            } else {
                object2 = (LayoutParams)((Object)object2);
            }
            object2.mViewHolder = object;
            bl = n5 != 0 && n4 != 0;
            object2.mPendingInvalidate = bl;
            return object.itemView;
        }

        boolean isPrefetchPositionAttached(int n2) {
            int n3 = RecyclerView.this.mChildHelper.getUnfilteredChildCount();
            for (int i2 = 0; i2 < n3; ++i2) {
                if (RecyclerView.getChildViewHolderInt((View)RecyclerView.this.mChildHelper.getUnfilteredChildAt((int)i2)).mPosition != n2) continue;
                return true;
            }
            return false;
        }

        void markItemDecorInsetsDirty() {
            int n2 = this.mCachedViews.size();
            for (int i2 = 0; i2 < n2; ++i2) {
                LayoutParams layoutParams = (LayoutParams)this.mCachedViews.get((int)i2).itemView.getLayoutParams();
                if (layoutParams == null) continue;
                layoutParams.mInsetsDirty = true;
            }
        }

        void markKnownViewsInvalid() {
            if (RecyclerView.this.mAdapter != null && RecyclerView.this.mAdapter.hasStableIds()) {
                int n2 = this.mCachedViews.size();
                for (int i2 = 0; i2 < n2; ++i2) {
                    ViewHolder viewHolder = this.mCachedViews.get(i2);
                    if (viewHolder == null) continue;
                    viewHolder.addFlags(6);
                    viewHolder.addChangePayload(null);
                }
            } else {
                this.recycleAndClearCachedViews();
            }
        }

        void offsetPositionRecordsForInsert(int n2, int n3) {
            int n4 = this.mCachedViews.size();
            for (int i2 = 0; i2 < n4; ++i2) {
                ViewHolder viewHolder = this.mCachedViews.get(i2);
                if (viewHolder == null || viewHolder.mPosition < n2) continue;
                viewHolder.offsetPosition(n3, true);
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        void offsetPositionRecordsForMove(int n2, int n3) {
            int n4;
            int n5;
            int n6;
            if (n2 < n3) {
                n4 = n2;
                n5 = n3;
                n6 = -1;
            } else {
                n4 = n3;
                n5 = n2;
                n6 = 1;
            }
            int n7 = this.mCachedViews.size();
            int n8 = 0;
            while (n8 < n7) {
                ViewHolder viewHolder = this.mCachedViews.get(n8);
                if (viewHolder != null && viewHolder.mPosition >= n4 && viewHolder.mPosition <= n5) {
                    if (viewHolder.mPosition == n2) {
                        viewHolder.offsetPosition(n3 - n2, false);
                    } else {
                        viewHolder.offsetPosition(n6, false);
                    }
                }
                ++n8;
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        void offsetPositionRecordsForRemove(int n2, int n3, boolean bl) {
            int n4 = this.mCachedViews.size() - 1;
            while (n4 >= 0) {
                ViewHolder viewHolder = this.mCachedViews.get(n4);
                if (viewHolder != null) {
                    if (viewHolder.mPosition >= n2 + n3) {
                        viewHolder.offsetPosition(- n3, bl);
                    } else if (viewHolder.mPosition >= n2) {
                        viewHolder.addFlags(8);
                        this.recycleCachedViewAt(n4);
                    }
                }
                --n4;
            }
            return;
        }

        void onAdapterChanged(Adapter adapter, Adapter adapter2, boolean bl) {
            this.clear();
            this.getRecycledViewPool().onAdapterChanged(adapter, adapter2, bl);
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        void prefetch(int[] arrn, int n2) {
            if (n2 == 0) {
                return;
            }
            int n3 = arrn[n2 - 1];
            if (n3 < 0) {
                throw new IllegalArgumentException("Recycler requested to prefetch invalid view " + n3);
            }
            View view = null;
            if (!this.isPrefetchPositionAttached(n3)) {
                view = this.getViewForPosition(n3);
            }
            if (n2 > 1) {
                this.prefetch(arrn, n2 - 1);
            }
            if (view == null) return;
            this.recycleView(view);
        }

        void quickRecycleScrapView(View object) {
            object = RecyclerView.getChildViewHolderInt((View)object);
            ((ViewHolder)object).mScrapContainer = null;
            ((ViewHolder)object).mInChangeScrap = false;
            object.clearReturnedFromScrapFlag();
            this.recycleViewHolderInternal((ViewHolder)object);
        }

        void recycleAndClearCachedViews() {
            for (int i2 = this.mCachedViews.size() - 1; i2 >= 0; --i2) {
                this.recycleCachedViewAt(i2);
            }
            this.mCachedViews.clear();
            if (ALLOW_PREFETCHING) {
                RecyclerView.this.mViewPrefetcher.clearPrefetchPositions();
            }
        }

        void recycleCachedViewAt(int n2) {
            this.addViewHolderToRecycledViewPool(this.mCachedViews.get(n2));
            this.mCachedViews.remove(n2);
        }

        /*
         * Enabled aggressive block sorting
         */
        public void recycleView(View view) {
            ViewHolder viewHolder = RecyclerView.getChildViewHolderInt(view);
            if (viewHolder.isTmpDetached()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (viewHolder.isScrap()) {
                viewHolder.unScrap();
            } else if (viewHolder.wasReturnedFromScrap()) {
                viewHolder.clearReturnedFromScrapFlag();
            }
            this.recycleViewHolderInternal(viewHolder);
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        void recycleViewHolderInternal(ViewHolder var1_1) {
            var8_2 = true;
            if (var1_1.isScrap() || var1_1.itemView.getParent() != null) {
                var2_3 = new StringBuilder().append("Scrapped or attached views may not be recycled. isScrap:").append(var1_1.isScrap()).append(" isAttached:");
                if (var1_1.itemView.getParent() != null) {
                    throw new IllegalArgumentException(var2_3.append(var8_2).toString());
                }
                var8_2 = false;
                throw new IllegalArgumentException(var2_3.append(var8_2).toString());
            }
            if (var1_1.isTmpDetached()) {
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + var1_1);
            }
            if (var1_1.shouldIgnore()) {
                throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.");
            }
            var8_2 = ViewHolder.access$800(var1_1);
            var3_4 = RecyclerView.this.mAdapter != null && var8_2 != false && RecyclerView.this.mAdapter.onFailedToRecycleView(var1_1) != false ? 1 : 0;
            var4_5 = 0;
            var7_6 = 0;
            var6_7 = 0;
            if (var3_4 != 0) ** GOTO lbl20
            var5_8 = var6_7;
            if (!var1_1.isRecyclable()) ** GOTO lbl48
lbl20: // 2 sources:
            var3_4 = var7_6;
            if (this.mViewCacheMax <= 0) ** GOTO lbl42
            var3_4 = var7_6;
            if (var1_1.hasAnyOfTheFlags(14)) ** GOTO lbl42
            var3_4 = var4_5 = this.mCachedViews.size();
            if (var4_5 >= this.mViewCacheMax) {
                var3_4 = var4_5;
                if (var4_5 > 0) {
                    this.recycleCachedViewAt(0);
                    var3_4 = var4_5 - 1;
                }
            }
            var5_8 = var4_5 = var3_4;
            if (!RecyclerView.access$400()) ** GOTO lbl40
            var5_8 = var4_5;
            if (var3_4 <= 0) ** GOTO lbl40
            var5_8 = var4_5;
            if (RecyclerView.this.mViewPrefetcher.lastPrefetchIncludedPosition(var1_1.mPosition)) ** GOTO lbl40
            --var3_4;
            do {
                if (var3_4 < 0 || !RecyclerView.this.mViewPrefetcher.lastPrefetchIncludedPosition(var4_5 = this.mCachedViews.get((int)var3_4).mPosition)) {
                    var5_8 = var3_4 + 1;
lbl40: // 4 sources:
                    this.mCachedViews.add(var5_8, var1_1);
                    var3_4 = 1;
lbl42: // 3 sources:
                    var4_5 = var3_4;
                    var5_8 = var6_7;
                    if (var3_4 == 0) {
                        this.addViewHolderToRecycledViewPool(var1_1);
                        var5_8 = 1;
                        var4_5 = var3_4;
                    }
lbl48: // 4 sources:
                    RecyclerView.this.mViewInfoStore.removeViewHolder(var1_1);
                    if (var4_5 != 0) return;
                    if (var5_8 != 0) return;
                    if (var8_2 == false) return;
                    var1_1.mOwnerRecyclerView = null;
                    return;
                }
                --var3_4;
            } while (true);
        }

        void recycleViewInternal(View view) {
            this.recycleViewHolderInternal(RecyclerView.getChildViewHolderInt(view));
        }

        void scrapView(View object) {
            if ((object = RecyclerView.getChildViewHolderInt((View)object)).hasAnyOfTheFlags(12) || !object.isUpdated() || RecyclerView.this.canReuseUpdatedViewHolder((ViewHolder)object)) {
                if (object.isInvalid() && !object.isRemoved() && !RecyclerView.this.mAdapter.hasStableIds()) {
                    throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.");
                }
                object.setScrapContainer(this, false);
                this.mAttachedScrap.add((ViewHolder)object);
                return;
            }
            if (this.mChangedScrap == null) {
                this.mChangedScrap = new ArrayList();
            }
            object.setScrapContainer(this, true);
            this.mChangedScrap.add((ViewHolder)object);
        }

        void setAdapterPositionsAsUnknown() {
            int n2 = this.mCachedViews.size();
            for (int i2 = 0; i2 < n2; ++i2) {
                ViewHolder viewHolder = this.mCachedViews.get(i2);
                if (viewHolder == null) continue;
                viewHolder.addFlags(512);
            }
        }

        void setRecycledViewPool(RecycledViewPool recycledViewPool) {
            if (this.mRecyclerPool != null) {
                this.mRecyclerPool.detach();
            }
            this.mRecyclerPool = recycledViewPool;
            if (recycledViewPool != null) {
                this.mRecyclerPool.attach(RecyclerView.this.getAdapter());
            }
        }

        void setViewCacheExtension(ViewCacheExtension viewCacheExtension) {
            this.mViewCacheExtension = viewCacheExtension;
        }

        public void setViewCacheSize(int n2) {
            this.mRequestedCacheMax = n2;
            this.updateViewCacheSize();
        }

        /*
         * Enabled aggressive block sorting
         */
        void unscrapView(ViewHolder viewHolder) {
            if (viewHolder.mInChangeScrap) {
                this.mChangedScrap.remove(viewHolder);
            } else {
                this.mAttachedScrap.remove(viewHolder);
            }
            viewHolder.mScrapContainer = null;
            viewHolder.mInChangeScrap = false;
            viewHolder.clearReturnedFromScrapFlag();
        }

        /*
         * Enabled aggressive block sorting
         */
        void updateViewCacheSize() {
            int n2;
            int n3 = n2 = 0;
            if (RecyclerView.this.mLayout != null) {
                n3 = n2;
                if (ALLOW_PREFETCHING) {
                    n3 = RecyclerView.this.mLayout.isItemPrefetchEnabled() ? RecyclerView.this.mLayout.getItemPrefetchCount() : 0;
                }
            }
            this.mViewCacheMax = this.mRequestedCacheMax + n3;
            for (n3 = this.mCachedViews.size() - 1; n3 >= 0 && this.mCachedViews.size() > this.mViewCacheMax; --n3) {
                this.recycleCachedViewAt(n3);
            }
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        boolean validateViewHolderForOffsetPosition(ViewHolder viewHolder) {
            boolean bl = true;
            if (viewHolder.isRemoved()) {
                return RecyclerView.this.mState.isPreLayout();
            }
            if (viewHolder.mPosition < 0) throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + viewHolder);
            if (viewHolder.mPosition >= RecyclerView.this.mAdapter.getItemCount()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + viewHolder);
            }
            if (!RecyclerView.this.mState.isPreLayout() && RecyclerView.this.mAdapter.getItemViewType(viewHolder.mPosition) != viewHolder.getItemViewType()) {
                return false;
            }
            boolean bl2 = bl;
            if (!RecyclerView.this.mAdapter.hasStableIds()) return bl2;
            bl2 = bl;
            if (viewHolder.getItemId() == RecyclerView.this.mAdapter.getItemId(viewHolder.mPosition)) return bl2;
            return false;
        }

        /*
         * Enabled aggressive block sorting
         */
        void viewRangeUpdate(int n2, int n3) {
            int n4 = this.mCachedViews.size() - 1;
            while (n4 >= 0) {
                int n5;
                ViewHolder viewHolder = this.mCachedViews.get(n4);
                if (viewHolder != null && (n5 = viewHolder.getLayoutPosition()) >= n2 && n5 < n2 + n3) {
                    viewHolder.addFlags(2);
                    this.recycleCachedViewAt(n4);
                }
                --n4;
            }
            return;
        }
    }

    public static interface RecyclerListener {
        public void onViewRecycled(ViewHolder var1);
    }

    private class RecyclerViewDataObserver
    extends AdapterDataObserver {
        RecyclerViewDataObserver() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onChanged() {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapter.hasStableIds()) {
                RecyclerView.this.mState.mStructureChanged = true;
                RecyclerView.this.setDataSetChangedAfterLayout();
            } else {
                RecyclerView.this.mState.mStructureChanged = true;
                RecyclerView.this.setDataSetChangedAfterLayout();
            }
            if (!RecyclerView.this.mAdapterHelper.hasPendingUpdates()) {
                RecyclerView.this.requestLayout();
            }
        }

        @Override
        public void onItemRangeChanged(int n2, int n3, Object object) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.onItemRangeChanged(n2, n3, object)) {
                this.triggerUpdateProcessor();
            }
        }

        @Override
        public void onItemRangeInserted(int n2, int n3) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.onItemRangeInserted(n2, n3)) {
                this.triggerUpdateProcessor();
            }
        }

        @Override
        public void onItemRangeMoved(int n2, int n3, int n4) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.onItemRangeMoved(n2, n3, n4)) {
                this.triggerUpdateProcessor();
            }
        }

        @Override
        public void onItemRangeRemoved(int n2, int n3) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.onItemRangeRemoved(n2, n3)) {
                this.triggerUpdateProcessor();
            }
        }

        void triggerUpdateProcessor() {
            if (RecyclerView.POST_UPDATES_ON_ANIMATION && RecyclerView.this.mHasFixedSize && RecyclerView.this.mIsAttached) {
                ViewCompat.postOnAnimation((View)RecyclerView.this, RecyclerView.this.mUpdateChildViewsRunnable);
                return;
            }
            RecyclerView.this.mAdapterUpdateDuringMeasure = true;
            RecyclerView.this.requestLayout();
        }
    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
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
        Parcelable mLayoutState;

        /*
         * Enabled aggressive block sorting
         */
        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                classLoader = LayoutManager.class.getClassLoader();
            }
            this.mLayoutState = parcel.readParcelable(classLoader);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        void copyFrom(SavedState savedState) {
            this.mLayoutState = savedState.mLayoutState;
        }

        @Override
        public void writeToParcel(Parcel parcel, int n2) {
            super.writeToParcel(parcel, n2);
            parcel.writeParcelable(this.mLayoutState, 0);
        }

    }

    public static class SimpleOnItemTouchListener
    implements OnItemTouchListener {
        @Override
        public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            return false;
        }

        @Override
        public void onRequestDisallowInterceptTouchEvent(boolean bl) {
        }

        @Override
        public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        }
    }

    public static abstract class SmoothScroller {
        private LayoutManager mLayoutManager;
        private boolean mPendingInitialRun;
        private RecyclerView mRecyclerView;
        private final Action mRecyclingAction = new Action(0, 0);
        private boolean mRunning;
        private int mTargetPosition = -1;
        private View mTargetView;

        /*
         * Enabled aggressive block sorting
         */
        private void onAnimation(int n2, int n3) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (!this.mRunning || this.mTargetPosition == -1 || recyclerView == null) {
                this.stop();
            }
            this.mPendingInitialRun = false;
            if (this.mTargetView != null) {
                if (this.getChildPosition(this.mTargetView) == this.mTargetPosition) {
                    this.onTargetFound(this.mTargetView, recyclerView.mState, this.mRecyclingAction);
                    this.mRecyclingAction.runIfNecessary(recyclerView);
                    this.stop();
                } else {
                    Log.e((String)"RecyclerView", (String)"Passed over target position while smooth scrolling.");
                    this.mTargetView = null;
                }
            }
            if (this.mRunning) {
                this.onSeekTargetStep(n2, n3, recyclerView.mState, this.mRecyclingAction);
                boolean bl = this.mRecyclingAction.hasJumpTarget();
                this.mRecyclingAction.runIfNecessary(recyclerView);
                if (bl) {
                    if (!this.mRunning) {
                        this.stop();
                        return;
                    }
                    this.mPendingInitialRun = true;
                    recyclerView.mViewFlinger.postOnAnimation();
                }
            }
        }

        public View findViewByPosition(int n2) {
            return this.mRecyclerView.mLayout.findViewByPosition(n2);
        }

        public int getChildCount() {
            return this.mRecyclerView.mLayout.getChildCount();
        }

        public int getChildPosition(View view) {
            return this.mRecyclerView.getChildLayoutPosition(view);
        }

        @Nullable
        public LayoutManager getLayoutManager() {
            return this.mLayoutManager;
        }

        public int getTargetPosition() {
            return this.mTargetPosition;
        }

        @Deprecated
        public void instantScrollToPosition(int n2) {
            this.mRecyclerView.scrollToPosition(n2);
        }

        public boolean isPendingInitialRun() {
            return this.mPendingInitialRun;
        }

        public boolean isRunning() {
            return this.mRunning;
        }

        protected void normalize(PointF pointF) {
            double d2 = Math.sqrt(pointF.x * pointF.x + pointF.y * pointF.y);
            pointF.x = (float)((double)pointF.x / d2);
            pointF.y = (float)((double)pointF.y / d2);
        }

        protected void onChildAttachedToWindow(View view) {
            if (this.getChildPosition(view) == this.getTargetPosition()) {
                this.mTargetView = view;
            }
        }

        protected abstract void onSeekTargetStep(int var1, int var2, State var3, Action var4);

        protected abstract void onStart();

        protected abstract void onStop();

        protected abstract void onTargetFound(View var1, State var2, Action var3);

        public void setTargetPosition(int n2) {
            this.mTargetPosition = n2;
        }

        void start(RecyclerView recyclerView, LayoutManager layoutManager) {
            this.mRecyclerView = recyclerView;
            this.mLayoutManager = layoutManager;
            if (this.mTargetPosition == -1) {
                throw new IllegalArgumentException("Invalid target position");
            }
            this.mRecyclerView.mState.mTargetPosition = this.mTargetPosition;
            this.mRunning = true;
            this.mPendingInitialRun = true;
            this.mTargetView = this.findViewByPosition(this.getTargetPosition());
            this.onStart();
            this.mRecyclerView.mViewFlinger.postOnAnimation();
        }

        protected final void stop() {
            if (!this.mRunning) {
                return;
            }
            this.onStop();
            this.mRecyclerView.mState.mTargetPosition = -1;
            this.mTargetView = null;
            this.mTargetPosition = -1;
            this.mPendingInitialRun = false;
            this.mRunning = false;
            this.mLayoutManager.onSmoothScrollerStopped(this);
            this.mLayoutManager = null;
            this.mRecyclerView = null;
        }

        public static class Action {
            public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
            private boolean changed = false;
            private int consecutiveUpdates = 0;
            private int mDuration;
            private int mDx;
            private int mDy;
            private Interpolator mInterpolator;
            private int mJumpToPosition = -1;

            public Action(int n2, int n3) {
                this(n2, n3, Integer.MIN_VALUE, null);
            }

            public Action(int n2, int n3, int n4) {
                this(n2, n3, n4, null);
            }

            public Action(int n2, int n3, int n4, Interpolator interpolator2) {
                this.mDx = n2;
                this.mDy = n3;
                this.mDuration = n4;
                this.mInterpolator = interpolator2;
            }

            private void validate() {
                if (this.mInterpolator != null && this.mDuration < 1) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                if (this.mDuration < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }

            public int getDuration() {
                return this.mDuration;
            }

            public int getDx() {
                return this.mDx;
            }

            public int getDy() {
                return this.mDy;
            }

            public Interpolator getInterpolator() {
                return this.mInterpolator;
            }

            boolean hasJumpTarget() {
                if (this.mJumpToPosition >= 0) {
                    return true;
                }
                return false;
            }

            public void jumpTo(int n2) {
                this.mJumpToPosition = n2;
            }

            /*
             * Enabled aggressive block sorting
             */
            void runIfNecessary(RecyclerView recyclerView) {
                if (this.mJumpToPosition >= 0) {
                    int n2 = this.mJumpToPosition;
                    this.mJumpToPosition = -1;
                    recyclerView.jumpToPositionForSmoothScroller(n2);
                    this.changed = false;
                    return;
                }
                if (!this.changed) {
                    this.consecutiveUpdates = 0;
                    return;
                }
                this.validate();
                if (this.mInterpolator == null) {
                    if (this.mDuration == Integer.MIN_VALUE) {
                        recyclerView.mViewFlinger.smoothScrollBy(this.mDx, this.mDy);
                    } else {
                        recyclerView.mViewFlinger.smoothScrollBy(this.mDx, this.mDy, this.mDuration);
                    }
                } else {
                    recyclerView.mViewFlinger.smoothScrollBy(this.mDx, this.mDy, this.mDuration, this.mInterpolator);
                }
                ++this.consecutiveUpdates;
                if (this.consecutiveUpdates > 10) {
                    Log.e((String)"RecyclerView", (String)"Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                }
                this.changed = false;
            }

            public void setDuration(int n2) {
                this.changed = true;
                this.mDuration = n2;
            }

            public void setDx(int n2) {
                this.changed = true;
                this.mDx = n2;
            }

            public void setDy(int n2) {
                this.changed = true;
                this.mDy = n2;
            }

            public void setInterpolator(Interpolator interpolator2) {
                this.changed = true;
                this.mInterpolator = interpolator2;
            }

            public void update(int n2, int n3, int n4, Interpolator interpolator2) {
                this.mDx = n2;
                this.mDy = n3;
                this.mDuration = n4;
                this.mInterpolator = interpolator2;
                this.changed = true;
            }
        }

        public static interface ScrollVectorProvider {
            public PointF computeScrollVectorForPosition(int var1);
        }

    }

    public static class State {
        static final int STEP_ANIMATIONS = 4;
        static final int STEP_LAYOUT = 2;
        static final int STEP_START = 1;
        private SparseArray<Object> mData;
        int mDeletedInvisibleItemCountSincePreviousLayout = 0;
        long mFocusedItemId;
        int mFocusedItemPosition;
        int mFocusedSubChildId;
        boolean mInPreLayout = false;
        boolean mIsMeasuring = false;
        int mItemCount = 0;
        int mLayoutStep = 1;
        int mPreviousLayoutItemCount = 0;
        boolean mRunPredictiveAnimations = false;
        boolean mRunSimpleAnimations = false;
        boolean mStructureChanged = false;
        private int mTargetPosition = -1;
        boolean mTrackOldChangeHolders = false;

        void assertLayoutStep(int n2) {
            if ((this.mLayoutStep & n2) == 0) {
                throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(n2) + " but it is " + Integer.toBinaryString(this.mLayoutStep));
            }
        }

        public boolean didStructureChange() {
            return this.mStructureChanged;
        }

        public <T> T get(int n2) {
            if (this.mData == null) {
                return null;
            }
            return (T)this.mData.get(n2);
        }

        public int getItemCount() {
            if (this.mInPreLayout) {
                return this.mPreviousLayoutItemCount - this.mDeletedInvisibleItemCountSincePreviousLayout;
            }
            return this.mItemCount;
        }

        public int getTargetScrollPosition() {
            return this.mTargetPosition;
        }

        public boolean hasTargetScrollPosition() {
            if (this.mTargetPosition != -1) {
                return true;
            }
            return false;
        }

        public boolean isMeasuring() {
            return this.mIsMeasuring;
        }

        public boolean isPreLayout() {
            return this.mInPreLayout;
        }

        public void put(int n2, Object object) {
            if (this.mData == null) {
                this.mData = new SparseArray();
            }
            this.mData.put(n2, object);
        }

        public void remove(int n2) {
            if (this.mData == null) {
                return;
            }
            this.mData.remove(n2);
        }

        State reset() {
            this.mTargetPosition = -1;
            if (this.mData != null) {
                this.mData.clear();
            }
            this.mItemCount = 0;
            this.mStructureChanged = false;
            this.mIsMeasuring = false;
            return this;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.mTargetPosition + ", mData=" + this.mData + ", mItemCount=" + this.mItemCount + ", mPreviousLayoutItemCount=" + this.mPreviousLayoutItemCount + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.mDeletedInvisibleItemCountSincePreviousLayout + ", mStructureChanged=" + this.mStructureChanged + ", mInPreLayout=" + this.mInPreLayout + ", mRunSimpleAnimations=" + this.mRunSimpleAnimations + ", mRunPredictiveAnimations=" + this.mRunPredictiveAnimations + '}';
        }

        public boolean willRunPredictiveAnimations() {
            return this.mRunPredictiveAnimations;
        }

        public boolean willRunSimpleAnimations() {
            return this.mRunSimpleAnimations;
        }
    }

    public static abstract class ViewCacheExtension {
        public abstract View getViewForPositionAndType(Recycler var1, int var2, int var3);
    }

    private class ViewFlinger
    implements Runnable {
        private boolean mEatRunOnAnimationRequest;
        private Interpolator mInterpolator;
        private int mLastFlingX;
        private int mLastFlingY;
        private boolean mReSchedulePostAnimationCallback;
        private ScrollerCompat mScroller;

        public ViewFlinger() {
            this.mInterpolator = RecyclerView.sQuinticInterpolator;
            this.mEatRunOnAnimationRequest = false;
            this.mReSchedulePostAnimationCallback = false;
            this.mScroller = ScrollerCompat.create(RecyclerView.this.getContext(), RecyclerView.sQuinticInterpolator);
        }

        /*
         * Enabled aggressive block sorting
         */
        private int computeScrollDuration(int n2, int n3, int n4, int n5) {
            int n6;
            int n7 = Math.abs(n2);
            boolean bl = n7 > (n6 = Math.abs(n3));
            n4 = (int)Math.sqrt(n4 * n4 + n5 * n5);
            n3 = (int)Math.sqrt(n2 * n2 + n3 * n3);
            n2 = bl ? RecyclerView.this.getWidth() : RecyclerView.this.getHeight();
            n5 = n2 / 2;
            float f2 = Math.min(1.0f, 1.0f * (float)n3 / (float)n2);
            float f3 = n5;
            float f4 = n5;
            f2 = this.distanceInfluenceForSnapDuration(f2);
            if (n4 > 0) {
                n2 = Math.round(1000.0f * Math.abs((f3 + f4 * f2) / (float)n4)) * 4;
                return Math.min(n2, 2000);
            }
            n3 = bl ? n7 : n6;
            n2 = (int)(((float)n3 / (float)n2 + 1.0f) * 300.0f);
            return Math.min(n2, 2000);
        }

        private void disableRunOnAnimationRequests() {
            this.mReSchedulePostAnimationCallback = false;
            this.mEatRunOnAnimationRequest = true;
        }

        private float distanceInfluenceForSnapDuration(float f2) {
            return (float)Math.sin((float)((double)(f2 - 0.5f) * 0.4712389167638204));
        }

        private void enableRunOnAnimationRequests() {
            this.mEatRunOnAnimationRequest = false;
            if (this.mReSchedulePostAnimationCallback) {
                this.postOnAnimation();
            }
        }

        public void fling(int n2, int n3) {
            RecyclerView.this.setScrollState(2);
            this.mLastFlingY = 0;
            this.mLastFlingX = 0;
            this.mScroller.fling(0, 0, n2, n3, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            this.postOnAnimation();
        }

        void postOnAnimation() {
            if (this.mEatRunOnAnimationRequest) {
                this.mReSchedulePostAnimationCallback = true;
                return;
            }
            RecyclerView.this.removeCallbacks((Runnable)this);
            ViewCompat.postOnAnimation((View)RecyclerView.this, this);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void run() {
            if (RecyclerView.this.mLayout == null) {
                this.stop();
                return;
            }
            this.disableRunOnAnimationRequests();
            RecyclerView.this.consumePendingUpdateOperations();
            ScrollerCompat scrollerCompat = this.mScroller;
            SmoothScroller smoothScroller = RecyclerView.this.mLayout.mSmoothScroller;
            if (scrollerCompat.computeScrollOffset()) {
                int n2 = scrollerCompat.getCurrX();
                int n3 = scrollerCompat.getCurrY();
                int n4 = n2 - this.mLastFlingX;
                int n5 = n3 - this.mLastFlingY;
                int n6 = 0;
                int n7 = 0;
                int n8 = 0;
                int n9 = 0;
                this.mLastFlingX = n2;
                this.mLastFlingY = n3;
                int n10 = 0;
                int n11 = 0;
                int n12 = 0;
                int n13 = 0;
                if (RecyclerView.this.mAdapter != null) {
                    RecyclerView.this.eatRequestLayout();
                    RecyclerView.this.onEnterLayoutOrScroll();
                    TraceCompat.beginSection("RV Scroll");
                    if (n4 != 0) {
                        n7 = RecyclerView.this.mLayout.scrollHorizontallyBy(n4, RecyclerView.this.mRecycler, RecyclerView.this.mState);
                        n11 = n4 - n7;
                    }
                    if (n5 != 0) {
                        n9 = RecyclerView.this.mLayout.scrollVerticallyBy(n5, RecyclerView.this.mRecycler, RecyclerView.this.mState);
                        n13 = n5 - n9;
                    }
                    TraceCompat.endSection();
                    RecyclerView.this.repositionShadowingViews();
                    RecyclerView.this.onExitLayoutOrScroll();
                    RecyclerView.this.resumeRequestLayout(false);
                    n6 = n7;
                    n10 = n11;
                    n12 = n13;
                    n8 = n9;
                    if (smoothScroller != null) {
                        n6 = n7;
                        n10 = n11;
                        n12 = n13;
                        n8 = n9;
                        if (!smoothScroller.isPendingInitialRun()) {
                            n6 = n7;
                            n10 = n11;
                            n12 = n13;
                            n8 = n9;
                            if (smoothScroller.isRunning()) {
                                n6 = RecyclerView.this.mState.getItemCount();
                                if (n6 == 0) {
                                    smoothScroller.stop();
                                    n8 = n9;
                                    n12 = n13;
                                    n10 = n11;
                                    n6 = n7;
                                } else if (smoothScroller.getTargetPosition() >= n6) {
                                    smoothScroller.setTargetPosition(n6 - 1);
                                    smoothScroller.onAnimation(n4 - n11, n5 - n13);
                                    n6 = n7;
                                    n10 = n11;
                                    n12 = n13;
                                    n8 = n9;
                                } else {
                                    smoothScroller.onAnimation(n4 - n11, n5 - n13);
                                    n6 = n7;
                                    n10 = n11;
                                    n12 = n13;
                                    n8 = n9;
                                }
                            }
                        }
                    }
                }
                if (!RecyclerView.this.mItemDecorations.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.considerReleasingGlowsOnScroll(n4, n5);
                }
                if (n10 != 0 || n12 != 0) {
                    n13 = (int)scrollerCompat.getCurrVelocity();
                    n7 = 0;
                    if (n10 != n2) {
                        n7 = n10 < 0 ? - n13 : (n10 > 0 ? n13 : 0);
                    }
                    n11 = 0;
                    if (n12 != n3) {
                        n11 = n12 < 0 ? - n13 : (n12 > 0 ? n13 : 0);
                    }
                    if (RecyclerView.this.getOverScrollMode() != 2) {
                        RecyclerView.this.absorbGlows(n7, n11);
                    }
                    if (!(n7 == 0 && n10 != n2 && scrollerCompat.getFinalX() != 0 || n11 == 0 && n12 != n3 && scrollerCompat.getFinalY() != 0)) {
                        scrollerCompat.abortAnimation();
                    }
                }
                if (n6 != 0 || n8 != 0) {
                    RecyclerView.this.dispatchOnScrolled(n6, n8);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                n7 = n5 != 0 && RecyclerView.this.mLayout.canScrollVertically() && n8 == n5 ? 1 : 0;
                n11 = n4 != 0 && RecyclerView.this.mLayout.canScrollHorizontally() && n6 == n4 ? 1 : 0;
                n7 = n4 == 0 && (n5 == 0 || n11 != 0) || n7 != 0 ? 1 : 0;
                if (scrollerCompat.isFinished() || n7 == 0) {
                    RecyclerView.this.setScrollState(0);
                    if (ALLOW_PREFETCHING) {
                        RecyclerView.this.mViewPrefetcher.clearPrefetchPositions();
                    }
                } else {
                    this.postOnAnimation();
                    if (ALLOW_PREFETCHING) {
                        RecyclerView.this.mViewPrefetcher.postFromTraversal(n4, n5);
                    }
                }
            }
            if (smoothScroller != null) {
                if (smoothScroller.isPendingInitialRun()) {
                    smoothScroller.onAnimation(0, 0);
                }
                if (!this.mReSchedulePostAnimationCallback) {
                    smoothScroller.stop();
                }
            }
            this.enableRunOnAnimationRequests();
        }

        public void smoothScrollBy(int n2, int n3) {
            this.smoothScrollBy(n2, n3, 0, 0);
        }

        public void smoothScrollBy(int n2, int n3, int n4) {
            this.smoothScrollBy(n2, n3, n4, RecyclerView.sQuinticInterpolator);
        }

        public void smoothScrollBy(int n2, int n3, int n4, int n5) {
            this.smoothScrollBy(n2, n3, this.computeScrollDuration(n2, n3, n4, n5));
        }

        public void smoothScrollBy(int n2, int n3, int n4, Interpolator interpolator2) {
            if (this.mInterpolator != interpolator2) {
                this.mInterpolator = interpolator2;
                this.mScroller = ScrollerCompat.create(RecyclerView.this.getContext(), interpolator2);
            }
            RecyclerView.this.setScrollState(2);
            this.mLastFlingY = 0;
            this.mLastFlingX = 0;
            this.mScroller.startScroll(0, 0, n2, n3, n4);
            this.postOnAnimation();
        }

        public void stop() {
            RecyclerView.this.removeCallbacks((Runnable)this);
            this.mScroller.abortAnimation();
        }
    }

    public static abstract class ViewHolder {
        static final int FLAG_ADAPTER_FULLUPDATE = 1024;
        static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
        static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
        static final int FLAG_BOUND = 1;
        static final int FLAG_IGNORE = 128;
        static final int FLAG_INVALID = 4;
        static final int FLAG_MOVED = 2048;
        static final int FLAG_NOT_RECYCLABLE = 16;
        static final int FLAG_REMOVED = 8;
        static final int FLAG_RETURNED_FROM_SCRAP = 32;
        static final int FLAG_TMP_DETACHED = 256;
        static final int FLAG_UPDATE = 2;
        private static final List<Object> FULLUPDATE_PAYLOADS = Collections.EMPTY_LIST;
        static final int PENDING_ACCESSIBILITY_STATE_NOT_SET = -1;
        public final View itemView;
        private int mFlags;
        private boolean mInChangeScrap = false;
        private int mIsRecyclableCount = 0;
        long mItemId = -1;
        int mItemViewType = -1;
        int mOldPosition = -1;
        RecyclerView mOwnerRecyclerView;
        List<Object> mPayloads = null;
        private int mPendingAccessibilityState = -1;
        int mPosition = -1;
        int mPreLayoutPosition = -1;
        private Recycler mScrapContainer = null;
        ViewHolder mShadowedHolder = null;
        ViewHolder mShadowingHolder = null;
        List<Object> mUnmodifiedPayloads = null;
        private int mWasImportantForAccessibilityBeforeHidden = 0;

        public ViewHolder(View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.itemView = view;
        }

        static /* synthetic */ boolean access$800(ViewHolder viewHolder) {
            return viewHolder.doesTransientStatePreventRecycling();
        }

        private void createPayloadsIfNeeded() {
            if (this.mPayloads == null) {
                this.mPayloads = new ArrayList<Object>();
                this.mUnmodifiedPayloads = Collections.unmodifiableList(this.mPayloads);
            }
        }

        private boolean doesTransientStatePreventRecycling() {
            if ((this.mFlags & 16) == 0 && ViewCompat.hasTransientState(this.itemView)) {
                return true;
            }
            return false;
        }

        private void onEnteredHiddenState(RecyclerView recyclerView) {
            this.mWasImportantForAccessibilityBeforeHidden = ViewCompat.getImportantForAccessibility(this.itemView);
            recyclerView.setChildImportantForAccessibilityInternal(this, 4);
        }

        private void onLeftHiddenState(RecyclerView recyclerView) {
            recyclerView.setChildImportantForAccessibilityInternal(this, this.mWasImportantForAccessibilityBeforeHidden);
            this.mWasImportantForAccessibilityBeforeHidden = 0;
        }

        private boolean shouldBeKeptAsChild() {
            if ((this.mFlags & 16) != 0) {
                return true;
            }
            return false;
        }

        /*
         * Enabled aggressive block sorting
         */
        void addChangePayload(Object object) {
            if (object == null) {
                this.addFlags(1024);
                return;
            } else {
                if ((this.mFlags & 1024) != 0) return;
                {
                    this.createPayloadsIfNeeded();
                    this.mPayloads.add(object);
                    return;
                }
            }
        }

        void addFlags(int n2) {
            this.mFlags |= n2;
        }

        void clearOldPosition() {
            this.mOldPosition = -1;
            this.mPreLayoutPosition = -1;
        }

        void clearPayload() {
            if (this.mPayloads != null) {
                this.mPayloads.clear();
            }
            this.mFlags &= -1025;
        }

        void clearReturnedFromScrapFlag() {
            this.mFlags &= -33;
        }

        void clearTmpDetachFlag() {
            this.mFlags &= -257;
        }

        void flagRemovedAndOffsetPosition(int n2, int n3, boolean bl) {
            this.addFlags(8);
            this.offsetPosition(n3, bl);
            this.mPosition = n2;
        }

        public final int getAdapterPosition() {
            if (this.mOwnerRecyclerView == null) {
                return -1;
            }
            return this.mOwnerRecyclerView.getAdapterPositionFor(this);
        }

        public final long getItemId() {
            return this.mItemId;
        }

        public final int getItemViewType() {
            return this.mItemViewType;
        }

        public final int getLayoutPosition() {
            if (this.mPreLayoutPosition == -1) {
                return this.mPosition;
            }
            return this.mPreLayoutPosition;
        }

        public final int getOldPosition() {
            return this.mOldPosition;
        }

        @Deprecated
        public final int getPosition() {
            if (this.mPreLayoutPosition == -1) {
                return this.mPosition;
            }
            return this.mPreLayoutPosition;
        }

        List<Object> getUnmodifiedPayloads() {
            if ((this.mFlags & 1024) == 0) {
                if (this.mPayloads == null || this.mPayloads.size() == 0) {
                    return FULLUPDATE_PAYLOADS;
                }
                return this.mUnmodifiedPayloads;
            }
            return FULLUPDATE_PAYLOADS;
        }

        boolean hasAnyOfTheFlags(int n2) {
            if ((this.mFlags & n2) != 0) {
                return true;
            }
            return false;
        }

        boolean isAdapterPositionUnknown() {
            if ((this.mFlags & 512) != 0 || this.isInvalid()) {
                return true;
            }
            return false;
        }

        boolean isBound() {
            if ((this.mFlags & 1) != 0) {
                return true;
            }
            return false;
        }

        boolean isInvalid() {
            if ((this.mFlags & 4) != 0) {
                return true;
            }
            return false;
        }

        public final boolean isRecyclable() {
            if ((this.mFlags & 16) == 0 && !ViewCompat.hasTransientState(this.itemView)) {
                return true;
            }
            return false;
        }

        boolean isRemoved() {
            if ((this.mFlags & 8) != 0) {
                return true;
            }
            return false;
        }

        boolean isScrap() {
            if (this.mScrapContainer != null) {
                return true;
            }
            return false;
        }

        boolean isTmpDetached() {
            if ((this.mFlags & 256) != 0) {
                return true;
            }
            return false;
        }

        boolean isUpdated() {
            if ((this.mFlags & 2) != 0) {
                return true;
            }
            return false;
        }

        boolean needsUpdate() {
            if ((this.mFlags & 2) != 0) {
                return true;
            }
            return false;
        }

        void offsetPosition(int n2, boolean bl) {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
            if (this.mPreLayoutPosition == -1) {
                this.mPreLayoutPosition = this.mPosition;
            }
            if (bl) {
                this.mPreLayoutPosition += n2;
            }
            this.mPosition += n2;
            if (this.itemView.getLayoutParams() != null) {
                ((LayoutParams)this.itemView.getLayoutParams()).mInsetsDirty = true;
            }
        }

        void resetInternal() {
            this.mFlags = 0;
            this.mPosition = -1;
            this.mOldPosition = -1;
            this.mItemId = -1;
            this.mPreLayoutPosition = -1;
            this.mIsRecyclableCount = 0;
            this.mShadowedHolder = null;
            this.mShadowingHolder = null;
            this.clearPayload();
            this.mWasImportantForAccessibilityBeforeHidden = 0;
            this.mPendingAccessibilityState = -1;
        }

        void saveOldPosition() {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
        }

        void setFlags(int n2, int n3) {
            this.mFlags = this.mFlags & ~ n3 | n2 & n3;
        }

        /*
         * Enabled aggressive block sorting
         */
        public final void setIsRecyclable(boolean bl) {
            int n2 = bl ? this.mIsRecyclableCount - 1 : this.mIsRecyclableCount + 1;
            this.mIsRecyclableCount = n2;
            if (this.mIsRecyclableCount < 0) {
                this.mIsRecyclableCount = 0;
                Log.e((String)"View", (String)("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this));
                return;
            } else {
                if (!bl && this.mIsRecyclableCount == 1) {
                    this.mFlags |= 16;
                    return;
                }
                if (!bl || this.mIsRecyclableCount != 0) return;
                {
                    this.mFlags &= -17;
                    return;
                }
            }
        }

        void setScrapContainer(Recycler recycler, boolean bl) {
            this.mScrapContainer = recycler;
            this.mInChangeScrap = bl;
        }

        boolean shouldIgnore() {
            if ((this.mFlags & 128) != 0) {
                return true;
            }
            return false;
        }

        void stopIgnoring() {
            this.mFlags &= -129;
        }

        /*
         * Enabled aggressive block sorting
         */
        public String toString() {
            StringBuilder stringBuilder = new StringBuilder("ViewHolder{" + Integer.toHexString(this.hashCode()) + " position=" + this.mPosition + " id=" + this.mItemId + ", oldPos=" + this.mOldPosition + ", pLpos:" + this.mPreLayoutPosition);
            if (this.isScrap()) {
                StringBuilder stringBuilder2 = stringBuilder.append(" scrap ");
                String string2 = this.mInChangeScrap ? "[changeScrap]" : "[attachedScrap]";
                stringBuilder2.append(string2);
            }
            if (this.isInvalid()) {
                stringBuilder.append(" invalid");
            }
            if (!this.isBound()) {
                stringBuilder.append(" unbound");
            }
            if (this.needsUpdate()) {
                stringBuilder.append(" update");
            }
            if (this.isRemoved()) {
                stringBuilder.append(" removed");
            }
            if (this.shouldIgnore()) {
                stringBuilder.append(" ignored");
            }
            if (this.isTmpDetached()) {
                stringBuilder.append(" tmpDetached");
            }
            if (!this.isRecyclable()) {
                stringBuilder.append(" not recyclable(" + this.mIsRecyclableCount + ")");
            }
            if (this.isAdapterPositionUnknown()) {
                stringBuilder.append(" undefined adapter position");
            }
            if (this.itemView.getParent() == null) {
                stringBuilder.append(" no parent");
            }
            stringBuilder.append("}");
            return stringBuilder.toString();
        }

        void unScrap() {
            this.mScrapContainer.unscrapView(this);
        }

        boolean wasReturnedFromScrap() {
            if ((this.mFlags & 32) != 0) {
                return true;
            }
            return false;
        }
    }

    class ViewPrefetcher
    implements Runnable {
        private int mDx;
        private int mDy;
        int[] mItemPrefetchArray;
        long mPostTimeNanos;

        ViewPrefetcher() {
        }

        public void clearPrefetchPositions() {
            if (this.mItemPrefetchArray != null) {
                Arrays.fill(this.mItemPrefetchArray, -1);
            }
        }

        public boolean lastPrefetchIncludedPosition(int n2) {
            if (this.mItemPrefetchArray != null) {
                for (int i2 = 0; i2 < this.mItemPrefetchArray.length; ++i2) {
                    if (this.mItemPrefetchArray[i2] != n2) continue;
                    return true;
                }
            }
            return false;
        }

        public void postFromTraversal(int n2, int n3) {
            if (ALLOW_PREFETCHING && RecyclerView.this.mAdapter != null && RecyclerView.this.mLayout != null && RecyclerView.this.mLayout.getItemPrefetchCount() > 0) {
                this.mDx = n2;
                this.mDy = n3;
                this.mPostTimeNanos = System.nanoTime();
                RecyclerView.this.post((Runnable)this);
            }
        }

        @Override
        public void run() {
            long l2;
            long l3;
            int n2;
            long l4;
            block11 : {
                block10 : {
                    block9 : {
                        boolean bl;
                        TraceCompat.beginSection("RV Prefetch");
                        if (RecyclerView.this.mAdapter != null && RecyclerView.this.mLayout != null && RecyclerView.this.mLayout.isItemPrefetchEnabled() && RecyclerView.this.mLayout.getItemPrefetchCount() >= 1 && !(bl = RecyclerView.this.hasPendingAdapterUpdates())) break block9;
                        TraceCompat.endSection();
                        return;
                    }
                    n2 = RecyclerView.this.mLayout.getItemPrefetchCount();
                    l3 = TimeUnit.MILLISECONDS.toNanos(RecyclerView.this.getDrawingTime());
                    if (l3 == 0) break block10;
                    l2 = RecyclerView.sFrameIntervalNanos;
                    if (l2 != 0) break block11;
                }
                TraceCompat.endSection();
                return;
            }
            l2 = System.nanoTime();
            long l5 = RecyclerView.sFrameIntervalNanos;
            if (l2 - this.mPostTimeNanos > RecyclerView.sFrameIntervalNanos || l3 + l5 - l2 < (l4 = MIN_PREFETCH_TIME_NANOS)) {
                TraceCompat.endSection();
                return;
            }
            try {
                if (this.mItemPrefetchArray == null || this.mItemPrefetchArray.length < n2) {
                    this.mItemPrefetchArray = new int[n2];
                }
                Arrays.fill(this.mItemPrefetchArray, -1);
                n2 = RecyclerView.this.mLayout.gatherPrefetchIndices(this.mDx, this.mDy, RecyclerView.this.mState, this.mItemPrefetchArray);
                RecyclerView.this.mRecycler.prefetch(this.mItemPrefetchArray, n2);
                return;
            }
            finally {
                TraceCompat.endSection();
            }
        }
    }

}

