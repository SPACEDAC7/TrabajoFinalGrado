/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.annotation.TargetApi
 *  android.app.Activity
 *  android.app.SharedElementCallback
 *  android.content.BroadcastReceiver
 *  android.content.Context
 *  android.content.Intent
 *  android.content.IntentFilter
 *  android.net.ConnectivityManager
 *  android.net.NetworkInfo
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.text.TextUtils
 *  android.transition.Transition
 *  android.transition.Transition$TransitionListener
 *  android.view.LayoutInflater
 *  android.view.TextureView
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.view.Window
 *  android.widget.ImageView
 *  android.widget.ProgressBar
 */
package com.buzzfeed.mediaviewer;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.transition.Transition;
import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.buzzfeed.analytics.client.VideoTracker;
import com.buzzfeed.android.vcr.VCRConfig;
import com.buzzfeed.android.vcr.player.VCRDefaultVideoPlayerPresenter;
import com.buzzfeed.android.vcr.player.VCRExoPlayer;
import com.buzzfeed.android.vcr.toolbox.PositionCache;
import com.buzzfeed.android.vcr.view.BaseControllerView;
import com.buzzfeed.android.vcr.view.TransitionListenerAdapter;
import com.buzzfeed.mediaviewer.BaseVideoViewerFragment;
import com.buzzfeed.mediaviewer.MediaViewerArgumentBuilder;
import com.buzzfeed.mediaviewer.ui.view.PlayerControlFooterView;
import com.buzzfeed.mediaviewer.ui.view.VideoContainerAnimationHelper;
import com.buzzfeed.mediaviewer.ui.view.VideoContainerView;
import com.buzzfeed.toolkit.content.VideoContent;
import com.buzzfeed.toolkit.content.WeaverEmbed;
import com.buzzfeed.toolkit.content.WeaverItem;
import com.buzzfeed.toolkit.ui.view.ForceAspectImageView;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.NetworkUtil;
import com.buzzfeed.toolkit.util.TransitionListener;
import com.buzzfeed.toolkit.util.VersionUtil;
import com.buzzfeed.toolkit.util.WeaverVideoUtils;
import java.io.Serializable;
import java.util.List;
import java.util.Stack;

public class VideoViewerFragment
extends BaseVideoViewerFragment {
    private static final IntentFilter INTENT_FILTER_NETWORK_CHANGE = new IntentFilter(){};
    public static final String KEY_SHARED_ELEMENT_TRANSITION = "KEY_SHARED_ELEMENT_TRANSITION";
    private static final String TAG = "VideoViewerFragment";
    public static final String TRANSITION_NAME_VIDEO = "TRANSITION_NAME_VIDEO";
    private boolean mIsAnimatingSharedElementTransition;
    protected boolean mNeedsPlayOnResume = true;
    private NetworkChangeReceiver mNetworkChangeReceiver;

    public VideoViewerFragment() {
        this.mNetworkChangeReceiver = new NetworkChangeReceiver();
    }

    private String prepareInitialPlaybackReason() {
        Bundle bundle = this.getArguments();
        if (bundle.containsKey("KEY_INITIAL_PLAYBACK_REASON")) {
            String string2 = bundle.getString("KEY_INITIAL_PLAYBACK_REASON");
            bundle.remove("KEY_INITIAL_PLAYBACK_REASON");
            return string2;
        }
        return "auto";
    }

    @TargetApi(value=21)
    private void setupSharedElementTransitionListeners() {
        Activity activity = this.getActivity();
        activity.getWindow().getEnterTransition().addListener((Transition.TransitionListener)new TransitionListenerAdapter(){

            @Override
            public void onTransitionEnd(Transition transition) {
                super.onTransitionEnd(transition);
                VideoViewerFragment.this.startInitialPlayback();
                VideoViewerFragment.this.mIsAnimatingSharedElementTransition = false;
                transition.removeListener((Transition.TransitionListener)this);
                VideoViewerFragment.this.updateViewPlaybackState();
            }
        });
        activity.setEnterSharedElementCallback(new SharedElementCallback(){

            public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
                super.onSharedElementEnd(list, list2, list3);
                VideoViewerFragment.this.setEnterSharedElementCallback(null);
            }

            public void onSharedElementStart(List<String> list, List<View> list2, List<View> list3) {
                super.onSharedElementStart(list, list2, list3);
                VideoViewerFragment.this.mViewHelper.startTransition();
            }
        });
    }

    private void startInitialPlayback() {
        long l2 = this.mVideoPlayerPresenter.getCurrentPosition();
        String string2 = this.prepareInitialPlaybackReason();
        this.mVideoTracker.sendPlayEventWithReason("MediaViewer", string2, l2);
        this.mVideoPlayerPresenter.play();
    }

    private void updateViewPlaybackState() {
        if (this.mVideoPlayerPresenter != null && this.mVideoPlayerPresenter.getVideoPlayer() != null) {
            VCRExoPlayer vCRExoPlayer = this.mVideoPlayerPresenter.getVideoPlayer();
            this.updateViewPlaybackState(vCRExoPlayer.getPlayWhenReady(), vCRExoPlayer.getPlaybackState());
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setRetainInstance(true);
        this.mIsAnimatingSharedElementTransition = this.getArguments().getBoolean("KEY_SHARED_ELEMENT_TRANSITION", false);
        if (this.mIsAnimatingSharedElementTransition) {
            this.getArguments().remove("KEY_SHARED_ELEMENT_TRANSITION");
        }
    }

    @Override
    protected VCRDefaultVideoPlayerPresenter onCreatePlayer(Context object) {
        object = new VCRDefaultVideoPlayerPresenter((Context)object);
        object.setPositionCache(VCRConfig.getInstance().getGlobalPositionCache());
        object.setDebugLoggingEnabled(VCRConfig.getInstance().isDebugLoggingEnabled());
        return object;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Nullable
    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.mIsAnimatingSharedElementTransition && VersionUtil.hasLollipop()) {
            if (this.getArguments().getString("KEY_SHARED_ELEMENT_NAME").equals("TRANSITION_NAME_COVER_IMAGE")) {
                this.onSetupSharedElement(this.mVideoContainerView.getCoverImageView());
            } else {
                this.onSetupSharedElement(this.mVideoContainerView.getTextureView());
            }
            this.mNeedsPlayOnResume = false;
        }
        this.mVideoPlayerPresenter.setTargetView(this.mVideoContainerView.getTextureView());
        return layoutInflater;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onHandleVideoPlayerOnPause() {
        boolean bl = this.mVideoPlayerPresenter.isPlaying() || this.mVideoPlayerPresenter.isReadyToPlay();
        this.mVideoPlayerPresenter.setTargetView(null);
        long l2 = this.mVideoPlayerPresenter.getCurrentPosition();
        if (this.getActivity().isChangingConfigurations()) {
            if (bl) {
                this.mVideoTracker.sendOrientationChange(l2);
            }
            if (!VersionUtil.hasJellyBeanMR2()) {
                if (bl) {
                    this.mNeedsPlayOnResume = true;
                } else if (this.mIsAnimatingSharedElementTransition) {
                    this.mNeedsPlayOnResume = true;
                    this.mIsAnimatingSharedElementTransition = false;
                }
                this.mVideoPlayerPresenter.release();
                return;
            } else {
                if (!this.mIsAnimatingSharedElementTransition) return;
                {
                    this.mNeedsPlayOnResume = true;
                    this.mIsAnimatingSharedElementTransition = false;
                    return;
                }
            }
        }
        if (this.getActivity().isFinishing()) {
            this.mVideoTracker.setPlayerLocation("media_viewer").sendLeaveMediaViewer(l2);
            if (bl) {
                this.mVideoTracker.setPlayerLocation("media_viewer").sendAutoPauseEvent(l2);
            }
            this.mVideoPlayerPresenter.release();
            return;
        }
        if (bl) {
            this.mNeedsPlayOnResume = true;
        }
        if (this.mNeedsPlayOnResume) {
            VideoTracker.getInstance().setPlayerLocation("media_viewer").sendAutoPauseEvent(l2);
        }
        this.mVideoPlayerPresenter.release();
    }

    /*
     * Enabled aggressive block sorting
     */
    @SuppressLint(value={"NewApi"})
    protected void onHandleVideoPlayerOnResume() {
        this.mVideoPlayerPresenter.setTargetView(this.mVideoContainerView.getTextureView());
        long l2 = this.mVideoPlayerPresenter.getCurrentPosition();
        if (this.mNeedsPlayOnResume && !this.mIsAnimatingSharedElementTransition) {
            this.mNeedsPlayOnResume = false;
            this.startInitialPlayback();
            return;
        }
        if (this.mErrorState == VideoContainerView.PlaybackErrorState.OFFLINE && NetworkUtil.isConnectedToNetwork((Context)this.getActivity())) {
            this.setErrorState(VideoContainerView.PlaybackErrorState.NONE);
            this.mVideoTracker.sendAutoPlayEvent("MediaViewer", l2);
            return;
        }
        if (this.mVideoPlayerPresenter.isPlaying() || this.mVideoPlayerPresenter.isReadyToPlay()) {
            this.showWithDelayedHide();
            if (this.mIsAnimatingSharedElementTransition && this.mVideoContainerView.getCoverImageView().getTransitionName() != null) {
                this.mVideoContainerView.getCoverImageView().setVisibility(0);
            } else {
                this.mVideoContainerView.getCoverImageView().setVisibility(8);
            }
            this.mVideoContainerView.getProgressBar().setVisibility(8);
            return;
        }
        if (this.mVideoPlayerPresenter.isReady() && this.mVideoPlayerPresenter.getCurrentPosition() != 0) {
            if (TextUtils.equals((CharSequence)Build.VERSION.RELEASE, (CharSequence)"4.4.2")) {
                LogUtil.d("VideoViewerFragment.onResume", "Applying work around for green video still bug.");
                l2 = this.mVideoPlayerPresenter.getCurrentPosition();
                this.mVideoPlayerPresenter.seekTo(l2 - 1);
                this.mVideoPlayerPresenter.seekTo(l2);
            }
            this.mVideoContainerView.getCoverImageView().setVisibility(8);
            this.mVideoContainerView.getProgressBar().setVisibility(8);
        }
        this.showSystemUi();
    }

    protected void onNetworkChange(@Nullable NetworkInfo networkInfo) {
        if (networkInfo != null && networkInfo.isConnected() && this.mErrorState != VideoContainerView.PlaybackErrorState.NONE) {
            this.mVideoPlayerPresenter.play();
            long l2 = this.mVideoPlayerPresenter.getCurrentPosition();
            this.mVideoTracker.sendAutoPlayEvent("MediaViewer", l2);
        }
    }

    @Override
    public void onPause() {
        if (this.mVideoPlayerPresenter != null) {
            this.onHandleVideoPlayerOnPause();
        }
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.mVideoPlayerPresenter != null) {
            this.onHandleVideoPlayerOnResume();
        }
    }

    @Override
    protected void onSetupButtons(View view, View view2) {
        super.onSetupButtons(view, view2);
        view2.setClickable(true);
        view2.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                VideoViewerFragment.this.mVideoPlayerPresenter.play();
                long l2 = VideoViewerFragment.this.mVideoPlayerPresenter.getCurrentPosition();
                VideoViewerFragment.this.mVideoTracker.sendClickToPlayEvent("MediaViewer", l2);
            }
        });
        view.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                VideoViewerFragment.this.getActivity().onBackPressed();
            }
        });
    }

    @Override
    protected void onSetupControllerView(PlayerControlFooterView playerControlFooterView, long l2) {
        super.onSetupControllerView(playerControlFooterView, l2);
        playerControlFooterView.setClickListener(new PlayPauseListener());
    }

    @TargetApi(value=21)
    protected void onSetupSharedElement(TextureView textureView) {
        textureView.setTransitionName("TRANSITION_NAME_VIDEO");
    }

    @TargetApi(value=21)
    protected void onSetupSharedElement(ImageView imageView) {
        imageView.setTransitionName("TRANSITION_NAME_COVER_IMAGE");
        this.setupSharedElementTransitionListeners();
    }

    public void onStart() {
        super.onStart();
        this.getActivity().registerReceiver((BroadcastReceiver)this.mNetworkChangeReceiver, INTENT_FILTER_NETWORK_CHANGE);
    }

    public void onStop() {
        super.onStop();
        this.getActivity().unregisterReceiver((BroadcastReceiver)this.mNetworkChangeReceiver);
    }

    @TargetApi(value=21)
    public void setSharedElementEnterTransition(Transition transition) {
        super.setSharedElementEnterTransition(transition);
        if (Build.VERSION.SDK_INT >= 19) {
            transition.addListener((Transition.TransitionListener)new TransitionListener(){

                @SuppressLint(value={"NewApi"})
                @Override
                public void onTransitionEnd(Transition transition) {
                    super.onTransitionEnd(transition);
                    if (!VideoViewerFragment.this.mVideoPlayerPresenter.isPlaying() && VideoViewerFragment.this.mVideoPlayerPresenter.isReadyToPlay()) {
                        VideoViewerFragment.this.startInitialPlayback();
                    }
                    VideoViewerFragment.this.mIsAnimatingSharedElementTransition = false;
                    transition.removeListener((Transition.TransitionListener)this);
                    VideoViewerFragment.this.updateViewPlaybackState();
                }
            });
        }
        this.setEnterSharedElementCallback(new SharedElementCallback(){

            public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
                super.onSharedElementEnd(list, list2, list3);
                VideoViewerFragment.this.mViewHelper.startTransition();
                VideoViewerFragment.this.setEnterSharedElementCallback(null);
            }
        });
    }

    public static class BundleBuilder<T extends BundleBuilder>
    extends MediaViewerArgumentBuilder<T> {
        public static final String KEY_SHARED_ELEMENT_NAME = "KEY_SHARED_ELEMENT_NAME";
        public static final String KEY_SHARED_ELEMENT_TRANSITION = "KEY_SHARED_ELEMENT_TRANSITION";

        public Bundle build() {
            Bundle bundle = new Bundle();
            bundle.putAll(this.mExtras);
            return bundle;
        }

        public T videoContent(VideoContent videoContent) {
            ((BundleBuilder)this.contentId(videoContent.getId())).sourceUri(videoContent.getShareUrl()).videoTitle(videoContent.getTitle()).coverImageUrl(videoContent.getThumbnailStack());
            WeaverItem.Video video = WeaverVideoUtils.getFirstVideoFromVideoContent(videoContent);
            if (video != null) {
                String string2;
                String string3 = string2 = WeaverVideoUtils.getHlsVideoContentUri(video);
                if (!TextUtils.isEmpty((CharSequence)string2)) {
                    string3 = NetworkUtil.convertHttpToHttps(string2);
                }
                float f2 = WeaverVideoUtils.getAspectRatioFromVideo(video);
                ((BundleBuilder)this.duration(video.getDuration())).contentUri(string3).aspectRatio(f2);
            }
            if (videoContent.getShow() != null) {
                this.showId(videoContent.getShow().getId());
            }
            return (T)this;
        }

        @TargetApi(value=21)
        public T withSharedElementCoverImage(View view) {
            this.mExtras.putBoolean("KEY_SHARED_ELEMENT_TRANSITION", true);
            this.mExtras.putString("KEY_SHARED_ELEMENT_NAME", "TRANSITION_NAME_COVER_IMAGE");
            view.setTransitionName("TRANSITION_NAME_COVER_IMAGE");
            return (T)this;
        }

        @TargetApi(value=21)
        public T withSharedElementVideo(TextureView textureView) {
            this.mExtras.putBoolean("KEY_SHARED_ELEMENT_TRANSITION", true);
            this.mExtras.putString("KEY_SHARED_ELEMENT_NAME", "TRANSITION_NAME_VIDEO");
            textureView.setTransitionName("TRANSITION_NAME_VIDEO");
            return (T)this;
        }
    }

    private class NetworkChangeReceiver
    extends BroadcastReceiver {
        private NetworkChangeReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
            VideoViewerFragment.this.onNetworkChange((NetworkInfo)context);
        }
    }

    private class PlayPauseListener
    implements BaseControllerView.ClickListener {
        private PlayPauseListener() {
        }

        @Override
        public void onPauseClicked() {
            long l2 = VideoViewerFragment.this.mVideoPlayerPresenter.getCurrentPosition();
            VideoViewerFragment.this.mVideoTracker.setPlayerLocation("media_viewer").sendClickVideoPauseEvent(l2);
            VideoViewerFragment.this.mVideoPlayerPresenter.pause();
        }

        @Override
        public void onPlayClicked() {
            long l2 = VideoViewerFragment.this.mVideoPlayerPresenter.getCurrentPosition();
            VideoViewerFragment.this.mVideoTracker.setPlayerLocation("media_viewer").sendClickToResumeVideoEvent(l2);
            VideoViewerFragment.this.mVideoPlayerPresenter.play();
        }
    }

}

