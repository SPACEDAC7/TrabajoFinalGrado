/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.navigation.data;

import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.navigation.NavigationItem;
import com.buzzfeed.android.navigation.data.BaseNavigationModelFactory;
import java.util.Arrays;
import java.util.List;

public class JaJPNavigationModelFactory
extends BaseNavigationModelFactory {
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
        return Arrays.asList(new Feed.Builder("home").withUri("home").withDisplayName("\u6700\u65b0").withLocalizedNameResourceId(2131296455).build(), new Feed.Builder("bookmarks").withDisplayName("\u304a\u6c17\u306b\u5165\u308a").withLocalizedNameResourceId(2131296453).build(), new Feed.Builder("buzz").withUri("buzz").withDisplayName("Buzz").withLocalizedNameResourceId(2131296874).build(), new Feed.Builder("cute").withUri("cute").withDisplayName("kawaii").withLocalizedNameResourceId(2131296454).build(), new Feed.Builder("lol").withUri("lol").withDisplayName("LOL").withLocalizedNameResourceId(2131296514).build(), new Feed.Builder("news").withUri("news").withDisplayName("News").withLocalizedNameResourceId(2131296884).build(), new Feed.Builder("trending").withUri("trending").withDisplayName("\u4eba\u6c17\u306e\u8a18\u4e8b").withLocalizedNameResourceId(2131296456).build());
    }
}

