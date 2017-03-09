/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.navigation.data;

import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.navigation.NavigationItem;
import com.buzzfeed.android.navigation.data.BaseNavigationModelFactory;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class PtBRNavigationModelFactory
extends BaseNavigationModelFactory {
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
        return Arrays.asList(new Feed.Builder("home").withUri("home").withDisplayName("Mais recentes").withLocalizedNameResourceId(2131296455).build(), new Feed.Builder("bookmarks").withDisplayName("Favoritos").withLocalizedNameResourceId(2131296453).build(), new Feed.Builder("cute").withUri("fofo").withDisplayName("FOFO").withLocalizedNameResourceId(2131296454).build(), new Feed.Builder("fail").withUri("fail-br").withDisplayName("Fail").withLocalizedNameResourceId(2131296499).build(), new Feed.Builder("lol").withUri("hahaha").withDisplayName("Ha Ha Ha").withLocalizedNameResourceId(2131296514).build(), new Feed.Builder("omg").withUri("meudeus").withDisplayName("Meu Deus!").withLocalizedNameResourceId(2131296500).build(), new Feed.Builder("trending").withUri("trending").withDisplayName("Bombando").withLocalizedNameResourceId(2131296456).build(), new Feed.Builder("win").withUri("omelhor").withDisplayName("O Melhor").withLocalizedNameResourceId(2131296458).build(), new Feed.Builder("wtf").withUri("wtf-br").withDisplayName("WTF").withLocalizedNameResourceId(2131296896).build());
    }
}

