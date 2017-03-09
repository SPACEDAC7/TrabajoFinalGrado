/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  okhttp3.ResponseBody
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 *  retrofit2.Response
 */
package com.buzzfeed.android.data.loader;

import android.content.Context;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.data.loader.BaseFeedLoader;
import com.buzzfeed.toolkit.content.BaseLoader;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.content.Buzz;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.FlowList;
import com.buzzfeed.toolkit.networking.NetworkService;
import com.buzzfeed.toolkit.networking.helpers.LegacyFeedServiceHelper;
import com.buzzfeed.toolkit.util.HttpErrorParser;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import com.buzzfeed.toolkit.util.retrofit.StringCallback;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class SearchFeedLoader
extends BaseFeedLoader {
    private static final String SEARCH_RESPONSE = "response";
    private static final String SEARCH_RESULTS = "results";
    private static final String TAG = LogUtil.makeLogTag(SearchFeedLoader.class);

    public SearchFeedLoader(Context context, Feed feed) {
        super(context, feed, NetworkService.getLegacyFeedService());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void fixRelativeImagePaths(FlowList iterator) {
        iterator = iterator.getList().iterator();
        while (iterator.hasNext()) {
            Buzz buzz;
            boolean bl;
            String string2;
            FlowItem flowItem = iterator.next();
            if (!(flowItem.getContent() instanceof Buzz) || !(bl = (string2 = (buzz = (Buzz)flowItem.getContent()).getSponsorUserImageUrl()) != null && string2.startsWith("/"))) continue;
            buzz.setSponsorUserImageUrl(EnvironmentConfig.getUrlWithStaticBaseUrl(buzz.getSponsorUserImageUrl()));
        }
    }

    @Override
    protected String getBaseFeedUrl(int n2) {
        return null;
    }

    @Override
    protected Map<String, String> getUrlParameters(int n2) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.putAll(this.mFeed.getSearchParams());
        hashMap.putAll(super.getUrlParameters(n2));
        return hashMap;
    }

    @Override
    public boolean hasMorePages() {
        return false;
    }

    @Override
    protected void loadExecute() {
        this.mRequest = this.mLegacyFeedService.searchFeeds(this.getUrlParameters(this.mPage), new StringCallback(){

            @Override
            public void onFailure(Call<ResponseBody> call, Throwable throwable) {
                SearchFeedLoader.this.mRequest = null;
                LogUtil.e(TAG, "Error fetching Feed Search Query", throwable);
                SearchFeedLoader.this.mCallback.onLoadComplete();
            }

            @Override
            public void onNetworkError(Call<ResponseBody> object, Response<ResponseBody> response) {
                SearchFeedLoader.this.mRequest = null;
                object = HttpErrorParser.createExceptionOnHttpError(response.code());
                LogUtil.e(TAG, "Network Error Searching Feeds", (Throwable)object);
                SearchFeedLoader.this.mCallback.onLoadComplete();
            }

            @Override
            public void onStringResponse(String string2) {
                SearchFeedLoader.this.mRequest = null;
                SearchFeedLoader.this.parseResponse(string2);
            }
        });
    }

    @Override
    protected void parseFeed(JSONObject jSONObject) throws JSONException {
        if (jSONObject.opt("response") != null) {
            this.mLocalFlowList = this.parseFlow(new JSONArray(jSONObject.getJSONObject("response").getString("results")), BuffetType.POST, false);
            this.fixRelativeImagePaths(this.mLocalFlowList);
            return;
        }
        this.mLocalFlowList.clear();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    protected FlowList parseFlow(JSONArray jSONArray, BuffetType object, boolean bl) {
        FlowList flowList = new FlowList();
        int n2 = 0;
        while (n2 < jSONArray.length()) {
            block4 : {
                try {
                    object = jSONArray.getJSONObject(n2);
                    Buzz buzz = new Buzz();
                    buzz.parse((JSONObject)object);
                    object = buzz.isAd() ? new FlowItem(BuffetType.EDITORIAL_AD.name(), buzz) : new FlowItem(BuffetType.POST.name(), buzz);
                    if (object.isValid()) {
                        flowList.add((FlowItem)object);
                        break block4;
                    }
                    LogUtil.e(TAG, "flow was not valid! " + jSONArray.toString());
                    this.mCallback.onError(new Exception("An error occurred: Flow was not valid"));
                }
                catch (Exception var2_3) {
                    LogUtil.e(TAG, "Error parsing flow JSON: " + (Object)jSONArray, var2_3);
                    this.mCallback.onError(var2_3);
                }
            }
            ++n2;
        }
        return flowList;
    }

    @Override
    public boolean shouldShowAds() {
        return false;
    }

}

