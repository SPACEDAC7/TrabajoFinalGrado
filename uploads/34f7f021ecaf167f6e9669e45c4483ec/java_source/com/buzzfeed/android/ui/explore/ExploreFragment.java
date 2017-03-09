/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.res.Resources
 *  android.os.Bundle
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.ViewGroup
 */
package com.buzzfeed.android.ui.explore;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.android.activity.BuffetActivity;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.data.tracking.ExploreTracker;
import com.buzzfeed.android.navigation.FeedListProvider;
import com.buzzfeed.android.navigation.NavigationModel;
import com.buzzfeed.android.ui.buffet.fragment.NavigationItemView;
import com.buzzfeed.android.ui.explore.adapter.ExploreAdapter;
import com.buzzfeed.android.ui.explore.listener.ExploreUserActionListener;
import com.buzzfeed.android.util.AnalyticsUtils;
import com.buzzfeed.toolkit.ui.itemdecoration.SpacingItemDecoration;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import java.util.List;

public class ExploreFragment
extends Fragment
implements NavigationItemView {
    private static final int SCROLL_DIRECTION_DOWN = 1;
    private static final String TAG = LogUtil.makeLogTag(ExploreFragment.class);
    private FeedListProvider mFeedListProvider;
    private RecyclerView mRecyclerView;
    private ExploreTracker mTracker;

    private void displayData(@NonNull List<Feed> object) {
        object = new ExploreAdapter(this.getActivity(), (List<Feed>)object, new InternalExploreUserActionListener());
        int n2 = this.getResources().getDimensionPixelSize(2131427565);
        this.mRecyclerView.addItemDecoration(new SpacingItemDecoration(0, 0, n2, false));
        this.mRecyclerView.setAdapter((RecyclerView.Adapter)object);
        this.updateRecyclerViewForContentChange();
    }

    private void updateRecyclerViewForContentChange() {
        int n2 = UIUtil.getActionBarHeight((Context)this.getActivity());
        int n3 = this.getResources().getDimensionPixelSize(2131427443);
        UIUtil.runAfterLayout((View)this.mRecyclerView, new Runnable(n2 + n3){
            final /* synthetic */ int val$topPadding;

            @Override
            public void run() {
                if (!ExploreFragment.this.isAdded()) {
                    return;
                }
                if (ViewCompat.canScrollVertically((View)ExploreFragment.this.mRecyclerView, 1)) {
                    ExploreFragment.this.mRecyclerView.setNestedScrollingEnabled(true);
                    ExploreFragment.this.mRecyclerView.setOverScrollMode(1);
                    ExploreFragment.this.mRecyclerView.setPadding(0, 0, 0, 0);
                    return;
                }
                ExploreFragment.this.mRecyclerView.setNestedScrollingEnabled(false);
                ExploreFragment.this.mRecyclerView.setOverScrollMode(2);
                ExploreFragment.this.mRecyclerView.setPadding(0, 0, 0, this.val$topPadding);
            }
        });
    }

    @Override
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.mFeedListProvider = FeedListProvider.getInstance(EnvironmentConfig.getEdition((Context)this.getActivity()));
        this.mTracker = new ExploreTracker((Context)this.getActivity(), BuzzFeedTracker.getInstance(), DustbusterClient.getInstance());
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = layoutInflater.inflate(2130903144, viewGroup, false);
        this.mRecyclerView = (RecyclerView)UIUtil.findView((View)layoutInflater, 2131820886);
        this.displayData(this.mFeedListProvider.getNavigationModel().getExploreFeeds());
        return layoutInflater;
    }

    @Override
    public void onResume() {
        super.onResume();
        this.mTracker.trackScreenView();
    }

    @Override
    public void scrollToTop() {
        this.mRecyclerView.smoothScrollToPosition(0);
    }

    private class InternalExploreUserActionListener
    implements ExploreUserActionListener {
        private InternalExploreUserActionListener() {
        }

        @Override
        public void onExploreItemClicked(@NonNull Feed feed, int n2) {
            LogUtil.d(TAG + ".onExploreItemClicked", "feed=" + feed.getName() + ", position=" + n2);
            ExploreFragment.this.mTracker.trackFeedSelection(AnalyticsUtils.formatFeedDisplayNameForTracking(feed));
            BuffetActivity.startIntentWithFeedNewTask(ExploreFragment.this.getActivity(), feed);
        }
    }

}

