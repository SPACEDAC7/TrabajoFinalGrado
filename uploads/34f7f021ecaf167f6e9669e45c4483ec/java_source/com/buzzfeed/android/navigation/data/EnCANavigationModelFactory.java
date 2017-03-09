/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.navigation.data;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.navigation.data.EnNavigationModelFactory;
import java.util.List;

public class EnCANavigationModelFactory
extends EnNavigationModelFactory {
    @Nullable
    @Override
    protected String[] buildExploreFeedTags() {
        return new String[]{"animals", "bigstories", "books", "buzz", "celebrity", "community", "cute", "diy", "entertainment", "food", "health", "lgbt", "life", "lol", "music", "omg", "parents", "politics", "rewind", "science", "style", "tech", "travel", "win", "world", "wtf"};
    }

    @Override
    protected void initializeAdditionalFeeds(@NonNull List<Feed> list) {
        list.add(new Feed.Builder("cute").withUri("cute-ca").withDisplayName("Cute").withLocalizedNameResourceId(2131296454).build());
        list.add(new Feed.Builder("lol").withUri("lol-ca").withDisplayName("LOL").withLocalizedNameResourceId(2131296514).build());
        list.add(new Feed.Builder("omg").withUri("omg-ca").withDisplayName("OMG").withLocalizedNameResourceId(2131296500).build());
        list.add(new Feed.Builder("politics").withUri("politics").withDisplayName("Politics").withLocalizedNameResourceId(2131296886).withWidgetImageUri("https://s3-ak.buzzfeed.com/static/badge_images/widget_politics.png").build());
        list.add(new Feed.Builder("science").withUri("science").withDisplayName("Science").withLocalizedNameResourceId(2131296889).build());
        list.add(new Feed.Builder("win").withUri("win-ca").withDisplayName("Win").withLocalizedNameResourceId(2131296458).build());
        list.add(new Feed.Builder("wtf").withUri("wtf-ca").withDisplayName("WTF").withLocalizedNameResourceId(2131296896).build());
    }
}

