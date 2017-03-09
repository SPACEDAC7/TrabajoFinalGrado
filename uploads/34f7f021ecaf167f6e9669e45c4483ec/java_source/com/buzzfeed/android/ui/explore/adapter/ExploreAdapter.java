/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.text.TextUtils
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.ViewGroup
 */
package com.buzzfeed.android.ui.explore.adapter;

import android.app.Activity;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.ui.explore.adapter.ExploreBadgeListAdapter;
import com.buzzfeed.android.ui.explore.holder.ExploreBadgeListViewHolder;
import com.buzzfeed.android.ui.explore.holder.ExploreBasicItemViewHolder;
import com.buzzfeed.android.ui.explore.holder.ExploreItemViewHolder;
import com.buzzfeed.android.ui.explore.listener.ExploreUserActionListener;
import com.buzzfeed.toolkit.util.EZUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class ExploreAdapter
extends RecyclerView.Adapter<ExploreItemViewHolder> {
    private static final int NUM_OF_HEADER_ITEMS = 1;
    private static final int TYPE_EXPLORE_BADGE_LIST = 2;
    private static final int TYPE_EXPLORE_BASIC = 1;
    private ExploreBadgeListAdapter mBadgeListAdapter;
    private final LayoutInflater mInflater;
    private final List<Feed> mOrderedBadgeFeedList = new ArrayList<Feed>();
    private final List<Feed> mOrderedBasicFeedList = new ArrayList<Feed>();
    private final ExploreUserActionListener mUserActionListener;

    public ExploreAdapter(@NonNull Activity activity, @NonNull List<Feed> list, @NonNull ExploreUserActionListener exploreUserActionListener) {
        this.mInflater = EZUtil.checkNotNull(activity).getLayoutInflater();
        this.mUserActionListener = EZUtil.checkNotNull(exploreUserActionListener);
        this.processContent(list);
        this.setupBadgeAdapter();
    }

    private boolean hasBadgeList() {
        if (this.mOrderedBadgeFeedList.size() > 0) {
            return true;
        }
        return false;
    }

    private void processContent(List<Feed> object) {
        this.mOrderedBasicFeedList.clear();
        this.mOrderedBadgeFeedList.clear();
        object = new ArrayList<Feed>((Collection<Feed>)object);
        Collections.sort(object, new Comparator<Feed>(){

            @Override
            public int compare(Feed feed, Feed feed2) {
                if (TextUtils.isEmpty((CharSequence)feed.getName())) {
                    return 1;
                }
                if (TextUtils.isEmpty((CharSequence)feed2.getName())) {
                    return -1;
                }
                return feed.getName().compareTo(feed2.getName());
            }
        });
        object = object.iterator();
        while (object.hasNext()) {
            Feed feed = (Feed)object.next();
            if (feed.isBadge()) {
                this.mOrderedBadgeFeedList.add(feed);
                continue;
            }
            this.mOrderedBasicFeedList.add(feed);
        }
    }

    private void setupBadgeAdapter() {
        this.mBadgeListAdapter = new ExploreBadgeListAdapter(this.mInflater, this.mOrderedBadgeFeedList, this.mUserActionListener);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public int getItemCount() {
        int n2;
        int n3 = this.mOrderedBasicFeedList.size();
        if (this.hasBadgeList()) {
            n2 = 1;
            do {
                return n2 + n3;
                break;
            } while (true);
        }
        n2 = 0;
        return n2 + n3;
    }

    @Override
    public int getItemViewType(int n2) {
        if (n2 == 0 && this.hasBadgeList()) {
            return 2;
        }
        return 1;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onBindViewHolder(ExploreItemViewHolder exploreItemViewHolder, int n2) {
        exploreItemViewHolder.setUserActionListener(this.mUserActionListener);
        switch (exploreItemViewHolder.getItemViewType()) {
            default: {
                return;
            }
            case 1: {
                int n3 = this.hasBadgeList() ? 1 : 0;
                exploreItemViewHolder.populateFrom(this.mOrderedBasicFeedList.get(n2 - n3));
                return;
            }
            case 2: 
        }
        exploreItemViewHolder.populateFrom(this.mBadgeListAdapter);
    }

    @Override
    public ExploreItemViewHolder onCreateViewHolder(ViewGroup viewGroup, int n2) {
        switch (n2) {
            default: {
                throw new IllegalArgumentException("Unknown view type: " + n2);
            }
            case 1: {
                return new ExploreBasicItemViewHolder(this.mInflater.inflate(2130903147, viewGroup, false));
            }
            case 2: 
        }
        return new ExploreBadgeListViewHolder(this.mInflater.inflate(2130903146, viewGroup, false));
    }

    @Override
    public void onViewRecycled(ExploreItemViewHolder exploreItemViewHolder) {
        super.onViewRecycled(exploreItemViewHolder);
        exploreItemViewHolder.setUserActionListener(null);
        exploreItemViewHolder.onViewHolderRecycled();
    }

}

