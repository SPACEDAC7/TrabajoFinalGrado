/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.widget.MediaController
 *  android.widget.MediaController$MediaPlayerControl
 */
package com.buzzfeed.android.vcr.player;

import android.support.annotation.NonNull;
import android.widget.MediaController;
import com.buzzfeed.android.vcr.player.VCRExoPlayer;
import com.buzzfeed.android.vcr.player.VideoSurfacePresenter;

public class VCRPlayerControl
implements MediaController.MediaPlayerControl {
    private final VideoSurfacePresenter mPresenter;

    public VCRPlayerControl(@NonNull VideoSurfacePresenter videoSurfacePresenter) {
        this.mPresenter = videoSurfacePresenter;
    }

    public boolean canPause() {
        return true;
    }

    public boolean canSeekBackward() {
        return true;
    }

    public boolean canSeekForward() {
        return true;
    }

    public int getAudioSessionId() {
        throw new UnsupportedOperationException();
    }

    public int getBufferPercentage() {
        if (this.mPresenter.getVideoPlayer() != null) {
            return (int)this.mPresenter.getVideoPlayer().getBufferedPercentage();
        }
        return 0;
    }

    public int getCurrentPosition() {
        return (int)this.mPresenter.getCurrentPosition();
    }

    public int getDuration() {
        VCRExoPlayer vCRExoPlayer;
        if (this.mPresenter.getVideoPlayer() == null || (vCRExoPlayer = this.mPresenter.getVideoPlayer()).getDuration() == -1) {
            return 0;
        }
        return (int)vCRExoPlayer.getDuration();
    }

    public boolean isPlaying() {
        return this.mPresenter.isPlaying();
    }

    public void pause() {
        this.mPresenter.pause();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void seekTo(int n2) {
        if (this.mPresenter.getVideoPlayer() != null) {
            VCRExoPlayer vCRExoPlayer = this.mPresenter.getVideoPlayer();
            long l2 = vCRExoPlayer.getDuration() == -1 ? 0 : (long)Math.min(Math.max(0, n2), this.getDuration());
            vCRExoPlayer.seekTo(l2);
        }
    }

    public void start() {
        this.mPresenter.play();
    }
}

