/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.android.data.loader;

import android.content.Context;
import android.support.annotation.NonNull;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.data.bookmark.BFBookmarkManager;
import com.buzzfeed.android.data.loader.BookmarkLoader;
import com.buzzfeed.android.data.loader.FeedLoader;
import com.buzzfeed.android.data.loader.LocalSpiceRackBaseFeedLoader;
import com.buzzfeed.android.data.loader.LocalWeaverLoader;
import com.buzzfeed.android.data.loader.SearchFeedLoader;
import com.buzzfeed.android.data.loader.WeaverShowsListLoader;
import com.buzzfeed.android.data.loader.WeaverTrendingFeedLoader;
import com.buzzfeed.android.data.loader.WeaverVideoFeedLoader;
import com.buzzfeed.android.util.FeedUtils;
import com.buzzfeed.toolkit.content.BaseLoader;
import com.buzzfeed.toolkit.content.FlowList;
import com.buzzfeed.toolkit.networking.NetworkService;
import com.buzzfeed.toolkit.networking.helpers.LegacyFeedServiceHelper;
import com.buzzfeed.toolkit.networking.helpers.WeaverServiceHelper;
import com.buzzfeed.toolkit.weaver.loader.WeaverLoader;

public class BuffetLoader {
    public static final String US_EDITION = "en-us";
    private int mCurrentPage = 1;
    private Feed mFeed;
    private boolean mIgnorePackages;
    private BaseLoader mLoader;

    public BuffetLoader(Context context, Feed feed, boolean bl) {
        this.mIgnorePackages = bl;
        this.mLoader = this.getLoaderForFeed(context, feed);
        this.mFeed = feed;
    }

    static /* synthetic */ int access$010(BuffetLoader buffetLoader) {
        int n2 = buffetLoader.mCurrentPage;
        buffetLoader.mCurrentPage = n2 - 1;
        return n2;
    }

    private BaseLoader getLoaderForFeed(Context context, Feed feed) {
        WeaverServiceHelper.QueryParamsBuilder queryParamsBuilder = this.setQueryParams(context, this.getUserPoundIdentifier());
        if (FeedUtils.isHomeFeed(feed)) {
            return new WeaverLoader(context, queryParamsBuilder, this.getWeaverService(), "home", this.mIgnorePackages);
        }
        if (FeedUtils.isTrendingFeed(feed)) {
            return new WeaverTrendingFeedLoader(context, queryParamsBuilder, this.getWeaverService());
        }
        if (FeedUtils.isNewsFeed(feed) && this.getCurrentEdition(context).equalsIgnoreCase("en-us")) {
            return new WeaverLoader(context, queryParamsBuilder, this.getWeaverService(), "news", this.mIgnorePackages);
        }
        if (FeedUtils.isVideoFeed(feed)) {
            return new WeaverVideoFeedLoader(context, queryParamsBuilder, this.getWeaverService());
        }
        if (FeedUtils.isShowsFeed(feed)) {
            return new WeaverShowsListLoader(context, queryParamsBuilder, this.getWeaverService());
        }
        if (FeedUtils.isSearchFeed(feed)) {
            return new SearchFeedLoader(context, feed);
        }
        if (FeedUtils.isBookmarkFeed(feed)) {
            return new BookmarkLoader(this.getBookmarkManager(context));
        }
        if (FeedUtils.isQuizFeed(feed)) {
            return new WeaverLoader(context, queryParamsBuilder, this.getWeaverService(), "quiz");
        }
        if (FeedUtils.isLocalSpiceRack(feed)) {
            return new LocalSpiceRackBaseFeedLoader(context, feed);
        }
        if (FeedUtils.isLocalWeaverFeed(feed)) {
            return new LocalWeaverLoader(context);
        }
        return new FeedLoader(context, feed, this.getLegacyWeaverService());
    }

    public void cancelPendingRequest() {
        this.mLoader.cancelRequest();
    }

    protected BFBookmarkManager getBookmarkManager(Context context) {
        return BFBookmarkManager.getInstance(context);
    }

    protected String getCurrentEdition(Context context) {
        return EnvironmentConfig.getEdition(context);
    }

    public Feed getFeed() {
        return this.mFeed;
    }

    public FlowList getFlowList() {
        return this.mLoader.getLocalFlowList();
    }

    @NonNull
    protected LegacyFeedServiceHelper getLegacyWeaverService() {
        return NetworkService.getLegacyFeedService();
    }

    public BaseLoader getLoader() {
        return this.mLoader;
    }

    public int getPage() {
        return this.mCurrentPage;
    }

    protected long getUserPoundIdentifier() {
        return DustbusterClient.getInstance().getUserPoundIdentifier();
    }

    @NonNull
    protected WeaverServiceHelper getWeaverService() {
        return NetworkService.getWeaverService();
    }

    public boolean hasMorePages() {
        return this.mLoader.hasMorePages();
    }

    public boolean isOnFirstPage() {
        if (this.mCurrentPage == 1) {
            return true;
        }
        return false;
    }

    protected void load(boolean bl, int n2, BaseLoader.LoaderCallback loaderCallback) {
        this.mLoader.load(bl, n2, loaderCallback);
    }

    public void loadNextPage(final BaseLoader.LoaderCallback loaderCallback, boolean bl) {
        this.load(bl, this.mCurrentPage, new BaseLoader.LoaderCallback(){

            @Override
            public void onError(Exception exception) {
                BuffetLoader.access$010(BuffetLoader.this);
                loaderCallback.onError(exception);
            }

            @Override
            public void onLoadComplete() {
                loaderCallback.onLoadComplete();
            }
        });
        ++this.mCurrentPage;
    }

    protected WeaverServiceHelper.QueryParamsBuilder setQueryParams(Context context, long l2) {
        return new WeaverServiceHelper.QueryParamsBuilder().clientId(Long.toString(l2)).language(EnvironmentConfig.getWeaverLanguage(context)).country(EnvironmentConfig.getWeaverEdition(context));
    }

    public boolean shouldShowAds() {
        return this.mLoader.shouldShowAds();
    }

}

