/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  retrofit2.Response
 */
package com.buzzfeed.toolkit.weaver.loader;

import android.content.Context;
import android.support.annotation.NonNull;
import com.buzzfeed.toolkit.content.BaseLoader;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.FlowList;
import com.buzzfeed.toolkit.content.WeaverItem;
import com.buzzfeed.toolkit.networking.helpers.WeaverServiceHelper;
import com.buzzfeed.toolkit.util.HttpErrorParser;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.WeaverVideoUtils;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import com.buzzfeed.toolkit.weaver.model.WeaverResponse;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import retrofit2.Call;
import retrofit2.Response;

public class WeaverLoader
extends BaseLoader {
    public static final String TAG = LogUtil.makeLogTag(WeaverLoader.class);
    protected Context mApplicationContext;
    private long mBuzzTimeStamp;
    private String mFeedPath;
    private boolean mHasMorePages = false;
    private boolean mIgnorePackages;
    protected WeaverServiceHelper.QueryParamsBuilder mParamsBuilder;
    protected WeaverServiceHelper mWeaverServiceHelper;

    public WeaverLoader(Context context, WeaverServiceHelper.QueryParamsBuilder queryParamsBuilder, WeaverServiceHelper weaverServiceHelper, String string2) {
        this(context, queryParamsBuilder, weaverServiceHelper, string2, true);
    }

    public WeaverLoader(Context context, WeaverServiceHelper.QueryParamsBuilder queryParamsBuilder, WeaverServiceHelper weaverServiceHelper, String string2, boolean bl) {
        this.mApplicationContext = context.getApplicationContext();
        this.mParamsBuilder = queryParamsBuilder;
        this.mWeaverServiceHelper = weaverServiceHelper;
        this.mFeedPath = string2;
        this.mIgnorePackages = bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    private String getType(WeaverItem weaverItem) {
        BuffetType buffetType = BuffetType.UNKNOWN;
        if ("video".equals(weaverItem.getType())) {
            buffetType = WeaverVideoUtils.getVideoSpecificBuffetType(this.mApplicationContext, weaverItem);
            return buffetType.name();
        }
        if ("breakingbar".equals(weaverItem.getType())) {
            buffetType = BuffetType.BREAKING_BAR;
            return buffetType.name();
        }
        if (weaverItem.getType().equals("package")) {
            buffetType = BuffetType.PACKAGE;
            if (this.containsTreatments(weaverItem, WeaverItem.Treatment.BREAKING, WeaverItem.Treatment.BULLETED_LIST)) {
                buffetType = BuffetType.BREAKING_BULLETED_LIST;
                return buffetType.name();
            }
            if (!this.containsTreatments(weaverItem, WeaverItem.Treatment.BULLETED_LIST)) return buffetType.name();
            buffetType = BuffetType.BULLETED_LIST;
            return buffetType.name();
        }
        if (!weaverItem.getType().equals("post")) return buffetType.name();
        buffetType = BuffetType.POST;
        if (this.containsTreatments(weaverItem, WeaverItem.Treatment.FEATURED, WeaverItem.Treatment.QUIZ) && !this.isQuizFeed()) {
            buffetType = BuffetType.FEATURED_QUIZ;
            return buffetType.name();
        }
        if (this.containsTreatments(weaverItem, WeaverItem.Treatment.TRENDING, WeaverItem.Treatment.QUIZ) && !this.isQuizFeed()) {
            buffetType = BuffetType.TRENDING_QUIZ;
            return buffetType.name();
        }
        if (this.containsTreatments(weaverItem, WeaverItem.Treatment.QUIZ) && !this.isQuizFeed()) {
            buffetType = BuffetType.QUIZ;
            return buffetType.name();
        }
        if (weaverItem.getTreatments().contains((Object)WeaverItem.Treatment.FEATURED)) {
            buffetType = BuffetType.FEATURED;
            return buffetType.name();
        }
        if (weaverItem.getTreatments().contains((Object)WeaverItem.Treatment.TRENDING)) {
            buffetType = BuffetType.TRENDING_SMALL;
            return buffetType.name();
        }
        if (!weaverItem.getTreatments().contains((Object)WeaverItem.Treatment.BREAKING)) return buffetType.name();
        buffetType = BuffetType.BREAKING;
        return buffetType.name();
    }

    private boolean isExpired() {
        if (this.mBuzzTimeStamp <= 0 || System.currentTimeMillis() - this.mBuzzTimeStamp >= 300000) {
            return true;
        }
        return false;
    }

    private boolean isQuizFeed() {
        return this.mFeedPath.contains("quiz");
    }

    protected /* varargs */ boolean containsTreatments(WeaverItem weaverItem, WeaverItem.Treatment ... object) {
        object = Arrays.asList(object);
        return weaverItem.getTreatments().containsAll(object);
    }

    protected SafeCallback<WeaverResponse> getSafeCallback(final BaseLoader.LoaderCallback loaderCallback) {
        return new SafeCallback<WeaverResponse>(){

            @Override
            public void onFailure(Call<WeaverResponse> call, Throwable throwable) {
                WeaverLoader.this.mRequest = null;
                loaderCallback.onError(new Exception(throwable));
                LogUtil.e(WeaverLoader.TAG, "Unable to load weaver response: " + throwable);
            }

            @Override
            protected void onNetworkError(Call<WeaverResponse> object, Response<WeaverResponse> response) {
                WeaverLoader.this.mRequest = null;
                object = HttpErrorParser.createExceptionOnHttpError(response.code());
                LogUtil.e(WeaverLoader.TAG, "Unable to load weaver response: ", (Throwable)object);
                loaderCallback.onError((Exception)object);
            }

            @Override
            protected void onSafeResponse(Call<WeaverResponse> object, Response<WeaverResponse> response) {
                WeaverLoader.this.mRequest = null;
                object = (WeaverResponse)response.body();
                if (object != null && object.getResults() != null) {
                    WeaverLoader.this.mLocalFlowList = WeaverLoader.this.parseModules((WeaverResponse)object);
                    WeaverLoader.this.mBuzzTimeStamp = System.currentTimeMillis();
                    loaderCallback.onLoadComplete();
                    return;
                }
                loaderCallback.onError(new Exception("Response was null or contained no results."));
            }
        };
    }

    @NonNull
    protected String getWeaverPath() {
        return this.mFeedPath;
    }

    @Override
    public boolean hasMorePages() {
        return this.mHasMorePages;
    }

    @Override
    public void load(boolean bl, int n2, BaseLoader.LoaderCallback loaderCallback) {
        LogUtil.v(TAG, "Attempting to load page: " + n2);
        if (this.mLocalFlowList.isEmpty() || bl || this.isExpired() || n2 > 1) {
            this.mParamsBuilder.page(String.valueOf(n2));
            this.mParamsBuilder.noCache(bl);
            this.mRequest = this.mWeaverServiceHelper.loadFeeds(this.getWeaverPath(), this.mParamsBuilder.build(), this.getSafeCallback(loaderCallback));
            return;
        }
        loaderCallback.onLoadComplete();
    }

    protected FlowList parseModules(WeaverResponse object) {
        FlowList flowList = new FlowList();
        this.updateHasMorePages((WeaverResponse)object);
        for (WeaverItem weaverItem : object.getResults()) {
            String string2 = this.getType(weaverItem);
            if (BuffetType.UNKNOWN.name().equals(string2) || this.mIgnorePackages && BuffetType.PACKAGE.name().equals(string2)) continue;
            flowList.add(new FlowItem(string2, weaverItem));
        }
        return flowList;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void updateHasMorePages(WeaverResponse weaverResponse) {
        boolean bl = weaverResponse.hasMorePages() && weaverResponse.getResults().size() > 0;
        this.mHasMorePages = bl;
    }

}

