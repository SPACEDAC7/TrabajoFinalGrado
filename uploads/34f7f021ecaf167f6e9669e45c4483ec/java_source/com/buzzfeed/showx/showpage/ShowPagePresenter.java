/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.text.TextUtils
 *  android.util.Log
 *  android.view.View
 *  android.widget.ImageView
 */
package com.buzzfeed.showx.showpage;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.buzzfeed.analytics.client.VideoTracker;
import com.buzzfeed.android.vcr.player.VCRDefaultVideoPlayerPresenter;
import com.buzzfeed.android.vcr.player.VideoSurfacePresenter;
import com.buzzfeed.android.vcr.util.VideoPlaybackUtils;
import com.buzzfeed.buffet.ui.adapter.CardAdapter;
import com.buzzfeed.buffet.ui.listener.BuffetEventListener;
import com.buzzfeed.showx.showpage.ShowPageAdapter;
import com.buzzfeed.showx.showpage.ShowPageContract;
import com.buzzfeed.showx.showpage.data.loader.ShowPageLoader;
import com.buzzfeed.showx.showpage.data.model.ShowPage;
import com.buzzfeed.showx.showpage.data.model.ShowPageItemType;
import com.buzzfeed.showx.showpage.listener.ShowPageBuffetEventListenerImpl;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.VideoContent;
import com.buzzfeed.toolkit.content.WeaverEmbed;
import com.buzzfeed.toolkit.sharmo.ShareManager;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.NetworkUtil;
import com.buzzfeed.toolkit.util.PageErrorHandler;
import com.buzzfeed.toolkit.util.ProgressiveLoadingManager;
import com.buzzfeed.toolkit.util.VideoSettings;
import com.buzzfeed.toolkit.util.WeaverVideoUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Stack;

public final class ShowPagePresenter
implements ShowPageContract.Presenter {
    private static final String TAG = LogUtil.makeLogTag(ShowPagePresenter.class);
    private Context mAppContext;
    @Nullable
    private ShowPageContract.Presenter.Callbacks mCallbacks;
    @Nullable
    private String mCoverImageUri;
    private ShowPage mCurrentShowPage;
    private List<FlowItem> mData = new ArrayList<FlowItem>();
    private PageErrorHandler mErrorHandler;
    private boolean mIsFirstLoad = true;
    private ShowPageLoader mLoader;
    private ProgressiveLoadingManager mProgressiveLoadingManager;
    private boolean mShowSettingsActionForNetworkError;
    private ShowPageContract.UpdatableView mUpdatableView;

    public ShowPagePresenter(@NonNull Context context, @Nullable String string2, @NonNull ShowPageLoader showPageLoader, boolean bl) {
        this.mAppContext = EZUtil.checkNotNull(context.getApplicationContext(), "Context must not be null.");
        this.mCoverImageUri = string2;
        this.mLoader = EZUtil.checkNotNull(showPageLoader, "Loader must not be null.");
        this.mShowSettingsActionForNetworkError = bl;
    }

    private void requestNextPageLoad() {
        final String string2 = TAG + ".requestNextPageLoad";
        if (this.mIsFirstLoad) {
            LogUtil.e(string2, "requestNextPageLoad was called, startInitialLoad should be called instead. " + Log.getStackTraceString((Throwable)new Throwable()));
            return;
        }
        if (this.mLoader.isLoading()) {
            LogUtil.w(string2, "Loading is already is progress.");
            return;
        }
        if (!this.mLoader.hasMorePages()) {
            LogUtil.w(string2, "No more pages to load.");
            return;
        }
        this.mErrorHandler.dismissSnackbarIfVisible();
        this.mUpdatableView.setFooterProgressVisibility(true);
        this.mLoader.loadNextPage(new ShowPageLoader.Callbacks(){

            @Override
            public void onLoadComplete(@NonNull ShowPage showPage) {
                ShowPagePresenter.this.mData.addAll(showPage.flowList);
                ShowPagePresenter.this.mCurrentShowPage = showPage;
                ShowPagePresenter.this.mUpdatableView.appendItems(showPage.flowList);
                ShowPagePresenter.this.mUpdatableView.setFooterProgressVisibility(false);
                ShowPagePresenter.this.mProgressiveLoadingManager.resetLoading();
                if (ShowPagePresenter.this.mCallbacks != null) {
                    ShowPagePresenter.this.mCallbacks.onShowPageLoaded(showPage);
                }
            }

            @Override
            public void onLoadError(Exception exception) {
                LogUtil.e(string2, "An error occurred loading next page.", exception);
                ShowPagePresenter.this.mErrorHandler.onUnknownError();
                ShowPagePresenter.this.mUpdatableView.setFooterProgressVisibility(false);
                ShowPagePresenter.this.mProgressiveLoadingManager.resetLoading();
            }
        });
    }

    private void startInitialLoad() {
        final String string2 = TAG + ".startInitialLoad";
        if (!this.mIsFirstLoad) {
            LogUtil.e(string2, "startInitialLoad has already been called. " + Log.getStackTraceString((Throwable)new Throwable()));
            return;
        }
        if (this.mLoader.isLoading()) {
            LogUtil.w(string2, "Loading is already is progress.");
            return;
        }
        this.mIsFirstLoad = false;
        this.mErrorHandler.dismissSnackbarIfVisible();
        this.mUpdatableView.setHeaderProgressVisibility(true);
        this.mLoader.loadNextPage(new ShowPageLoader.Callbacks(){

            @Override
            public void onLoadComplete(@NonNull ShowPage showPage) {
                ShowPagePresenter.this.mData.addAll(showPage.flowList);
                ShowPagePresenter.this.mCurrentShowPage = showPage;
                ShowPagePresenter.this.mUpdatableView.setShowPageModel(showPage);
                ShowPagePresenter.this.mUpdatableView.setHeaderProgressVisibility(false);
                if (TextUtils.isEmpty((CharSequence)ShowPagePresenter.this.mCoverImageUri) && showPage.show != null) {
                    ShowPagePresenter.this.mCoverImageUri = showPage.show.getBackgroundImageUrl();
                    ShowPagePresenter.this.mUpdatableView.setCoverImage(ShowPagePresenter.this.mCoverImageUri);
                }
                if (ShowPagePresenter.this.mCallbacks != null) {
                    ShowPagePresenter.this.mCallbacks.onShowPageLoaded(showPage);
                }
            }

            @Override
            public void onLoadError(Exception exception) {
                LogUtil.e(string2, "A load error occurred", exception);
                ShowPagePresenter.this.mIsFirstLoad = true;
                ShowPagePresenter.this.mErrorHandler.handleErrorResponse(exception);
                ShowPagePresenter.this.mUpdatableView.setHeaderProgressVisibility(false);
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void attachView(ShowPageContract.UpdatableView object) {
        this.mUpdatableView = (ShowPageContract.UpdatableView)EZUtil.checkNotNull(object, "View must not be null.");
        if (!TextUtils.isEmpty((CharSequence)this.mCoverImageUri)) {
            this.mUpdatableView.setCoverImage(this.mCoverImageUri);
        }
        this.mErrorHandler = new PageErrorHandler((View)this.mUpdatableView.getRecyclerView(), this.mShowSettingsActionForNetworkError){

            @Override
            public void onGateWayTimeoutError() {
                if (NetworkUtil.isConnectedToNetwork(ShowPagePresenter.this.mAppContext)) {
                    this.onTimeoutError();
                    return;
                }
                this.onNoConnectionError();
            }

            @Override
            public void onTryAgainClicked() {
                if (ShowPagePresenter.this.mIsFirstLoad) {
                    ShowPagePresenter.this.startInitialLoad();
                    return;
                }
                ShowPagePresenter.this.requestNextPageLoad();
            }
        };
        object = this.mUpdatableView.getRecyclerView();
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager)object.getLayoutManager();
        boolean bl = this.mCallbacks != null && this.mCallbacks.isShowSubscriptionsEnabled();
        ShowPageAdapter showPageAdapter = new ShowPageAdapter(bl);
        showPageAdapter.setBuffetEventListener(new InternalBuffetEventListener());
        this.mUpdatableView.setAdapter(showPageAdapter);
        this.mUpdatableView.setPresenter(this);
        this.mProgressiveLoadingManager = new ProgressiveLoadingManager((RecyclerView)object, linearLayoutManager, showPageAdapter, new InternalProgressiveLoadingListener());
        this.mCallbacks.handleShowOpened();
        if (this.mData.isEmpty()) {
            this.startInitialLoad();
            return;
        }
        this.mUpdatableView.setShowPageModel(this.mCurrentShowPage);
        this.mUpdatableView.appendItems(this.mData);
        this.mUpdatableView.setHeaderProgressVisibility(false);
        if (!TextUtils.isEmpty((CharSequence)this.mCoverImageUri)) {
            this.mUpdatableView.setCoverImage(this.mCoverImageUri);
        }
    }

    @Override
    public void detachView() {
        this.mLoader.cancelPendingRequests();
        this.mUpdatableView = null;
        this.mProgressiveLoadingManager = null;
        if (!this.mIsFirstLoad && this.mData.isEmpty()) {
            this.mIsFirstLoad = true;
        }
    }

    @Override
    public void handleConnectivityChange() {
        if (!NetworkUtil.isConnectedToNetwork(this.mAppContext)) {
            this.mErrorHandler.onNoConnectionError();
            return;
        }
        this.mErrorHandler.dismissSnackbarIfVisible();
        if (this.mIsFirstLoad) {
            this.startInitialLoad();
        }
        this.mUpdatableView.toggleAutoPlay(VideoSettings.isInAutoplayMode(this.mAppContext));
    }

    public void onShareShowButtonClicked(@NonNull Activity activity, @NonNull String string2, @NonNull String string3) {
        ShareManager.share((Context)activity, string3, "https://www.buzzfeed.com/" + string2);
        VideoTracker.getInstance().sendShareShowEvent(null, "feed_module", "on_screen");
    }

    @Override
    public void refreshSubscribeCard() {
        this.mUpdatableView.updateItem(0);
    }

    @Override
    public void setPresenterCallbacks(@Nullable ShowPageContract.Presenter.Callbacks callbacks) {
        this.mCallbacks = callbacks;
    }

    private final class InternalBuffetEventListener
    extends ShowPageBuffetEventListenerImpl {
        private InternalBuffetEventListener() {
        }

        @Override
        public boolean isSubscribedToShow() {
            if (ShowPagePresenter.this.mCallbacks != null && ShowPagePresenter.this.mCallbacks.isSubscribedToShow()) {
                return true;
            }
            return false;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onCellClicked(FlowItem flowItem, int n2, @Nullable ImageView imageView, Stack<String> object, boolean bl) {
            void var3_4;
            void var2_3;
            Object object2 = TAG + ".onCellClicked";
            if (!ShowPageItemType.hasVideoItemType(flowItem)) {
                LogUtil.e((String)object2, "Cell was clicked, but didn't contain a video item type.");
                return;
            }
            object2 = ShowPagePresenter.this.mUpdatableView.getPlayer();
            VideoContent videoContent = (VideoContent)flowItem.getContent();
            String string2 = WeaverVideoUtils.getHlsVideoContentUri(WeaverVideoUtils.getFirstVideoFromVideoContent(videoContent));
            long l2 = VideoPlaybackUtils.getLastKnownVideoPosition((VideoSurfacePresenter)object2, string2);
            boolean bl2 = object2.isPlaying() && TextUtils.equals((CharSequence)object2.getContent(), (CharSequence)string2);
            if (ShowPagePresenter.this.mCallbacks == null) return;
            ShowPagePresenter.this.mCallbacks.onVideoCellClicked(videoContent, (ImageView)var3_4, l2, (int)var2_3, bl2);
        }

        @Override
        public void onGetRecipeClicked(String string2) {
            if (ShowPagePresenter.this.mCallbacks != null) {
                ShowPagePresenter.this.mCallbacks.onGetRecipeClicked(string2);
            }
        }

        @Override
        public void onShareClicked(FlowItem flowItem, int n2) {
            if (ShowPagePresenter.this.mCallbacks != null) {
                ShowPagePresenter.this.mCallbacks.onShareClicked(flowItem, n2);
            }
        }

        @Override
        public void onSubscribeButtonClicked() {
            if (ShowPagePresenter.this.mCallbacks != null) {
                ShowPagePresenter.this.mCallbacks.onSubscribeButtonClicked();
            }
        }

        @Override
        public void onVideoReloadClicked() {
            ShowPagePresenter.this.mUpdatableView.getPlayer().play();
        }
    }

    private final class InternalProgressiveLoadingListener
    implements ProgressiveLoadingManager.ProgressiveLoadingListener {
        private InternalProgressiveLoadingListener() {
        }

        @Override
        public void loadMore() {
            if (NetworkUtil.isConnectedToNetwork(ShowPagePresenter.this.mAppContext)) {
                ShowPagePresenter.this.requestNextPageLoad();
                return;
            }
            ShowPagePresenter.this.mProgressiveLoadingManager.resetLoading();
        }
    }

}

