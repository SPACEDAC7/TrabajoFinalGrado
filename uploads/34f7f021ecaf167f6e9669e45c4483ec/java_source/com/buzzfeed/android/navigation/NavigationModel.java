/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.navigation;

import android.support.annotation.NonNull;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.navigation.NavigationItem;
import java.util.Collections;
import java.util.List;

public class NavigationModel {
    private List<Feed> mExploreFeeds = Collections.emptyList();
    private List<NavigationItem> mNavigationItems = Collections.emptyList();
    private List<Feed> mSupportedFeeds = Collections.emptyList();

    @NonNull
    public List<Feed> getExploreFeeds() {
        return this.mExploreFeeds;
    }

    @NonNull
    public List<NavigationItem> getNavigationItems() {
        return this.mNavigationItems;
    }

    @NonNull
    public List<Feed> getSupportedFeeds() {
        return this.mSupportedFeeds;
    }

    public void setExploreFeeds(List<Feed> list) {
        this.mExploreFeeds = list;
    }

    public void setNavigationItems(List<NavigationItem> list) {
        this.mNavigationItems = list;
    }

    public void setSupportedFeeds(List<Feed> list) {
        this.mSupportedFeeds = list;
    }
}

