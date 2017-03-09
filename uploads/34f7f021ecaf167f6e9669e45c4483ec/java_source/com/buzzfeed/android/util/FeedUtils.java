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
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class FeedUtils {
    private static HashMap<FeedTag, String> FeedTagMap = new HashMap<FeedTag, String>(){};

    public static boolean excludeFromWidgetSelection(String string2) {
        if (string2.equals("bookmarks") || string2.equals("shows") || string2.equals("quizzes") || string2.equals("videos") || string2.equals("local_weaver") || string2.equals("local_spicerack")) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static boolean hasMatchingBottomMenuFeed(@Nullable Feed feed, @Nullable List<NavigationItem> iterator) {
        if (feed == null) return false;
        if (iterator == null) return false;
        if (iterator.isEmpty()) {
            return false;
        }
        iterator = iterator.iterator();
        block0 : do {
            if (!iterator.hasNext()) return false;
            Iterator<Feed> iterator2 = ((NavigationItem)iterator.next()).feeds.iterator();
            do {
                if (!iterator2.hasNext()) continue block0;
            } while (!TextUtils.equals((CharSequence)iterator2.next().getTag(), (CharSequence)feed.getTag()));
            break;
        } while (true);
        return true;
    }

    public static boolean isBookmarkFeed(@Nullable Feed feed) {
        if (feed != null && FeedUtils.isBookmarkFeed(feed.getTag())) {
            return true;
        }
        return false;
    }

    public static boolean isBookmarkFeed(@Nullable String string2) {
        return FeedUtils.isFeedTag(string2, FeedTag.Bookmark);
    }

    public static boolean isFeedReaction(String string2) {
        if (string2.length() >= 5 && string2.substring(string2.length() - 5).equals(" Feed")) {
            return true;
        }
        return false;
    }

    public static boolean isFeedTag(@Nullable Feed feed, FeedTag feedTag) {
        if (feed != null && FeedUtils.isFeedTag(feed.getTag(), feedTag)) {
            return true;
        }
        return false;
    }

    public static boolean isFeedTag(@Nullable String string2, FeedTag feedTag) {
        if (string2 != null && FeedTagMap.get((Object)feedTag).equalsIgnoreCase(string2)) {
            return true;
        }
        return false;
    }

    public static boolean isHomeFeed(@Nullable Feed feed) {
        if (feed == null || FeedUtils.isHomeFeed(feed.getTag())) {
            return true;
        }
        return false;
    }

    public static boolean isHomeFeed(@Nullable String string2) {
        if (string2 == null || FeedUtils.isFeedTag(string2, FeedTag.Home)) {
            return true;
        }
        return false;
    }

    public static boolean isLocalSpiceRack(@Nullable Feed feed) {
        if (feed != null && FeedUtils.isLocalSpiceRack(feed.getTag())) {
            return true;
        }
        return false;
    }

    public static boolean isLocalSpiceRack(@Nullable String string2) {
        return FeedUtils.isFeedTag(string2, FeedTag.LocalSpiceRack);
    }

    public static boolean isLocalWeaverFeed(@Nullable Feed feed) {
        if (feed != null && FeedUtils.isLocalWeaverFeed(feed.getTag())) {
            return true;
        }
        return false;
    }

    public static boolean isLocalWeaverFeed(@Nullable String string2) {
        return FeedUtils.isFeedTag(string2, FeedTag.LocalWeaver);
    }

    public static boolean isNewsFeed(@Nullable Feed feed) {
        if (feed != null && FeedUtils.isNewsFeed(feed.getTag())) {
            return true;
        }
        return false;
    }

    public static boolean isNewsFeed(@Nullable String string2) {
        return FeedUtils.isFeedTag(string2, FeedTag.News);
    }

    public static boolean isQuizFeed(@Nullable Feed feed) {
        if (feed != null && FeedUtils.isQuizFeed(feed.getTag())) {
            return true;
        }
        return false;
    }

    public static boolean isQuizFeed(@Nullable String string2) {
        return FeedUtils.isFeedTag(string2, FeedTag.Quizzes);
    }

    public static boolean isSearchFeed(@Nullable Feed feed) {
        if (feed != null && FeedUtils.isSearchFeed(feed.getTag())) {
            return true;
        }
        return false;
    }

    public static boolean isSearchFeed(@Nullable String string2) {
        return FeedUtils.isFeedTag(string2, FeedTag.Search);
    }

    public static boolean isShowsFeed(@Nullable Feed feed) {
        if (feed != null && FeedUtils.isShowsFeed(feed.getTag())) {
            return true;
        }
        return false;
    }

    public static boolean isShowsFeed(@Nullable String string2) {
        return FeedUtils.isFeedTag(string2, FeedTag.Shows);
    }

    public static boolean isTrendingFeed(@Nullable Feed feed) {
        if (feed != null && FeedUtils.isTrendingFeed(feed.getTag())) {
            return true;
        }
        return false;
    }

    public static boolean isTrendingFeed(@Nullable String string2) {
        return FeedUtils.isFeedTag(string2, FeedTag.Trending);
    }

    public static boolean isVideoFeed(@Nullable Feed feed) {
        if (feed != null && FeedUtils.isVideoFeed(feed.getTag())) {
            return true;
        }
        return false;
    }

    public static boolean isVideoFeed(@Nullable String string2) {
        return FeedUtils.isFeedTag(string2, FeedTag.Videos);
    }

    @Deprecated
    public static enum FeedTag {
        Home,
        Search,
        News,
        Videos,
        Bookmark,
        Trending,
        Quizzes,
        LocalSpiceRack,
        Shows,
        LocalWeaver;
        

        private FeedTag() {
        }
    }

}

