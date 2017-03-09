/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.navigation.data;

import android.support.annotation.NonNull;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.navigation.NavigationItem;
import com.buzzfeed.android.navigation.data.BaseNavigationModelFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

abstract class EnNavigationModelFactory
extends BaseNavigationModelFactory {
    EnNavigationModelFactory() {
    }

    @Override
    protected List<NavigationItem> buildNavigationItemList() {
        return Arrays.asList(new NavigationItem("home", 2131296511, 2130837611, NavigationItem.ContainerType.BUFFET_TAB, this.generateFeedListFromTags("home", "trending")), new NavigationItem("news", 2131296512, 2130837612, NavigationItem.ContainerType.BUFFET, this.generateFeedListFromTags("news")), new NavigationItem("videos", 2131296513, 2130837614, NavigationItem.ContainerType.BUFFET_TAB, this.generateFeedListFromTags("shows", "videos")), new NavigationItem("quizzes", 2131296870, 2130837613, NavigationItem.ContainerType.BUFFET, this.generateFeedListFromTags("quizzes")), new NavigationItem("explore", 2131296452, 2130837610, NavigationItem.ContainerType.EXPLORE));
    }

    protected abstract void initializeAdditionalFeeds(@NonNull List<Feed> var1);

    void initializeBaseFeeds(@NonNull List<Feed> list) {
        list.add(new Feed.Builder("home").withUri("home").withDisplayName("Latest").withLocalizedNameResourceId(2131296455).build());
        list.add(new Feed.Builder("news").withUri("news").withDisplayName("News").withLocalizedNameResourceId(2131296884).build());
        list.add(new Feed.Builder("shows").withUri("shows").withDisplayName("Shows").withLocalizedNameResourceId(2131296575).build());
        list.add(new Feed.Builder("videos").withUri("videos").withDisplayName("Latest").withLocalizedNameResourceId(2131296457).build());
        list.add(new Feed.Builder("quizzes").withUri("quiz").withDisplayName("Quizzes").withLocalizedNameResourceId(2131296887).build());
        list.add(new Feed.Builder("bookmarks").withDisplayName("Bookmarks").withLocalizedNameResourceId(2131296453).build());
        list.add(new Feed.Builder("buzz").withUri("buzz").withDisplayName("Buzz").withLocalizedNameResourceId(2131296874).build());
        list.add(new Feed.Builder("life").withUri("life").withDisplayName("Life").withLocalizedNameResourceId(2131296882).build());
        list.add(new Feed.Builder("entertainment").withUri("entertainment").withDisplayName("Entertainment").withLocalizedNameResourceId(2131296878).build());
        list.add(new Feed.Builder("animals").withUri("animals").withDisplayName("Animals").withLocalizedNameResourceId(2131296871).withWidgetImageUri("https://s3-ak.buzzfeed.com/static/badge_images/widget_animals.png").build());
        list.add(new Feed.Builder("bigstories").withUri("bigstories").withDisplayName("Big Stories").withLocalizedNameResourceId(2131296872).build());
        list.add(new Feed.Builder("books").withUri("books").withDisplayName("Books").withLocalizedNameResourceId(2131296873).build());
        list.add(new Feed.Builder("celebrity").withUri("celebrity").withDisplayName("Celebrity").withLocalizedNameResourceId(2131296875).build());
        list.add(new Feed.Builder("community").withUri("community").withDisplayName("Community").withLocalizedNameResourceId(2131296876).build());
        list.add(new Feed.Builder("diy").withUri("diy").withDisplayName("DIY").withLocalizedNameResourceId(2131296877).withWidgetImageUri("https://s3-ak.buzzfeed.com/static/badge_images/widget_diy.png").build());
        list.add(new Feed.Builder("food").withUri("food").withDisplayName("Food").withLocalizedNameResourceId(2131296879).withWidgetImageUri("https://s3-ak.buzzfeed.com/static/badge_images/widget_food.png").build());
        list.add(new Feed.Builder("health").withUri("health").withDisplayName("Health").withLocalizedNameResourceId(2131296880).build());
        list.add(new Feed.Builder("lgbt").withUri("lgbt").withDisplayName("LGBT").withLocalizedNameResourceId(2131296881).withWidgetImageUri("https://s3-ak.buzzfeed.com/static/badge_images/widget_lgbt.png").build());
        list.add(new Feed.Builder("music").withUri("music").withDisplayName("Music").withLocalizedNameResourceId(2131296883).withWidgetImageUri("https://s3-ak.buzzfeed.com/static/badge_images/widget_music.png").build());
        list.add(new Feed.Builder("parents").withUri("parents").withDisplayName("Parents").withLocalizedNameResourceId(2131296885).build());
        list.add(new Feed.Builder("rewind").withUri("rewind").withDisplayName("Rewind").withLocalizedNameResourceId(2131296888).build());
        list.add(new Feed.Builder("style").withUri("style").withDisplayName("Style").withLocalizedNameResourceId(2131296891).withWidgetImageUri("https://s3-ak.buzzfeed.com/static/images/mobile/trans.png").build());
        list.add(new Feed.Builder("tech").withUri("tech").withDisplayName("Tech").withLocalizedNameResourceId(2131296892).withWidgetImageUri("https://s3-ak.buzzfeed.com/static/badge_images/widget_tech.png").build());
        list.add(new Feed.Builder("trending").withUri("trending").withDisplayName("Trending").withLocalizedNameResourceId(2131296456).build());
        list.add(new Feed.Builder("travel").withUri("travel").withDisplayName("Travel").withLocalizedNameResourceId(2131296893).build());
    }

    @Override
    protected List<Feed> initializeFeedList() {
        ArrayList<Feed> arrayList = new ArrayList<Feed>();
        this.initializeBaseFeeds(arrayList);
        this.initializeAdditionalFeeds(arrayList);
        return arrayList;
    }
}

