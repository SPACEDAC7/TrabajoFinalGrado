/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 */
package com.buzzfeed.android.util;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.navigation.NavigationItem;
import com.buzzfeed.android.util.FeedUtils;
import java.util.List;

public class AnalyticsUtils {
    static final String QUANTCAST_LABEL_VERTICAL_HP = "verticalHP";

    private AnalyticsUtils() {
    }

    @Nullable
    public static String buildScreenNameFromFeed(@Nullable Feed feed, @Nullable String string2) {
        if (feed == null || TextUtils.isEmpty((CharSequence)string2)) {
            return null;
        }
        if (!TextUtils.isEmpty((CharSequence)feed.getUri())) {
            return "/list/" + feed.getUri() + "/" + string2;
        }
        return "/list/" + feed.getTag();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Nullable
    public static String buildScreenNameFromNavigationItem(@Nullable NavigationItem navigationItem, @Nullable String string2, int n2) {
        if (navigationItem == null || TextUtils.isEmpty((CharSequence)string2)) {
            return null;
        }
        boolean bl = navigationItem.feeds != null && !navigationItem.feeds.isEmpty();
        if (!navigationItem.type.isFeedContentSupported()) return "/list/" + navigationItem.id.toLowerCase();
        if (bl) {
            return AnalyticsUtils.buildScreenNameFromFeed(navigationItem.feeds.get(n2), string2);
        }
        return "/list/" + navigationItem.id.toLowerCase();
    }

    @Nullable
    public static String formatFeedDisplayNameForTracking(@Nullable Feed feed) {
        if (feed == null || TextUtils.isEmpty((CharSequence)feed.getName())) {
            return null;
        }
        return feed.getName().replaceAll(" ", "_").toLowerCase();
    }

    @Nullable
    public static String formatFeedNameForQuantcast(@Nullable Feed feed, @Nullable String string2) {
        if (feed == null || TextUtils.isEmpty((CharSequence)string2)) {
            return null;
        }
        if (FeedUtils.isBookmarkFeed(feed) || FeedUtils.isSearchFeed(feed) || TextUtils.isEmpty((CharSequence)feed.getUri())) {
            return feed.getTag();
        }
        return "verticalHP." + feed.getUri() + "." + string2;
    }
}

