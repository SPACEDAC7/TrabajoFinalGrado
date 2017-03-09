/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.Intent
 *  android.graphics.Rect
 *  android.os.Bundle
 *  android.text.TextUtils
 *  android.view.LayoutInflater
 *  android.view.TextureView
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.Window
 *  android.widget.ImageView
 */
package com.buzzfeed.android.ui.buffet.fragment;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityOptionsCompat;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import com.buzzfeed.ads.editorial.BuffetNativeAdLoader;
import com.buzzfeed.ads.model.NativeInlineAd;
import com.buzzfeed.ads.model.VideoAd;
import com.buzzfeed.ads.video.VideoAdListener;
import com.buzzfeed.ads.video.VideoAdLoader;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.analytics.client.VideoTracker;
import com.buzzfeed.analytics.model.UnitImpression;
import com.buzzfeed.android.activity.BlankHeaderSpicyActivity;
import com.buzzfeed.android.activity.BuzzLoginActivity;
import com.buzzfeed.android.activity.ShowPageActivity;
import com.buzzfeed.android.activity.SpicyActivity;
import com.buzzfeed.android.activity.VideoAdViewerActivity;
import com.buzzfeed.android.data.BuzzUser;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.data.ab.ShrinkCellHeightAbTest;
import com.buzzfeed.android.data.ads.VideoAdABTest;
import com.buzzfeed.android.data.loader.BuffetLoader;
import com.buzzfeed.android.data.tracking.BuffetTracker;
import com.buzzfeed.android.experiment.BlankHeaderABTest;
import com.buzzfeed.android.experiment.DummyABTest;
import com.buzzfeed.android.experiment.NewsPackageABTest;
import com.buzzfeed.android.ui.buffet.fragment.AbstractAdHelper;
import com.buzzfeed.android.ui.buffet.fragment.NavigationBuffetItem;
import com.buzzfeed.android.ui.buffet.listener.BuffetErrorListener;
import com.buzzfeed.android.ui.buffet.listener.OneTimeOnItemUpdatedListener;
import com.buzzfeed.android.ui.buffet.view.BuffetErrorView;
import com.buzzfeed.android.util.AnalyticsUtils;
import com.buzzfeed.android.util.BuzzUtils;
import com.buzzfeed.android.util.FeedUtils;
import com.buzzfeed.android.util.chrometabs.CustomTabUtils;
import com.buzzfeed.android.vcr.VCRConfig;
import com.buzzfeed.android.vcr.model.VideoType;
import com.buzzfeed.android.vcr.player.KeepScreenOnHelper;
import com.buzzfeed.android.vcr.player.VCRDefaultVideoPlayerPresenter;
import com.buzzfeed.android.vcr.player.VideoSurfacePresenter;
import com.buzzfeed.android.vcr.toolbox.AutoFocusController;
import com.buzzfeed.android.vcr.toolbox.PositionCache;
import com.buzzfeed.android.vcr.util.VideoPlaybackUtils;
import com.buzzfeed.android.vcr.view.VCRMediaRecyclerView;
import com.buzzfeed.buffet.data.tracker.BuffetUnitImpressionRecorder;
import com.buzzfeed.buffet.data.tracker.BuffetVideoEventTracker;
import com.buzzfeed.buffet.ui.adapter.BuffetAdapter;
import com.buzzfeed.buffet.ui.adapter.CardAdapter;
import com.buzzfeed.buffet.ui.holder.BaseCard;
import com.buzzfeed.buffet.ui.holder.VideoAdCard;
import com.buzzfeed.buffet.ui.holder.VideoCard;
import com.buzzfeed.buffet.ui.listener.BuffetEventListener;
import com.buzzfeed.buffet.ui.listener.VideoCardStateHandler;
import com.buzzfeed.buffet.ui.view.BuffetView;
import com.buzzfeed.mediaviewer.VideoViewerFragmentActivity;
import com.buzzfeed.toolkit.content.BaseLoader;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.content.BuzzAd;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.FlowList;
import com.buzzfeed.toolkit.content.PackageContent;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.content.ShowListContent;
import com.buzzfeed.toolkit.content.VideoAdContent;
import com.buzzfeed.toolkit.content.VideoContent;
import com.buzzfeed.toolkit.content.WeaverEmbed;
import com.buzzfeed.toolkit.content.WeaverItem;
import com.buzzfeed.toolkit.sharmo.ShareManager;
import com.buzzfeed.toolkit.util.GlideUtils;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.NetworkUtil;
import com.buzzfeed.toolkit.util.ObjectUtil;
import com.buzzfeed.toolkit.util.PageErrorHandler;
import com.buzzfeed.toolkit.util.ProgressiveLoadingManager;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.VersionUtil;
import com.buzzfeed.toolkit.util.VideoSettings;
import com.buzzfeed.toolkit.util.WeaverVideoUtils;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.Stack;

public class BuffetFragment
extends Fragment
implements BuffetEventListener,
BuffetErrorListener,
NavigationBuffetItem {
    public static final String KEY_FEED = "KEY_FEED";
    private static final String TAG = LogUtil.makeLogTag(BuffetFragment.class);
    AdHelper mAdHelper;
    private BuffetNativeAdLoader mAdLoader;
    private CardAdapter mAdapter;
    private AutoFocusController mAutoFocusController;
    protected BuffetLoader mBuffetLoader;
    @Nullable
    private RecyclerView.RecycledViewPool mBuffetRecycledViewPool;
    protected BuffetTracker mBuffetTracker;
    protected BuffetVideoEventTracker mBuffetVideoEventTracker;
    protected BuffetView mBuffetView;
    String mCurrentEdition;
    protected Feed mCurrentFeed;
    PageErrorHandler mErrorHandler;
    protected BuffetErrorView mErrorView;
    private KeepScreenOnHelper mKeepScreenOnHelper;
    protected View mLoadingView;
    private boolean mNeedFeedLoad;
    private ProgressiveLoadingManager mProgressiveLoadingManager;
    protected SwipeRefreshLayout mRefreshView;
    protected ShareManager.ShareActionListener mShareActionListener;
    private BuffetUnitImpressionRecorder mUnitImpressionRecorder;
    protected VideoAdLoader mVideoAdLoader;
    private VideoCardStateHandler mVideoCardStateHandler;
    private VCRDefaultVideoPlayerPresenter mVideoPlayerPresenter;
    protected VideoTracker mVideoTracker;

    private void displayConnectionNoticeIfOffline() {
        if (!this.isConnectedToNetwork() && this.getView() != null) {
            this.createErrorHandler(this.getView()).onNoConnectionError();
        }
    }

    @NonNull
    private String getScreenName(Feed object) {
        if (!TextUtils.isEmpty((CharSequence)(object = AnalyticsUtils.buildScreenNameFromFeed((Feed)object, this.mCurrentEdition)))) {
            return object;
        }
        return "";
    }

    /*
     * Enabled aggressive block sorting
     */
    private void handlePostContentClicked(PostContent postContent, int n2, View view, Stack<String> stack, boolean bl, boolean bl2, boolean bl3, boolean bl4) {
        if (postContent.getUri() == null) {
            LogUtil.e(TAG, "No URI for buzz, ignoring click");
            return;
        }
        this.mBuffetTracker.trackPostClicked(this.getScreenName(this.mCurrentFeed), postContent, n2, bl2, bl3);
        n2 = !BlankHeaderABTest.getUseFullHeader(this.getContext()) ? 1 : 0;
        if (n2 != 0) {
            BlankHeaderSpicyActivity.startIntent(this.getActivity(), postContent, this.mCurrentFeed);
            return;
        }
        if (bl4) {
            SpicyActivity.startIntent(this.getActivity(), postContent, this.mCurrentFeed, view, stack, bl);
            return;
        }
        SpicyActivity.startIntentWithoutTransition(this.getActivity(), postContent, this.mCurrentFeed);
    }

    private void handleShowClicked(ShowListContent showListContent) {
        this.mBuffetTracker.trackShowIconClickedFromShowsPage(this.getScreenName(this.mCurrentFeed), showListContent.getId());
        ShowPageActivity.startIntent((Context)this.getActivity(), showListContent.getId(), showListContent.getName(), null);
    }

    private void handleVideoAdContentClicked(FlowItem content, int n2) {
        if ((content = (VideoAd)content.getContent()) != null && content.isValid() && this.mVideoAdLoader != null) {
            this.mVideoAdLoader.setShouldRefreshAds(false);
            this.mVideoPlayerPresenter.setTargetView(null);
            String string2 = this.getScreenName(this.mCurrentFeed);
            String string3 = content.getContentUri();
            long l2 = VideoPlaybackUtils.getLastKnownVideoPosition(this.mVideoPlayerPresenter, string3);
            this.startActivity(((VideoAdViewerActivity.IntentBuilder)((VideoAdViewerActivity.IntentBuilder)((VideoAdViewerActivity.IntentBuilder)((VideoAdViewerActivity.IntentBuilder)new VideoAdViewerActivity.IntentBuilder().videoAd((VideoAd)content).startPosition(l2)).referrerScreen(this.getScreenName(this.mCurrentFeed))).referrerFeedPosition(n2)).initialPlaybackReason("tap_to_play_auto")).build((Context)this.getActivity()));
            this.trackVideoClick(content.getId(), n2, l2, content.getDuration(), content.getTitle(), string3, string2);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void handleVideoContentClicked(VideoContent videoContent, int n2, View object) {
        LogUtil.d(TAG + ".handleVideoContentClicked", "Video Content clicked ");
        VideoViewerFragmentActivity.IntentBuilder intentBuilder = new VideoViewerFragmentActivity.IntentBuilder();
        WeaverItem.Video video = WeaverVideoUtils.getFirstVideoFromVideoContent(videoContent);
        String string2 = WeaverVideoUtils.getHlsVideoContentUri(video);
        String string3 = this.getScreenName(this.mCurrentFeed);
        long l2 = VideoPlaybackUtils.getLastKnownVideoPosition(this.mVideoPlayerPresenter, string2);
        intentBuilder.videoContent(videoContent).contentUri(string2).startPosition(l2).referrerFeedPosition(n2).referrerScreen(string3).initialPlaybackReason("tap_to_play_auto");
        if (videoContent.getShow() != null) {
            WeaverEmbed.Show show = videoContent.getShow();
            Intent intent = ShowPageActivity.getIntent((Context)this.getActivity(), show);
            intentBuilder.showId(show.getId()).avatarUrl(show.getThumbnailUrl()).showClickIntent(intent);
        }
        if (!TextUtils.isEmpty((CharSequence)videoContent.getSourceUri()) && WeaverVideoUtils.hasTastySpecificShowContent(videoContent.getShow())) {
            intentBuilder.recipeClickIntent(SpicyActivity.getDeepLinkIntent(this.getActivity(), videoContent.getSourceUri(), null));
        }
        if (VersionUtil.hasLollipop()) {
            intentBuilder.withSharedElementCoverImage((View)object);
            object = ActivityOptionsCompat.makeSceneTransitionAnimation((Activity)this.getActivity(), (View)object, object.getTransitionName());
            this.startActivity(intentBuilder.build((Context)this.getActivity()), object.toBundle());
        } else {
            this.startActivity(intentBuilder.build((Context)this.getActivity()));
        }
        this.trackVideoClick(videoContent.getId(), n2, l2, video.getDuration(), videoContent.getTitle(), string2, string3);
    }

    private boolean hasNetworkErrorOccurred() {
        if (this.mErrorHandler != null && this.mErrorHandler.hasErrorOccurred()) {
            return true;
        }
        return false;
    }

    private void hideLoading() {
        this.mLoadingView.setVisibility(8);
        this.mRefreshView.setRefreshing(false);
        this.mBuffetView.setSpinnerVisible(false);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void initBuffetLoader() {
        Context context = this.getActivity().getApplicationContext();
        Feed feed = this.mCurrentFeed;
        boolean bl = !NewsPackageABTest.shouldShowNewsPackages((Context)this.getActivity());
        this.mBuffetLoader = new BuffetLoader(context, feed, bl);
    }

    private boolean isFeedLoaded() {
        if (this.mBuffetLoader != null && this.mBuffetLoader.getFlowList() != null && this.mBuffetLoader.getFlowList().size() > 0) {
            return true;
        }
        return false;
    }

    private void loadFeedAfterRefresh(final boolean bl) {
        if (this.getActivity() != null) {
            this.initBuffetLoader();
            this.mAutoFocusController.stop();
            this.mBuffetLoader.loadNextPage(new BaseLoader.LoaderCallback(){

                @Override
                public void onError(Exception exception) {
                    if (BuffetFragment.this.isAdded() && BuffetFragment.this.getView() != null) {
                        BuffetFragment.this.createErrorHandler(BuffetFragment.this.getView()).handleErrorResponse(exception);
                        if (!bl) {
                            BuffetFragment.this.showError();
                        }
                    }
                    BuffetFragment.this.hideLoading();
                    BuffetFragment.this.mProgressiveLoadingManager.resetLoading();
                }

                @Override
                public void onLoadComplete() {
                    if (BuffetFragment.this.isAdded() && BuffetFragment.this.getActivity() != null && !BuffetFragment.this.getActivity().isFinishing()) {
                        if (BuffetFragment.this.mErrorHandler != null) {
                            BuffetFragment.this.mErrorHandler.dismissSnackbarIfVisible();
                            BuffetFragment.this.mErrorHandler.setErrorOccurred(false);
                        }
                        BuffetFragment.this.onInitialLoadFeedComplete();
                        BuffetFragment.this.displayConnectionNoticeIfOffline();
                    }
                }
            }, bl);
        }
    }

    private void loadFeedIfNeeded() {
        if (this.mNeedFeedLoad && this.getView() != null) {
            this.mNeedFeedLoad = false;
            if (this.mErrorHandler != null && !this.mErrorHandler.hasErrorOccurred()) {
                this.mErrorHandler.dismissSnackbarIfVisible();
            }
            this.showLoading();
            this.loadFeed();
            if (this.isResumed()) {
                this.trackScreenView();
            }
            this.mAdHelper.reset();
        }
    }

    public static BuffetFragment newInstance(Feed feed) {
        BuffetFragment buffetFragment = new BuffetFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("KEY_FEED", (Serializable)feed);
        buffetFragment.setArguments(bundle);
        return buffetFragment;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void onInitialLoadFeedComplete() {
        DummyABTest.shouldDoSomething();
        this.mAdLoader = new BuffetNativeAdLoader(this.getContext().getApplicationContext(), this.mCurrentFeed.getAdTag(), this.mCurrentEdition, String.valueOf(502002));
        this.mRefreshView.setRefreshing(false);
        FlowList flowList = this.mBuffetLoader.getFlowList();
        if (!flowList.isEmpty()) {
            this.showBuffet();
            this.prepareAds(0, flowList);
            this.mBuffetView.setList(flowList);
            this.startAutoFocusControllerIfNeeded();
        } else {
            this.showError();
        }
        this.mBuffetView.setSpinnerVisible(false);
    }

    private void prepareAds(int n2, FlowList flowList) {
        if (FeedUtils.isHomeFeed(this.mCurrentFeed) && this.mVideoAdLoader != null && this.mVideoAdLoader.shouldRefreshAds()) {
            this.mVideoAdLoader.insertBlankAds(flowList);
        }
        if (this.mBuffetLoader.shouldShowAds()) {
            this.mAdLoader.insertBlankAds(n2, flowList);
        }
    }

    private void refocusViewHolderOnUpdateIfNeeded(int n2) {
        if (this.mAutoFocusController.getCurrentViewHolder() != null && this.mAutoFocusController.getCurrentViewHolder().getAdapterPosition() == n2) {
            this.mBuffetView.getRecyclerView().addOnChildAttachStateChangeListener(new OneTimeOnItemUpdatedListener(this.mBuffetView.getRecyclerView(), n2){

                @Override
                public void onItemUpdated(int n2) {
                    BuffetFragment.this.mAutoFocusController.requestFocus(n2);
                }
            });
        }
    }

    private void refreshBookmarksFeedOnLogin(Feed feed) {
        if (FeedUtils.isBookmarkFeed(feed)) {
            this.reloadFeed();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setupAnalytics(VideoSurfacePresenter object, Feed feed) {
        this.mAdHelper = new AdHelper(this.mBuffetView.getRecyclerView());
        this.mBuffetVideoEventTracker = new BuffetVideoEventTracker((Context)this.getActivity(), this.mVideoTracker, (VideoSurfacePresenter)object);
        this.mBuffetVideoEventTracker.setScreenName(this.getScreenName(feed));
        VCRMediaRecyclerView vCRMediaRecyclerView = this.mBuffetView.getRecyclerView();
        CardAdapter cardAdapter = this.mAdapter;
        boolean bl = !this.isShowsList(feed);
        object = feed == null ? null : feed.getName();
        this.mUnitImpressionRecorder = new BuffetUnitImpressionRecorder(vCRMediaRecyclerView, cardAdapter, bl, (String)object);
    }

    private void setupAutoPlay() {
        this.mAutoFocusController = new AutoFocusController();
        this.mAutoFocusController.addOnFocusChangeListener(new InternalOnFocusChangeListener());
        this.mAutoFocusController.setAutoFocusStrategy(new InternalAutoFocusStrategy());
        this.mAutoFocusController.attachView(this.mBuffetView.getRecyclerView());
    }

    private VCRDefaultVideoPlayerPresenter setupPlayer() {
        VCRDefaultVideoPlayerPresenter vCRDefaultVideoPlayerPresenter = new VCRDefaultVideoPlayerPresenter(this.getContext());
        VCRConfig vCRConfig = VCRConfig.getInstance();
        vCRDefaultVideoPlayerPresenter.setPositionCache(vCRConfig.getGlobalPositionCache());
        vCRDefaultVideoPlayerPresenter.setDebugLoggingEnabled(vCRConfig.isDebugLoggingEnabled());
        vCRDefaultVideoPlayerPresenter.setAudioMuted(false);
        this.mVideoCardStateHandler = new VideoCardStateHandler();
        this.mKeepScreenOnHelper = new KeepScreenOnHelper(this.getActivity().getWindow());
        this.mKeepScreenOnHelper.attachTo(vCRDefaultVideoPlayerPresenter);
        vCRDefaultVideoPlayerPresenter.addListener(this.mVideoCardStateHandler);
        return vCRDefaultVideoPlayerPresenter;
    }

    private void startAutoFocusControllerIfNeeded() {
        if (this.isFragmentVisibleToUser() && VideoSettings.isInAutoplayMode((Context)this.getActivity()) && !this.mAutoFocusController.isStarted() && this.isFeedLoaded()) {
            this.mAutoFocusController.start();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void trackVideoClick(String string2, int n2, long l2, long l3, String string3, String string4, String string5) {
        this.mVideoTracker.setPositionInFeed(n2).setVideoDuration(l3).setVideoId(string2).setVideoTitle(string3).setVideoUrl(string4).setScreenName(string5).setPlayerLocation("in_feed");
        n2 = this.mVideoPlayerPresenter.isPlaying() && TextUtils.equals((CharSequence)this.mVideoPlayerPresenter.getContent(), (CharSequence)string4) ? 1 : 0;
        if (n2 == 0) {
            this.mVideoTracker.sendGAClickVideoPlayEvent("Feed");
        }
        this.mVideoTracker.sendEnterMediaViewer(l2);
    }

    public PageErrorHandler createErrorHandler(@NonNull View view) {
        if (this.mErrorHandler == null) {
            this.mErrorHandler = new PageErrorHandler(view, true){

                @Override
                public void onGateWayTimeoutError() {
                    if (BuffetFragment.this.isConnectedToNetwork()) {
                        this.onTimeoutError();
                        return;
                    }
                    this.onNoConnectionError();
                }

                @Override
                public void onTryAgainClicked() {
                    if (BuffetFragment.this.mBuffetLoader.isOnFirstPage()) {
                        BuffetFragment.this.reloadFeed();
                        return;
                    }
                    BuffetFragment.this.onLoadNextPage();
                }
            };
        }
        return this.mErrorHandler;
    }

    public Feed getCurrentFeed() {
        return this.mCurrentFeed;
    }

    boolean isBookmarkFeedEmpty(Feed feed, BuffetLoader buffetLoader) {
        if (FeedUtils.isBookmarkFeed(feed) && buffetLoader.getFlowList().size() == 0) {
            return true;
        }
        return false;
    }

    boolean isConnectedToNetwork() {
        return NetworkUtil.isConnectedToNetwork((Context)this.getActivity());
    }

    boolean isConnectedToWifi() {
        return NetworkUtil.isConnectedToWifi((Context)this.getActivity());
    }

    protected boolean isFragmentVisibleToUser() {
        return this.getUserVisibleHint();
    }

    protected boolean isShowsList(Feed feed) {
        if (feed != null && FeedUtils.isShowsFeed(feed)) {
            return true;
        }
        return false;
    }

    boolean isUserLoggedIn() {
        BuzzUser buzzUser = BuzzUser.getInstance(this.getContext());
        if (buzzUser != null && buzzUser.isLogin()) {
            return true;
        }
        return false;
    }

    void loadFeed() {
        this.loadFeedAfterRefresh(false);
    }

    @Override
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public void onActivityResult(int n2, int n3, Intent intent) {
        super.onActivityResult(n2, n3, intent);
        if (n3 != -1) return;
        switch (n2) {
            default: {
                return;
            }
            case 0: 
        }
        this.refreshBookmarksFeedOnLogin(this.mCurrentFeed);
    }

    @Override
    public void onBreakingNewsLinkClicked(FlowItem flowItem, String string2) {
        BuzzUtils.openLink(this.getActivity(), string2);
        this.mBuffetTracker.trackBreakingNewsLinkClicked(string2, this.getScreenName(this.mCurrentFeed));
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void onBuffetAdReady(final int n2, boolean bl) {
        if (!this.mBuffetLoader.shouldShowAds()) return;
        if (bl) {
            if (this.mVideoAdLoader == null || !this.mVideoAdLoader.shouldRefreshAds()) return;
            this.mVideoAdLoader.loadAdSlot(new VideoAdListener(){

                @Override
                public void onError() {
                    if (BuffetFragment.this.isAdded() && n2 < BuffetFragment.this.mBuffetView.getItemCount()) {
                        BuffetFragment.this.mBuffetView.removeItemAt(n2);
                        BuffetFragment.this.mAdLoader.initializeAdPositions(BuffetFragment.this.mBuffetView.getFlowList());
                    }
                }

                @Override
                public void onReady(VideoAd content) {
                    if (BuffetFragment.this.isAdded()) {
                        content = new FlowItem(BuffetType.VIDEO_AD.name(), content);
                        BuffetFragment.this.mBuffetView.updateItemAt(n2, (FlowItem)content);
                        BuffetFragment.this.refocusViewHolderOnUpdateIfNeeded(n2);
                    }
                }
            }, this.mVideoPlayerPresenter, this.getActivity().getApplicationContext(), 1, this.mCurrentFeed.getAdTag(), this.mCurrentEdition);
            return;
        }
        this.mAdLoader.loadAd(n2, new BuffetNativeAdLoader.AdLoadedListener(){

            @Override
            public void onAdLoaded(int n22, FlowItem flowItem) {
                if (BuffetFragment.this.isAdded() && n22 < BuffetFragment.this.mBuffetView.getItemCount()) {
                    BuffetFragment.this.mBuffetView.updateItemAt(n2, flowItem);
                }
            }
        });
    }

    @Override
    public void onBuffetRefresh() {
        this.mVideoPlayerPresenter.setTargetView(null);
        this.mVideoCardStateHandler.setTargetVideoCard(null);
        if (this.mVideoPlayerPresenter.isPlaying()) {
            this.mVideoPlayerPresenter.stop();
        }
        this.trackUnitImpressions();
        this.mAdHelper.reset();
        this.loadFeedAfterRefresh(true);
    }

    @Override
    public void onBuffetSignIn() {
        this.startActivityForResult(new Intent((Context)this.getActivity(), (Class)BuzzLoginActivity.class), 0);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCellClicked(FlowItem flowItem, int n2, ImageView imageView, Stack<String> stack, boolean bl) {
        if (flowItem.getContent() instanceof NativeInlineAd) {
            NativeInlineAd nativeInlineAd = (NativeInlineAd)flowItem.getContent();
            this.mAdLoader.registerClick(nativeInlineAd);
            if (nativeInlineAd.isInternal()) {
                this.handlePostContentClicked((PostContent)flowItem.getContent(), n2, (View)imageView, stack, bl, false, true, GlideUtils.isImageLoaded(imageView));
                return;
            }
            this.openExternalBuzz(nativeInlineAd.getAdUrl());
            return;
        } else {
            if (flowItem.getContent() instanceof VideoAdContent) {
                this.handleVideoAdContentClicked(flowItem, n2);
                return;
            }
            if (WeaverVideoUtils.hasVideoItemType(flowItem)) {
                this.handleVideoContentClicked((VideoContent)flowItem.getContent(), n2, (View)imageView);
                return;
            }
            if (flowItem.getType().equals(BuffetType.SHOW.name())) {
                this.handleShowClicked((ShowListContent)flowItem.getContent());
                return;
            }
            if (!(flowItem.getContent() instanceof PostContent)) return;
            {
                this.handlePostContentClicked((PostContent)flowItem.getContent(), n2, (View)imageView, stack, bl, false, false, GlideUtils.isImageLoaded(imageView));
                return;
            }
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mCurrentEdition = EnvironmentConfig.getEdition((Context)this.getActivity());
        this.mBuffetTracker = new BuffetTracker((Context)this.getActivity(), BuzzFeedTracker.getInstance(), DustbusterClient.getInstance(), this.mCurrentEdition);
        this.mVideoTracker = VideoTracker.getInstance();
        if (this.getArguments() != null && this.getArguments().get("KEY_FEED") != null) {
            this.switchFeed((Feed)this.getArguments().getSerializable("KEY_FEED"));
            return;
        }
        throw new RuntimeException("BuffetFragment must have a feed!");
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(2130903091, viewGroup, false);
    }

    @Override
    public void onDestroy() {
        this.mShareActionListener = null;
        super.onDestroy();
        this.mBuffetLoader.cancelPendingRequest();
    }

    @Override
    public void onDestroyView() {
        this.mAdHelper = null;
        this.mVideoPlayerPresenter.removeListener(this.mVideoCardStateHandler);
        this.mKeepScreenOnHelper.detachFromPresenter();
        this.mUnitImpressionRecorder = null;
        super.onDestroyView();
    }

    @Override
    public void onGetRecipeClicked(String string2) {
        SpicyActivity.startIntent(this.getActivity(), string2, this.mCurrentFeed);
    }

    public void onLoadNextPage() {
        if (this.mBuffetLoader.hasMorePages()) {
            this.mBuffetView.setSpinnerVisible(true);
            this.mBuffetLoader.loadNextPage(new BaseLoader.LoaderCallback(){

                @Override
                public void onError(Exception exception) {
                    LogUtil.e(TAG, exception.getMessage());
                    if (BuffetFragment.this.isAdded() && BuffetFragment.this.getView() != null) {
                        BuffetFragment.this.createErrorHandler(BuffetFragment.this.getView()).handleErrorResponse(exception);
                    }
                    BuffetFragment.this.mProgressiveLoadingManager.resetLoading();
                    BuffetFragment.this.mProgressiveLoadingManager.setNeedReload();
                    BuffetFragment.this.hideLoading();
                }

                @Override
                public void onLoadComplete() {
                    if (BuffetFragment.this.isAdded() && BuffetFragment.this.getActivity() != null && !BuffetFragment.this.getActivity().isFinishing()) {
                        if (BuffetFragment.this.isBookmarkFeedEmpty(BuffetFragment.this.mCurrentFeed, BuffetFragment.this.mBuffetLoader)) {
                            BuffetFragment.this.setErrorViewType(BuffetFragment.this.mErrorView, BuffetFragment.this.mCurrentFeed, false);
                        }
                        if (BuffetFragment.this.mErrorHandler != null) {
                            BuffetFragment.this.mErrorHandler.dismissSnackbarIfVisible();
                            BuffetFragment.this.mErrorHandler.setErrorOccurred(false);
                        }
                        BuffetFragment.this.mProgressiveLoadingManager.resetLoading();
                        BuffetFragment.this.prepareAds(BuffetFragment.this.mBuffetView.getItemCount(), BuffetFragment.this.mBuffetLoader.getFlowList());
                        BuffetFragment.this.mBuffetView.appendItems(BuffetFragment.this.mBuffetLoader.getFlowList());
                        BuffetFragment.this.mBuffetView.setSpinnerVisible(false);
                        BuffetFragment.this.trackScreenView();
                        BuffetFragment.this.displayConnectionNoticeIfOffline();
                    }
                }
            }, false);
            return;
        }
        this.mProgressiveLoadingManager.resetLoading();
    }

    @Override
    public void onNewsPackageClicked(PackageContent packageContent, PostContent postContent, int n2, int n3, @Nullable ImageView imageView, Stack<String> stack, boolean bl) {
        if (postContent.getUri() != null) {
            this.mBuffetTracker.trackNewsPackageClick(this.getScreenName(this.mCurrentFeed), packageContent, postContent, n2, n3);
            if (GlideUtils.isImageLoaded(imageView)) {
                SpicyActivity.startIntent(this.getActivity(), postContent, this.mCurrentFeed, (View)imageView, stack, bl);
                return;
            }
            SpicyActivity.startIntentWithoutTransition(this.getActivity(), postContent, this.mCurrentFeed);
            return;
        }
        LogUtil.e(TAG, "No URI for buzz, ignoring click");
    }

    @Override
    public void onPause() {
        super.onPause();
        this.mBuffetView.setBuffetEventListener(null);
        this.mErrorView.setErrorListener(null);
        this.stopAutoPlay();
        this.mBuffetVideoEventTracker.detachMediaComponents();
        this.onPauseComplete();
    }

    public void onPauseComplete() {
        this.trackUnitImpressions();
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.mAdLoader != null) {
            this.mAdLoader.resetCorrelator();
        }
        this.resumeBuffetView();
        this.mErrorView.setErrorListener(this);
        this.mErrorView.refreshErrorView(this.isUserLoggedIn());
        if (!this.isConnectedToNetwork()) {
            this.showSnackBarErrorIfNoConnection();
        }
        this.onResumeComplete();
        this.recordAttachedViewsForUnitImpression();
        this.mAdHelper.refreshAds();
        this.mBuffetVideoEventTracker.attachMediaComponents();
        this.startAutoPlay();
    }

    protected void onResumeComplete() {
        this.trackScreenView();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onShareClicked(final FlowItem flowItem, final int n2) {
        long l2;
        String string2;
        String string3;
        String string4 = null;
        String string5 = null;
        long l3 = 0;
        if (BuffetType.VIDEO_AD.equals((Object)BuffetType.fromFlowItem(flowItem))) {
            VideoAdContent videoAdContent = (VideoAdContent)flowItem.getContent();
            string2 = string5;
            string3 = string4;
            l2 = l3;
            if (videoAdContent != null) {
                string4 = videoAdContent.getShareUrl();
                string5 = videoAdContent.getTitle();
                l3 = VideoPlaybackUtils.getLastKnownVideoPosition(this.mVideoPlayerPresenter, videoAdContent.getContentUri());
                string2 = string4;
                string3 = string5;
                l2 = l3;
                if (this.mVideoAdLoader != null) {
                    this.mVideoAdLoader.setShouldRefreshAds(false);
                    l2 = l3;
                    string3 = string5;
                    string2 = string4;
                }
            }
        } else if (WeaverVideoUtils.hasVideoItemType(flowItem)) {
            VideoContent videoContent = (VideoContent)flowItem.getContent();
            string2 = string5;
            string3 = string4;
            l2 = l3;
            if (videoContent != null) {
                string2 = videoContent.getShareUrl();
                string3 = videoContent.getTitle();
                string4 = WeaverVideoUtils.getHlsVideoContentUri(WeaverVideoUtils.getFirstVideoFromVideoContent(videoContent));
                l2 = VideoPlaybackUtils.getLastKnownVideoPosition(this.mVideoPlayerPresenter, string4);
            }
        } else {
            PostContent postContent = (PostContent)flowItem.getContent();
            string2 = string5;
            string3 = string4;
            l2 = l3;
            if (postContent != null) {
                string2 = string5;
                string3 = string4;
                l2 = l3;
                if (!TextUtils.isEmpty((CharSequence)postContent.getUri())) {
                    string2 = EnvironmentConfig.getUrlWithSSLBaseUrl(postContent.getUri());
                    string3 = postContent.getSubject();
                    l2 = l3;
                }
            }
        }
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            this.mBuffetTracker.trackBuffetOpenShareSheet();
            this.mShareActionListener = new ShareManager.ShareActionListener(){

                @Override
                public void onShareAction(@Nullable String string2) {
                    if (WeaverVideoUtils.hasVideoItemType(flowItem) || BuffetType.VIDEO_AD.equals((Object)BuffetType.fromFlowItem(flowItem))) {
                        BuffetFragment.this.mVideoTracker.setPositionInFeed(n2);
                        BuffetFragment.this.mVideoTracker.sendShareVideoEvent(l2, string2, "feed_module", "share_sheet", "click:feed-module/share-sheet");
                        return;
                    }
                    BuffetFragment.this.mBuffetTracker.trackBuffetShareActivity(flowItem, BuffetFragment.this.getScreenName(BuffetFragment.this.mCurrentFeed), n2, string2);
                }
            };
            ShareManager.shareWithListener((Activity)this.getActivity(), string3, string2, this.mShareActionListener);
        }
    }

    @Override
    public void onShowImageClicked(VideoContent videoContent) {
        String string2 = TAG + ".onShowImageClicked";
        if (videoContent.getShow() != null) {
            this.mBuffetTracker.trackShowIconClicked(videoContent, this.getScreenName(this.mCurrentFeed));
            ShowPageActivity.startIntent((Context)this.getActivity(), videoContent.getShow());
            return;
        }
        LogUtil.e(string2, "Unable to start ShowPageActivity. No valid show content.");
    }

    @Override
    public void onStop() {
        if (this.mVideoAdLoader != null) {
            this.mVideoAdLoader.setShouldRefreshAds(true);
        }
        super.onStop();
    }

    @Override
    public void onVideoReloadClicked() {
        this.mVideoPlayerPresenter.play();
    }

    @Override
    public void onViewCreated(View view, Bundle object) {
        super.onViewCreated(view, (Bundle)object);
        this.mLoadingView = UIUtil.findView(view, 2131820743);
        this.mBuffetView = (BuffetView)((Object)UIUtil.findView(view, 2131820742));
        this.mBuffetView.setIsShowsFeed(this.isShowsList(this.mCurrentFeed));
        if (this.mBuffetRecycledViewPool != null) {
            this.mBuffetView.setRecycledViewPool(this.mBuffetRecycledViewPool);
        }
        this.mAdapter = new BuffetAdapter(ShrinkCellHeightAbTest.shouldUseSmallCells(this.getContext()));
        this.mBuffetView.setAdapter(this.mAdapter);
        object = VCRConfig.getInstance();
        this.mBuffetView.setMediaPlaybackPositionCache(object.getGlobalPositionCache());
        this.mBuffetView.setMediaPlaybackDebuggingEnabled(object.isDebugLoggingEnabled());
        this.mErrorView = (BuffetErrorView)((Object)UIUtil.findView(view, 2131820737));
        this.mRefreshView = (SwipeRefreshLayout)UIUtil.findView(view, 2131820741);
        this.mRefreshView.setColorSchemeResources(2131755029);
        this.mRefreshView.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener(){

            @Override
            public void onRefresh() {
                BuffetFragment.this.mBuffetTracker.trackPullToRefresh();
                BuffetFragment.this.onBuffetRefresh();
                if (BuffetFragment.this.mVideoAdLoader != null) {
                    BuffetFragment.this.mVideoAdLoader.setShouldRefreshAds(true);
                    VCRConfig.getInstance().getGlobalPositionCache().removePosition(BuffetFragment.this.mVideoAdLoader.getContentUri());
                }
            }
        });
        if (this.isShowsList(this.mCurrentFeed)) {
            this.mRefreshView.setEnabled(false);
        }
        this.mProgressiveLoadingManager = new ProgressiveLoadingManager(this.mBuffetView.getRecyclerView(), (LinearLayoutManager)this.mBuffetView.getRecyclerView().getLayoutManager(), this.mBuffetView.getAdapter(), new ProgressiveLoadingManager.ProgressiveLoadingListener(){

            @Override
            public void loadMore() {
                BuffetFragment.this.onLoadNextPage();
                if (BuffetFragment.this.mVideoAdLoader != null) {
                    BuffetFragment.this.mVideoAdLoader.setShouldRefreshAds(false);
                }
            }
        });
        if (VideoAdABTest.shouldShowVideoAds(this.getContext().getApplicationContext())) {
            this.mVideoAdLoader = VideoAdLoader.getInstance(this.getActivity().getApplicationContext());
        }
        this.setupAutoPlay();
        this.mVideoPlayerPresenter = this.setupPlayer();
        if (this.mCurrentFeed != null) {
            this.setupAnalytics(this.mVideoPlayerPresenter, this.mCurrentFeed);
            this.loadFeedIfNeeded();
        }
    }

    void openExternalBuzz(String string2) {
        if (string2 != null) {
            CustomTabUtils.openChromeTab(this.getActivity(), string2);
            return;
        }
        LogUtil.e(TAG, "Unable to open external buzz, no url");
    }

    protected void recordAttachedViewsForUnitImpression() {
        this.mUnitImpressionRecorder.recordAttachedViews();
    }

    @Override
    public void reloadFeed() {
        this.showLoading();
        this.loadFeed();
    }

    void resumeBuffetView() {
        this.mBuffetView.setBuffetEventListener(this);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void retryFeedLoad() {
        if (this.mErrorHandler == null || !this.mErrorHandler.hasErrorOccurred()) return;
        {
            if (this.mBuffetLoader.getFlowList().isEmpty() || this.mErrorView.getVisibility() == 0) {
                this.reloadFeed();
                return;
            } else {
                this.mErrorHandler.dismissSnackbarIfVisible();
                if (!this.mProgressiveLoadingManager.reloadNeeded()) return;
                {
                    this.onLoadNextPage();
                    return;
                }
            }
        }
    }

    @Override
    public void scrollToTop() {
        if (this.isAdded() && this.mBuffetView != null) {
            this.mBuffetView.smoothScrollToTop();
            return;
        }
        LogUtil.e(TAG, "Unable to perform smooth scroll. Fragment may not be added or ready.");
    }

    @Override
    public void setBuffetRecycledViewPool(@Nullable RecyclerView.RecycledViewPool recycledViewPool) {
        this.mBuffetRecycledViewPool = recycledViewPool;
        if (this.mBuffetView != null) {
            this.mBuffetView.setRecycledViewPool(this.mBuffetRecycledViewPool);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    void setErrorViewType(BuffetErrorView buffetErrorView, Feed feed, boolean bl) {
        if (FeedUtils.isSearchFeed(feed)) {
            buffetErrorView.setErrorType(BuffetErrorView.ErrorType.SEARCH);
        } else if (FeedUtils.isBookmarkFeed(feed)) {
            if (this.isUserLoggedIn() && bl) {
                buffetErrorView.setErrorType(BuffetErrorView.ErrorType.DEFAULT);
            } else {
                buffetErrorView.setErrorType(BuffetErrorView.ErrorType.BOOKMARK_EMPTY);
            }
        } else {
            buffetErrorView.setErrorType(BuffetErrorView.ErrorType.DEFAULT);
        }
        buffetErrorView.refreshErrorView(this.isUserLoggedIn());
    }

    public void showBuffet() {
        this.mLoadingView.setVisibility(8);
        this.mRefreshView.setVisibility(0);
        this.mErrorView.setVisibility(8);
    }

    public void showError() {
        this.hideLoading();
        this.mErrorView.setVisibility(0);
        this.setErrorViewType(this.mErrorView, this.mCurrentFeed, this.hasNetworkErrorOccurred());
    }

    public void showLoading() {
        this.mLoadingView.setVisibility(0);
        this.mRefreshView.setVisibility(8);
        this.mErrorView.setVisibility(8);
    }

    void showSnackBarErrorIfNoConnection() {
        if (this.getView() != null) {
            this.createErrorHandler(this.getView()).onNoConnectionError();
        }
    }

    protected void startAutoPlay() {
        this.startAutoFocusControllerIfNeeded();
        this.mVideoPlayerPresenter.play();
        this.mVideoPlayerPresenter.setAudioMuted(true);
        VideoCard videoCard = (VideoCard)this.mAutoFocusController.getCurrentViewHolder();
        if (videoCard != null) {
            this.mVideoPlayerPresenter.setTargetView(videoCard.getTextureView());
        }
        if (this.mVideoAdLoader != null) {
            this.mVideoAdLoader.updatePresenter(this.mVideoPlayerPresenter);
        }
    }

    public void startLoginActivityForResult() {
        this.startActivityForResult(new Intent((Context)this.getActivity(), (Class)BuzzLoginActivity.class), 0);
        if (this.mErrorHandler != null) {
            this.mErrorHandler.dismissSnackbarIfVisible();
        }
    }

    protected void stopAutoPlay() {
        this.mAutoFocusController.stop();
        this.mVideoPlayerPresenter.setTargetView(null);
        this.mVideoPlayerPresenter.release();
    }

    public void switchFeed(Feed feed) {
        if (ObjectUtil.areObjectsEqual(feed, this.mCurrentFeed)) {
            return;
        }
        if (this.mCurrentFeed != null) {
            this.trackUnitImpressions();
        }
        this.mCurrentFeed = feed;
        if (this.mBuffetVideoEventTracker != null) {
            this.mBuffetVideoEventTracker.setScreenName(this.getScreenName(this.mCurrentFeed));
        }
        this.mNeedFeedLoad = true;
        this.loadFeedIfNeeded();
    }

    public void toggleAutoplay(boolean bl) {
        if (bl) {
            this.startAutoFocusControllerIfNeeded();
            return;
        }
        this.stopAutoPlay();
    }

    public void trackScreenView() {
        if (this.mBuffetLoader != null) {
            this.mBuffetTracker.trackScreenView(this.mCurrentFeed, this.mBuffetLoader.getPage() - 1);
        }
    }

    public void trackUnitImpressions() {
        if (this.mCurrentFeed != null && this.mUnitImpressionRecorder != null) {
            this.mBuffetTracker.trackUnitImpressions(this.getScreenName(this.mCurrentFeed), this.mUnitImpressionRecorder.getUnitImpressionCollection());
            this.mUnitImpressionRecorder.clearUnitImpressionCollection();
        }
    }

    class AdHelper
    extends AbstractAdHelper {
        AdHelper(RecyclerView recyclerView) {
            super(recyclerView);
        }

        @Override
        public void loadAdForViewHolder(BaseCard baseCard) {
            BuffetFragment.this.onBuffetAdReady(baseCard.getAdapterPosition(), baseCard instanceof VideoAdCard);
        }
    }

    private static class InternalAutoFocusStrategy
    implements AutoFocusController.AutoFocusStrategy {
        private static final float VISIBILITY_RATIO = 0.333f;
        private Rect mTextureViewRect = new Rect();

        private InternalAutoFocusStrategy() {
        }

        private boolean isVideoCardFocusable(VideoCard videoCard) {
            boolean bl = false;
            videoCard = videoCard.getTextureView();
            boolean bl2 = bl;
            if (videoCard.getGlobalVisibleRect(this.mTextureViewRect)) {
                bl2 = bl;
                if ((float)(this.mTextureViewRect.bottom - this.mTextureViewRect.top) / (float)videoCard.getMeasuredHeight() > 0.333f) {
                    bl2 = true;
                }
            }
            return bl2;
        }

        @Override
        public boolean isFocusable(RecyclerView.ViewHolder viewHolder) {
            BuffetType buffetType = BuffetType.fromInt(viewHolder.getItemViewType());
            switch (.$SwitchMap$com$buzzfeed$toolkit$content$BuffetType[buffetType.ordinal()]) {
                default: {
                    return false;
                }
                case 1: 
                case 2: 
                case 3: 
            }
            return this.isVideoCardFocusable((VideoCard)viewHolder);
        }
    }

    private class InternalOnFocusChangeListener
    implements AutoFocusController.OnFocusChangeListener {
        private InternalOnFocusChangeListener() {
        }

        private void handleVideoAdFocusChange(VideoAdCard videoAdCard, boolean bl) {
            VideoAdContent videoAdContent = videoAdCard.getAdContent();
            if (bl) {
                if (videoAdContent != null && videoAdContent.isValid()) {
                    String string2 = videoAdContent.getContentUri();
                    BuffetFragment.this.mVideoAdLoader.startAd();
                    this.startPlayback(videoAdCard, string2);
                    BuffetFragment.this.mBuffetVideoEventTracker.setVideoContent(videoAdContent.getId(), videoAdContent.getTitle(), string2, videoAdContent.getDuration(), videoAdCard.getAdapterPosition());
                    return;
                }
                BuffetFragment.this.mVideoCardStateHandler.setTargetVideoCard(null);
                BuffetFragment.this.mBuffetVideoEventTracker.notifyContentReset();
                return;
            }
            this.stopPlayback(videoAdCard);
            BuffetFragment.this.mBuffetVideoEventTracker.notifyContentReset();
        }

        private void handleVideoFocusChange(VideoCard videoCard, boolean bl) {
            if (bl) {
                VideoContent videoContent = videoCard.getVideoContent();
                WeaverItem.Video video = WeaverVideoUtils.getFirstVideoFromVideoContent(videoContent);
                if (videoContent != null && video != null) {
                    this.startPlayback(videoCard, WeaverVideoUtils.getHlsVideoContentUri(video));
                    BuffetFragment.this.mBuffetVideoEventTracker.setVideoContent(videoContent, videoCard.getAdapterPosition());
                }
                return;
            }
            this.stopPlayback(videoCard);
            BuffetFragment.this.mBuffetVideoEventTracker.notifyContentReset();
        }

        private void startPlayback(VideoCard videoCard, String string2) {
            BuffetFragment.this.mVideoPlayerPresenter.setContent(string2, VideoType.inferContentType(string2));
            BuffetFragment.this.mVideoPlayerPresenter.setTargetView(videoCard.getTextureView());
            BuffetFragment.this.mVideoPlayerPresenter.play();
            BuffetFragment.this.mVideoPlayerPresenter.setAudioMuted(true);
            BuffetFragment.this.mVideoCardStateHandler.setTargetVideoCard(videoCard);
            videoCard.applyUiState(VideoCard.State.PREPARING);
        }

        private void stopPlayback(VideoCard videoCard) {
            BuffetFragment.this.mVideoPlayerPresenter.stop();
            BuffetFragment.this.mVideoPlayerPresenter.setContent(null, VideoType.NONE);
            BuffetFragment.this.mVideoPlayerPresenter.setTargetView(null);
            BuffetFragment.this.mVideoCardStateHandler.setTargetVideoCard(null);
            videoCard.applyUiState(VideoCard.State.STOPPED);
        }

        @Override
        public void onFocusChange(RecyclerView.ViewHolder viewHolder, boolean bl) {
            BuffetType buffetType = BuffetType.fromInt(viewHolder.getItemViewType());
            switch (.$SwitchMap$com$buzzfeed$toolkit$content$BuffetType[buffetType.ordinal()]) {
                default: {
                    return;
                }
                case 1: {
                    this.handleVideoAdFocusChange((VideoAdCard)viewHolder, bl);
                    return;
                }
                case 2: 
                case 3: 
            }
            this.handleVideoFocusChange((VideoCard)viewHolder, bl);
        }
    }

}

