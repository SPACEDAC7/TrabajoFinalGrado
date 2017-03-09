/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 */
package com.buzzfeed.android.ui.buffet.fragment;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.buzzfeed.buffet.ui.holder.BaseCard;
import com.buzzfeed.toolkit.util.EZUtil;
import java.util.HashSet;

public abstract class AbstractAdHelper
implements RecyclerView.OnChildAttachStateChangeListener {
    private HashSet<Integer> mAdReadyMap = new HashSet();
    private RecyclerView mRecyclerView;

    public AbstractAdHelper(RecyclerView recyclerView) {
        EZUtil.checkNotNull(recyclerView);
        this.mRecyclerView = recyclerView;
        this.mRecyclerView.addOnChildAttachStateChangeListener(this);
    }

    private void loadAdForViewIfNeeded(View object) {
        if ((object = this.mRecyclerView.getChildViewHolder((View)object)) instanceof BaseCard) {
            int n2 = object.getAdapterPosition();
            object = (BaseCard)object;
            if (n2 != -1 && object.isAd() && !this.mAdReadyMap.contains(n2)) {
                this.mAdReadyMap.add(n2);
                this.loadAdForViewHolder((BaseCard)object);
            }
        }
    }

    private void refreshCurrentAttachedAdCells() {
        RecyclerView.LayoutManager layoutManager = this.mRecyclerView.getLayoutManager();
        int n2 = layoutManager.getChildCount();
        for (int i2 = 0; i2 < n2; ++i2) {
            this.loadAdForViewIfNeeded(layoutManager.getChildAt(i2));
        }
    }

    public abstract void loadAdForViewHolder(BaseCard var1);

    @Override
    public void onChildViewAttachedToWindow(View view) {
        this.loadAdForViewIfNeeded(view);
    }

    @Override
    public void onChildViewDetachedFromWindow(View view) {
    }

    public void refreshAds() {
        this.reset();
        if (this.mRecyclerView.getLayoutManager() != null) {
            this.refreshCurrentAttachedAdCells();
        }
    }

    public void reset() {
        this.mAdReadyMap.clear();
    }
}

