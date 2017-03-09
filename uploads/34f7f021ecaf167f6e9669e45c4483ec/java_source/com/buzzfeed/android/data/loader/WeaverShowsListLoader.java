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
import java.util.List;
import java.util.Map;

public class WeaverShowsListLoader
extends WeaverLoader {
    public WeaverShowsListLoader(Context context, WeaverServiceHelper.QueryParamsBuilder queryParamsBuilder, WeaverServiceHelper weaverServiceHelper) {
        super(context, queryParamsBuilder, weaverServiceHelper, "shows-" + BuffetType.SHOW.name());
    }

    @Override
    public void load(boolean bl, int n2, BaseLoader.LoaderCallback loaderCallback) {
        if (this.mLocalFlowList.isEmpty()) {
            this.mRequest = this.mWeaverServiceHelper.loadShowsList(this.mParamsBuilder.build(), this.getSafeCallback(loaderCallback));
            return;
        }
        loaderCallback.onLoadComplete();
    }

    @Override
    protected FlowList parseModules(WeaverResponse object) {
        FlowList flowList = new FlowList();
        this.updateHasMorePages((WeaverResponse)object);
        for (WeaverItem weaverItem : object.getResults()) {
            flowList.add(new FlowItem(BuffetType.SHOW.name(), weaverItem));
        }
        return flowList;
    }

    @Override
    public boolean shouldShowAds() {
        return false;
    }
}

