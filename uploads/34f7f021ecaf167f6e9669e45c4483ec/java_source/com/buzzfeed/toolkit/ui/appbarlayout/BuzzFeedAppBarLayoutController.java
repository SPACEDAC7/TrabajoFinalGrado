/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 */
package com.buzzfeed.toolkit.ui.appbarlayout;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import com.buzzfeed.toolkit.ui.appbarlayout.BuzzFeedAppBarLayout;
import com.buzzfeed.toolkit.ui.appbarlayout.DummyBehavior;
import com.buzzfeed.toolkit.ui.appbarlayout.ScrollFlagHelper;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.UIUtil;

public class BuzzFeedAppBarLayoutController
extends RecyclerView.OnScrollListener {
    private BuzzFeedAppBarLayout mAppBarLayout;
    private DummyBehavior mBehavior;
    private int mCurrentTranslationOffset;
    private boolean mIsAttached = false;
    private int mLastY;
    private LinearLayoutManager mLayoutManager;
    private RecyclerView mRecyclerView;
    private ScrollFlagHelper mScrollFlagHelper;
    private int mStatusBarHeight;

    private void dispatchUpdateCurrentTranslation(int n2) {
        this.updateCurrentTranslation(n2);
        this.dispatchOffsetUpdates(this.mCurrentTranslationOffset);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int getExitUntilCollapsedOffset(int n2) {
        int n3 = this.mLayoutManager.findFirstVisibleItemPosition();
        if (n3 == -1) {
            return 0;
        }
        int n4 = n2;
        if (n3 != 0) return n4;
        RecyclerView.ViewHolder viewHolder = this.mRecyclerView.findViewHolderForAdapterPosition(n3);
        return Math.max(this.mLayoutManager.getDecoratedTop(viewHolder.itemView), n2);
    }

    private int getMinHeight(AppBarLayout appBarLayout, boolean bl) {
        int n2 = ViewCompat.getMinimumHeight((View)appBarLayout);
        if (this.mScrollFlagHelper.isFlagExitUntilCollapsedEnabled() || n2 > 0 && !this.mScrollFlagHelper.isQuickReturnEnabled() || bl) {
            if (n2 > 0) {
                return n2;
            }
            return ViewCompat.getMinimumHeight(this.mScrollFlagHelper.getView());
        }
        return 0;
    }

    private int getMinOffset(AppBarLayout appBarLayout) {
        int n2 = appBarLayout.getMeasuredHeight();
        if (this.mScrollFlagHelper.isFlagScrollEnabled()) {
            n2 = appBarLayout.getMeasuredHeight() - this.getMinHeight(appBarLayout, false);
        }
        int n3 = n2;
        if (ViewCompat.getFitsSystemWindows((View)appBarLayout)) {
            if (this.mStatusBarHeight == 0) {
                this.mStatusBarHeight = UIUtil.getStatusBarHeight(appBarLayout.getContext());
            }
            n3 = n2 - this.mStatusBarHeight;
        }
        return - Math.max(n3, 0);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private int getQuickReturnOffset(int var1_1, int var2_2, int var3_3, int var4_4, boolean var5_5) {
        var7_6 = Math.min(Math.max(var4_4, this.mCurrentTranslationOffset - var2_2), 0);
        var8_7 = var4_4 + this.getMinHeight(this.mAppBarLayout, true);
        var6_8 = var7_6;
        if (var2_2 > 0) ** GOTO lbl9
        if (!var5_5) ** GOTO lbl-1000
        var6_8 = var7_6;
        if (var1_1 > Math.abs(var8_7)) lbl-1000: // 2 sources:
        {
            var6_8 = Math.min(var7_6, var8_7);
        }
lbl9: // 4 sources:
        if (var5_5 != false) return var6_8;
        if (var3_3 != 0) return var6_8;
        if (this.mCurrentTranslationOffset != var4_4) return var6_8;
        return var4_4;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateCurrentTranslation(int n2) {
        int n3 = this.mRecyclerView.computeVerticalScrollOffset();
        if (n3 == this.mLastY) {
            return;
        }
        this.mLastY = n3;
        boolean bl = this.mLayoutManager.findViewByPosition(0) != null;
        int n4 = this.getMinOffset(this.mAppBarLayout);
        int n5 = bl ? Math.min(Math.max(n4, - n3), 0) : n4;
        int n6 = n2 != 0 ? n2 : n3 + this.mCurrentTranslationOffset;
        if (this.mScrollFlagHelper.isQuickReturnEnabled()) {
            n2 = this.getQuickReturnOffset(n3, n6, n2, n4, bl);
        } else if (this.mScrollFlagHelper.isFlagEnterAlwaysEnabled()) {
            n2 = Math.min(Math.max(n4, this.mCurrentTranslationOffset - n6), 0);
        } else {
            n2 = n5;
            if (this.mScrollFlagHelper.isFlagExitUntilCollapsedEnabled()) {
                n2 = this.getExitUntilCollapsedOffset(n4);
            }
        }
        this.mCurrentTranslationOffset = n2;
    }

    public void attachView(@NonNull RecyclerView recyclerView, @NonNull LinearLayoutManager linearLayoutManager, @NonNull BuzzFeedAppBarLayout buzzFeedAppBarLayout) {
        this.mRecyclerView = EZUtil.checkNotNull(recyclerView, "RecyclerView can't be null.");
        this.mLayoutManager = EZUtil.checkNotNull(linearLayoutManager, "LinearLayoutManager can't be null.");
        this.mAppBarLayout = EZUtil.checkNotNull(buzzFeedAppBarLayout, "AppBarLayout can't be null.");
        this.mScrollFlagHelper = new ScrollFlagHelper(this.mAppBarLayout);
        this.mRecyclerView.addOnScrollListener(this);
        this.mBehavior = new DummyBehavior();
        ((CoordinatorLayout.LayoutParams)buzzFeedAppBarLayout.getLayoutParams()).setBehavior(this.mBehavior);
        this.mIsAttached = true;
    }

    public void detachView() {
        if (!this.mIsAttached) {
            return;
        }
        this.mIsAttached = false;
        this.mRecyclerView.removeOnScrollListener(this);
        this.mRecyclerView = null;
        this.mLayoutManager = null;
        this.mAppBarLayout = null;
        this.mBehavior = null;
        this.mScrollFlagHelper = null;
        this.mCurrentTranslationOffset = 0;
    }

    void dispatchOffsetUpdates(int n2) {
        this.mBehavior.setTopAndBottomOffset(n2);
        this.mAppBarLayout.notifyOnOffsetChanged(n2);
    }

    public int getTranslationOffset() {
        return this.mCurrentTranslationOffset;
    }

    @VisibleForTesting
    boolean isAttached() {
        return this.mIsAttached;
    }

    @Override
    public void onScrolled(RecyclerView recyclerView, int n2, int n3) {
        super.onScrolled(recyclerView, n2, n3);
        if (n3 != 0) {
            this.dispatchUpdateCurrentTranslation(n3);
        }
    }

    public void setTranslationOffset(int n2) {
        this.mCurrentTranslationOffset = n2;
        this.dispatchOffsetUpdates(this.mCurrentTranslationOffset);
    }
}

