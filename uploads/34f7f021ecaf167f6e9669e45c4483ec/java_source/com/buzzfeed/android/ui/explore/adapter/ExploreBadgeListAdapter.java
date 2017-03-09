/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.ViewGroup
 */
package com.buzzfeed.android.ui.explore.adapter;

import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.ui.explore.holder.ExploreBadgeItemViewHolder;
import com.buzzfeed.android.ui.explore.listener.ExploreUserActionListener;
import com.buzzfeed.toolkit.util.EZUtil;
import java.util.List;

public class ExploreBadgeListAdapter
extends RecyclerView.Adapter<ExploreBadgeItemViewHolder> {
    private final List<Feed> mBadgeFeedList;
    private final LayoutInflater mInflater;
    private ExploreUserActionListener mUserActionListener;

    ExploreBadgeListAdapter(@NonNull LayoutInflater layoutInflater, @NonNull List<Feed> list, @NonNull ExploreUserActionListener exploreUserActionListener) {
        this.mInflater = EZUtil.checkNotNull(layoutInflater);
        this.mBadgeFeedList = EZUtil.checkNotNull(list);
        this.mUserActionListener = EZUtil.checkNotNull(exploreUserActionListener);
    }

    @Override
    public int getItemCount() {
        return this.mBadgeFeedList.size();
    }

    @Override
    public void onBindViewHolder(ExploreBadgeItemViewHolder exploreBadgeItemViewHolder, int n2) {
        exploreBadgeItemViewHolder.setUserActionListener(this.mUserActionListener);
        exploreBadgeItemViewHolder.populateFrom(this.mBadgeFeedList.get(n2));
    }

    @Override
    public ExploreBadgeItemViewHolder onCreateViewHolder(ViewGroup viewGroup, int n2) {
        return new ExploreBadgeItemViewHolder(this.mInflater.inflate(2130903145, viewGroup, false));
    }

    @Override
    public void onViewRecycled(ExploreBadgeItemViewHolder exploreBadgeItemViewHolder) {
        super.onViewRecycled(exploreBadgeItemViewHolder);
        exploreBadgeItemViewHolder.setUserActionListener(null);
        exploreBadgeItemViewHolder.onViewHolderRecycled();
    }
}

