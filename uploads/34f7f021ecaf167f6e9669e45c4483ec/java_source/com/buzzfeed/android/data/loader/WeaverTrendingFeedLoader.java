/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.android.data.loader;

import android.content.Context;
import com.buzzfeed.toolkit.content.BaseLoader;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.FlowList;
import com.buzzfeed.toolkit.content.WeaverItem;
import com.buzzfeed.toolkit.networking.helpers.WeaverServiceHelper;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import com.buzzfeed.toolkit.weaver.loader.WeaverLoader;
import com.buzzfeed.toolkit.weaver.model.WeaverResponse;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class WeaverTrendingFeedLoader
extends WeaverLoader {
    public WeaverTrendingFeedLoader(Context context, WeaverServiceHelper.QueryParamsBuilder queryParamsBuilder, WeaverServiceHelper weaverServiceHelper) {
        super(context, queryParamsBuilder, weaverServiceHelper, "trending");
    }

    @Override
    public boolean hasMorePages() {
        return false;
    }

    @Override
    public void load(boolean bl, int n2, BaseLoader.LoaderCallback loaderCallback) {
        if (this.mLocalFlowList.isEmpty() || n2 > 1) {
            this.mParamsBuilder.page(String.valueOf(n2));
            this.mRequest = this.mWeaverServiceHelper.loadFeeds("trending", this.mParamsBuilder.build(), this.getSafeCallback(loaderCallback));
            return;
        }
        loaderCallback.onLoadComplete();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected FlowList parseModules(WeaverResponse object) {
        FlowList flowList = new FlowList();
        this.updateHasMorePages((WeaverResponse)object);
        Iterator<WeaverItem> iterator = object.getResults().iterator();
        while (iterator.hasNext()) {
            object = iterator.next();
            object = this.containsTreatments((WeaverItem)object, WeaverItem.Treatment.QUIZ) ? new FlowItem(BuffetType.TRENDING_FEED_TRENDING_QUIZ.name(), (Content)object) : new FlowItem(BuffetType.TRENDING.name(), (Content)object);
            flowList.add((FlowItem)object);
        }
        return flowList;
    }

    @Override
    public boolean shouldShowAds() {
        return false;
    }
}

