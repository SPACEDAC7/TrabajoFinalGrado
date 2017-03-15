/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.graphics.PointF
 *  android.graphics.Rect
 *  android.os.Parcel
 *  android.os.Parcelable
 *  android.os.Parcelable$Creator
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$MeasureSpec
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewGroup$MarginLayoutParams
 *  android.view.accessibility.AccessibilityEvent
 */
package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.widget.LayoutState;
import android.support.v7.widget.LinearSmoothScroller;
import android.support.v7.widget.OrientationHelper;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.ScrollbarHelper;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

public class StaggeredGridLayoutManager
extends RecyclerView.LayoutManager
implements RecyclerView.SmoothScroller.ScrollVectorProvider {
    static final boolean DEBUG = false;
    @Deprecated
    public static final int GAP_HANDLING_LAZY = 1;
    public static final int GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS = 2;
    public static final int GAP_HANDLING_NONE = 0;
    public static final int HORIZONTAL = 0;
    static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "StaggeredGridLayoutManager";
    public static final int VERTICAL = 1;
    private final AnchorInfo mAnchorInfo;
    private final Runnable mCheckForGapsRunnable;
    private int mFullSizeSpec;
    private int mGapStrategy;
    private boolean mLaidOutInvalidFullSpan;
    private boolean mLastLayoutFromEnd;
    private boolean mLastLayoutRTL;
    @NonNull
    private final LayoutState mLayoutState;
    LazySpanLookup mLazySpanLookup;
    private int mOrientation;
    private SavedState mPendingSavedState;
    int mPendingScrollPosition;
    int mPendingScrollPositionOffset;
    @NonNull
    OrientationHelper mPrimaryOrientation;
    private BitSet mRemainingSpans;
    boolean mReverseLayout;
    @NonNull
    OrientationHelper mSecondaryOrientation;
    boolean mShouldReverseLayout;
    private int mSizePerSpan;
    private boolean mSmoothScrollbarEnabled;
    private int mSpanCount;
    Span[] mSpans;
    private final Rect mTmpRect;

    /*
     * Enabled aggressive block sorting
     */
    public StaggeredGridLayoutManager(int n2, int n3) {
        boolean bl = true;
        this.mSpanCount = -1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mLazySpanLookup = new LazySpanLookup();
        this.mGapStrategy = 2;
        this.mTmpRect = new Rect();
        this.mAnchorInfo = new AnchorInfo();
        this.mLaidOutInvalidFullSpan = false;
        this.mSmoothScrollbarEnabled = true;
        this.mCheckForGapsRunnable = new Runnable(){

            @Override
            public void run() {
                StaggeredGridLayoutManager.this.checkForGaps();
            }
        };
        this.mOrientation = n3;
        this.setSpanCount(n2);
        if (this.mGapStrategy == 0) {
            bl = false;
        }
        this.setAutoMeasureEnabled(bl);
        this.mLayoutState = new LayoutState();
        this.createOrientationHelpers();
    }

    /*
     * Enabled aggressive block sorting
     */
    public StaggeredGridLayoutManager(Context object, AttributeSet attributeSet, int n2, int n3) {
        boolean bl = true;
        this.mSpanCount = -1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mLazySpanLookup = new LazySpanLookup();
        this.mGapStrategy = 2;
        this.mTmpRect = new Rect();
        this.mAnchorInfo = new AnchorInfo();
        this.mLaidOutInvalidFullSpan = false;
        this.mSmoothScrollbarEnabled = true;
        this.mCheckForGapsRunnable = new ;
        object = StaggeredGridLayoutManager.getProperties((Context)object, attributeSet, n2, n3);
        this.setOrientation(object.orientation);
        this.setSpanCount(object.spanCount);
        this.setReverseLayout(object.reverseLayout);
        if (this.mGapStrategy == 0) {
            bl = false;
        }
        this.setAutoMeasureEnabled(bl);
        this.mLayoutState = new LayoutState();
        this.createOrientationHelpers();
    }

    private void appendViewToAllSpans(View view) {
        for (int i2 = this.mSpanCount - 1; i2 >= 0; --i2) {
            this.mSpans[i2].appendToSpan(view);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void applyPendingSavedState(AnchorInfo anchorInfo) {
        if (this.mPendingSavedState.mSpanOffsetsSize > 0) {
            if (this.mPendingSavedState.mSpanOffsetsSize != this.mSpanCount) {
                this.mPendingSavedState.invalidateSpanInfo();
                this.mPendingSavedState.mAnchorPosition = this.mPendingSavedState.mVisibleAnchorPosition;
            } else {
                for (int i2 = 0; i2 < this.mSpanCount; ++i2) {
                    int n2;
                    this.mSpans[i2].clear();
                    int n3 = n2 = this.mPendingSavedState.mSpanOffsets[i2];
                    if (n2 != Integer.MIN_VALUE) {
                        n3 = this.mPendingSavedState.mAnchorLayoutFromEnd ? n2 + this.mPrimaryOrientation.getEndAfterPadding() : n2 + this.mPrimaryOrientation.getStartAfterPadding();
                    }
                    this.mSpans[i2].setLine(n3);
                }
            }
        }
        this.mLastLayoutRTL = this.mPendingSavedState.mLastLayoutRTL;
        this.setReverseLayout(this.mPendingSavedState.mReverseLayout);
        this.resolveShouldLayoutReverse();
        if (this.mPendingSavedState.mAnchorPosition != -1) {
            this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition;
            anchorInfo.mLayoutFromEnd = this.mPendingSavedState.mAnchorLayoutFromEnd;
        } else {
            anchorInfo.mLayoutFromEnd = this.mShouldReverseLayout;
        }
        if (this.mPendingSavedState.mSpanLookupSize > 1) {
            this.mLazySpanLookup.mData = this.mPendingSavedState.mSpanLookup;
            this.mLazySpanLookup.mFullSpanItems = this.mPendingSavedState.mFullSpanItems;
        }
    }

    private void attachViewToSpans(View view, LayoutParams layoutParams, LayoutState layoutState) {
        if (layoutState.mLayoutDirection == 1) {
            if (layoutParams.mFullSpan) {
                this.appendViewToAllSpans(view);
                return;
            }
            layoutParams.mSpan.appendToSpan(view);
            return;
        }
        if (layoutParams.mFullSpan) {
            this.prependViewToAllSpans(view);
            return;
        }
        layoutParams.mSpan.prependToSpan(view);
    }

    /*
     * Enabled aggressive block sorting
     */
    private int calculateScrollDirectionForPosition(int n2) {
        int n3 = -1;
        if (this.getChildCount() == 0) {
            if (!this.mShouldReverseLayout) return -1;
            return 1;
        }
        boolean bl = n2 < this.getFirstChildPosition();
        if (bl == this.mShouldReverseLayout) return 1;
        return n3;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean checkSpanForGap(Span span) {
        if (this.mShouldReverseLayout) {
            if (span.getEndLine() >= this.mPrimaryOrientation.getEndAfterPadding()) return false;
            if (!span.getLayoutParams((View)span.mViews.get((int)(span.mViews.size() - 1))).mFullSpan) return true;
            return false;
        }
        if (span.getStartLine() <= this.mPrimaryOrientation.getStartAfterPadding()) return false;
        {
            if (span.getLayoutParams((View)span.mViews.get((int)0)).mFullSpan) return false;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private int computeScrollExtent(RecyclerView.State state) {
        boolean bl = true;
        if (this.getChildCount() == 0) {
            return 0;
        }
        OrientationHelper orientationHelper = this.mPrimaryOrientation;
        boolean bl2 = !this.mSmoothScrollbarEnabled;
        View view = this.findFirstVisibleItemClosestToStart(bl2);
        if (!this.mSmoothScrollbarEnabled) {
            bl2 = bl;
            return ScrollbarHelper.computeScrollExtent(state, orientationHelper, view, this.findFirstVisibleItemClosestToEnd(bl2), this, this.mSmoothScrollbarEnabled);
        }
        bl2 = false;
        return ScrollbarHelper.computeScrollExtent(state, orientationHelper, view, this.findFirstVisibleItemClosestToEnd(bl2), this, this.mSmoothScrollbarEnabled);
    }

    /*
     * Enabled aggressive block sorting
     */
    private int computeScrollOffset(RecyclerView.State state) {
        boolean bl = true;
        if (this.getChildCount() == 0) {
            return 0;
        }
        OrientationHelper orientationHelper = this.mPrimaryOrientation;
        boolean bl2 = !this.mSmoothScrollbarEnabled;
        View view = this.findFirstVisibleItemClosestToStart(bl2);
        if (!this.mSmoothScrollbarEnabled) {
            bl2 = bl;
            return ScrollbarHelper.computeScrollOffset(state, orientationHelper, view, this.findFirstVisibleItemClosestToEnd(bl2), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
        }
        bl2 = false;
        return ScrollbarHelper.computeScrollOffset(state, orientationHelper, view, this.findFirstVisibleItemClosestToEnd(bl2), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    /*
     * Enabled aggressive block sorting
     */
    private int computeScrollRange(RecyclerView.State state) {
        boolean bl = true;
        if (this.getChildCount() == 0) {
            return 0;
        }
        OrientationHelper orientationHelper = this.mPrimaryOrientation;
        boolean bl2 = !this.mSmoothScrollbarEnabled;
        View view = this.findFirstVisibleItemClosestToStart(bl2);
        if (!this.mSmoothScrollbarEnabled) {
            bl2 = bl;
            return ScrollbarHelper.computeScrollRange(state, orientationHelper, view, this.findFirstVisibleItemClosestToEnd(bl2), this, this.mSmoothScrollbarEnabled);
        }
        bl2 = false;
        return ScrollbarHelper.computeScrollRange(state, orientationHelper, view, this.findFirstVisibleItemClosestToEnd(bl2), this, this.mSmoothScrollbarEnabled);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int convertFocusDirectionToLayoutDirection(int n2) {
        int n3 = -1;
        int n4 = Integer.MIN_VALUE;
        int n5 = 1;
        switch (n2) {
            default: {
                return Integer.MIN_VALUE;
            }
            case 1: {
                n2 = n3;
                if (this.mOrientation == 1) return n2;
                n2 = n3;
                if (!this.isLayoutRTL()) return n2;
                return 1;
            }
            case 2: {
                if (this.mOrientation == 1) {
                    return 1;
                }
                n2 = n3;
                if (this.isLayoutRTL()) return n2;
                return 1;
            }
            case 33: {
                n2 = n3;
                if (this.mOrientation == 1) return n2;
                return Integer.MIN_VALUE;
            }
            case 130: {
                n2 = n4;
                if (this.mOrientation != 1) return n2;
                return 1;
            }
            case 17: {
                n2 = n3;
                if (this.mOrientation == 0) return n2;
                return Integer.MIN_VALUE;
            }
            case 66: 
        }
        if (this.mOrientation != 0) return Integer.MIN_VALUE;
        return n5;
    }

    private LazySpanLookup.FullSpanItem createFullSpanItemFromEnd(int n2) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.mGapPerSpan = new int[this.mSpanCount];
        for (int i2 = 0; i2 < this.mSpanCount; ++i2) {
            fullSpanItem.mGapPerSpan[i2] = n2 - this.mSpans[i2].getEndLine(n2);
        }
        return fullSpanItem;
    }

    private LazySpanLookup.FullSpanItem createFullSpanItemFromStart(int n2) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.mGapPerSpan = new int[this.mSpanCount];
        for (int i2 = 0; i2 < this.mSpanCount; ++i2) {
            fullSpanItem.mGapPerSpan[i2] = this.mSpans[i2].getStartLine(n2) - n2;
        }
        return fullSpanItem;
    }

    private void createOrientationHelpers() {
        this.mPrimaryOrientation = OrientationHelper.createOrientationHelper(this, this.mOrientation);
        this.mSecondaryOrientation = OrientationHelper.createOrientationHelper(this, 1 - this.mOrientation);
    }

    /*
     * Enabled aggressive block sorting
     */
    private int fill(RecyclerView.Recycler recycler, LayoutState layoutState, RecyclerView.State state) {
        int n2;
        block29 : {
            this.mRemainingSpans.set(0, this.mSpanCount, true);
            n2 = this.mLayoutState.mInfinite ? (layoutState.mLayoutDirection == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE) : (layoutState.mLayoutDirection == 1 ? layoutState.mEndLine + layoutState.mAvailable : layoutState.mStartLine - layoutState.mAvailable);
            this.updateAllRemainingSpans(layoutState.mLayoutDirection, n2);
            int n3 = this.mShouldReverseLayout ? this.mPrimaryOrientation.getEndAfterPadding() : this.mPrimaryOrientation.getStartAfterPadding();
            int n4 = 0;
            while (layoutState.hasMore(state)) {
                if (this.mLayoutState.mInfinite || !this.mRemainingSpans.isEmpty()) {
                    Span span;
                    LazySpanLookup.FullSpanItem fullSpanItem;
                    int n5;
                    int n6;
                    int n7;
                    View view = layoutState.next(recycler);
                    LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
                    int n8 = layoutParams.getViewLayoutPosition();
                    n4 = this.mLazySpanLookup.getSpan(n8);
                    int n9 = n4 == -1 ? 1 : 0;
                    if (n9 != 0) {
                        span = layoutParams.mFullSpan ? this.mSpans[0] : this.getNextSpan(layoutState);
                        this.mLazySpanLookup.setSpan(n8, span);
                    } else {
                        span = this.mSpans[n4];
                    }
                    layoutParams.mSpan = span;
                    if (layoutState.mLayoutDirection == 1) {
                        this.addView(view);
                    } else {
                        this.addView(view, 0);
                    }
                    this.measureChildWithDecorationsAndMargin(view, layoutParams, false);
                    if (layoutState.mLayoutDirection == 1) {
                        n4 = layoutParams.mFullSpan ? this.getMaxEnd(n3) : span.getEndLine(n3);
                        n7 = n4 + this.mPrimaryOrientation.getDecoratedMeasurement(view);
                        n6 = n4;
                        n5 = n7;
                        if (n9 != 0) {
                            n6 = n4;
                            n5 = n7;
                            if (layoutParams.mFullSpan) {
                                fullSpanItem = this.createFullSpanItemFromEnd(n4);
                                fullSpanItem.mGapDir = -1;
                                fullSpanItem.mPosition = n8;
                                this.mLazySpanLookup.addFullSpanItem(fullSpanItem);
                                n5 = n7;
                                n6 = n4;
                            }
                        }
                    } else {
                        n4 = layoutParams.mFullSpan ? this.getMinStart(n3) : span.getStartLine(n3);
                        n6 = n7 = n4 - this.mPrimaryOrientation.getDecoratedMeasurement(view);
                        n5 = n4;
                        if (n9 != 0) {
                            n6 = n7;
                            n5 = n4;
                            if (layoutParams.mFullSpan) {
                                fullSpanItem = this.createFullSpanItemFromStart(n4);
                                fullSpanItem.mGapDir = 1;
                                fullSpanItem.mPosition = n8;
                                this.mLazySpanLookup.addFullSpanItem(fullSpanItem);
                                n6 = n7;
                                n5 = n4;
                            }
                        }
                    }
                    if (layoutParams.mFullSpan && layoutState.mItemDirection == -1) {
                        if (n9 != 0) {
                            this.mLaidOutInvalidFullSpan = true;
                        } else {
                            n4 = layoutState.mLayoutDirection == 1 ? (!this.areAllEndsEqual() ? 1 : 0) : (!this.areAllStartsEqual() ? 1 : 0);
                            if (n4 != 0) {
                                fullSpanItem = this.mLazySpanLookup.getFullSpanItem(n8);
                                if (fullSpanItem != null) {
                                    fullSpanItem.mHasUnwantedGapAfter = true;
                                }
                                this.mLaidOutInvalidFullSpan = true;
                            }
                        }
                    }
                    this.attachViewToSpans(view, layoutParams, layoutState);
                    if (this.isLayoutRTL() && this.mOrientation == 1) {
                        n4 = layoutParams.mFullSpan ? this.mSecondaryOrientation.getEndAfterPadding() : this.mSecondaryOrientation.getEndAfterPadding() - (this.mSpanCount - 1 - span.mIndex) * this.mSizePerSpan;
                        n7 = n4 - this.mSecondaryOrientation.getDecoratedMeasurement(view);
                        n9 = n4;
                        n4 = n7;
                    } else {
                        n4 = layoutParams.mFullSpan ? this.mSecondaryOrientation.getStartAfterPadding() : span.mIndex * this.mSizePerSpan + this.mSecondaryOrientation.getStartAfterPadding();
                        n9 = n4 + this.mSecondaryOrientation.getDecoratedMeasurement(view);
                    }
                    if (this.mOrientation == 1) {
                        this.layoutDecoratedWithMargins(view, n4, n6, n9, n5);
                    } else {
                        this.layoutDecoratedWithMargins(view, n6, n4, n5, n9);
                    }
                    if (layoutParams.mFullSpan) {
                        this.updateAllRemainingSpans(this.mLayoutState.mLayoutDirection, n2);
                    } else {
                        this.updateRemainingSpans(span, this.mLayoutState.mLayoutDirection, n2);
                    }
                    this.recycle(recycler, this.mLayoutState);
                    if (this.mLayoutState.mStopInFocusable && view.isFocusable()) {
                        if (layoutParams.mFullSpan) {
                            this.mRemainingSpans.clear();
                        } else {
                            this.mRemainingSpans.set(span.mIndex, false);
                        }
                    }
                    n4 = 1;
                    continue;
                }
                if (n4 != 0) break block29;
            }
            this.recycle(recycler, this.mLayoutState);
        }
        if (this.mLayoutState.mLayoutDirection == -1) {
            n2 = this.getMinStart(this.mPrimaryOrientation.getStartAfterPadding());
            n2 = this.mPrimaryOrientation.getStartAfterPadding() - n2;
        } else {
            n2 = this.getMaxEnd(this.mPrimaryOrientation.getEndAfterPadding()) - this.mPrimaryOrientation.getEndAfterPadding();
        }
        if (n2 > 0) {
            return Math.min(layoutState.mAvailable, n2);
        }
        return 0;
    }

    private int findFirstReferenceChildPosition(int n2) {
        int n3 = this.getChildCount();
        for (int i2 = 0; i2 < n3; ++i2) {
            int n4 = this.getPosition(this.getChildAt(i2));
            if (n4 < 0 || n4 >= n2) continue;
            return n4;
        }
        return 0;
    }

    private int findLastReferenceChildPosition(int n2) {
        for (int i2 = this.getChildCount() - 1; i2 >= 0; --i2) {
            int n3 = this.getPosition(this.getChildAt(i2));
            if (n3 < 0 || n3 >= n2) continue;
            return n3;
        }
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void fixEndGap(RecyclerView.Recycler recycler, RecyclerView.State state, boolean bl) {
        int n2 = this.getMaxEnd(Integer.MIN_VALUE);
        if (n2 == Integer.MIN_VALUE) {
            return;
        }
        n2 = this.mPrimaryOrientation.getEndAfterPadding() - n2;
        if (n2 <= 0) return;
        n2 -= - this.scrollBy(- n2, recycler, state);
        if (!bl) return;
        if (n2 <= 0) return;
        this.mPrimaryOrientation.offsetChildren(n2);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void fixStartGap(RecyclerView.Recycler recycler, RecyclerView.State state, boolean bl) {
        int n2 = this.getMinStart(Integer.MAX_VALUE);
        if (n2 == Integer.MAX_VALUE) {
            return;
        }
        if ((n2 -= this.mPrimaryOrientation.getStartAfterPadding()) <= 0) return;
        n2 -= this.scrollBy(n2, recycler, state);
        if (!bl) return;
        if (n2 <= 0) return;
        this.mPrimaryOrientation.offsetChildren(- n2);
    }

    private int getFirstChildPosition() {
        if (this.getChildCount() == 0) {
            return 0;
        }
        return this.getPosition(this.getChildAt(0));
    }

    private int getLastChildPosition() {
        int n2 = this.getChildCount();
        if (n2 == 0) {
            return 0;
        }
        return this.getPosition(this.getChildAt(n2 - 1));
    }

    private int getMaxEnd(int n2) {
        int n3 = this.mSpans[0].getEndLine(n2);
        for (int i2 = 1; i2 < this.mSpanCount; ++i2) {
            int n4 = this.mSpans[i2].getEndLine(n2);
            int n5 = n3;
            if (n4 > n3) {
                n5 = n4;
            }
            n3 = n5;
        }
        return n3;
    }

    private int getMaxStart(int n2) {
        int n3 = this.mSpans[0].getStartLine(n2);
        for (int i2 = 1; i2 < this.mSpanCount; ++i2) {
            int n4 = this.mSpans[i2].getStartLine(n2);
            int n5 = n3;
            if (n4 > n3) {
                n5 = n4;
            }
            n3 = n5;
        }
        return n3;
    }

    private int getMinEnd(int n2) {
        int n3 = this.mSpans[0].getEndLine(n2);
        for (int i2 = 1; i2 < this.mSpanCount; ++i2) {
            int n4 = this.mSpans[i2].getEndLine(n2);
            int n5 = n3;
            if (n4 < n3) {
                n5 = n4;
            }
            n3 = n5;
        }
        return n3;
    }

    private int getMinStart(int n2) {
        int n3 = this.mSpans[0].getStartLine(n2);
        for (int i2 = 1; i2 < this.mSpanCount; ++i2) {
            int n4 = this.mSpans[i2].getStartLine(n2);
            int n5 = n3;
            if (n4 < n3) {
                n5 = n4;
            }
            n3 = n5;
        }
        return n3;
    }

    /*
     * Enabled aggressive block sorting
     */
    private Span getNextSpan(LayoutState object) {
        Object object2;
        int n2;
        int n3;
        int n4;
        if (this.preferLastSpan(object.mLayoutDirection)) {
            n3 = this.mSpanCount - 1;
            n4 = -1;
            n2 = -1;
        } else {
            n3 = 0;
            n4 = this.mSpanCount;
            n2 = 1;
        }
        if (object.mLayoutDirection == 1) {
            object = null;
            int n5 = Integer.MAX_VALUE;
            int n6 = this.mPrimaryOrientation.getStartAfterPadding();
            do {
                object2 = object;
                if (n3 == n4) return object2;
                object2 = this.mSpans[n3];
                int n7 = object2.getEndLine(n6);
                int n8 = n5;
                if (n7 < n5) {
                    object = object2;
                    n8 = n7;
                }
                n3 += n2;
                n5 = n8;
            } while (true);
        }
        object = null;
        int n9 = Integer.MIN_VALUE;
        int n10 = this.mPrimaryOrientation.getEndAfterPadding();
        while (n3 != n4) {
            object2 = this.mSpans[n3];
            int n11 = object2.getStartLine(n10);
            int n12 = n9;
            if (n11 > n9) {
                object = object2;
                n12 = n11;
            }
            n3 += n2;
            n9 = n12;
        }
        return object;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void handleUpdate(int n2, int n3, int n4) {
        int n5;
        int n6;
        int n7 = this.mShouldReverseLayout ? this.getLastChildPosition() : this.getFirstChildPosition();
        if (n4 == 8) {
            if (n2 < n3) {
                n6 = n3 + 1;
                n5 = n2;
            } else {
                n6 = n2 + 1;
                n5 = n3;
            }
        } else {
            n5 = n2;
            n6 = n2 + n3;
        }
        this.mLazySpanLookup.invalidateAfter(n5);
        switch (n4) {
            case 1: {
                this.mLazySpanLookup.offsetForAddition(n2, n3);
                break;
            }
            case 2: {
                this.mLazySpanLookup.offsetForRemoval(n2, n3);
                break;
            }
            case 8: {
                this.mLazySpanLookup.offsetForRemoval(n2, 1);
                this.mLazySpanLookup.offsetForAddition(n3, 1);
            }
        }
        if (n6 <= n7) {
            return;
        }
        n2 = this.mShouldReverseLayout ? this.getFirstChildPosition() : this.getLastChildPosition();
        if (n5 > n2) return;
        this.requestLayout();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void measureChildWithDecorationsAndMargin(View view, int n2, int n3, boolean bl) {
        this.calculateItemDecorationsForChild(view, this.mTmpRect);
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        n2 = this.updateSpecWithExtra(n2, layoutParams.leftMargin + this.mTmpRect.left, layoutParams.rightMargin + this.mTmpRect.right);
        n3 = this.updateSpecWithExtra(n3, layoutParams.topMargin + this.mTmpRect.top, layoutParams.bottomMargin + this.mTmpRect.bottom);
        bl = bl ? this.shouldReMeasureChild(view, n2, n3, layoutParams) : this.shouldMeasureChild(view, n2, n3, layoutParams);
        if (bl) {
            view.measure(n2, n3);
        }
    }

    private void measureChildWithDecorationsAndMargin(View view, LayoutParams layoutParams, boolean bl) {
        if (layoutParams.mFullSpan) {
            if (this.mOrientation == 1) {
                this.measureChildWithDecorationsAndMargin(view, this.mFullSizeSpec, StaggeredGridLayoutManager.getChildMeasureSpec(this.getHeight(), this.getHeightMode(), 0, layoutParams.height, true), bl);
                return;
            }
            this.measureChildWithDecorationsAndMargin(view, StaggeredGridLayoutManager.getChildMeasureSpec(this.getWidth(), this.getWidthMode(), 0, layoutParams.width, true), this.mFullSizeSpec, bl);
            return;
        }
        if (this.mOrientation == 1) {
            this.measureChildWithDecorationsAndMargin(view, StaggeredGridLayoutManager.getChildMeasureSpec(this.mSizePerSpan, this.getWidthMode(), 0, layoutParams.width, false), StaggeredGridLayoutManager.getChildMeasureSpec(this.getHeight(), this.getHeightMode(), 0, layoutParams.height, true), bl);
            return;
        }
        this.measureChildWithDecorationsAndMargin(view, StaggeredGridLayoutManager.getChildMeasureSpec(this.getWidth(), this.getWidthMode(), 0, layoutParams.width, true), StaggeredGridLayoutManager.getChildMeasureSpec(this.mSizePerSpan, this.getHeightMode(), 0, layoutParams.height, false), bl);
    }

    /*
     * Unable to fully structure code
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void onLayoutChildren(RecyclerView.Recycler var1_1, RecyclerView.State var2_2, boolean var3_3) {
        block22 : {
            block21 : {
                block20 : {
                    block18 : {
                        block19 : {
                            block17 : {
                                var8_4 = 1;
                                var4_5 = this.mAnchorInfo;
                                if ((this.mPendingSavedState != null || this.mPendingScrollPosition != -1) && var2_2.getItemCount() == 0) {
                                    this.removeAndRecycleAllViews(var1_1);
                                    var4_5.reset();
                                    do {
                                        return;
                                        break;
                                    } while (true);
                                }
                                if (var4_5.mValid && this.mPendingScrollPosition == -1 && this.mPendingSavedState == null) ** GOTO lbl29
                                var6_6 = 1;
lbl10: // 2 sources:
                                do {
                                    if (var6_6 == 0) ** GOTO lbl18
                                    var4_5.reset();
                                    if (this.mPendingSavedState == null) break block17;
                                    this.applyPendingSavedState(var4_5);
lbl15: // 2 sources:
                                    do {
                                        this.updateAnchorInfoForLayout(var2_2, var4_5);
                                        var4_5.mValid = true;
lbl18: // 2 sources:
                                        if (this.mPendingSavedState == null && this.mPendingScrollPosition == -1 && (var4_5.mLayoutFromEnd != this.mLastLayoutFromEnd || this.isLayoutRTL() != this.mLastLayoutRTL)) {
                                            this.mLazySpanLookup.clear();
                                            var4_5.mInvalidateOffsets = true;
                                        }
                                        if (this.getChildCount() <= 0 || this.mPendingSavedState != null && this.mPendingSavedState.mSpanOffsetsSize >= 1) break block18;
                                        if (!var4_5.mInvalidateOffsets) break block19;
                                        for (var6_6 = 0; var6_6 < this.mSpanCount; ++var6_6) {
                                            this.mSpans[var6_6].clear();
                                            if (var4_5.mOffset == Integer.MIN_VALUE) continue;
                                            this.mSpans[var6_6].setLine(var4_5.mOffset);
                                        }
                                        break block18;
                                        break;
                                    } while (true);
                                    break;
                                } while (true);
lbl29: // 1 sources:
                                var6_6 = 0;
                                ** while (true)
                            }
                            this.resolveShouldLayoutReverse();
                            var4_5.mLayoutFromEnd = this.mShouldReverseLayout;
                            ** while (true)
                        }
                        if (var6_6 == 0 && this.mAnchorInfo.mSpanReferenceLines != null) ** GOTO lbl86
                        for (var6_6 = 0; var6_6 < this.mSpanCount; ++var6_6) {
                            this.mSpans[var6_6].cacheReferenceLineAndClear(this.mShouldReverseLayout, var4_5.mOffset);
                        }
                        this.mAnchorInfo.saveSpanReferenceLines(this.mSpans);
                    }
                    do {
                        this.detachAndScrapAttachedViews(var1_1);
                        this.mLayoutState.mRecycle = false;
                        this.mLaidOutInvalidFullSpan = false;
                        this.updateMeasureSpecs(this.mSecondaryOrientation.getTotalSpace());
                        this.updateLayoutState(var4_5.mPosition, var2_2);
                        if (!var4_5.mLayoutFromEnd) break block20;
                        this.setLayoutStateDirection(-1);
                        this.fill(var1_1, this.mLayoutState, var2_2);
                        this.setLayoutStateDirection(1);
                        this.mLayoutState.mCurrentPosition = var4_5.mPosition + this.mLayoutState.mItemDirection;
                        this.fill(var1_1, this.mLayoutState, var2_2);
lbl54: // 2 sources:
                        do {
                            this.repositionToWrapContentIfNecessary();
                            if (this.getChildCount() > 0) {
                                if (!this.mShouldReverseLayout) break block21;
                                this.fixEndGap(var1_1, var2_2, true);
                                this.fixStartGap(var1_1, var2_2, false);
                            }
lbl60: // 4 sources:
                            do {
                                var7_8 = var9_7 = false;
                                if (!var3_3) ** GOTO lbl77
                                var7_8 = var9_7;
                                if (var2_2.isPreLayout()) ** GOTO lbl77
                                if (this.mGapStrategy == 0 || this.getChildCount() <= 0) break block22;
                                var6_6 = var8_4;
                                if (this.mLaidOutInvalidFullSpan) ** GOTO lbl70
                                if (this.hasGapsToFix() != null) {
                                    var6_6 = var8_4;
lbl70: // 3 sources:
                                    do {
                                        var7_8 = var9_7;
                                        if (var6_6 != 0) {
                                            this.removeCallbacks(this.mCheckForGapsRunnable);
                                            var7_8 = var9_7;
                                            if (this.checkForGaps()) {
                                                var7_8 = true;
                                            }
                                        }
lbl77: // 7 sources:
                                        if (var2_2.isPreLayout()) {
                                            this.mAnchorInfo.reset();
                                        }
                                        this.mLastLayoutFromEnd = var4_5.mLayoutFromEnd;
                                        this.mLastLayoutRTL = this.isLayoutRTL();
                                        if (!var7_8) ** continue;
                                        this.mAnchorInfo.reset();
                                        this.onLayoutChildren(var1_1, var2_2, false);
                                        return;
                                        break;
                                    } while (true);
                                }
                                break block22;
                                break;
                            } while (true);
                            break;
                        } while (true);
                        break;
                    } while (true);
lbl86: // 1 sources:
                    var6_6 = 0;
                    do {
                        if (var6_6 >= this.mSpanCount) ** continue;
                        var5_9 = this.mSpans[var6_6];
                        var5_9.clear();
                        var5_9.setLine(this.mAnchorInfo.mSpanReferenceLines[var6_6]);
                        ++var6_6;
                    } while (true);
                }
                this.setLayoutStateDirection(1);
                this.fill(var1_1, this.mLayoutState, var2_2);
                this.setLayoutStateDirection(-1);
                this.mLayoutState.mCurrentPosition = var4_5.mPosition + this.mLayoutState.mItemDirection;
                this.fill(var1_1, this.mLayoutState, var2_2);
                ** while (true)
            }
            this.fixStartGap(var1_1, var2_2, true);
            this.fixEndGap(var1_1, var2_2, false);
            ** while (true)
        }
        var6_6 = 0;
        ** while (true)
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean preferLastSpan(int n2) {
        if (this.mOrientation == 0) {
            boolean bl = n2 == -1;
            if (bl == this.mShouldReverseLayout) return false;
            return true;
        }
        boolean bl = n2 == -1;
        bl = bl == this.mShouldReverseLayout;
        if (bl == this.isLayoutRTL()) return true;
        return false;
    }

    private void prependViewToAllSpans(View view) {
        for (int i2 = this.mSpanCount - 1; i2 >= 0; --i2) {
            this.mSpans[i2].prependToSpan(view);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void recycle(RecyclerView.Recycler recycler, LayoutState layoutState) {
        if (!layoutState.mRecycle || layoutState.mInfinite) {
            return;
        }
        if (layoutState.mAvailable == 0) {
            if (layoutState.mLayoutDirection == -1) {
                this.recycleFromEnd(recycler, layoutState.mEndLine);
                return;
            }
            this.recycleFromStart(recycler, layoutState.mStartLine);
            return;
        }
        if (layoutState.mLayoutDirection == -1) {
            int n2 = layoutState.mStartLine - this.getMaxStart(layoutState.mStartLine);
            n2 = n2 < 0 ? layoutState.mEndLine : layoutState.mEndLine - Math.min(n2, layoutState.mAvailable);
            this.recycleFromEnd(recycler, n2);
            return;
        }
        int n3 = this.getMinEnd(layoutState.mEndLine) - layoutState.mEndLine;
        n3 = n3 < 0 ? layoutState.mStartLine : layoutState.mStartLine + Math.min(n3, layoutState.mAvailable);
        this.recycleFromStart(recycler, n3);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void recycleFromEnd(RecyclerView.Recycler recycler, int n2) {
        View view;
        block0 : for (int i2 = this.getChildCount() - 1; i2 >= 0 && this.mPrimaryOrientation.getDecoratedStart(view = this.getChildAt(i2)) >= n2 && this.mPrimaryOrientation.getTransformedStartWithDecoration(view) >= n2; --i2) {
            LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
            if (layoutParams.mFullSpan) {
                int n3;
                for (n3 = 0; n3 < this.mSpanCount; ++n3) {
                    if (this.mSpans[n3].mViews.size() == 1) break block0;
                }
                for (n3 = 0; n3 < this.mSpanCount; ++n3) {
                    this.mSpans[n3].popEnd();
                }
            } else {
                if (layoutParams.mSpan.mViews.size() == 1) break;
                layoutParams.mSpan.popEnd();
            }
            this.removeAndRecycleView(view, recycler);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void recycleFromStart(RecyclerView.Recycler recycler, int n2) {
        View view;
        block0 : while (this.getChildCount() > 0 && this.mPrimaryOrientation.getDecoratedEnd(view = this.getChildAt(0)) <= n2 && this.mPrimaryOrientation.getTransformedEndWithDecoration(view) <= n2) {
            LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
            if (layoutParams.mFullSpan) {
                int n3;
                for (n3 = 0; n3 < this.mSpanCount; ++n3) {
                    if (this.mSpans[n3].mViews.size() == 1) break block0;
                }
                for (n3 = 0; n3 < this.mSpanCount; ++n3) {
                    this.mSpans[n3].popStart();
                }
            } else {
                if (layoutParams.mSpan.mViews.size() == 1) break;
                layoutParams.mSpan.popStart();
            }
            this.removeAndRecycleView(view, recycler);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void repositionToWrapContentIfNecessary() {
        View view;
        int n2;
        int n3;
        if (this.mSecondaryOrientation.getMode() == 1073741824) {
            return;
        }
        float f2 = 0.0f;
        int n4 = this.getChildCount();
        for (n2 = 0; n2 < n4; ++n2) {
            view = this.getChildAt(n2);
            float f3 = this.mSecondaryOrientation.getDecoratedMeasurement(view);
            if (f3 < f2) continue;
            float f4 = f3;
            if (((LayoutParams)view.getLayoutParams()).isFullSpan()) {
                f4 = 1.0f * f3 / (float)this.mSpanCount;
            }
            f2 = Math.max(f2, f4);
        }
        int n5 = this.mSizePerSpan;
        n2 = n3 = Math.round((float)this.mSpanCount * f2);
        if (this.mSecondaryOrientation.getMode() == Integer.MIN_VALUE) {
            n2 = Math.min(n3, this.mSecondaryOrientation.getTotalSpace());
        }
        this.updateMeasureSpecs(n2);
        if (this.mSizePerSpan == n5) return;
        n2 = 0;
        while (n2 < n4) {
            view = this.getChildAt(n2);
            LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
            if (!layoutParams.mFullSpan) {
                if (this.isLayoutRTL() && this.mOrientation == 1) {
                    view.offsetLeftAndRight((- this.mSpanCount - 1 - layoutParams.mSpan.mIndex) * this.mSizePerSpan - (- this.mSpanCount - 1 - layoutParams.mSpan.mIndex) * n5);
                } else {
                    n3 = layoutParams.mSpan.mIndex * this.mSizePerSpan;
                    int n6 = layoutParams.mSpan.mIndex * n5;
                    if (this.mOrientation == 1) {
                        view.offsetLeftAndRight(n3 - n6);
                    } else {
                        view.offsetTopAndBottom(n3 - n6);
                    }
                }
            }
            ++n2;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void resolveShouldLayoutReverse() {
        boolean bl = true;
        if (this.mOrientation == 1 || !this.isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
            return;
        }
        if (this.mReverseLayout) {
            bl = false;
        }
        this.mShouldReverseLayout = bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setLayoutStateDirection(int n2) {
        int n3 = 1;
        this.mLayoutState.mLayoutDirection = n2;
        LayoutState layoutState = this.mLayoutState;
        boolean bl = this.mShouldReverseLayout;
        boolean bl2 = n2 == -1;
        n2 = bl == bl2 ? n3 : -1;
        layoutState.mItemDirection = n2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateAllRemainingSpans(int n2, int n3) {
        int n4 = 0;
        while (n4 < this.mSpanCount) {
            if (!this.mSpans[n4].mViews.isEmpty()) {
                this.updateRemainingSpans(this.mSpans[n4], n2, n3);
            }
            ++n4;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean updateAnchorFromChildren(RecyclerView.State state, AnchorInfo anchorInfo) {
        int n2 = this.mLastLayoutFromEnd ? this.findLastReferenceChildPosition(state.getItemCount()) : this.findFirstReferenceChildPosition(state.getItemCount());
        anchorInfo.mPosition = n2;
        anchorInfo.mOffset = Integer.MIN_VALUE;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateLayoutState(int n2, RecyclerView.State object) {
        int n3;
        boolean bl;
        boolean bl2 = true;
        this.mLayoutState.mAvailable = 0;
        this.mLayoutState.mCurrentPosition = n2;
        int n4 = 0;
        int n5 = n3 = 0;
        int n6 = n4;
        if (this.isSmoothScrolling()) {
            int n7 = object.getTargetScrollPosition();
            n5 = n3;
            n6 = n4;
            if (n7 != -1) {
                boolean bl3 = this.mShouldReverseLayout;
                bl = n7 < n2;
                if (bl3 == bl) {
                    n5 = this.mPrimaryOrientation.getTotalSpace();
                    n6 = n4;
                } else {
                    n6 = this.mPrimaryOrientation.getTotalSpace();
                    n5 = n3;
                }
            }
        }
        if (this.getClipToPadding()) {
            this.mLayoutState.mStartLine = this.mPrimaryOrientation.getStartAfterPadding() - n6;
            this.mLayoutState.mEndLine = this.mPrimaryOrientation.getEndAfterPadding() + n5;
        } else {
            this.mLayoutState.mEndLine = this.mPrimaryOrientation.getEnd() + n5;
            this.mLayoutState.mStartLine = - n6;
        }
        this.mLayoutState.mStopInFocusable = false;
        this.mLayoutState.mRecycle = true;
        object = this.mLayoutState;
        bl = this.mPrimaryOrientation.getMode() == 0 && this.mPrimaryOrientation.getEnd() == 0 ? bl2 : false;
        object.mInfinite = bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateRemainingSpans(Span span, int n2, int n3) {
        int n4 = span.getDeletedSize();
        if (n2 == -1) {
            if (span.getStartLine() + n4 > n3) return;
            {
                this.mRemainingSpans.set(span.mIndex, false);
                return;
            }
        } else {
            if (span.getEndLine() - n4 < n3) return;
            {
                this.mRemainingSpans.set(span.mIndex, false);
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private int updateSpecWithExtra(int n2, int n3, int n4) {
        int n5;
        if (n3 == 0 && n4 == 0 || (n5 = View.MeasureSpec.getMode((int)n2)) != Integer.MIN_VALUE && n5 != 1073741824) {
            return n2;
        }
        return View.MeasureSpec.makeMeasureSpec((int)Math.max(0, View.MeasureSpec.getSize((int)n2) - n3 - n4), (int)n5);
    }

    boolean areAllEndsEqual() {
        int n2 = this.mSpans[0].getEndLine(Integer.MIN_VALUE);
        for (int i2 = 1; i2 < this.mSpanCount; ++i2) {
            if (this.mSpans[i2].getEndLine(Integer.MIN_VALUE) == n2) continue;
            return false;
        }
        return true;
    }

    boolean areAllStartsEqual() {
        int n2 = this.mSpans[0].getStartLine(Integer.MIN_VALUE);
        for (int i2 = 1; i2 < this.mSpanCount; ++i2) {
            if (this.mSpans[i2].getStartLine(Integer.MIN_VALUE) == n2) continue;
            return false;
        }
        return true;
    }

    @Override
    public void assertNotInLayoutOrScroll(String string2) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(string2);
        }
    }

    @Override
    public boolean canScrollHorizontally() {
        if (this.mOrientation == 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean canScrollVertically() {
        if (this.mOrientation == 1) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    boolean checkForGaps() {
        int n2;
        int n3;
        if (this.getChildCount() == 0 || this.mGapStrategy == 0 || !this.isAttachedToWindow()) {
            return false;
        }
        if (this.mShouldReverseLayout) {
            n3 = this.getLastChildPosition();
            n2 = this.getFirstChildPosition();
        } else {
            n3 = this.getFirstChildPosition();
            n2 = this.getLastChildPosition();
        }
        if (n3 == 0 && this.hasGapsToFix() != null) {
            this.mLazySpanLookup.clear();
            this.requestSimpleAnimationsInNextLayout();
            this.requestLayout();
            return true;
        }
        if (!this.mLaidOutInvalidFullSpan) {
            return false;
        }
        int n4 = this.mShouldReverseLayout ? -1 : 1;
        LazySpanLookup.FullSpanItem fullSpanItem = this.mLazySpanLookup.getFirstFullSpanItemInRange(n3, n2 + 1, n4, true);
        if (fullSpanItem == null) {
            this.mLaidOutInvalidFullSpan = false;
            this.mLazySpanLookup.forceInvalidateAfter(n2 + 1);
            return false;
        }
        LazySpanLookup.FullSpanItem fullSpanItem2 = this.mLazySpanLookup.getFirstFullSpanItemInRange(n3, fullSpanItem.mPosition, n4 * -1, true);
        if (fullSpanItem2 == null) {
            this.mLazySpanLookup.forceInvalidateAfter(fullSpanItem.mPosition);
        } else {
            this.mLazySpanLookup.forceInvalidateAfter(fullSpanItem2.mPosition + 1);
        }
        this.requestSimpleAnimationsInNextLayout();
        this.requestLayout();
        return true;
    }

    @Override
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return this.computeScrollExtent(state);
    }

    @Override
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return this.computeScrollOffset(state);
    }

    @Override
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return this.computeScrollRange(state);
    }

    @Override
    public PointF computeScrollVectorForPosition(int n2) {
        n2 = this.calculateScrollDirectionForPosition(n2);
        PointF pointF = new PointF();
        if (n2 == 0) {
            return null;
        }
        if (this.mOrientation == 0) {
            pointF.x = n2;
            pointF.y = 0.0f;
            return pointF;
        }
        pointF.x = 0.0f;
        pointF.y = n2;
        return pointF;
    }

    @Override
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return this.computeScrollExtent(state);
    }

    @Override
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return this.computeScrollOffset(state);
    }

    @Override
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return this.computeScrollRange(state);
    }

    /*
     * Enabled aggressive block sorting
     */
    public int[] findFirstCompletelyVisibleItemPositions(int[] arrn) {
        int[] arrn2;
        if (arrn == null) {
            arrn2 = new int[this.mSpanCount];
        } else {
            arrn2 = arrn;
            if (arrn.length < this.mSpanCount) {
                throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + arrn.length);
            }
        }
        int n2 = 0;
        while (n2 < this.mSpanCount) {
            arrn2[n2] = this.mSpans[n2].findFirstCompletelyVisibleItemPosition();
            ++n2;
        }
        return arrn2;
    }

    /*
     * Enabled aggressive block sorting
     */
    View findFirstVisibleItemClosestToEnd(boolean bl) {
        int n2 = this.mPrimaryOrientation.getStartAfterPadding();
        int n3 = this.mPrimaryOrientation.getEndAfterPadding();
        View view = null;
        int n4 = this.getChildCount() - 1;
        while (n4 >= 0) {
            View view2 = this.getChildAt(n4);
            int n5 = this.mPrimaryOrientation.getDecoratedStart(view2);
            int n6 = this.mPrimaryOrientation.getDecoratedEnd(view2);
            View view3 = view;
            if (n6 > n2) {
                if (n5 >= n3) {
                    view3 = view;
                } else {
                    if (n6 <= n3 || !bl) {
                        return view2;
                    }
                    view3 = view;
                    if (view == null) {
                        view3 = view2;
                    }
                }
            }
            --n4;
            view = view3;
        }
        return view;
    }

    /*
     * Enabled aggressive block sorting
     */
    View findFirstVisibleItemClosestToStart(boolean bl) {
        int n2 = this.mPrimaryOrientation.getStartAfterPadding();
        int n3 = this.mPrimaryOrientation.getEndAfterPadding();
        int n4 = this.getChildCount();
        View view = null;
        int n5 = 0;
        while (n5 < n4) {
            View view2 = this.getChildAt(n5);
            int n6 = this.mPrimaryOrientation.getDecoratedStart(view2);
            View view3 = view;
            if (this.mPrimaryOrientation.getDecoratedEnd(view2) > n2) {
                if (n6 >= n3) {
                    view3 = view;
                } else {
                    if (n6 >= n2 || !bl) {
                        return view2;
                    }
                    view3 = view;
                    if (view == null) {
                        view3 = view2;
                    }
                }
            }
            ++n5;
            view = view3;
        }
        return view;
    }

    /*
     * Enabled aggressive block sorting
     */
    int findFirstVisibleItemPositionInt() {
        View view = this.mShouldReverseLayout ? this.findFirstVisibleItemClosestToEnd(true) : this.findFirstVisibleItemClosestToStart(true);
        if (view == null) {
            return -1;
        }
        return this.getPosition(view);
    }

    /*
     * Enabled aggressive block sorting
     */
    public int[] findFirstVisibleItemPositions(int[] arrn) {
        int[] arrn2;
        if (arrn == null) {
            arrn2 = new int[this.mSpanCount];
        } else {
            arrn2 = arrn;
            if (arrn.length < this.mSpanCount) {
                throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + arrn.length);
            }
        }
        int n2 = 0;
        while (n2 < this.mSpanCount) {
            arrn2[n2] = this.mSpans[n2].findFirstVisibleItemPosition();
            ++n2;
        }
        return arrn2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public int[] findLastCompletelyVisibleItemPositions(int[] arrn) {
        int[] arrn2;
        if (arrn == null) {
            arrn2 = new int[this.mSpanCount];
        } else {
            arrn2 = arrn;
            if (arrn.length < this.mSpanCount) {
                throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + arrn.length);
            }
        }
        int n2 = 0;
        while (n2 < this.mSpanCount) {
            arrn2[n2] = this.mSpans[n2].findLastCompletelyVisibleItemPosition();
            ++n2;
        }
        return arrn2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public int[] findLastVisibleItemPositions(int[] arrn) {
        int[] arrn2;
        if (arrn == null) {
            arrn2 = new int[this.mSpanCount];
        } else {
            arrn2 = arrn;
            if (arrn.length < this.mSpanCount) {
                throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + arrn.length);
            }
        }
        int n2 = 0;
        while (n2 < this.mSpanCount) {
            arrn2[n2] = this.mSpans[n2].findLastVisibleItemPosition();
            ++n2;
        }
        return arrn2;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    int gatherPrefetchIndices(int n2, int n3, RecyclerView.State state, int[] arrn) {
        if (this.mOrientation != 0) {
            n2 = n3;
        }
        if (this.getChildCount() == 0) return 0;
        if (n2 == 0) {
            return 0;
        }
        this.prepareLayoutStateForDelta(n2, state);
        n3 = this.mSpanCount;
        n2 = 0;
        do {
            int n4 = n2;
            if (n2 >= this.mSpanCount) return n4;
            n4 = n2;
            if (!this.mLayoutState.hasMore(state)) return n4;
            n4 = n2++;
            if (n3 <= 0) return n4;
            arrn[n2] = this.mLayoutState.mCurrentPosition;
            --n3;
            LayoutState layoutState = this.mLayoutState;
            layoutState.mCurrentPosition += this.mLayoutState.mItemDirection;
        } while (true);
    }

    @Override
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        if (this.mOrientation == 0) {
            return new LayoutParams(-2, -1);
        }
        return new LayoutParams(-1, -2);
    }

    @Override
    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams)layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    @Override
    public int getColumnCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 1) {
            return this.mSpanCount;
        }
        return super.getColumnCountForAccessibility(recycler, state);
    }

    public int getGapStrategy() {
        return this.mGapStrategy;
    }

    @Override
    int getItemPrefetchCount() {
        return this.mSpanCount;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    @Override
    public int getRowCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 0) {
            return this.mSpanCount;
        }
        return super.getRowCountForAccessibility(recycler, state);
    }

    public int getSpanCount() {
        return this.mSpanCount;
    }

    /*
     * Enabled aggressive block sorting
     */
    View hasGapsToFix() {
        int n2;
        int n3;
        View view;
        int n4 = this.getChildCount() - 1;
        BitSet bitSet = new BitSet(this.mSpanCount);
        bitSet.set(0, this.mSpanCount, true);
        int n5 = this.mOrientation == 1 && this.isLayoutRTL() ? 1 : -1;
        if (this.mShouldReverseLayout) {
            n2 = 0 - 1;
        } else {
            n3 = 0;
            n2 = n4 + 1;
            n4 = n3;
        }
        n3 = n4 < n2 ? 1 : -1;
        int n6 = n4;
        do {
            if (n6 == n2) {
                return null;
            }
            view = this.getChildAt(n6);
            LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
            if (bitSet.get(layoutParams.mSpan.mIndex)) {
                if (this.checkSpanForGap(layoutParams.mSpan)) break;
                bitSet.clear(layoutParams.mSpan.mIndex);
            }
            if (!layoutParams.mFullSpan && n6 + n3 != n2) {
                int n7;
                int n8;
                Object object = this.getChildAt(n6 + n3);
                n4 = 0;
                if (this.mShouldReverseLayout) {
                    n8 = this.mPrimaryOrientation.getDecoratedEnd(view);
                    if (n8 < (n7 = this.mPrimaryOrientation.getDecoratedEnd((View)object))) break;
                    if (n8 == n7) {
                        n4 = 1;
                    }
                } else {
                    n8 = this.mPrimaryOrientation.getDecoratedStart(view);
                    if (n8 > (n7 = this.mPrimaryOrientation.getDecoratedStart((View)object))) break;
                    if (n8 == n7) {
                        n4 = 1;
                    }
                }
                if (n4 != 0) {
                    object = (LayoutParams)object.getLayoutParams();
                    n4 = layoutParams.mSpan.mIndex - object.mSpan.mIndex < 0 ? 1 : 0;
                    if (n5 >= 0) return view;
                    n8 = 1;
                    if (n4 != n8) {
                        return view;
                    }
                }
            }
            n6 += n3;
        } while (true);
        return view;
    }

    public void invalidateSpanAssignments() {
        this.mLazySpanLookup.clear();
        this.requestLayout();
    }

    boolean isLayoutRTL() {
        if (this.getLayoutDirection() == 1) {
            return true;
        }
        return false;
    }

    @Override
    public void offsetChildrenHorizontal(int n2) {
        super.offsetChildrenHorizontal(n2);
        for (int i2 = 0; i2 < this.mSpanCount; ++i2) {
            this.mSpans[i2].onOffset(n2);
        }
    }

    @Override
    public void offsetChildrenVertical(int n2) {
        super.offsetChildrenVertical(n2);
        for (int i2 = 0; i2 < this.mSpanCount; ++i2) {
            this.mSpans[i2].onOffset(n2);
        }
    }

    @Override
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        this.removeCallbacks(this.mCheckForGapsRunnable);
        for (int i2 = 0; i2 < this.mSpanCount; ++i2) {
            this.mSpans[i2].clear();
        }
        recyclerView.requestLayout();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Nullable
    @Override
    public View onFocusSearchFailed(View object, int n2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.getChildCount() == 0) {
            return null;
        }
        View view = this.findContainingItemView((View)object);
        if (view == null) {
            return null;
        }
        this.resolveShouldLayoutReverse();
        int n3 = this.convertFocusDirectionToLayoutDirection(n2);
        if (n3 == Integer.MIN_VALUE) {
            return null;
        }
        object = (LayoutParams)view.getLayoutParams();
        boolean bl = object.mFullSpan;
        object = object.mSpan;
        n2 = n3 == 1 ? this.getLastChildPosition() : this.getFirstChildPosition();
        this.updateLayoutState(n2, state);
        this.setLayoutStateDirection(n3);
        this.mLayoutState.mCurrentPosition = this.mLayoutState.mItemDirection + n2;
        this.mLayoutState.mAvailable = (int)(0.33333334f * (float)this.mPrimaryOrientation.getTotalSpace());
        this.mLayoutState.mStopInFocusable = true;
        this.mLayoutState.mRecycle = false;
        this.fill(recycler, this.mLayoutState, state);
        this.mLastLayoutFromEnd = this.mShouldReverseLayout;
        if (!bl && (recycler = object.getFocusableViewAfter(n2, n3)) != null) {
            object = recycler;
            if (recycler != view) return object;
        }
        if (this.preferLastSpan(n3)) {
            int n4 = this.mSpanCount - 1;
            do {
                if (n4 < 0) {
                    return null;
                }
                recycler = this.mSpans[n4].getFocusableViewAfter(n2, n3);
                if (recycler != null) {
                    object = recycler;
                    if (recycler != view) return object;
                }
                --n4;
            } while (true);
        }
        int n5 = 0;
        while (n5 < this.mSpanCount) {
            recycler = this.mSpans[n5].getFocusableViewAfter(n2, n3);
            if (recycler != null) {
                object = recycler;
                if (recycler != view) return object;
            }
            ++n5;
        }
        return null;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public void onInitializeAccessibilityEvent(AccessibilityEvent object) {
        int n2;
        super.onInitializeAccessibilityEvent((AccessibilityEvent)object);
        if (this.getChildCount() <= 0) return;
        object = AccessibilityEventCompat.asRecord((AccessibilityEvent)object);
        View view = this.findFirstVisibleItemClosestToStart(false);
        View view2 = this.findFirstVisibleItemClosestToEnd(false);
        if (view == null || view2 == null) {
            return;
        }
        int n3 = this.getPosition(view);
        if (n3 < (n2 = this.getPosition(view2))) {
            object.setFromIndex(n3);
            object.setToIndex(n2);
            return;
        }
        object.setFromIndex(n2);
        object.setToIndex(n3);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler object, RecyclerView.State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        object = view.getLayoutParams();
        if (!(object instanceof LayoutParams)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, accessibilityNodeInfoCompat);
            return;
        }
        object = (LayoutParams)((Object)object);
        if (this.mOrientation == 0) {
            int n2 = object.getSpanIndex();
            int n3 = object.mFullSpan ? this.mSpanCount : 1;
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(n2, n3, -1, -1, object.mFullSpan, false));
            return;
        }
        int n4 = object.getSpanIndex();
        int n5 = object.mFullSpan ? this.mSpanCount : 1;
        accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(-1, -1, n4, n5, object.mFullSpan, false));
    }

    @Override
    public void onItemsAdded(RecyclerView recyclerView, int n2, int n3) {
        this.handleUpdate(n2, n3, 1);
    }

    @Override
    public void onItemsChanged(RecyclerView recyclerView) {
        this.mLazySpanLookup.clear();
        this.requestLayout();
    }

    @Override
    public void onItemsMoved(RecyclerView recyclerView, int n2, int n3, int n4) {
        this.handleUpdate(n2, n3, 8);
    }

    @Override
    public void onItemsRemoved(RecyclerView recyclerView, int n2, int n3) {
        this.handleUpdate(n2, n3, 2);
    }

    @Override
    public void onItemsUpdated(RecyclerView recyclerView, int n2, int n3, Object object) {
        this.handleUpdate(n2, n3, 4);
    }

    @Override
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        this.onLayoutChildren(recycler, state, true);
    }

    @Override
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo.reset();
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.mPendingSavedState = (SavedState)parcelable;
            this.requestLayout();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState != null) {
            return new SavedState(this.mPendingSavedState);
        }
        SavedState savedState = new SavedState();
        savedState.mReverseLayout = this.mReverseLayout;
        savedState.mAnchorLayoutFromEnd = this.mLastLayoutFromEnd;
        savedState.mLastLayoutRTL = this.mLastLayoutRTL;
        if (this.mLazySpanLookup != null && this.mLazySpanLookup.mData != null) {
            savedState.mSpanLookup = this.mLazySpanLookup.mData;
            savedState.mSpanLookupSize = savedState.mSpanLookup.length;
            savedState.mFullSpanItems = this.mLazySpanLookup.mFullSpanItems;
        } else {
            savedState.mSpanLookupSize = 0;
        }
        if (this.getChildCount() <= 0) {
            savedState.mAnchorPosition = -1;
            savedState.mVisibleAnchorPosition = -1;
            savedState.mSpanOffsetsSize = 0;
            return savedState;
        }
        int n2 = this.mLastLayoutFromEnd ? this.getLastChildPosition() : this.getFirstChildPosition();
        savedState.mAnchorPosition = n2;
        savedState.mVisibleAnchorPosition = this.findFirstVisibleItemPositionInt();
        savedState.mSpanOffsetsSize = this.mSpanCount;
        savedState.mSpanOffsets = new int[this.mSpanCount];
        int n3 = 0;
        do {
            int n4;
            SavedState savedState2 = savedState;
            if (n3 >= this.mSpanCount) return savedState2;
            if (this.mLastLayoutFromEnd) {
                n2 = n4 = this.mSpans[n3].getEndLine(Integer.MIN_VALUE);
                if (n4 != Integer.MIN_VALUE) {
                    n2 = n4 - this.mPrimaryOrientation.getEndAfterPadding();
                }
            } else {
                n2 = n4 = this.mSpans[n3].getStartLine(Integer.MIN_VALUE);
                if (n4 != Integer.MIN_VALUE) {
                    n2 = n4 - this.mPrimaryOrientation.getStartAfterPadding();
                }
            }
            savedState.mSpanOffsets[n3] = n2;
            ++n3;
        } while (true);
    }

    @Override
    public void onScrollStateChanged(int n2) {
        if (n2 == 0) {
            this.checkForGaps();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    void prepareLayoutStateForDelta(int n2, RecyclerView.State state) {
        int n3;
        int n4;
        if (n2 > 0) {
            n4 = 1;
            n3 = this.getLastChildPosition();
        } else {
            n4 = -1;
            n3 = this.getFirstChildPosition();
        }
        this.mLayoutState.mRecycle = true;
        this.updateLayoutState(n3, state);
        this.setLayoutStateDirection(n4);
        this.mLayoutState.mCurrentPosition = this.mLayoutState.mItemDirection + n3;
        this.mLayoutState.mAvailable = n2 = Math.abs(n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    int scrollBy(int n2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.getChildCount() == 0 || n2 == 0) {
            return 0;
        }
        this.prepareLayoutStateForDelta(n2, state);
        int n3 = this.fill(recycler, this.mLayoutState, state);
        if (this.mLayoutState.mAvailable >= n3) {
            n2 = n2 < 0 ? - n3 : n3;
        }
        this.mPrimaryOrientation.offsetChildren(- n2);
        this.mLastLayoutFromEnd = this.mShouldReverseLayout;
        this.mLayoutState.mAvailable = 0;
        this.recycle(recycler, this.mLayoutState);
        return n2;
    }

    @Override
    public int scrollHorizontallyBy(int n2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return this.scrollBy(n2, recycler, state);
    }

    @Override
    public void scrollToPosition(int n2) {
        if (this.mPendingSavedState != null && this.mPendingSavedState.mAnchorPosition != n2) {
            this.mPendingSavedState.invalidateAnchorPositionInfo();
        }
        this.mPendingScrollPosition = n2;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.requestLayout();
    }

    public void scrollToPositionWithOffset(int n2, int n3) {
        if (this.mPendingSavedState != null) {
            this.mPendingSavedState.invalidateAnchorPositionInfo();
        }
        this.mPendingScrollPosition = n2;
        this.mPendingScrollPositionOffset = n3;
        this.requestLayout();
    }

    @Override
    public int scrollVerticallyBy(int n2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return this.scrollBy(n2, recycler, state);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setGapStrategy(int n2) {
        this.assertNotInLayoutOrScroll(null);
        if (n2 == this.mGapStrategy) {
            return;
        }
        if (n2 != 0 && n2 != 2) {
            throw new IllegalArgumentException("invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS");
        }
        this.mGapStrategy = n2;
        boolean bl = this.mGapStrategy != 0;
        this.setAutoMeasureEnabled(bl);
        this.requestLayout();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setMeasuredDimension(Rect rect, int n2, int n3) {
        int n4 = this.getPaddingLeft() + this.getPaddingRight();
        int n5 = this.getPaddingTop() + this.getPaddingBottom();
        if (this.mOrientation == 1) {
            int n6 = StaggeredGridLayoutManager.chooseSize(n3, rect.height() + n5, this.getMinimumHeight());
            n3 = StaggeredGridLayoutManager.chooseSize(n2, this.mSizePerSpan * this.mSpanCount + n4, this.getMinimumWidth());
            n2 = n6;
        } else {
            int n7 = StaggeredGridLayoutManager.chooseSize(n2, rect.width() + n4, this.getMinimumWidth());
            n2 = StaggeredGridLayoutManager.chooseSize(n3, this.mSizePerSpan * this.mSpanCount + n5, this.getMinimumHeight());
            n3 = n7;
        }
        this.setMeasuredDimension(n3, n2);
    }

    public void setOrientation(int n2) {
        if (n2 != 0 && n2 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        this.assertNotInLayoutOrScroll(null);
        if (n2 == this.mOrientation) {
            return;
        }
        this.mOrientation = n2;
        OrientationHelper orientationHelper = this.mPrimaryOrientation;
        this.mPrimaryOrientation = this.mSecondaryOrientation;
        this.mSecondaryOrientation = orientationHelper;
        this.requestLayout();
    }

    public void setReverseLayout(boolean bl) {
        this.assertNotInLayoutOrScroll(null);
        if (this.mPendingSavedState != null && this.mPendingSavedState.mReverseLayout != bl) {
            this.mPendingSavedState.mReverseLayout = bl;
        }
        this.mReverseLayout = bl;
        this.requestLayout();
    }

    public void setSpanCount(int n2) {
        this.assertNotInLayoutOrScroll(null);
        if (n2 != this.mSpanCount) {
            this.invalidateSpanAssignments();
            this.mSpanCount = n2;
            this.mRemainingSpans = new BitSet(this.mSpanCount);
            this.mSpans = new Span[this.mSpanCount];
            for (n2 = 0; n2 < this.mSpanCount; ++n2) {
                this.mSpans[n2] = new Span(n2);
            }
            this.requestLayout();
        }
    }

    @Override
    public void smoothScrollToPosition(RecyclerView object, RecyclerView.State state, int n2) {
        object = new LinearSmoothScroller(object.getContext());
        object.setTargetPosition(n2);
        this.startSmoothScroll((RecyclerView.SmoothScroller)object);
    }

    @Override
    public boolean supportsPredictiveItemAnimations() {
        if (this.mPendingSavedState == null) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    boolean updateAnchorFromPendingData(RecyclerView.State state, AnchorInfo anchorInfo) {
        boolean bl = false;
        if (state.isPreLayout()) return false;
        if (this.mPendingScrollPosition == -1) {
            return false;
        }
        if (this.mPendingScrollPosition < 0 || this.mPendingScrollPosition >= state.getItemCount()) {
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
            return false;
        }
        if (this.mPendingSavedState != null && this.mPendingSavedState.mAnchorPosition != -1 && this.mPendingSavedState.mSpanOffsetsSize >= 1) {
            anchorInfo.mOffset = Integer.MIN_VALUE;
            anchorInfo.mPosition = this.mPendingScrollPosition;
            return true;
        }
        state = this.findViewByPosition(this.mPendingScrollPosition);
        if (state != null) {
            int n2 = this.mShouldReverseLayout ? this.getLastChildPosition() : this.getFirstChildPosition();
            anchorInfo.mPosition = n2;
            if (this.mPendingScrollPositionOffset != Integer.MIN_VALUE) {
                if (anchorInfo.mLayoutFromEnd) {
                    anchorInfo.mOffset = this.mPrimaryOrientation.getEndAfterPadding() - this.mPendingScrollPositionOffset - this.mPrimaryOrientation.getDecoratedEnd((View)state);
                    return true;
                }
                anchorInfo.mOffset = this.mPrimaryOrientation.getStartAfterPadding() + this.mPendingScrollPositionOffset - this.mPrimaryOrientation.getDecoratedStart((View)state);
                return true;
            }
            if (this.mPrimaryOrientation.getDecoratedMeasurement((View)state) > this.mPrimaryOrientation.getTotalSpace()) {
                n2 = anchorInfo.mLayoutFromEnd ? this.mPrimaryOrientation.getEndAfterPadding() : this.mPrimaryOrientation.getStartAfterPadding();
                anchorInfo.mOffset = n2;
                return true;
            }
            n2 = this.mPrimaryOrientation.getDecoratedStart((View)state) - this.mPrimaryOrientation.getStartAfterPadding();
            if (n2 < 0) {
                anchorInfo.mOffset = - n2;
                return true;
            }
            n2 = this.mPrimaryOrientation.getEndAfterPadding() - this.mPrimaryOrientation.getDecoratedEnd((View)state);
            if (n2 < 0) {
                anchorInfo.mOffset = n2;
                return true;
            }
            anchorInfo.mOffset = Integer.MIN_VALUE;
            return true;
        }
        anchorInfo.mPosition = this.mPendingScrollPosition;
        if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
            if (this.calculateScrollDirectionForPosition(anchorInfo.mPosition) == 1) {
                bl = true;
            }
            anchorInfo.mLayoutFromEnd = bl;
            anchorInfo.assignCoordinateFromPadding();
        } else {
            anchorInfo.assignCoordinateFromPadding(this.mPendingScrollPositionOffset);
        }
        anchorInfo.mInvalidateOffsets = true;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    void updateAnchorInfoForLayout(RecyclerView.State state, AnchorInfo anchorInfo) {
        if (this.updateAnchorFromPendingData(state, anchorInfo) || this.updateAnchorFromChildren(state, anchorInfo)) {
            return;
        }
        anchorInfo.assignCoordinateFromPadding();
        anchorInfo.mPosition = 0;
    }

    void updateMeasureSpecs(int n2) {
        this.mSizePerSpan = n2 / this.mSpanCount;
        this.mFullSizeSpec = View.MeasureSpec.makeMeasureSpec((int)n2, (int)this.mSecondaryOrientation.getMode());
    }

    class AnchorInfo {
        boolean mInvalidateOffsets;
        boolean mLayoutFromEnd;
        int mOffset;
        int mPosition;
        int[] mSpanReferenceLines;
        boolean mValid;

        public AnchorInfo() {
            this.reset();
        }

        /*
         * Enabled aggressive block sorting
         */
        void assignCoordinateFromPadding() {
            int n2 = this.mLayoutFromEnd ? StaggeredGridLayoutManager.this.mPrimaryOrientation.getEndAfterPadding() : StaggeredGridLayoutManager.this.mPrimaryOrientation.getStartAfterPadding();
            this.mOffset = n2;
        }

        void assignCoordinateFromPadding(int n2) {
            if (this.mLayoutFromEnd) {
                this.mOffset = StaggeredGridLayoutManager.this.mPrimaryOrientation.getEndAfterPadding() - n2;
                return;
            }
            this.mOffset = StaggeredGridLayoutManager.this.mPrimaryOrientation.getStartAfterPadding() + n2;
        }

        void reset() {
            this.mPosition = -1;
            this.mOffset = Integer.MIN_VALUE;
            this.mLayoutFromEnd = false;
            this.mInvalidateOffsets = false;
            this.mValid = false;
            if (this.mSpanReferenceLines != null) {
                Arrays.fill(this.mSpanReferenceLines, -1);
            }
        }

        void saveSpanReferenceLines(Span[] arrspan) {
            int n2 = arrspan.length;
            if (this.mSpanReferenceLines == null || this.mSpanReferenceLines.length < n2) {
                this.mSpanReferenceLines = new int[StaggeredGridLayoutManager.this.mSpans.length];
            }
            for (int i2 = 0; i2 < n2; ++i2) {
                this.mSpanReferenceLines[i2] = arrspan[i2].getStartLine(Integer.MIN_VALUE);
            }
        }
    }

    public static class LayoutParams
    extends RecyclerView.LayoutParams {
        public static final int INVALID_SPAN_ID = -1;
        boolean mFullSpan;
        Span mSpan;

        public LayoutParams(int n2, int n3) {
            super(n2, n3);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public final int getSpanIndex() {
            if (this.mSpan == null) {
                return -1;
            }
            return this.mSpan.mIndex;
        }

        public boolean isFullSpan() {
            return this.mFullSpan;
        }

        public void setFullSpan(boolean bl) {
            this.mFullSpan = bl;
        }
    }

    static class LazySpanLookup {
        private static final int MIN_SIZE = 10;
        int[] mData;
        List<FullSpanItem> mFullSpanItems;

        LazySpanLookup() {
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        private int invalidateFullSpansAfter(int var1_1) {
            if (this.mFullSpanItems == null) {
                return -1;
            }
            var2_2 = this.getFullSpanItem(var1_1);
            if (var2_2 != null) {
                this.mFullSpanItems.remove(var2_2);
            }
            var5_3 = -1;
            var6_4 = this.mFullSpanItems.size();
            var3_5 = 0;
            do {
                var4_6 = var5_3;
                if (var3_5 >= var6_4) ** GOTO lbl14
                if (this.mFullSpanItems.get((int)var3_5).mPosition >= var1_1) {
                    var4_6 = var3_5;
lbl14: // 2 sources:
                    if (var4_6 == -1) return -1;
                    var2_2 = this.mFullSpanItems.get(var4_6);
                    this.mFullSpanItems.remove(var4_6);
                    return var2_2.mPosition;
                }
                ++var3_5;
            } while (true);
        }

        /*
         * Enabled aggressive block sorting
         */
        private void offsetFullSpansForAddition(int n2, int n3) {
            if (this.mFullSpanItems != null) {
                for (int i2 = this.mFullSpanItems.size() - 1; i2 >= 0; --i2) {
                    FullSpanItem fullSpanItem = this.mFullSpanItems.get(i2);
                    if (fullSpanItem.mPosition < n2) continue;
                    fullSpanItem.mPosition += n3;
                }
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        private void offsetFullSpansForRemoval(int n2, int n3) {
            if (this.mFullSpanItems != null) {
                for (int i2 = this.mFullSpanItems.size() - 1; i2 >= 0; --i2) {
                    FullSpanItem fullSpanItem = this.mFullSpanItems.get(i2);
                    if (fullSpanItem.mPosition < n2) continue;
                    if (fullSpanItem.mPosition < n2 + n3) {
                        this.mFullSpanItems.remove(i2);
                        continue;
                    }
                    fullSpanItem.mPosition -= n3;
                }
            }
        }

        public void addFullSpanItem(FullSpanItem fullSpanItem) {
            if (this.mFullSpanItems == null) {
                this.mFullSpanItems = new ArrayList<FullSpanItem>();
            }
            int n2 = this.mFullSpanItems.size();
            for (int i2 = 0; i2 < n2; ++i2) {
                FullSpanItem fullSpanItem2 = this.mFullSpanItems.get(i2);
                if (fullSpanItem2.mPosition == fullSpanItem.mPosition) {
                    this.mFullSpanItems.remove(i2);
                }
                if (fullSpanItem2.mPosition < fullSpanItem.mPosition) continue;
                this.mFullSpanItems.add(i2, fullSpanItem);
                return;
            }
            this.mFullSpanItems.add(fullSpanItem);
        }

        void clear() {
            if (this.mData != null) {
                Arrays.fill(this.mData, -1);
            }
            this.mFullSpanItems = null;
        }

        /*
         * Enabled aggressive block sorting
         */
        void ensureSize(int n2) {
            if (this.mData == null) {
                this.mData = new int[Math.max(n2, 10) + 1];
                Arrays.fill(this.mData, -1);
                return;
            } else {
                if (n2 < this.mData.length) return;
                {
                    int[] arrn = this.mData;
                    this.mData = new int[this.sizeForPosition(n2)];
                    System.arraycopy(arrn, 0, this.mData, 0, arrn.length);
                    Arrays.fill(this.mData, arrn.length, this.mData.length, -1);
                    return;
                }
            }
        }

        int forceInvalidateAfter(int n2) {
            if (this.mFullSpanItems != null) {
                for (int i2 = this.mFullSpanItems.size() - 1; i2 >= 0; --i2) {
                    if (this.mFullSpanItems.get((int)i2).mPosition < n2) continue;
                    this.mFullSpanItems.remove(i2);
                }
            }
            return this.invalidateAfter(n2);
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public FullSpanItem getFirstFullSpanItemInRange(int n2, int n3, int n4, boolean bl) {
            if (this.mFullSpanItems == null) {
                return null;
            }
            int n5 = this.mFullSpanItems.size();
            int n6 = 0;
            while (n6 < n5) {
                FullSpanItem fullSpanItem = this.mFullSpanItems.get(n6);
                if (fullSpanItem.mPosition >= n3) {
                    return null;
                }
                if (fullSpanItem.mPosition >= n2) {
                    FullSpanItem fullSpanItem2 = fullSpanItem;
                    if (n4 == 0) return fullSpanItem2;
                    fullSpanItem2 = fullSpanItem;
                    if (fullSpanItem.mGapDir == n4) return fullSpanItem2;
                    if (bl) {
                        fullSpanItem2 = fullSpanItem;
                        if (fullSpanItem.mHasUnwantedGapAfter) return fullSpanItem2;
                    }
                }
                ++n6;
            }
            return null;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public FullSpanItem getFullSpanItem(int n2) {
            if (this.mFullSpanItems == null) {
                return null;
            }
            int n3 = this.mFullSpanItems.size() - 1;
            while (n3 >= 0) {
                FullSpanItem fullSpanItem;
                FullSpanItem fullSpanItem2 = fullSpanItem = this.mFullSpanItems.get(n3);
                if (fullSpanItem.mPosition == n2) return fullSpanItem2;
                --n3;
            }
            return null;
        }

        int getSpan(int n2) {
            if (this.mData == null || n2 >= this.mData.length) {
                return -1;
            }
            return this.mData[n2];
        }

        /*
         * Enabled aggressive block sorting
         */
        int invalidateAfter(int n2) {
            if (this.mData == null || n2 >= this.mData.length) {
                return -1;
            }
            int n3 = this.invalidateFullSpansAfter(n2);
            if (n3 == -1) {
                Arrays.fill(this.mData, n2, this.mData.length, -1);
                return this.mData.length;
            }
            Arrays.fill(this.mData, n2, n3 + 1, -1);
            return n3 + 1;
        }

        void offsetForAddition(int n2, int n3) {
            if (this.mData == null || n2 >= this.mData.length) {
                return;
            }
            this.ensureSize(n2 + n3);
            System.arraycopy(this.mData, n2, this.mData, n2 + n3, this.mData.length - n2 - n3);
            Arrays.fill(this.mData, n2, n2 + n3, -1);
            this.offsetFullSpansForAddition(n2, n3);
        }

        void offsetForRemoval(int n2, int n3) {
            if (this.mData == null || n2 >= this.mData.length) {
                return;
            }
            this.ensureSize(n2 + n3);
            System.arraycopy(this.mData, n2 + n3, this.mData, n2, this.mData.length - n2 - n3);
            Arrays.fill(this.mData, this.mData.length - n3, this.mData.length, -1);
            this.offsetFullSpansForRemoval(n2, n3);
        }

        void setSpan(int n2, Span span) {
            this.ensureSize(n2);
            this.mData[n2] = span.mIndex;
        }

        int sizeForPosition(int n2) {
            int n3;
            for (n3 = this.mData.length; n3 <= n2; n3 *= 2) {
            }
            return n3;
        }

        static class FullSpanItem
        implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new Parcelable.Creator<FullSpanItem>(){

                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                public FullSpanItem[] newArray(int n2) {
                    return new FullSpanItem[n2];
                }
            };
            int mGapDir;
            int[] mGapPerSpan;
            boolean mHasUnwantedGapAfter;
            int mPosition;

            public FullSpanItem() {
            }

            /*
             * Enabled aggressive block sorting
             */
            public FullSpanItem(Parcel parcel) {
                boolean bl = true;
                this.mPosition = parcel.readInt();
                this.mGapDir = parcel.readInt();
                if (parcel.readInt() != 1) {
                    bl = false;
                }
                this.mHasUnwantedGapAfter = bl;
                int n2 = parcel.readInt();
                if (n2 > 0) {
                    this.mGapPerSpan = new int[n2];
                    parcel.readIntArray(this.mGapPerSpan);
                }
            }

            public int describeContents() {
                return 0;
            }

            int getGapForSpan(int n2) {
                if (this.mGapPerSpan == null) {
                    return 0;
                }
                return this.mGapPerSpan[n2];
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.mPosition + ", mGapDir=" + this.mGapDir + ", mHasUnwantedGapAfter=" + this.mHasUnwantedGapAfter + ", mGapPerSpan=" + Arrays.toString(this.mGapPerSpan) + '}';
            }

            /*
             * Enabled aggressive block sorting
             */
            public void writeToParcel(Parcel parcel, int n2) {
                parcel.writeInt(this.mPosition);
                parcel.writeInt(this.mGapDir);
                n2 = this.mHasUnwantedGapAfter ? 1 : 0;
                parcel.writeInt(n2);
                if (this.mGapPerSpan != null && this.mGapPerSpan.length > 0) {
                    parcel.writeInt(this.mGapPerSpan.length);
                    parcel.writeIntArray(this.mGapPerSpan);
                    return;
                }
                parcel.writeInt(0);
            }

        }

    }

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    public static class SavedState
    implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>(){

            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            public SavedState[] newArray(int n2) {
                return new SavedState[n2];
            }
        };
        boolean mAnchorLayoutFromEnd;
        int mAnchorPosition;
        List<LazySpanLookup.FullSpanItem> mFullSpanItems;
        boolean mLastLayoutRTL;
        boolean mReverseLayout;
        int[] mSpanLookup;
        int mSpanLookupSize;
        int[] mSpanOffsets;
        int mSpanOffsetsSize;
        int mVisibleAnchorPosition;

        public SavedState() {
        }

        /*
         * Enabled aggressive block sorting
         */
        SavedState(Parcel parcel) {
            boolean bl = true;
            this.mAnchorPosition = parcel.readInt();
            this.mVisibleAnchorPosition = parcel.readInt();
            this.mSpanOffsetsSize = parcel.readInt();
            if (this.mSpanOffsetsSize > 0) {
                this.mSpanOffsets = new int[this.mSpanOffsetsSize];
                parcel.readIntArray(this.mSpanOffsets);
            }
            this.mSpanLookupSize = parcel.readInt();
            if (this.mSpanLookupSize > 0) {
                this.mSpanLookup = new int[this.mSpanLookupSize];
                parcel.readIntArray(this.mSpanLookup);
            }
            boolean bl2 = parcel.readInt() == 1;
            this.mReverseLayout = bl2;
            bl2 = parcel.readInt() == 1;
            this.mAnchorLayoutFromEnd = bl2;
            bl2 = parcel.readInt() == 1 ? bl : false;
            this.mLastLayoutRTL = bl2;
            this.mFullSpanItems = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.mSpanOffsetsSize = savedState.mSpanOffsetsSize;
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mVisibleAnchorPosition = savedState.mVisibleAnchorPosition;
            this.mSpanOffsets = savedState.mSpanOffsets;
            this.mSpanLookupSize = savedState.mSpanLookupSize;
            this.mSpanLookup = savedState.mSpanLookup;
            this.mReverseLayout = savedState.mReverseLayout;
            this.mAnchorLayoutFromEnd = savedState.mAnchorLayoutFromEnd;
            this.mLastLayoutRTL = savedState.mLastLayoutRTL;
            this.mFullSpanItems = savedState.mFullSpanItems;
        }

        public int describeContents() {
            return 0;
        }

        void invalidateAnchorPositionInfo() {
            this.mSpanOffsets = null;
            this.mSpanOffsetsSize = 0;
            this.mAnchorPosition = -1;
            this.mVisibleAnchorPosition = -1;
        }

        void invalidateSpanInfo() {
            this.mSpanOffsets = null;
            this.mSpanOffsetsSize = 0;
            this.mSpanLookupSize = 0;
            this.mSpanLookup = null;
            this.mFullSpanItems = null;
        }

        /*
         * Enabled aggressive block sorting
         */
        public void writeToParcel(Parcel parcel, int n2) {
            int n3 = 1;
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mVisibleAnchorPosition);
            parcel.writeInt(this.mSpanOffsetsSize);
            if (this.mSpanOffsetsSize > 0) {
                parcel.writeIntArray(this.mSpanOffsets);
            }
            parcel.writeInt(this.mSpanLookupSize);
            if (this.mSpanLookupSize > 0) {
                parcel.writeIntArray(this.mSpanLookup);
            }
            n2 = this.mReverseLayout ? 1 : 0;
            parcel.writeInt(n2);
            n2 = this.mAnchorLayoutFromEnd ? 1 : 0;
            parcel.writeInt(n2);
            n2 = this.mLastLayoutRTL ? n3 : 0;
            parcel.writeInt(n2);
            parcel.writeList(this.mFullSpanItems);
        }

    }

    class Span {
        static final int INVALID_LINE = Integer.MIN_VALUE;
        int mCachedEnd;
        int mCachedStart;
        int mDeletedSize;
        final int mIndex;
        ArrayList<View> mViews;

        Span(int n2) {
            this.mViews = new ArrayList();
            this.mCachedStart = Integer.MIN_VALUE;
            this.mCachedEnd = Integer.MIN_VALUE;
            this.mDeletedSize = 0;
            this.mIndex = n2;
        }

        void appendToSpan(View view) {
            LayoutParams layoutParams = this.getLayoutParams(view);
            layoutParams.mSpan = this;
            this.mViews.add(view);
            this.mCachedEnd = Integer.MIN_VALUE;
            if (this.mViews.size() == 1) {
                this.mCachedStart = Integer.MIN_VALUE;
            }
            if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
                this.mDeletedSize += StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedMeasurement(view);
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        void cacheReferenceLineAndClear(boolean bl, int n2) {
            int n3 = bl ? this.getEndLine(Integer.MIN_VALUE) : this.getStartLine(Integer.MIN_VALUE);
            this.clear();
            if (n3 == Integer.MIN_VALUE || bl && n3 < StaggeredGridLayoutManager.this.mPrimaryOrientation.getEndAfterPadding() || !bl && n3 > StaggeredGridLayoutManager.this.mPrimaryOrientation.getStartAfterPadding()) {
                return;
            }
            int n4 = n3;
            if (n2 != Integer.MIN_VALUE) {
                n4 = n3 + n2;
            }
            this.mCachedEnd = n4;
            this.mCachedStart = n4;
        }

        void calculateCachedEnd() {
            Object object = this.mViews.get(this.mViews.size() - 1);
            LayoutParams layoutParams = this.getLayoutParams((View)object);
            this.mCachedEnd = StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedEnd((View)object);
            if (layoutParams.mFullSpan && (object = StaggeredGridLayoutManager.this.mLazySpanLookup.getFullSpanItem(layoutParams.getViewLayoutPosition())) != null && object.mGapDir == 1) {
                this.mCachedEnd += object.getGapForSpan(this.mIndex);
            }
        }

        void calculateCachedStart() {
            Object object = this.mViews.get(0);
            LayoutParams layoutParams = this.getLayoutParams((View)object);
            this.mCachedStart = StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedStart((View)object);
            if (layoutParams.mFullSpan && (object = StaggeredGridLayoutManager.this.mLazySpanLookup.getFullSpanItem(layoutParams.getViewLayoutPosition())) != null && object.mGapDir == -1) {
                this.mCachedStart -= object.getGapForSpan(this.mIndex);
            }
        }

        void clear() {
            this.mViews.clear();
            this.invalidateCache();
            this.mDeletedSize = 0;
        }

        public int findFirstCompletelyVisibleItemPosition() {
            if (StaggeredGridLayoutManager.this.mReverseLayout) {
                return this.findOneVisibleChild(this.mViews.size() - 1, -1, true);
            }
            return this.findOneVisibleChild(0, this.mViews.size(), true);
        }

        public int findFirstVisibleItemPosition() {
            if (StaggeredGridLayoutManager.this.mReverseLayout) {
                return this.findOneVisibleChild(this.mViews.size() - 1, -1, false);
            }
            return this.findOneVisibleChild(0, this.mViews.size(), false);
        }

        public int findLastCompletelyVisibleItemPosition() {
            if (StaggeredGridLayoutManager.this.mReverseLayout) {
                return this.findOneVisibleChild(0, this.mViews.size(), true);
            }
            return this.findOneVisibleChild(this.mViews.size() - 1, -1, true);
        }

        public int findLastVisibleItemPosition() {
            if (StaggeredGridLayoutManager.this.mReverseLayout) {
                return this.findOneVisibleChild(0, this.mViews.size(), false);
            }
            return this.findOneVisibleChild(this.mViews.size() - 1, -1, false);
        }

        /*
         * Enabled aggressive block sorting
         */
        int findOneVisibleChild(int n2, int n3, boolean bl) {
            int n4 = -1;
            int n5 = StaggeredGridLayoutManager.this.mPrimaryOrientation.getStartAfterPadding();
            int n6 = StaggeredGridLayoutManager.this.mPrimaryOrientation.getEndAfterPadding();
            int n7 = n3 > n2 ? 1 : -1;
            do {
                int n8 = n4;
                if (n2 == n3) return n8;
                View view = this.mViews.get(n2);
                n8 = StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedStart(view);
                int n9 = StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedEnd(view);
                if (n8 < n6 && n9 > n5) {
                    if (!bl) {
                        return StaggeredGridLayoutManager.this.getPosition(view);
                    }
                    if (n8 >= n5 && n9 <= n6) {
                        return StaggeredGridLayoutManager.this.getPosition(view);
                    }
                }
                n2 += n7;
            } while (true);
        }

        public int getDeletedSize() {
            return this.mDeletedSize;
        }

        int getEndLine() {
            if (this.mCachedEnd != Integer.MIN_VALUE) {
                return this.mCachedEnd;
            }
            this.calculateCachedEnd();
            return this.mCachedEnd;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        int getEndLine(int n2) {
            if (this.mCachedEnd != Integer.MIN_VALUE) {
                return this.mCachedEnd;
            }
            if (this.mViews.size() == 0) return n2;
            this.calculateCachedEnd();
            return this.mCachedEnd;
        }

        /*
         * Enabled aggressive block sorting
         */
        public View getFocusableViewAfter(int n2, int n3) {
            View view = null;
            View view2 = null;
            if (n3 == -1) {
                int n4 = this.mViews.size();
                n3 = 0;
                do {
                    view = view2;
                    if (n3 >= n4) return view;
                    {
                        View view3 = this.mViews.get(n3);
                        view = view2;
                        if (!view3.isFocusable()) return view;
                        {
                            boolean bl = StaggeredGridLayoutManager.this.getPosition(view3) > n2;
                            view = view2;
                            if (bl != StaggeredGridLayoutManager.this.mReverseLayout) return view;
                            {
                                view2 = view3;
                                ++n3;
                                continue;
                            }
                        }
                    }
                    break;
                } while (true);
            } else {
                n3 = this.mViews.size() - 1;
                view2 = view;
                do {
                    view = view2;
                    if (n3 < 0) return view;
                    View view4 = this.mViews.get(n3);
                    view = view2;
                    if (!view4.isFocusable()) return view;
                    boolean bl = StaggeredGridLayoutManager.this.getPosition(view4) > n2;
                    boolean bl2 = !StaggeredGridLayoutManager.this.mReverseLayout;
                    view = view2;
                    if (bl != bl2) return view;
                    view2 = view4;
                    --n3;
                } while (true);
            }
        }

        LayoutParams getLayoutParams(View view) {
            return (LayoutParams)view.getLayoutParams();
        }

        int getStartLine() {
            if (this.mCachedStart != Integer.MIN_VALUE) {
                return this.mCachedStart;
            }
            this.calculateCachedStart();
            return this.mCachedStart;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        int getStartLine(int n2) {
            if (this.mCachedStart != Integer.MIN_VALUE) {
                return this.mCachedStart;
            }
            if (this.mViews.size() == 0) return n2;
            this.calculateCachedStart();
            return this.mCachedStart;
        }

        void invalidateCache() {
            this.mCachedStart = Integer.MIN_VALUE;
            this.mCachedEnd = Integer.MIN_VALUE;
        }

        void onOffset(int n2) {
            if (this.mCachedStart != Integer.MIN_VALUE) {
                this.mCachedStart += n2;
            }
            if (this.mCachedEnd != Integer.MIN_VALUE) {
                this.mCachedEnd += n2;
            }
        }

        void popEnd() {
            int n2 = this.mViews.size();
            View view = this.mViews.remove(n2 - 1);
            LayoutParams layoutParams = this.getLayoutParams(view);
            layoutParams.mSpan = null;
            if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
                this.mDeletedSize -= StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedMeasurement(view);
            }
            if (n2 == 1) {
                this.mCachedStart = Integer.MIN_VALUE;
            }
            this.mCachedEnd = Integer.MIN_VALUE;
        }

        void popStart() {
            View view = this.mViews.remove(0);
            LayoutParams layoutParams = this.getLayoutParams(view);
            layoutParams.mSpan = null;
            if (this.mViews.size() == 0) {
                this.mCachedEnd = Integer.MIN_VALUE;
            }
            if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
                this.mDeletedSize -= StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedMeasurement(view);
            }
            this.mCachedStart = Integer.MIN_VALUE;
        }

        void prependToSpan(View view) {
            LayoutParams layoutParams = this.getLayoutParams(view);
            layoutParams.mSpan = this;
            this.mViews.add(0, view);
            this.mCachedStart = Integer.MIN_VALUE;
            if (this.mViews.size() == 1) {
                this.mCachedEnd = Integer.MIN_VALUE;
            }
            if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
                this.mDeletedSize += StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedMeasurement(view);
            }
        }

        void setLine(int n2) {
            this.mCachedStart = n2;
            this.mCachedEnd = n2;
        }
    }

}

