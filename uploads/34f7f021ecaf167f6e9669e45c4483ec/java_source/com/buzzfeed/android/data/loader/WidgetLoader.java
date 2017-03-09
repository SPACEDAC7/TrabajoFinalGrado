/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.android.data.loader;

import android.content.Context;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.data.loader.BuffetLoader;
import com.buzzfeed.android.data.loader.FeedLoader;
import com.buzzfeed.toolkit.content.BaseLoader;
import com.buzzfeed.toolkit.content.FlowList;
import com.buzzfeed.toolkit.networking.NetworkService;
import com.buzzfeed.toolkit.networking.helpers.LegacyFeedServiceHelper;

public class WidgetLoader
extends BuffetLoader {
    private Feed mFeed;
    private FeedLoader mLoader;

    public WidgetLoader(Context context, Feed feed) {
        super(context, feed, true);
        this.mFeed = feed;
        this.mLoader = new FeedLoader(context, feed, NetworkService.getLegacyFeedService());
    }

    @Override
    public Feed getFeed() {
        return this.mLoader.getFeed();
    }

    public String getFeedTag() {
        return this.mFeed.getTag();
    }

    public String getFeedUrl() {
        return this.mFeed.getUri();
    }

    @Override
    public int getPage() {
        return this.mLoader.getPage();
    }

    public int getPositionFromId(String string2) {
        return this.getFlowList().getLocationForId(string2);
    }

    public void loadPage(Boolean bl, int n2, BaseLoader.LoaderCallback loaderCallback) {
        this.load(bl, n2, loaderCallback);
    }
}

