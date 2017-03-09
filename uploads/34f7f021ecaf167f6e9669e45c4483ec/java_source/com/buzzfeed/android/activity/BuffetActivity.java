/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.Intent
 *  android.os.Bundle
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.widget.TextView
 */
package com.buzzfeed.android.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.TextView;
import com.buzzfeed.android.activity.BaseBuffetActivity;
import com.buzzfeed.android.activity.PagerActivity;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.navigation.FeedListProvider;
import com.buzzfeed.android.navigation.NavigationItem;
import com.buzzfeed.android.navigation.NavigationModel;
import com.buzzfeed.android.ui.buffet.fragment.BuffetFragment;
import com.buzzfeed.android.util.AnalyticsUtils;
import com.buzzfeed.android.util.FeedUtils;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import java.io.Serializable;
import java.util.List;

public class BuffetActivity
extends BaseBuffetActivity {
    public static final String KEY_VERTICAL = "KEY_VERTICAL";
    public static final String KEY_WIDGET_BUZZ_URL = "KEY_WIDGET_BUZZ_URL";
    public static final String KEY_WIDGET_FEED_NAME = "KEY_WIDGET_FEED_NAME";
    private static final String TAG = LogUtil.makeLogTag(BuffetActivity.class);
    private BuffetFragment mBuffetFragment;

    public static void startIntentWithFeed(Activity activity, Feed feed) {
        Intent intent = new Intent((Context)activity, (Class)BuffetActivity.class);
        intent.putExtra("KEY_FEED", (Serializable)feed);
        activity.startActivity(intent);
    }

    public static void startIntentWithFeedNewTask(Activity activity, Feed feed) {
        Intent intent = new Intent((Context)activity, (Class)BuffetActivity.class);
        intent.putExtra("KEY_FEED", (Serializable)feed);
        intent.setFlags(268435456);
        intent.setFlags(67108864);
        activity.startActivity(intent);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateToolbarTitle(Feed feed) {
        boolean bl = FeedUtils.isHomeFeed(feed);
        ActionBar actionBar = this.getSupportActionBar();
        if (actionBar != null) {
            if (bl) {
                actionBar.setCustomView(2130903066);
            } else {
                actionBar.setCustomView(2130903068);
                actionBar = (TextView)UIUtil.findView(actionBar.getCustomView(), 2131820683);
                if (feed.getLocalizedNameResId() != 0) {
                    actionBar.setText(feed.getLocalizedNameResId());
                } else {
                    actionBar.setText((CharSequence)feed.getName());
                }
            }
        }
        if ((actionBar = this.findViewById(2131821107)) != null) {
            if (!FeedUtils.isBookmarkFeed(feed)) {
                actionBar.setVisibility(0);
                return;
            }
            actionBar.setVisibility(8);
        }
    }

    @Override
    protected void configureToolbar(@NonNull Toolbar object) {
        object = this.getSupportActionBar();
        object.setDisplayHomeAsUpEnabled(true);
        object.setHomeButtonEnabled(true);
        object.setDisplayShowTitleEnabled(false);
        object.setDisplayShowCustomEnabled(true);
        object.setCustomView(2130903066);
    }

    @Override
    protected int getContentViewId() {
        return 2130903069;
    }

    @Override
    protected BuffetFragment getCurrentBuffetFragment() {
        return this.mBuffetFragment;
    }

    @Nullable
    @Override
    protected Feed getCurrentFeed() {
        if (this.mBuffetFragment != null) {
            return this.mBuffetFragment.getCurrentFeed();
        }
        return null;
    }

    @Nullable
    @Override
    protected String getCurrentScreen() {
        return AnalyticsUtils.buildScreenNameFromFeed(this.getCurrentFeed(), EnvironmentConfig.getEdition((Context)this));
    }

    @Override
    protected void launchBookmarksView() {
        if (!FeedUtils.isBookmarkFeed(this.getCurrentFeed())) {
            super.launchBookmarksView();
        }
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.overridePendingTransition(0, 0);
        this.setToolBarAsUp(new View.OnClickListener(){

            public void onClick(View view) {
                BuffetActivity.this.onBackPressed();
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onNavigationContentLoaded(@NonNull NavigationModel object) {
        if (!object.getSupportedFeeds().isEmpty()) {
            object = this.mFeedListProvider.getDeepLinkedFeed(this.getIntent());
            if (object == null) return;
            {
                this.switchFeed((Feed)object);
                return;
            }
        } else {
            if (this.mBuffetFragment == null) return;
            {
                this.mBuffetFragment.showError();
                return;
            }
        }
    }

    @Override
    protected void onNetworkConnected() {
        if (this.getCurrentBuffetFragment() != null && this.getCurrentFeed() != null) {
            this.getCurrentBuffetFragment().retryFeedLoad();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void switchFeed(@NonNull Feed feed) {
        LogUtil.d(TAG + ".switchFeed", "Switching to feed: " + feed);
        if (FeedUtils.hasMatchingBottomMenuFeed(feed, this.mFeedListProvider.getBottomMenuItems())) {
            PagerActivity.startIntent(this, feed);
            this.finish();
            return;
        }
        if (this.mBuffetFragment == null) {
            this.mBuffetFragment = BuffetFragment.newInstance(feed);
            this.getSupportFragmentManager().beginTransaction().replace(2131820684, this.mBuffetFragment).commit();
        } else {
            this.mBuffetFragment.switchFeed(feed);
        }
        this.updateToolbarTitle(feed);
    }

}

