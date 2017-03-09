/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.navigation.data;

import android.support.annotation.Nullable;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.navigation.NavigationItem;
import com.buzzfeed.android.navigation.NavigationModel;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public abstract class BaseNavigationModelFactory {
    private static final String TAG = LogUtil.makeLogTag(BaseNavigationModelFactory.class);
    private final List<Feed> mSupportedFeeds = new ArrayList<Feed>();

    private void appendFeedLogInfo(List<Feed> object, StringBuilder stringBuilder) {
        object = object.iterator();
        while (object.hasNext()) {
            Feed feed = (Feed)object.next();
            stringBuilder.append("\t").append("tag=").append(feed.getTag()).append(", name=").append(feed.getName()).append(", uri=").append(feed.getUri()).append("\n");
        }
    }

    private String getLogString(NavigationModel navigationModel) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Supported Feeds:\n");
        this.appendFeedLogInfo(navigationModel.getSupportedFeeds(), stringBuilder);
        stringBuilder.append("\nExplore Feeds:\n");
        this.appendFeedLogInfo(navigationModel.getExploreFeeds(), stringBuilder);
        return stringBuilder.toString();
    }

    protected void appendLocalDebugFeeds(List<Feed> list) {
        list.add(new Feed.Builder("local_weaver").withDisplayName("Local Weaver").build());
        list.add(new Feed.Builder("local_spicerack").withDisplayName("Local Spicerack").build());
    }

    @Nullable
    protected abstract String[] buildExploreFeedTags();

    protected abstract List<NavigationItem> buildNavigationItemList();

    public NavigationModel createNavigationModel() {
        NavigationModel navigationModel = new NavigationModel();
        this.mSupportedFeeds.clear();
        this.mSupportedFeeds.addAll(this.initializeFeedList());
        if (!EnvironmentConfig.isProductionBuild()) {
            this.appendLocalDebugFeeds(this.mSupportedFeeds);
        }
        navigationModel.setSupportedFeeds(this.mSupportedFeeds);
        navigationModel.setNavigationItems(this.buildNavigationItemList());
        String[] arrstring = this.buildExploreFeedTags();
        if (arrstring != null) {
            navigationModel.setExploreFeeds(this.generateFeedListFromTags(arrstring));
        }
        if (!EnvironmentConfig.isProductionBuild()) {
            LogUtil.d(TAG, this.getLogString(navigationModel));
        }
        return navigationModel;
    }

    protected /* varargs */ List<Feed> generateFeedListFromTags(String ... arrstring) {
        ArrayList<Feed> arrayList = new ArrayList<Feed>();
        block0 : for (String string2 : arrstring) {
            for (Feed feed : this.mSupportedFeeds) {
                if (!string2.equals(feed.getTag())) continue;
                arrayList.add(feed);
                continue block0;
            }
        }
        return arrayList;
    }

    protected abstract List<Feed> initializeFeedList();
}

