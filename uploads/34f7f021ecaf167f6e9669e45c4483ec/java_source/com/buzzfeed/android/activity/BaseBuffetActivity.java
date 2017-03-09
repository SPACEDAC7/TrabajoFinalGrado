/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.Intent
 *  android.net.NetworkInfo
 *  android.os.Bundle
 *  android.view.Menu
 *  android.view.MenuItem
 */
package com.buzzfeed.android.activity;

import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.Menu;
import android.view.MenuItem;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.android.activity.MenuActivity;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.data.bookmark.BFBookmarkManager;
import com.buzzfeed.android.data.tracking.BuffetTracker;
import com.buzzfeed.android.navigation.FeedListProvider;
import com.buzzfeed.android.navigation.NavigationModel;
import com.buzzfeed.android.ui.buffet.fragment.BuffetFragment;
import com.buzzfeed.android.util.FeedUtils;
import com.buzzfeed.toolkit.util.VideoSettings;
import java.io.Serializable;

public abstract class BaseBuffetActivity
extends MenuActivity {
    public static final String KEY_BADGE = "KEY_BADGE";
    public static final String KEY_CURRENT_FEED = "KEY_CURRENT_FEED";
    public static final String KEY_FEED = "KEY_FEED";
    public static final String KEY_VERTICAL = "KEY_VERTICAL";
    public static final String KEY_WIDGET_BUZZ_URL = "KEY_WIDGET_BUZZ_URL";
    public static final String KEY_WIDGET_FEED_NAME = "KEY_WIDGET_FEED_NAME";
    public static final int REQUEST_CODE_LOGIN = 0;
    protected BuffetTracker mBuffetTracker;
    protected FeedListProvider mFeedListProvider;

    private void refreshBookmarks() {
        BuffetFragment buffetFragment;
        if (FeedUtils.isBookmarkFeed(this.getCurrentFeed()) && (buffetFragment = this.getCurrentBuffetFragment()) != null) {
            buffetFragment.reloadFeed();
        }
    }

    protected abstract int getContentViewId();

    @Nullable
    protected abstract BuffetFragment getCurrentBuffetFragment();

    @Override
    protected void onCreate(@Nullable Bundle object) {
        super.onCreate((Bundle)object);
        this.setContentView(this.getContentViewId());
        object = EnvironmentConfig.getEdition((Context)this);
        this.mFeedListProvider = FeedListProvider.getInstance((String)object);
        this.mBuffetTracker = new BuffetTracker((Context)this, BuzzFeedTracker.getInstance(), DustbusterClient.getInstance(), (String)object);
    }

    protected abstract void onNavigationContentLoaded(@NonNull NavigationModel var1);

    @Override
    protected void onNetworkChange(@Nullable NetworkInfo object) {
        if (object != null && object.isConnected()) {
            this.onNetworkConnected();
        }
        if ((object = this.getCurrentBuffetFragment()) != null) {
            object.toggleAutoplay(VideoSettings.isInAutoplayMode((Context)this));
        }
    }

    protected abstract void onNetworkConnected();

    @Override
    protected void onPostCreate(@Nullable Bundle bundle) {
        super.onPostCreate(bundle);
        this.onNavigationContentLoaded(this.mFeedListProvider.getNavigationModel());
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (!this.mBookmarkManager.isSynced()) {
            this.refreshBookmarks();
        }
    }

    @Override
    protected void onUserLoginStatusChanged() {
        this.refreshBookmarks();
    }

    public void startActivity(Intent intent) {
        if ("android.intent.action.SEARCH".equals(intent.getAction())) {
            intent.putExtra("KEY_CURRENT_FEED", (Serializable)this.getCurrentFeed());
        }
        super.startActivity(intent);
    }

    protected abstract void switchFeed(@NonNull Feed var1);
}

