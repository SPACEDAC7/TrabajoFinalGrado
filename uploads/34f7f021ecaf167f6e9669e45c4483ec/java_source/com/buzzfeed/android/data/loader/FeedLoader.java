/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.android.data.loader;

import android.content.Context;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.data.factory.MobileFeedFactory;
import com.buzzfeed.android.data.loader.BaseFeedLoader;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.content.ContentFactory;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.FlowList;
import com.buzzfeed.toolkit.networking.helpers.LegacyFeedServiceHelper;
import com.buzzfeed.toolkit.util.LogUtil;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class FeedLoader
extends BaseFeedLoader {
    protected static final String BUZZFEED_AD_BACKFILL = "ad_backfill";
    protected static final String BUZZFEED_BREAKING_BAR = "breaking_bar";
    protected static final String BUZZFEED_SECTION = "section";
    protected static final String BUZZFEED_SPLASH = "splash";
    protected static final int MAX_PAGES = 5;
    private static final String TAG = LogUtil.makeLogTag(FeedLoader.class);

    public FeedLoader(Context context, Feed feed, LegacyFeedServiceHelper legacyFeedServiceHelper) {
        super(context, feed, legacyFeedServiceHelper);
    }

    @Override
    protected String getBaseFeedUrl(int n2) {
        return this.mFeed.getUri();
    }

    @Override
    public int getPage() {
        return this.mPage;
    }

    @Override
    public boolean hasMorePages() {
        if (this.mPage < 5) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void parseFeed(JSONObject jSONObject) throws JSONException {
        if (jSONObject.opt("section") != null) {
            this.mLocalFlowList = this.parseFlow(new JSONArray(jSONObject.getString("section")), BuffetType.POST, this.shouldShowAds());
            if (this.mPage == 1) {
                FlowItem flowItem;
                JSONObject jSONObject2;
                int n2;
                int n3 = n2 = 0;
                if (jSONObject.opt("splash") != null) {
                    jSONObject2 = new JSONObject(jSONObject.getString("splash"));
                    flowItem = new FlowItem();
                    flowItem.parse(jSONObject2, new MobileFeedFactory(BuffetType.FEATURED_PROXIMA_NOVA_TITLE.name()));
                    if (flowItem.isValid()) {
                        this.mLocalFlowList.add(0, flowItem);
                        n3 = 0 + 1;
                    } else {
                        LogUtil.d(TAG, "Splash was not valid: " + flowItem.toString());
                        n3 = n2;
                    }
                }
                n2 = n3;
                if (jSONObject.opt("breaking_bar") != null) {
                    n2 = n3;
                    if (!jSONObject.isNull("breaking_bar")) {
                        jSONObject2 = new JSONObject(jSONObject.getString("breaking_bar"));
                        flowItem = new FlowItem();
                        flowItem.parse(jSONObject2, new MobileFeedFactory(BuffetType.BREAKING_BAR.name()));
                        n2 = n3;
                        if (flowItem.isValid()) {
                            this.mLocalFlowList.add(n3, flowItem);
                            n2 = n3 + 1;
                        }
                    }
                }
                this.mLocalFirstBuzzPos = n2;
            }
        }
        if (jSONObject.opt("ad_backfill") != null) {
            this.mLocalAdBackfillList = this.parseFlow(new JSONArray(jSONObject.getString("ad_backfill")), BuffetType.POST, true);
            return;
        }
        this.mLocalAdBackfillList.clear();
    }
}

