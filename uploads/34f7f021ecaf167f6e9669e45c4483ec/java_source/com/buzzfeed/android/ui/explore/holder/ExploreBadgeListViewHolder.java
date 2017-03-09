/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.View
 */
package com.buzzfeed.android.ui.explore.holder;

import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.buzzfeed.android.ui.explore.adapter.ExploreBadgeListAdapter;
import com.buzzfeed.android.ui.explore.holder.ExploreItemViewHolder;
import com.buzzfeed.toolkit.util.UIUtil;

public class ExploreBadgeListViewHolder
extends ExploreItemViewHolder<ExploreBadgeListAdapter> {
    private final RecyclerView mBadgeListRecyclerView;

    public ExploreBadgeListViewHolder(View view) {
        super(view);
        this.mBadgeListRecyclerView = (RecyclerView)UIUtil.findView(view, 2131820888);
        this.mBadgeListRecyclerView.setHasFixedSize(true);
    }

    @Override
    public void onViewHolderRecycled() {
        this.mBadgeListRecyclerView.setAdapter(null);
    }

    @Override
    public void populateFrom(@NonNull ExploreBadgeListAdapter exploreBadgeListAdapter) {
        this.mBadgeListRecyclerView.setAdapter(exploreBadgeListAdapter);
    }
}

