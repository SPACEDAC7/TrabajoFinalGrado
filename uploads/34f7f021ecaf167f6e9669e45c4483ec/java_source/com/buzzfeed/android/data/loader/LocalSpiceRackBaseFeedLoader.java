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
import com.buzzfeed.android.data.loader.BaseFeedLoader;
import com.buzzfeed.toolkit.content.BaseLoader;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.content.FlowList;
import com.buzzfeed.toolkit.networking.NetworkService;
import com.buzzfeed.toolkit.networking.helpers.LegacyFeedServiceHelper;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import java.io.IOException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class LocalSpiceRackBaseFeedLoader
extends BaseFeedLoader {
    private static final String TAG = LogUtil.makeLogTag(LocalSpiceRackBaseFeedLoader.class);
    private Context mContext;

    public LocalSpiceRackBaseFeedLoader(Context context, Feed feed) {
        super(context, feed, NetworkService.getLegacyFeedService());
        this.mContext = context.getApplicationContext();
    }

    private String loadFromAssets() {
        try {
            String string2 = EZUtil.readStringFromAsset(this.mContext, "localspicerack.json");
            return string2;
        }
        catch (IOException var1_2) {
            LogUtil.e(TAG, "localspicerack.json load failed: ", var1_2);
            return null;
        }
    }

    @Override
    protected String getBaseFeedUrl(int n2) {
        return null;
    }

    @Override
    public boolean hasMorePages() {
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void load(boolean bl, int n2, BaseLoader.LoaderCallback loaderCallback) {
        String string2 = this.loadFromAssets();
        try {
            this.parseFeed(new JSONObject(string2));
        }
        catch (JSONException var4_5) {
            LogUtil.e(TAG, "localspicerack.json parse failed: ", (Throwable)var4_5);
            loaderCallback.onError((Exception)var4_5);
        }
        loaderCallback.onLoadComplete();
    }

    @Override
    protected void parseFeed(JSONObject jSONObject) throws JSONException {
        this.mLocalFlowList = this.parseFlow(jSONObject.optJSONArray("section"), BuffetType.POST, this.shouldShowAds());
    }

    @Override
    public boolean shouldShowAds() {
        return false;
    }
}

