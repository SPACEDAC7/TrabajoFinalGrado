/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.buffet.ui.listener;

import com.buzzfeed.android.vcr.player.VCRExoPlayer;
import com.buzzfeed.android.vcr.player.VideoSurfacePresenter;
import com.buzzfeed.android.vcr.player.listener.VideoSurfacePresenterListenerImpl;
import com.buzzfeed.buffet.ui.holder.VideoCard;
import com.buzzfeed.toolkit.util.LogUtil;

public class VideoCardStateHandler
extends VideoSurfacePresenterListenerImpl {
    private static final String TAG = VideoCardStateHandler.class.getSimpleName();
    private VideoCard mTargetVideoCard;

    private void applyTargetUiState(VideoCard.State state) {
        if (this.mTargetVideoCard == null) {
            return;
        }
        this.mTargetVideoCard.applyUiState(state);
    }

    public VideoCard getTargetViewCard() {
        return this.mTargetVideoCard;
    }

    @Override
    public void onError(Exception exception) {
        this.applyTargetUiState(VideoCard.State.ERROR);
    }

    @Override
    public void onPlayerPrepared(VCRExoPlayer vCRExoPlayer) {
        this.applyTargetUiState(VideoCard.State.PREPARING);
    }

    @Override
    public void onPlayerReleased(VideoSurfacePresenter videoSurfacePresenter, long l2) {
        this.applyTargetUiState(VideoCard.State.STOPPED);
    }

    @Override
    public void onStateChanged(boolean bl, int n2) {
        switch (n2) {
            default: {
                LogUtil.d(TAG + ".onStateChanged", "Unknown playback state: " + n2);
            }
            case 1: {
                return;
            }
            case 4: {
                this.applyTargetUiState(VideoCard.State.PLAYING);
                return;
            }
            case 2: 
            case 3: {
                this.applyTargetUiState(VideoCard.State.PREPARING);
                return;
            }
            case 5: 
        }
        this.applyTargetUiState(VideoCard.State.STOPPED);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onVideoSizeChanged(int n2, int n3, int n4, float f2) {
        if (this.mTargetVideoCard == null) {
            return;
        }
        VideoCard videoCard = this.mTargetVideoCard;
        f2 = n3 == 0 ? 1.0f : (float)n2 * f2 / (float)n3;
        videoCard.updateVideoAspectRatio(f2);
        this.mTargetVideoCard.applyUiState(VideoCard.State.PLAYING);
    }

    public void setTargetVideoCard(VideoCard videoCard) {
        this.mTargetVideoCard = videoCard;
    }
}

