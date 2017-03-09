/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.Fragment
 *  android.content.BroadcastReceiver
 *  android.content.Context
 *  android.content.Intent
 *  android.content.IntentFilter
 *  android.content.res.Resources
 *  android.net.ConnectivityManager
 *  android.net.NetworkInfo
 *  android.os.Bundle
 *  android.text.Html
 *  android.text.TextUtils
 *  android.view.LayoutInflater
 *  android.view.TextureView
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.view.Window
 *  android.widget.ImageView
 *  android.widget.ProgressBar
 */
package com.buzzfeed.showx.showpage;

import android.app.Activity;
import android.app.Fragment;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.bumptech.glide.Glide;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.analytics.client.VideoTracker;
import com.buzzfeed.analytics.model.UnitImpression;
import com.buzzfeed.analytics.util.AbstractUnitImpressionRecorder;
import com.buzzfeed.android.vcr.VCRConfig;
import com.buzzfeed.android.vcr.model.VideoType;
import com.buzzfeed.android.vcr.player.KeepScreenOnHelper;
import com.buzzfeed.android.vcr.player.VCRDefaultVideoPlayerPresenter;
import com.buzzfeed.android.vcr.player.VideoSurfacePresenter;
import com.buzzfeed.android.vcr.toolbox.AutoFocusController;
import com.buzzfeed.android.vcr.toolbox.PositionCache;
import com.buzzfeed.buffet.ui.adapter.CardAdapter;
import com.buzzfeed.buffet.ui.holder.VideoCard;
import com.buzzfeed.buffet.ui.listener.VideoCardStateHandler;
import com.buzzfeed.showx.R;
import com.buzzfeed.showx.showpage.ShowPageContract;
import com.buzzfeed.showx.showpage.ShowPageHeaderHelper;
import com.buzzfeed.showx.showpage.ShowPagePresenter;
import com.buzzfeed.showx.showpage.data.ShowSubscriptionStorage;
import com.buzzfeed.showx.showpage.data.ShowUnitImpressionFactory;
import com.buzzfeed.showx.showpage.data.model.ShowPage;
import com.buzzfeed.showx.showpage.data.model.ShowPageItemType;
import com.buzzfeed.showx.showpage.data.tracker.ShowPageTracker;
import com.buzzfeed.showx.showpage.ui.view.InstallAppView;
import com.buzzfeed.showx.showpage.ui.view.ShowPageToolbar;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.VideoContent;
import com.buzzfeed.toolkit.content.WeaverEmbed;
import com.buzzfeed.toolkit.content.WeaverItem;
import com.buzzfeed.toolkit.ui.appbarlayout.BuzzFeedAppBarLayout;
import com.buzzfeed.toolkit.ui.appbarlayout.BuzzFeedAppBarLayoutController;
import com.buzzfeed.toolkit.ui.itemdecoration.SpacingItemDecoration;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.GlideUtils;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.NetworkUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.VersionUtil;
import com.buzzfeed.toolkit.util.VideoSettings;
import com.buzzfeed.toolkit.util.WeaverVideoUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public abstract class BaseShowPageFragment
extends Fragment
implements ShowPageContract.UpdatableView,
ShowPageContract.Presenter.Callbacks {
    private static final float HEADER_ASPECT_RATIO = 1.5f;
    public static final String KEY_TOOLBAR_STATE = "KEY_TOOLBAR_STATE";
    public static final String KEY_TRANSLATION_OFFSET = "KEY_TRANSLATION_OFFSET";
    public static final String TAG = "BaseShowPageFragment";
    private CardAdapter mAdapter;
    private BuzzFeedAppBarLayoutController mAppBarLayoutController;
    protected AutoFocusController mAutoFocusController;
    private ImageView mCoverImageView;
    @Nullable
    private ShowPage mCurrentShowPage;
    protected int mFocusedAdapterPosition;
    private ProgressBar mFooterProgressBar;
    private ShowPageHeaderHelper mHeaderAnimationHelper;
    private InstallAppView mInstallAppView;
    private KeepScreenOnHelper mKeepScreenOnHelper;
    private LinearLayoutManager mLayoutManager;
    private boolean mNeedsPlayOnResume;
    private boolean mNeedsVideoPlayerSetup;
    private NetworkChangeReceiver mNetworkChangeReceiver;
    protected RecyclerView mRecyclerView;
    protected String mScreenName;
    private FloatingActionButton mShareFab;
    protected String mShowId;
    protected ShowPagePresenter mShowPagePresenter;
    protected ShowPageTracker mShowPageTracker;
    private ShowSubscriptionStorage mShowSubscriptionStorage;
    @Nullable
    private String mShowTitle;
    private SwipeRefreshLayout mSwipeRefreshLayout;
    private ShowPageToolbar mToolbar;
    private ShowPageHeaderHelper.ToolbarState mToolbarStateOnRestore;
    private int mTranslationOffsetOnRestore;
    private UnitImpressionRecorder mUnitImpressionRecorder;
    private VideoCardStateHandler mVideoCardStateHandler;
    protected VideoTracker mVideoEventTracker;
    protected VCRDefaultVideoPlayerPresenter mVideoPlayerPresenter;

    public BaseShowPageFragment() {
        this.mNetworkChangeReceiver = new NetworkChangeReceiver();
        this.mToolbarStateOnRestore = null;
        this.mFocusedAdapterPosition = -1;
        this.mNeedsPlayOnResume = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private int calculateTopHeaderClearance() {
        int n2;
        int n3 = UIUtil.isPortrait(this.getActivity().getBaseContext()) ? UIUtil.getScreenWidth() : UIUtil.getScreenHeight();
        n3 = n2 = Math.round((float)n3 / 1.5f);
        if (!VersionUtil.hasLollipop()) return n3;
        return n2 - UIUtil.getStatusBarHeight((Context)this.getActivity());
    }

    private void configureFab() {
    }

    private void configureInstallAppView(View view) {
    }

    /*
     * Enabled aggressive block sorting
     */
    private void configureSwipeRefreshLayout() {
        int n2 = UIUtil.getActionBarHeight((Context)this.getActivity());
        int n3 = VersionUtil.hasLollipop() ? UIUtil.getStatusBarHeight((Context)this.getActivity()) : 0;
        int n4 = this.getResources().getDimensionPixelSize(R.dimen.padding_medium);
        this.mSwipeRefreshLayout.setEnabled(false);
        this.mSwipeRefreshLayout.setColorSchemeResources(R.color.buzzfeed_blue);
        this.mSwipeRefreshLayout.setProgressViewOffset(true, 0, n2 + n3 + n4);
    }

    private void configureTrackingComponents(VCRDefaultVideoPlayerPresenter vCRDefaultVideoPlayerPresenter) {
        this.mShowPageTracker = new ShowPageTracker((Context)this.getActivity(), this.mScreenName, VideoTracker.getInstance(), BuzzFeedTracker.getInstance(), vCRDefaultVideoPlayerPresenter);
    }

    private void detachTrackerIfNeeded() {
        if (this.mShowPageTracker != null && this.mShowPageTracker.isAttached()) {
            this.mShowPageTracker.detachMediaComponents();
        }
    }

    private boolean isFeedLoaded() {
        if (this.mAdapter != null && this.mAdapter.getItemCount() > 0) {
            return true;
        }
        return false;
    }

    private VCRDefaultVideoPlayerPresenter onSetupVideoPlayback(VCRDefaultVideoPlayerPresenter vCRDefaultVideoPlayerPresenter) {
        vCRDefaultVideoPlayerPresenter.setAudioMuted(false);
        this.mVideoCardStateHandler = new VideoCardStateHandler();
        this.mKeepScreenOnHelper = new KeepScreenOnHelper(this.getActivity().getWindow());
        this.mKeepScreenOnHelper.attachTo(vCRDefaultVideoPlayerPresenter);
        vCRDefaultVideoPlayerPresenter.addListener(this.mVideoCardStateHandler);
        this.configureTrackingComponents(vCRDefaultVideoPlayerPresenter);
        return vCRDefaultVideoPlayerPresenter;
    }

    private void restoreToolBarStateIfNeeded(View view) {
        if (this.mTranslationOffsetOnRestore != 0 && this.mToolbarStateOnRestore != null) {
            UIUtil.runAfterLayout(view, new Runnable(this.mTranslationOffsetOnRestore, this.mToolbarStateOnRestore){
                final /* synthetic */ int val$offset;
                final /* synthetic */ ShowPageHeaderHelper.ToolbarState val$state;

                @Override
                public void run() {
                    BaseShowPageFragment.this.restoreToolbarState(this.val$offset, this.val$state);
                }
            });
            this.mTranslationOffsetOnRestore = 0;
            this.mToolbarStateOnRestore = null;
        }
    }

    private void restoreToolbarState(int n2, ShowPageHeaderHelper.ToolbarState toolbarState) {
        if (n2 != 0) {
            this.mAppBarLayoutController.setTranslationOffset(n2);
        }
        if (toolbarState != null) {
            this.mHeaderAnimationHelper.setToolbarState(toolbarState);
        }
    }

    private void setupAutoPlay() {
        this.mAutoFocusController = new AutoFocusController();
        this.mAutoFocusController.addOnFocusChangeListener(new InternalOnFocusChangeListener());
        this.mAutoFocusController.setAutoFocusStrategy(new InternalAutoFocusStrategy());
        this.mAutoFocusController.attachView(this.mRecyclerView);
    }

    private void startAutoFocusAfterLayoutIfNeeded(final boolean bl) {
        if (this.isFeedLoaded()) {
            this.mAutoFocusController.start(bl);
            return;
        }
        UIUtil.runAfterLayout((View)this.mRecyclerView, new Runnable(){

            @Override
            public void run() {
                BaseShowPageFragment.this.startAutoFocusIfNeeded(bl);
            }
        });
    }

    private void startAutoFocusIfNeeded(boolean bl) {
        if (VideoSettings.isInAutoplayMode((Context)this.getActivity()) && !this.mAutoFocusController.isStarted() && this.isFeedLoaded()) {
            if (this.mFocusedAdapterPosition != -1) {
                this.mAutoFocusController.requestFocus(this.mFocusedAdapterPosition);
                this.mFocusedAdapterPosition = -1;
            }
            this.mAutoFocusController.start(bl);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void startPlaybackInternal(VideoCard videoCard, String string2) {
        this.mVideoPlayerPresenter.setContent(string2, VideoType.inferContentType(string2));
        this.mVideoPlayerPresenter.setTargetView(videoCard.getTextureView());
        if (!this.mVideoPlayerPresenter.isPlaying()) {
            videoCard.applyUiState(VideoCard.State.PREPARING);
            this.mVideoPlayerPresenter.play();
        } else {
            videoCard.applyUiState(VideoCard.State.PLAYING);
        }
        this.mVideoPlayerPresenter.setAudioMuted(true);
        this.mVideoCardStateHandler.setTargetVideoCard(videoCard);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void toggleSubscriptionStatus() {
        String string2;
        if (this.mShowSubscriptionStorage.isSubscribedToShow(this.mShowId)) {
            this.mShowSubscriptionStorage.unsubscribeFromShow(this.mShowId);
            string2 = String.format(this.getString(R.string.show_subscriptions_disable_notifications_snackbar), this.mShowTitle);
        } else {
            this.mShowSubscriptionStorage.subscribeToShow(this.mShowId);
            string2 = String.format(this.getString(R.string.show_subscriptions_enable_notifications_snackbar), this.mShowTitle);
        }
        this.mShowPageTracker.trackTapSubscribeButton(this.mShowId, this.mShowSubscriptionStorage.isSubscribedToShow(this.mShowId));
        LogUtil.d("BaseShowPageFragment", "Setting show subscription status for show: " + this.mShowId + " to: " + this.mShowSubscriptionStorage.isSubscribedToShow(this.mShowId));
        if (this.getView() != null) {
            Snackbar.make(this.getView(), (CharSequence)Html.fromHtml((String)string2), -1).show();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void trackPage() {
        int n2 = this.mCurrentShowPage != null ? this.mCurrentShowPage.pageNumber : 1;
        this.mShowPageTracker.trackPageView(n2);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void trackPageLoadIfNeeded(ShowPage showPage) {
        if (showPage == null) {
            return;
        }
        if (this.mCurrentShowPage != null) {
            if (this.mCurrentShowPage.pageNumber == showPage.pageNumber) return;
        }
        this.mCurrentShowPage = showPage;
        if (this.mCurrentShowPage.pageNumber <= 1) return;
        this.trackPage();
    }

    private void updateToolbarTitleIfNecessary(ShowPage showPage) {
        if (TextUtils.isEmpty((CharSequence)this.mShowTitle) && showPage.show != null && !TextUtils.isEmpty((CharSequence)showPage.show.getName())) {
            this.mShowTitle = showPage.show.getName();
            this.configureToolbar(this.mToolbar, this.mShowTitle);
        }
    }

    @Override
    public void appendItems(@NonNull List<FlowItem> list) {
        EZUtil.checkNotNull(this.mAdapter, "Adapter must not be null.");
        this.mAdapter.appendItems(list);
    }

    protected void clearRestoreFocusPosition() {
        this.mFocusedAdapterPosition = -1;
        this.mNeedsPlayOnResume = false;
    }

    protected void configureRecyclerView() {
        int n2 = Math.round(this.getResources().getDimension(R.dimen.buffet_gutter));
        int n3 = Math.round(this.getResources().getDimension(R.dimen.buffet_margin));
        int n4 = this.calculateTopHeaderClearance();
        this.mLayoutManager = new LinearLayoutManager((Context)this.getActivity());
        this.mRecyclerView.setLayoutManager(this.mLayoutManager);
        this.mRecyclerView.addItemDecoration(new SpacingItemDecoration(n2, n3, n4, true));
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void configureToolbar(Toolbar toolbar, String string2) {
        if (toolbar == null) {
            return;
        }
        if (TextUtils.isEmpty((CharSequence)string2)) {
            string2 = this.getString(R.string.showpage_toolbar_title_default);
        }
        toolbar.setTitle(string2);
        ((AppCompatActivity)this.getActivity()).setSupportActionBar(toolbar);
        toolbar.setNavigationOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                BaseShowPageFragment.this.getActivity().onBackPressed();
            }
        });
    }

    @Override
    public VCRDefaultVideoPlayerPresenter getPlayer() {
        return this.mVideoPlayerPresenter;
    }

    public ShowPagePresenter getPresenter() {
        return this.mShowPagePresenter;
    }

    @Override
    public RecyclerView getRecyclerView() {
        return this.mRecyclerView;
    }

    protected abstract boolean isPushNotificationsEnabled();

    @Override
    public boolean isSubscribedToShow() {
        return this.mShowSubscriptionStorage.isSubscribedToShow(this.mShowId);
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.mShowSubscriptionStorage = new ShowSubscriptionStorage(this.getActivity().getApplicationContext());
        this.mShowPagePresenter.attachView(this);
        this.mShowPagePresenter.setPresenterCallbacks(this);
        if (this.mNeedsVideoPlayerSetup) {
            this.onSetupVideoPlayback(this.mVideoPlayerPresenter);
            this.mNeedsVideoPlayerSetup = false;
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null && bundle.containsKey("KEY_TOOLBAR_STATE") && bundle.containsKey("KEY_TRANSLATION_OFFSET")) {
            this.mTranslationOffsetOnRestore = bundle.getInt("KEY_TRANSLATION_OFFSET");
            this.mToolbarStateOnRestore = ShowPageHeaderHelper.ToolbarState.valueOf(bundle.getString("KEY_TOOLBAR_STATE"));
        }
        bundle = this.getArguments();
        this.mShowId = bundle.getString("SELECTED_SHOW_ID");
        this.mShowTitle = bundle.getString("SELECTED_SHOW_TITLE");
        this.mScreenName = "/list/show/" + this.mShowId;
    }

    protected VCRDefaultVideoPlayerPresenter onCreateDefaultPlayer(Context object) {
        object = new VCRDefaultVideoPlayerPresenter((Context)object);
        object.setPositionCache(VCRConfig.getInstance().getGlobalPositionCache());
        object.setDebugLoggingEnabled(VCRConfig.getInstance().isDebugLoggingEnabled());
        return object;
    }

    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup object, Bundle object2) {
        layoutInflater = layoutInflater.inflate(R.layout.fragment_show_page, (ViewGroup)object, false);
        this.mSwipeRefreshLayout = (SwipeRefreshLayout)UIUtil.findView((View)layoutInflater, R.id.show_page_swipe_refresh_layout);
        this.mFooterProgressBar = (ProgressBar)UIUtil.findView((View)layoutInflater, R.id.show_page_footer_progress_bar);
        this.mCoverImageView = (ImageView)UIUtil.findView((View)layoutInflater, R.id.show_page_cover);
        this.mRecyclerView = (RecyclerView)UIUtil.findView((View)layoutInflater, R.id.show_page_recyclerView);
        this.mShareFab = (FloatingActionButton)((Object)UIUtil.findView((View)layoutInflater, R.id.share_button));
        this.mInstallAppView = (InstallAppView)((Object)UIUtil.findView((View)layoutInflater, R.id.download_app_view));
        if (this.mVideoPlayerPresenter == null) {
            this.mVideoPlayerPresenter = this.onCreateDefaultPlayer(layoutInflater.getContext());
            this.onSetupVideoPlayback(this.mVideoPlayerPresenter);
        }
        this.setupAutoPlay();
        UIUtil.tintProgressBar((Context)this.getActivity(), this.mFooterProgressBar, R.color.buzzfeed_blue);
        object = (BuzzFeedAppBarLayout)((Object)UIUtil.findView((View)layoutInflater, R.id.show_page_appbar));
        this.mToolbar = (ShowPageToolbar)((Object)UIUtil.findView((View)layoutInflater, R.id.toolbar));
        object2 = UIUtil.findView((View)layoutInflater, R.id.show_page_header_overlay);
        this.configureRecyclerView();
        this.configureSwipeRefreshLayout();
        this.configureFab();
        this.configureInstallAppView((View)layoutInflater);
        this.configureToolbar(this.mToolbar, this.mShowTitle);
        this.mHeaderAnimationHelper = new ShowPageHeaderHelper(this.mToolbar, (AppBarLayout)((Object)object), (View)object2);
        this.mAppBarLayoutController = new BuzzFeedAppBarLayoutController();
        this.mAppBarLayoutController.attachView(this.mRecyclerView, this.mLayoutManager, (BuzzFeedAppBarLayout)((Object)object));
        this.mVideoEventTracker = VideoTracker.getInstance();
        this.mUnitImpressionRecorder = new UnitImpressionRecorder(this.mRecyclerView);
        this.restoreToolBarStateIfNeeded((View)layoutInflater);
        return layoutInflater;
    }

    public void onDestroy() {
        this.mShowPageTracker = null;
        super.onDestroy();
    }

    public void onDestroyView() {
        super.onDestroyView();
        Glide.clear((View)this.mCoverImageView);
        if (this.mToolbarStateOnRestore == null) {
            this.mToolbarStateOnRestore = this.mHeaderAnimationHelper.getToolbarState();
        }
        this.mHeaderAnimationHelper.detach();
        RecyclerView.ViewHolder viewHolder = this.mAutoFocusController.getCurrentViewHolder();
        if (viewHolder != null && this.mFocusedAdapterPosition == -1) {
            this.mFocusedAdapterPosition = viewHolder.getAdapterPosition();
        }
        this.mAutoFocusController.detachView();
        if (this.mShowPagePresenter != null) {
            this.mShowPagePresenter.detachView();
            this.mShowPagePresenter.setPresenterCallbacks(null);
        }
        this.mHeaderAnimationHelper = null;
        if (this.mTranslationOffsetOnRestore == 0) {
            this.mTranslationOffsetOnRestore = this.mAppBarLayoutController.getTranslationOffset();
        }
        this.mAppBarLayoutController.detachView();
        this.mAppBarLayoutController = null;
        this.mRecyclerView.setAdapter(null);
        this.mRecyclerView = null;
        this.mLayoutManager = null;
        this.mAdapter = null;
        this.mCoverImageView = null;
        this.mUnitImpressionRecorder = null;
    }

    @Override
    public void onGetRecipeClicked(@NonNull String string2) {
    }

    public abstract void onInstantAppInstall();

    @CallSuper
    protected void onNetworkChange(@Nullable NetworkInfo networkInfo) {
        if (this.mShowPagePresenter != null) {
            this.mShowPagePresenter.handleConnectivityChange();
        }
    }

    public void onPause() {
        this.mAutoFocusController.stop();
        if (this.mVideoPlayerPresenter != null) {
            if (this.mVideoPlayerPresenter.isPlaying() || this.mVideoPlayerPresenter.isReadyToPlay() || this.mRecyclerView.getScrollState() == 2) {
                this.mNeedsPlayOnResume = true;
            }
            this.mVideoPlayerPresenter.setTargetView(null);
            this.mVideoPlayerPresenter.release();
        }
        this.mShowPageTracker.trackUnitImpressions(this.mShowId, this.mUnitImpressionRecorder.getUnitImpressionCollection());
        this.mUnitImpressionRecorder.clearUnitImpressionCollection();
        super.onPause();
    }

    public void onResume() {
        super.onResume();
        this.startAutoFocusAfterLayoutIfNeeded(this.mNeedsPlayOnResume);
        if (this.mVideoPlayerPresenter != null) {
            VideoCard videoCard = (VideoCard)this.mAutoFocusController.getCurrentViewHolder();
            if (videoCard != null) {
                this.mVideoPlayerPresenter.setTargetView(videoCard.getTextureView());
            }
            if (this.mNeedsPlayOnResume) {
                this.mVideoPlayerPresenter.play();
                this.mNeedsPlayOnResume = false;
            }
        }
        this.mUnitImpressionRecorder.recordAttachedViews();
        this.trackPage();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.mAppBarLayoutController != null) {
            this.mTranslationOffsetOnRestore = this.mAppBarLayoutController.getTranslationOffset();
        }
        if (this.mTranslationOffsetOnRestore != 0) {
            bundle.putInt("KEY_TRANSLATION_OFFSET", this.mTranslationOffsetOnRestore);
        }
        if (this.mHeaderAnimationHelper != null) {
            this.mToolbarStateOnRestore = this.mHeaderAnimationHelper.getToolbarState();
        }
        if (this.mToolbarStateOnRestore != null) {
            bundle.putString("KEY_TOOLBAR_STATE", this.mToolbarStateOnRestore.name());
        }
    }

    @Override
    public void onShareClicked(FlowItem flowItem, int n2) {
    }

    @Override
    public void onShowPageLoaded(ShowPage showPage) {
        if (this.mCurrentShowPage == null) {
            this.mAppBarLayoutController.setTranslationOffset(0);
        }
        this.updateToolbarTitleIfNecessary(showPage);
        this.trackPageLoadIfNeeded(showPage);
        this.startAutoFocusIfNeeded(true);
    }

    public void onStart() {
        super.onStart();
        this.getActivity().registerReceiver((BroadcastReceiver)this.mNetworkChangeReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.mShowPageTracker.attachMediaComponents();
    }

    public void onStop() {
        super.onStop();
        this.getActivity().unregisterReceiver((BroadcastReceiver)this.mNetworkChangeReceiver);
        this.mShowPageTracker.detachMediaComponents();
    }

    @Override
    public void onSubscribeButtonClicked() {
        if (this.mShowSubscriptionStorage.isSubscribedToShow(this.mShowId)) {
            this.showDisableShowSubscriptionPrompt(new PushNotificationPromptCallback(){

                @Override
                public void canceled() {
                    BaseShowPageFragment.this.mShowPageTracker.trackUnsubscribeNotificationCanceled(BaseShowPageFragment.this.mShowId);
                }

                @Override
                public void onChangePushNotificationSetting() {
                    BaseShowPageFragment.this.toggleSubscriptionStatus();
                    BaseShowPageFragment.this.mShowPagePresenter.refreshSubscribeCard();
                }
            });
            return;
        }
        if (!this.isPushNotificationsEnabled()) {
            this.showEnablePushNotificationPrompt(new PushNotificationPromptCallback(){

                @Override
                public void canceled() {
                    BaseShowPageFragment.this.mShowPageTracker.trackEnableNotificationCanceled(BaseShowPageFragment.this.mShowId);
                }

                @Override
                public void onChangePushNotificationSetting() {
                    BaseShowPageFragment.this.setPushNotificationsEnabled();
                    BaseShowPageFragment.this.toggleSubscriptionStatus();
                    BaseShowPageFragment.this.mShowPagePresenter.refreshSubscribeCard();
                }
            });
            return;
        }
        this.toggleSubscriptionStatus();
    }

    protected void onVideoCardFocusChanged(VideoCard videoCard, boolean bl) {
    }

    @Override
    public void onVideoCellClicked(@NonNull VideoContent videoContent, @Nullable ImageView imageView, long l2, int n2, boolean bl) {
    }

    @Override
    public void setAdapter(@Nullable CardAdapter cardAdapter) {
        this.mAdapter = cardAdapter;
        this.mRecyclerView.setAdapter(this.mAdapter);
    }

    @Override
    public void setCoverImage(@Nullable String string2) {
        GlideUtils.loadImageCenterCrop(this.mCoverImageView.getContext(), this.mCoverImageView, string2);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void setFooterProgressVisibility(boolean bl) {
        ProgressBar progressBar = this.mFooterProgressBar;
        int n2 = bl ? 0 : 8;
        progressBar.setVisibility(n2);
    }

    @Override
    public void setHeaderProgressVisibility(boolean bl) {
        this.mSwipeRefreshLayout.setRefreshing(bl);
    }

    @Override
    public void setPresenter(ShowPagePresenter showPagePresenter) {
        this.mShowPagePresenter = showPagePresenter;
        this.mShowPagePresenter.setPresenterCallbacks(this);
    }

    protected abstract void setPushNotificationsEnabled();

    @Override
    public void setShowPageModel(@NonNull ShowPage showPage) {
        Object object = showPage.flowList;
        EZUtil.checkNotNull(this.mAdapter, "Adapter must not be null.");
        EZUtil.checkNotNull(object, "FlowList must not be null.");
        this.mAdapter.setList((List<FlowItem>)object);
        object = showPage.show;
        if (object != null) {
            this.mShowId = showPage.show.getId();
            this.mShowTitle = object.getName();
        }
    }

    public void setTracker(ShowPageTracker showPageTracker) {
        this.mShowPageTracker = showPageTracker;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void setVideoPlayer(VCRDefaultVideoPlayerPresenter vCRDefaultVideoPlayerPresenter) {
        if (this.mVideoPlayerPresenter == vCRDefaultVideoPlayerPresenter) {
            return;
        }
        if (this.mVideoPlayerPresenter != null) {
            if (this.mKeepScreenOnHelper != null) {
                this.mKeepScreenOnHelper.detachFromPresenter();
            }
            this.mVideoPlayerPresenter.removeListener(this.mVideoCardStateHandler);
            this.detachTrackerIfNeeded();
        }
        if (vCRDefaultVideoPlayerPresenter != null && this.getActivity() != null) {
            this.onSetupVideoPlayback(vCRDefaultVideoPlayerPresenter);
        } else {
            this.mNeedsVideoPlayerSetup = true;
        }
        this.mVideoPlayerPresenter = vCRDefaultVideoPlayerPresenter;
        if (this.mVideoPlayerPresenter == null) return;
        this.mVideoPlayerPresenter.setAudioMuted(true);
    }

    protected abstract void showDisableShowSubscriptionPrompt(PushNotificationPromptCallback var1);

    protected abstract void showEnablePushNotificationPrompt(PushNotificationPromptCallback var1);

    protected void startPlayback(VideoCard videoCard) {
        VideoContent videoContent = videoCard.getVideoContent();
        Object object = WeaverVideoUtils.getFirstVideoFromVideoContent(videoContent);
        if (videoContent != null && object != null) {
            String string2;
            object = string2 = WeaverVideoUtils.getHlsVideoContentUri((WeaverItem.Video)object);
            if (!TextUtils.isEmpty((CharSequence)string2)) {
                object = NetworkUtil.convertHttpToHttps(string2);
            }
            this.startPlaybackInternal(videoCard, (String)object);
            this.mShowPageTracker.setVideoContent(videoContent, videoCard.getAdapterPosition());
        }
    }

    protected void stopPlayback() {
        this.mVideoPlayerPresenter.stop();
        this.mVideoPlayerPresenter.setContent(null, VideoType.NONE);
        this.mVideoPlayerPresenter.setTargetView(null);
        VideoCard videoCard = this.mVideoCardStateHandler.getTargetViewCard();
        if (videoCard != null) {
            this.mVideoCardStateHandler.setTargetVideoCard(null);
            videoCard.applyUiState(VideoCard.State.STOPPED);
        }
        this.mShowPageTracker.notifyContentReset();
    }

    @Override
    public void toggleAutoPlay(boolean bl) {
        if (bl) {
            this.startAutoFocusIfNeeded(true);
            return;
        }
        this.mAutoFocusController.stop();
    }

    @Override
    public void updateItem(int n2) {
        EZUtil.checkNotNull(this.mAdapter, "Adapter must not be null.");
        this.mAdapter.notifyItemChanged(n2);
    }

    private final class InternalAutoFocusStrategy
    implements AutoFocusController.AutoFocusStrategy {
        private InternalAutoFocusStrategy() {
        }

        @Override
        public boolean isFocusable(RecyclerView.ViewHolder object) {
            object = ShowPageItemType.fromInt(object.getItemViewType());
            switch (.$SwitchMap$com$buzzfeed$showx$showpage$data$model$ShowPageItemType[object.ordinal()]) {
                default: {
                    return false;
                }
                case 1: 
                case 2: 
            }
            return true;
        }
    }

    private class InternalOnFocusChangeListener
    implements AutoFocusController.OnFocusChangeListener {
        private InternalOnFocusChangeListener() {
        }

        /*
         * Enabled aggressive block sorting
         */
        private void handleVideoFocusChange(VideoCard videoCard, boolean bl) {
            if (BaseShowPageFragment.this.mVideoPlayerPresenter == null) {
                return;
            }
            if (bl) {
                BaseShowPageFragment.this.startPlayback(videoCard);
            } else {
                BaseShowPageFragment.this.stopPlayback();
            }
            BaseShowPageFragment.this.onVideoCardFocusChanged(videoCard, bl);
        }

        @Override
        public void onFocusChange(RecyclerView.ViewHolder viewHolder, boolean bl) {
            ShowPageItemType showPageItemType = ShowPageItemType.fromInt(viewHolder.getItemViewType());
            switch (.$SwitchMap$com$buzzfeed$showx$showpage$data$model$ShowPageItemType[showPageItemType.ordinal()]) {
                default: {
                    throw new IllegalArgumentException("No case for viewType " + (Object)((Object)showPageItemType));
                }
                case 1: 
                case 2: 
            }
            this.handleVideoFocusChange((VideoCard)viewHolder, bl);
        }
    }

    private final class NetworkChangeReceiver
    extends BroadcastReceiver {
        private NetworkChangeReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
            BaseShowPageFragment.this.onNetworkChange((NetworkInfo)context);
        }
    }

    protected static interface PushNotificationPromptCallback {
        public void canceled();

        public void onChangePushNotificationSetting();
    }

    private class UnitImpressionRecorder
    extends AbstractUnitImpressionRecorder {
        ShowUnitImpressionFactory mUnitImpressionFactory;

        UnitImpressionRecorder(RecyclerView recyclerView) {
            super(recyclerView);
            this.mUnitImpressionFactory = new ShowUnitImpressionFactory();
        }

        @Override
        protected List<UnitImpression> onCreateUnitImpressionsForViewHolder(RecyclerView.ViewHolder object) {
            int n2 = object.getAdapterPosition();
            FlowItem flowItem = BaseShowPageFragment.this.mAdapter.getItemForPosition(n2);
            String string2 = flowItem.getId();
            object = ShowPageItemType.fromInt(object.getItemViewType());
            ArrayList<UnitImpression> arrayList = new ArrayList<UnitImpression>();
            if (!this.containsUnitImpression(string2)) {
                LogUtil.d(TAG, "Unit impression was recorded with id " + string2 + " at position " + n2 + " for feed name " + BaseShowPageFragment.this.mShowId);
                arrayList.add(this.mUnitImpressionFactory.createUnitImpression(flowItem, (ShowPageItemType)((Object)object), n2));
            }
            return arrayList;
        }
    }

}

