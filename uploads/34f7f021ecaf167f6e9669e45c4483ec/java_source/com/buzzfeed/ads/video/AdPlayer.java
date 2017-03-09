/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.ads.video;

import com.buzzfeed.android.vcr.player.VCRExoPlayer;
import com.buzzfeed.android.vcr.player.VideoSurfacePresenter;
import com.buzzfeed.toolkit.util.LogUtil;
import com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer;
import com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public class AdPlayer
implements VideoAdPlayer,
VideoSurfacePresenter.Listener {
    private final CopyOnWriteArrayList<VideoAdPlayer.VideoAdPlayerCallback> mAdCallbacks = new CopyOnWriteArrayList();
    private boolean mPlayWhenReady;
    private int mPlaybackState;
    private VideoSurfacePresenter mPresenter;

    public AdPlayer(VideoSurfacePresenter videoSurfacePresenter) {
        this.mPresenter = videoSurfacePresenter;
        this.mPresenter.addListener(this);
    }

    @Override
    public void addCallback(VideoAdPlayer.VideoAdPlayerCallback videoAdPlayerCallback) {
        if (!this.mAdCallbacks.contains(videoAdPlayerCallback)) {
            this.mAdCallbacks.add(videoAdPlayerCallback);
        }
    }

    @Override
    public VideoProgressUpdate getAdProgress() {
        if (this.mPresenter != null) {
            if (this.mPresenter.isPrepared() && this.mPresenter.getVideoPlayer().getDuration() <= 0) {
                return VideoProgressUpdate.VIDEO_TIME_NOT_READY;
            }
            if (this.mPresenter.isPrepared()) {
                return new VideoProgressUpdate(this.mPresenter.getCurrentPosition(), this.mPresenter.getVideoPlayer().getDuration());
            }
        }
        return VideoProgressUpdate.VIDEO_TIME_NOT_READY;
    }

    @Override
    public void loadAd(String string2) {
    }

    @Override
    public void onAudioMutedStateChanged(boolean bl) {
    }

    @Override
    public void onError(Exception object) {
        object = this.mAdCallbacks.iterator();
        while (object.hasNext()) {
            ((VideoAdPlayer.VideoAdPlayerCallback)object.next()).onError();
        }
    }

    @Override
    public void onPlayerPrepared(VCRExoPlayer vCRExoPlayer) {
    }

    @Override
    public void onPlayerReleased(VideoSurfacePresenter videoSurfacePresenter, long l2) {
    }

    @Override
    public void onPlayerStopped(VideoSurfacePresenter object, long l2) {
        object = this.mAdCallbacks.iterator();
        while (object.hasNext()) {
            ((VideoAdPlayer.VideoAdPlayerCallback)object.next()).onPause();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onStateChanged(boolean bl, int n2) {
        switch (n2) {
            default: {
                LogUtil.d("", "Unknown playback state: " + n2);
                break;
            }
            case 4: {
                if (bl) {
                    if (!this.mPlayWhenReady && this.mPlaybackState == 4) {
                        Iterator<VideoAdPlayer.VideoAdPlayerCallback> iterator = this.mAdCallbacks.iterator();
                        while (iterator.hasNext()) {
                            iterator.next().onResume();
                        }
                    } else {
                        Iterator<VideoAdPlayer.VideoAdPlayerCallback> iterator = this.mAdCallbacks.iterator();
                        while (iterator.hasNext()) {
                            iterator.next().onPlay();
                        }
                    }
                } else {
                    Iterator<VideoAdPlayer.VideoAdPlayerCallback> iterator = this.mAdCallbacks.iterator();
                    while (iterator.hasNext()) {
                        iterator.next().onPause();
                    }
                }
                break;
            }
            case 5: {
                if (!bl) break;
                Iterator<VideoAdPlayer.VideoAdPlayerCallback> iterator = this.mAdCallbacks.iterator();
                while (iterator.hasNext()) {
                    iterator.next().onEnded();
                }
                break block0;
            }
        }
        this.mPlayWhenReady = bl;
        this.mPlaybackState = n2;
    }

    @Override
    public void onVideoSizeChanged(int n2, int n3, int n4, float f2) {
    }

    @Override
    public void pauseAd() {
    }

    @Override
    public void playAd() {
    }

    @Override
    public void removeCallback(VideoAdPlayer.VideoAdPlayerCallback videoAdPlayerCallback) {
        this.mAdCallbacks.remove(videoAdPlayerCallback);
        if (this.mPresenter != null) {
            this.mPresenter.removeListener(this);
        }
    }

    public void removeCallbacks() {
        this.mAdCallbacks.clear();
    }

    @Override
    public void resumeAd() {
    }

    @Override
    public void stopAd() {
    }

    public void updatePresenter(VideoSurfacePresenter videoSurfacePresenter) {
        if (this.mPresenter != null) {
            this.mPresenter.removeListener(this);
        }
        videoSurfacePresenter.addListener(this);
        this.mPresenter = videoSurfacePresenter;
    }
}

