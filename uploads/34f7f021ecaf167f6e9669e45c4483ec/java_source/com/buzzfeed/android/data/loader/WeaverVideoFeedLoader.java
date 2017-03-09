/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 */
package com.buzzfeed.android.data.loader;

import android.content.Context;
import android.text.TextUtils;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.FlowList;
import com.buzzfeed.toolkit.content.WeaverItem;
import com.buzzfeed.toolkit.networking.helpers.WeaverServiceHelper;
import com.buzzfeed.toolkit.util.WeaverVideoUtils;
import com.buzzfeed.toolkit.weaver.loader.WeaverLoader;
import com.buzzfeed.toolkit.weaver.model.WeaverResponse;
import java.util.List;

class WeaverVideoFeedLoader
extends WeaverLoader {
    WeaverVideoFeedLoader(Context context, WeaverServiceHelper.QueryParamsBuilder queryParamsBuilder, WeaverServiceHelper weaverServiceHelper) {
        super(context, queryParamsBuilder, weaverServiceHelper, "videos");
    }

    @Override
    protected FlowList parseModules(WeaverResponse object) {
        FlowList flowList = new FlowList();
        this.updateHasMorePages((WeaverResponse)object);
        for (WeaverItem weaverItem : object.getResults()) {
            if (!TextUtils.equals((CharSequence)"video", (CharSequence)weaverItem.getType()) || !WeaverVideoUtils.ensureVideoContent(weaverItem)) continue;
            flowList.add(new FlowItem(WeaverVideoUtils.getVideoSpecificBuffetType(this.mApplicationContext, weaverItem).name(), weaverItem));
        }
        return flowList;
    }

    @Override
    public boolean shouldShowAds() {
        return false;
    }
}

