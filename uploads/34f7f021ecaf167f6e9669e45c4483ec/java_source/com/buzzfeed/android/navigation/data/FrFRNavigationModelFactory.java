/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.navigation.data;

import android.support.annotation.Nullable;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.navigation.NavigationItem;
import com.buzzfeed.android.navigation.data.BaseNavigationModelFactory;
import java.util.Arrays;
import java.util.List;

public class FrFRNavigationModelFactory
extends BaseNavigationModelFactory {
    @Nullable
    @Override
    protected String[] buildExploreFeedTags() {
        return null;
    }

    @Override
    protected List<NavigationItem> buildNavigationItemList() {
        return Arrays.asList(new NavigationItem("home", 2131296511, 2130837611, NavigationItem.ContainerType.BUFFET_TAB, this.generateFeedListFromTags("home", "trending")), new NavigationItem("news", 2131296512, 2130837612, NavigationItem.ContainerType.BUFFET, this.generateFeedListFromTags("news")));
    }

    @Override
    protected List<Feed> initializeFeedList() {
        return Arrays.asList(new Feed.Builder("home").withUri("home").withDisplayName("Latest").withLocalizedNameResourceId(2131296455).build(), new Feed.Builder("bookmarks").withDisplayName("Bookmarks").withLocalizedNameResourceId(2131296453).build(), new Feed.Builder("cute").withUri("cute-fr").withDisplayName("Cute").withLocalizedNameResourceId(2131296454).build(), new Feed.Builder("fail").withUri("fail-fr").withDisplayName("Fail").withLocalizedNameResourceId(2131296499).build(), new Feed.Builder("lol").withUri("lol-fr").withDisplayName("LOL").withLocalizedNameResourceId(2131296514).build(), new Feed.Builder("news").withUri("news").withDisplayName("News").withLocalizedNameResourceId(2131296884).build(), new Feed.Builder("omg").withUri("omg-fr").withDisplayName("OMG").withLocalizedNameResourceId(2131296500).build(), new Feed.Builder("trending").withUri("trending").withDisplayName("Trending").withLocalizedNameResourceId(2131296456).build(), new Feed.Builder("win").withUri("win-fr").withDisplayName("Win").withLocalizedNameResourceId(2131296458).build());
    }
}

