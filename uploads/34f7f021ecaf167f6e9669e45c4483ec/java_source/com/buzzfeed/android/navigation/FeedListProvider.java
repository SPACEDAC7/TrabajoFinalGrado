/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Intent
 *  android.text.TextUtils
 */
package com.buzzfeed.android.navigation;

import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.navigation.FeedListDataSource;
import com.buzzfeed.android.navigation.FeedListLoader;
import com.buzzfeed.android.navigation.NavigationItem;
import com.buzzfeed.android.navigation.NavigationModel;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;

public class FeedListProvider
implements FeedListDataSource {
    public static final String KEY_BADGE = "KEY_BADGE";
    public static final String KEY_FEED = "KEY_FEED";
    public static final String KEY_VERTICAL = "KEY_VERTICAL";
    public static final String KEY_WIDGET_BUZZ_URL = "KEY_WIDGET_BUZZ_URL";
    public static final String KEY_WIDGET_FEED_NAME = "KEY_WIDGET_FEED_NAME";
    private static FeedListProvider sInstance;
    private final NavigationModel mNavigationModel;

    FeedListProvider(@NonNull FeedListDataSource feedListDataSource) {
        this.mNavigationModel = feedListDataSource.getNavigationModel();
    }

    private FeedListProvider(@NonNull String string2) {
        this(new FeedListLoader(string2));
    }

    public static FeedListProvider getInstance(String object) {
        synchronized (FeedListProvider.class) {
            if (sInstance == null) {
                sInstance = new FeedListProvider((String)object);
            }
            object = sInstance;
            return object;
        }
    }

    @Nullable
    public List<NavigationItem> getBottomMenuItems() {
        return this.mNavigationModel.getNavigationItems();
    }

    @Nullable
    public Feed getDeepLinkedFeed(Intent intent) {
        Feed feed = null;
        if (intent.hasExtra("KEY_VERTICAL")) {
            feed = this.getFeedForVertical(intent.getStringExtra("KEY_VERTICAL"));
        }
        if (intent.hasExtra("KEY_FEED")) {
            feed = (Feed)intent.getSerializableExtra("KEY_FEED");
        }
        if (intent.hasExtra("KEY_BADGE")) {
            feed = this.getFeedForBadge(intent.getStringExtra("KEY_BADGE"));
        }
        if (intent.hasExtra("KEY_WIDGET_FEED_NAME")) {
            feed = this.getFeedForVertical(intent.getStringExtra("KEY_WIDGET_FEED_NAME"));
        }
        return feed;
    }

    public Feed getFeedForBadge(String string2) {
        Feed feed;
        Feed feed2 = feed = this.getFeedFromTag("reaction_" + string2);
        if (feed == null) {
            feed2 = this.getFeedFromTag("section_" + string2);
        }
        feed = feed2;
        if (feed2 == null) {
            feed = this.getFeedFromTag(string2);
        }
        return feed;
    }

    public Feed getFeedForVertical(String string2) {
        Feed feed;
        Feed feed2 = feed = this.getFeedFromTag("section_" + string2);
        if (feed == null) {
            feed2 = this.getFeedFromTag("reaction_" + string2);
        }
        feed = feed2;
        if (feed2 == null) {
            feed = this.getFeedFromTag(string2);
        }
        return feed;
    }

    public Feed getFeedFromTag(String string2) {
        List<Feed> list = this.getFeeds();
        if (list == null || list.size() == 0) {
            return null;
        }
        for (Feed feed : list) {
            if (TextUtils.isEmpty((CharSequence)feed.getTag()) || !feed.getTag().equalsIgnoreCase(string2)) continue;
            return feed;
        }
        return null;
    }

    @Nullable
    public List<Feed> getFeeds() {
        return this.mNavigationModel.getSupportedFeeds();
    }

    @Override
    public NavigationModel getNavigationModel() {
        return this.mNavigationModel;
    }

    public boolean isBottomNavFeed(Feed feed) {
        boolean bl;
        block4 : {
            boolean bl2 = false;
            Object object = this.getBottomMenuItems();
            bl = bl2;
            if (object != null) {
                bl = bl2;
                if (object.size() > 0) {
                    object = object.iterator();
                    block0 : do {
                        Feed feed2;
                        bl = bl2;
                        if (!object.hasNext()) break block4;
                        Iterator<Feed> iterator = ((NavigationItem)object.next()).feeds.iterator();
                        do {
                            if (!iterator.hasNext()) continue block0;
                        } while ((feed2 = iterator.next()) == null || !feed2.equals(feed));
                        break;
                    } while (true);
                    bl = true;
                }
            }
        }
        return bl;
    }
}

