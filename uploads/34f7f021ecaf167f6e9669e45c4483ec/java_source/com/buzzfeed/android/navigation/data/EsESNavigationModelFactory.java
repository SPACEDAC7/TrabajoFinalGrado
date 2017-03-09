/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.navigation.data;

import android.support.annotation.Nullable;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.navigation.NavigationItem;
import com.buzzfeed.android.navigation.data.BaseNavigationModelFactory;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class EsESNavigationModelFactory
extends BaseNavigationModelFactory {
    @Nullable
    @Override
    protected String[] buildExploreFeedTags() {
        return null;
    }

    @Override
    protected List<NavigationItem> buildNavigationItemList() {
        return Collections.singletonList(new NavigationItem("home", 2131296511, 2130837611, NavigationItem.ContainerType.BUFFET_TAB, this.generateFeedListFromTags("home", "trending")));
    }

    @Override
    protected List<Feed> initializeFeedList() {
        return Arrays.asList(new Feed.Builder("home").withUri("home").withDisplayName("Actualidad").withLocalizedNameResourceId(2131296455).build(), new Feed.Builder("bookmarks").withDisplayName("Favoritos").withLocalizedNameResourceId(2131296453).build(), new Feed.Builder("cute").withUri("cute").withDisplayName("Ooh").withLocalizedNameResourceId(2131296454).build(), new Feed.Builder("fail").withUri("fail").withDisplayName("Zasca").withLocalizedNameResourceId(2131296499).build(), new Feed.Builder("lol").withUri("lol").withDisplayName("Ja Ja Ja").withLocalizedNameResourceId(2131296514).build(), new Feed.Builder("omg").withUri("omg").withDisplayName("Madre Mia").withLocalizedNameResourceId(2131296500).build(), new Feed.Builder("trending").withUri("trending").withDisplayName("Lo M\u00e1s Visto").withLocalizedNameResourceId(2131296456).build(), new Feed.Builder("win").withUri("win").withDisplayName("Win").withLocalizedNameResourceId(2131296458).build(), new Feed.Builder("wtf").withUri("wtf").withDisplayName("WTF").withLocalizedNameResourceId(2131296896).build());
    }
}

