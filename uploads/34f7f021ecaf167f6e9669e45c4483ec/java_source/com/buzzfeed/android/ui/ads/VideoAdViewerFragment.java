/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.os.Bundle
 *  android.text.TextUtils
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.ViewGroup
 */
package com.buzzfeed.android.ui.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.buzzfeed.ads.video.VideoAdLoader;
import com.buzzfeed.analytics.client.VideoTracker;
import com.buzzfeed.android.vcr.model.VideoType;
import com.buzzfeed.android.vcr.player.VCRDefaultVideoPlayerPresenter;
import com.buzzfeed.mediaviewer.VideoViewerFragment;
import com.buzzfeed.mediaviewer.ui.view.PlayerControlFooterView;
import com.buzzfeed.mediaviewer.ui.view.VideoContainerView;
import com.buzzfeed.mediaviewer.ui.view.VideoHeaderView;
import com.buzzfeed.toolkit.ui.view.ForceAspectImageView;
import com.buzzfeed.toolkit.util.VersionUtil;

public class VideoAdViewerFragment
extends VideoViewerFragment {
    private VideoAdLoader mVideoAdLoader;

    private String getSponsorAvatarUrl() {
        return this.getArguments().getString("KEY_SPONSOR_AVATAR_URL");
    }

    private String getSponsorName() {
        return this.getArguments().getString("KEY_SPONSOR_NAME");
    }

    @Override
    protected String getCoverImageUrl(int n2) {
        return this.getArguments().getString("KEY_COVER_IMAGE");
    }

    public void onBackPressed() {
        this.mVideoAdLoader.setShouldRefreshAds(false);
        long l2 = this.mVideoPlayerPresenter.getCurrentPosition();
        VideoTracker.getInstance().setPlayerLocation("media_viewer").sendLeaveMediaViewer(l2);
        if (this.mVideoPlayerPresenter.isPlaying()) {
            VideoTracker.getInstance().setPlayerLocation("media_viewer").sendAutoPauseEvent(l2);
        }
        this.mVideoPlayerPresenter.release();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setRetainInstance(true);
        this.mNeedsPlayOnResume = true;
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mVideoAdLoader = VideoAdLoader.getInstance(viewGroup.getContext());
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onHandleVideoPlayerOnPause() {
        long l2 = this.mVideoPlayerPresenter.getCurrentPosition();
        if (this.getActivity().isChangingConfigurations()) {
            this.mVideoPlayerPresenter.setTargetView(null);
            if (this.mVideoPlayerPresenter.isPlaying()) {
                VideoTracker.getInstance().sendOrientationChange(l2);
            }
            if (VersionUtil.hasJellyBeanMR2()) return;
            {
                this.mVideoPlayerPresenter.release();
                this.mNeedsPlayOnResume = true;
                return;
            }
        } else {
            if (this.getActivity().isFinishing()) return;
            {
                super.onHandleVideoPlayerOnPause();
                return;
            }
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.mVideoPlayerPresenter.getContent() == null) {
            this.mVideoPlayerPresenter.setContent(this.mVideoAdLoader.getContentUri(), VideoType.inferContentType(this.mVideoAdLoader.getContentUri()));
        }
        this.mVideoPlayerPresenter.setAudioMuted(false);
        if (this.mVideoPlayerPresenter.isPlaying()) {
            this.mVideoContainerView.getCoverImageView().setVisibility(4);
        }
    }

    @Override
    protected void onSetupControllerView(PlayerControlFooterView playerControlFooterView, long l2) {
        super.onSetupControllerView(playerControlFooterView, l2);
        playerControlFooterView.setAllowScrubbing(false);
        playerControlFooterView.setProgressDrawable(2130837750);
    }

    @Override
    protected void onSetupHeader(VideoHeaderView videoHeaderView) {
        super.onSetupHeader(videoHeaderView);
        videoHeaderView.setSponsorName(this.getSponsorName());
        String string2 = this.getSponsorAvatarUrl();
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            videoHeaderView.setSponsorImageUrl(string2);
        }
    }

    @Override
    protected void onSetupVideoPlayer(VCRDefaultVideoPlayerPresenter vCRDefaultVideoPlayerPresenter) {
        super.onSetupVideoPlayer(vCRDefaultVideoPlayerPresenter);
        this.mVideoAdLoader.updatePresenter(vCRDefaultVideoPlayerPresenter);
    }
}

