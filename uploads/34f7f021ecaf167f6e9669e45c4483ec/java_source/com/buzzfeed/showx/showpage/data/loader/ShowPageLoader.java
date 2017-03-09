/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 *  retrofit2.Response
 */
package com.buzzfeed.showx.showpage.data.loader;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.buzzfeed.showx.showpage.data.model.ShowPage;
import com.buzzfeed.showx.showpage.data.model.ShowPageItemType;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.FlowList;
import com.buzzfeed.toolkit.content.WeaverEmbed;
import com.buzzfeed.toolkit.content.WeaverItem;
import com.buzzfeed.toolkit.networking.Environment;
import com.buzzfeed.toolkit.networking.helpers.WeaverServiceHelper;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.HttpErrorParser;
import com.buzzfeed.toolkit.util.WeaverVideoUtils;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import com.buzzfeed.toolkit.weaver.model.WeaverResponse;
import java.util.List;
import java.util.Map;
import retrofit2.Call;
import retrofit2.Response;

public final class ShowPageLoader {
    @NonNull
    private final Context mAppContext;
    private int mCurrentPage;
    @NonNull
    private final String mFeedId;
    private boolean mHasMorePages = true;
    private boolean mIsLoading = false;
    @NonNull
    private final WeaverServiceHelper.QueryParamsBuilder mParamsBuilder;
    @NonNull
    private final WeaverServiceHelper mServiceHelper;
    @Nullable
    private SafeCall<WeaverResponse> mShowPageCall;

    public ShowPageLoader(@NonNull Context context, @NonNull String string2, @NonNull Environment environment, @NonNull WeaverServiceHelper.QueryParamsBuilder queryParamsBuilder) {
        this.mAppContext = EZUtil.checkNotNull(context.getApplicationContext());
        this.mFeedId = "shows-" + EZUtil.checkNotNull(string2);
        this.mParamsBuilder = EZUtil.checkNotNull(queryParamsBuilder);
        this.mServiceHelper = new WeaverServiceHelper(context, EZUtil.checkNotNull(environment));
    }

    private FlowList buildFlowListFromResponse(WeaverResponse object) {
        FlowList flowList = new FlowList();
        for (WeaverItem weaverItem : object.getResults()) {
            if (!TextUtils.equals((CharSequence)"video", (CharSequence)weaverItem.getType()) || !WeaverVideoUtils.ensureVideoContent(weaverItem)) continue;
            flowList.add(new FlowItem(ShowPageItemType.getItemTypeFromVideoContent(this.mAppContext, weaverItem).name(), weaverItem));
        }
        return flowList;
    }

    private ShowPage buildShowPageModel(int n2, WeaverResponse weaverResponse) {
        FlowList flowList = this.buildFlowListFromResponse(weaverResponse);
        ShowPage showPage = new ShowPage();
        showPage.pageNumber = n2;
        showPage.flowList = flowList;
        if (weaverResponse.embedded != null && weaverResponse.embedded.hasShows()) {
            showPage.show = weaverResponse.embedded.getShows().get(0);
        }
        return showPage;
    }

    private boolean ensureResponseContent(WeaverResponse weaverResponse) {
        if (weaverResponse != null && weaverResponse.getResults() != null && !weaverResponse.getResults().isEmpty()) {
            return true;
        }
        return false;
    }

    private void getShowPage(final int n2, final Callbacks callbacks) {
        this.mParamsBuilder.page(String.valueOf(n2));
        this.mShowPageCall = this.mServiceHelper.loadFeeds(this.mFeedId, this.mParamsBuilder.build(), new SafeCallback<WeaverResponse>(){

            @Override
            public void onFailure(Call<WeaverResponse> call, Throwable throwable) {
                ShowPageLoader.this.mIsLoading = false;
                if (callbacks != null) {
                    callbacks.onLoadError(new Exception(throwable));
                }
            }

            @Override
            protected void onNetworkError(Call<WeaverResponse> object, Response<WeaverResponse> response) {
                ShowPageLoader.this.mIsLoading = false;
                if (callbacks != null) {
                    object = HttpErrorParser.createExceptionOnHttpError(response.code());
                    callbacks.onLoadError((Exception)object);
                }
            }

            @Override
            protected void onSafeResponse(Call<WeaverResponse> object, Response<WeaverResponse> object2) {
                ShowPageLoader.this.mIsLoading = false;
                if (callbacks == null) {
                    return;
                }
                object = (WeaverResponse)object2.body();
                if (ShowPageLoader.this.ensureResponseContent((WeaverResponse)object)) {
                    object2 = ShowPageLoader.this.buildShowPageModel(n2, (WeaverResponse)object);
                    ShowPageLoader.this.mCurrentPage = n2;
                    ShowPageLoader.this.mHasMorePages = object.hasMorePages();
                    callbacks.onLoadComplete((ShowPage)object2);
                    return;
                }
                callbacks.onLoadError(new LoadFailedException("Response was null or contains no results. Can't continue."));
            }
        });
    }

    public void cancelPendingRequests() {
        this.mIsLoading = false;
        if (this.mShowPageCall != null) {
            this.mShowPageCall.cancel();
            this.mShowPageCall = null;
        }
    }

    public boolean hasMorePages() {
        return this.mHasMorePages;
    }

    public boolean isLoading() {
        return this.mIsLoading;
    }

    public void loadNextPage(Callbacks callbacks) {
        if (this.mIsLoading || !this.hasMorePages()) {
            if (callbacks != null) {
                callbacks.onLoadError(new LoadFailedException("Load in progress, or there are no more pages to load."));
            }
            return;
        }
        this.mIsLoading = true;
        this.getShowPage(this.mCurrentPage + 1, callbacks);
    }

    public static interface Callbacks {
        public void onLoadComplete(@NonNull ShowPage var1);

        public void onLoadError(Exception var1);
    }

    public static class LoadFailedException
    extends Exception {
        public LoadFailedException(String string2) {
            super(string2);
        }
    }

}

